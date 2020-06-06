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
	<24.738094, 35.321220, 35.016640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408401, 35.163757, 34.853825>,  <24.210587, 35.069279, 34.756138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408401, 35.163757, 34.853825>,  <24.738094, 35.321220, 35.016640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408401, 35.163757, 34.853825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517386, 0.231431, 0.823864,
		-0.230120, 0.889648, -0.394426,
		-0.824231, -0.393658, -0.407035,
		24.161133, 35.045658, 34.731712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540564, 35.056206, 35.735641>,  <24.738094, 35.321220, 35.016640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540564, 35.056206, 35.735641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756203, 34.896370, 36.032211>,  <24.885586, 34.800468, 36.210152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756203, 34.896370, 36.032211>,  <24.540564, 35.056206, 35.735641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756203, 34.896370, 36.032211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095601, -0.845571, -0.525234,
		0.836801, 0.354032, -0.417643,
		0.539096, -0.399589, 0.741420,
		24.917933, 34.776493, 36.254639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124325, 34.621906, 35.506336>,  <24.540564, 35.056206, 35.735641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124325, 34.621906, 35.506336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072983, 34.500324, 35.883938>,  <25.042177, 34.427376, 36.110497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072983, 34.500324, 35.883938>,  <25.124325, 34.621906, 35.506336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072983, 34.500324, 35.883938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093637, -0.951336, -0.293586,
		0.987298, 0.050709, 0.150572,
		-0.128357, -0.303956, 0.944000,
		25.034475, 34.409138, 36.167137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747650, 34.258842, 35.670036>,  <25.124325, 34.621906, 35.506336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747650, 34.258842, 35.670036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438936, 34.124855, 35.886238>,  <25.253708, 34.044464, 36.015961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438936, 34.124855, 35.886238>,  <25.747650, 34.258842, 35.670036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438936, 34.124855, 35.886238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022241, -0.863708, -0.503502,
		0.635496, -0.376574, 0.674045,
		-0.771784, -0.334965, 0.540507,
		25.207401, 34.024364, 36.048389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929007, 33.502556, 35.857666>,  <25.747650, 34.258842, 35.670036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929007, 33.502556, 35.857666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533445, 33.532566, 35.908955>,  <25.296108, 33.550571, 35.939728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533445, 33.532566, 35.908955>,  <25.929007, 33.502556, 35.857666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533445, 33.532566, 35.908955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132793, -0.833355, -0.536550,
		0.066601, -0.547624, 0.834070,
		-0.988904, 0.075024, 0.128223,
		25.236774, 33.555073, 35.947422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585901, 32.939106, 36.302059>,  <25.929007, 33.502556, 35.857666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585901, 32.939106, 36.302059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347107, 33.092468, 36.020180>,  <25.203831, 33.184486, 35.851051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347107, 33.092468, 36.020180>,  <25.585901, 32.939106, 36.302059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347107, 33.092468, 36.020180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030830, -0.866793, -0.497715,
		-0.801660, -0.318854, 0.505642,
		-0.596985, 0.383409, -0.704704,
		25.168011, 33.207489, 35.808769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026102, 32.501369, 36.314022>,  <25.585901, 32.939106, 36.302059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026102, 32.501369, 36.314022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062185, 32.681484, 35.958694>,  <25.083836, 32.789555, 35.745499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062185, 32.681484, 35.958694>,  <25.026102, 32.501369, 36.314022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062185, 32.681484, 35.958694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099175, -0.891580, -0.441871,
		-0.990973, -0.048238, -0.125085,
		0.090209, 0.450288, -0.888315,
		25.089249, 32.816570, 35.692200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387135, 32.436245, 35.822693>,  <25.026102, 32.501369, 36.314022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387135, 32.436245, 35.822693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752037, 32.457211, 35.660191>,  <24.970978, 32.469791, 35.562691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752037, 32.457211, 35.660191>,  <24.387135, 32.436245, 35.822693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752037, 32.457211, 35.660191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103142, -0.930432, -0.351651,
		-0.396420, 0.362697, -0.843387,
		0.912257, 0.052413, -0.406251,
		25.025715, 32.472935, 35.538315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411850, 31.927349, 35.397266>,  <24.387135, 32.436245, 35.822693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411850, 31.927349, 35.397266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794752, 32.023323, 35.332649>,  <25.024492, 32.080906, 35.293877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794752, 32.023323, 35.332649>,  <24.411850, 31.927349, 35.397266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794752, 32.023323, 35.332649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119802, -0.837226, -0.533573,
		-0.263273, 0.491411, -0.830182,
		0.957254, 0.239933, -0.161547,
		25.081928, 32.095303, 35.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.503855, 31.879921, 34.607819>,  <24.411850, 31.927349, 35.397266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.503855, 31.879921, 34.607819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843872, 31.861290, 34.817677>,  <25.047882, 31.850111, 34.943592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843872, 31.861290, 34.817677>,  <24.503855, 31.879921, 34.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843872, 31.861290, 34.817677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247787, -0.843612, -0.476362,
		0.464788, 0.534930, -0.705565,
		0.850043, -0.046577, 0.524649,
		25.098885, 31.847317, 34.975071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962461, 31.718294, 34.084095>,  <24.503855, 31.879921, 34.607819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962461, 31.718294, 34.084095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111015, 31.600939, 34.436459>,  <25.200148, 31.530525, 34.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111015, 31.600939, 34.436459>,  <24.962461, 31.718294, 34.084095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111015, 31.600939, 34.436459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236208, -0.887692, -0.395232,
		0.897930, 0.354861, -0.260375,
		0.371386, -0.293388, 0.880906,
		25.222431, 31.512922, 34.700729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443138, 31.271790, 33.919796>,  <24.962461, 31.718294, 34.084095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443138, 31.271790, 33.919796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393307, 31.187223, 34.307568>,  <25.363407, 31.136484, 34.540230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393307, 31.187223, 34.307568>,  <25.443138, 31.271790, 33.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393307, 31.187223, 34.307568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018562, -0.977362, -0.210759,
		0.992036, -0.008262, 0.125683,
		-0.124579, -0.211414, 0.969425,
		25.355932, 31.123798, 34.598396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464935, 30.585840, 34.339043>,  <25.443138, 31.271790, 33.919796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464935, 30.585840, 34.339043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302437, 30.282118, 34.542381>,  <25.204937, 30.099884, 34.664387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302437, 30.282118, 34.542381>,  <25.464935, 30.585840, 34.339043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302437, 30.282118, 34.542381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012544, 0.551640, 0.833988,
		-0.913678, 0.345181, -0.214577,
		-0.406246, -0.759305, 0.508351,
		25.180563, 30.054327, 34.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.736629, 30.687195, 34.682842>,  <25.464935, 30.585840, 34.339043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.736629, 30.687195, 34.682842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994062, 30.444246, 34.869133>,  <25.148521, 30.298477, 34.980907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994062, 30.444246, 34.869133>,  <24.736629, 30.687195, 34.682842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994062, 30.444246, 34.869133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156481, 0.700056, 0.696732,
		-0.749212, -0.375526, 0.545585,
		0.643580, -0.607373, 0.465728,
		25.187136, 30.262033, 35.008850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578371, 30.600754, 35.443604>,  <24.736629, 30.687195, 34.682842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578371, 30.600754, 35.443604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956842, 30.580145, 35.315796>,  <25.183926, 30.567780, 35.239113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956842, 30.580145, 35.315796>,  <24.578371, 30.600754, 35.443604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956842, 30.580145, 35.315796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172989, 0.914897, 0.364744,
		0.273532, -0.400385, 0.874570,
		0.946179, -0.051521, -0.319516,
		25.240696, 30.564688, 35.219940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088390, 30.927284, 35.890278>,  <24.578371, 30.600754, 35.443604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088390, 30.927284, 35.890278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244257, 30.936016, 35.521999>,  <25.337778, 30.941256, 35.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244257, 30.936016, 35.521999>,  <25.088390, 30.927284, 35.890278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244257, 30.936016, 35.521999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158441, 0.983224, 0.090368,
		0.907224, -0.181090, 0.379673,
		0.389669, 0.021828, -0.920696,
		25.361158, 30.942564, 35.245789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769421, 31.104174, 35.854950>,  <25.088390, 30.927284, 35.890278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769421, 31.104174, 35.854950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598206, 31.212187, 35.509960>,  <25.495476, 31.276995, 35.302967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598206, 31.212187, 35.509960>,  <25.769421, 31.104174, 35.854950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598206, 31.212187, 35.509960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188225, 0.960029, 0.207161,
		0.883943, -0.073667, -0.461755,
		-0.428037, 0.270033, -0.862477,
		25.469795, 31.293196, 35.251217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191515, 31.669298, 35.719631>,  <25.769421, 31.104174, 35.854950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191515, 31.669298, 35.719631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878838, 31.723082, 35.476032>,  <25.691231, 31.755352, 35.329872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878838, 31.723082, 35.476032>,  <26.191515, 31.669298, 35.719631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878838, 31.723082, 35.476032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109915, 0.990900, 0.077690,
		0.613901, -0.006208, -0.789358,
		-0.781693, 0.134457, -0.608997,
		25.644329, 31.763418, 35.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338915, 32.213371, 35.289150>,  <26.191515, 31.669298, 35.719631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338915, 32.213371, 35.289150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941940, 32.171432, 35.263596>,  <25.703756, 32.146271, 35.248264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941940, 32.171432, 35.263596>,  <26.338915, 32.213371, 35.289150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941940, 32.171432, 35.263596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102292, 0.993867, -0.042006,
		0.067897, -0.035153, -0.997073,
		-0.992435, -0.104845, -0.063885,
		25.644211, 32.139980, 35.244431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225430, 32.753105, 34.954304>,  <26.338915, 32.213371, 35.289150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225430, 32.753105, 34.954304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877155, 32.654007, 35.124260>,  <25.668190, 32.594547, 35.226234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877155, 32.654007, 35.124260>,  <26.225430, 32.753105, 34.954304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877155, 32.654007, 35.124260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168750, 0.961908, 0.215073,
		-0.461986, 0.115561, -0.879326,
		-0.870685, -0.247747, 0.424887,
		25.615950, 32.579681, 35.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645309, 33.059273, 34.565212>,  <26.225430, 32.753105, 34.954304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645309, 33.059273, 34.565212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400806, 32.878853, 34.825340>,  <25.254105, 32.770599, 34.981415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400806, 32.878853, 34.825340>,  <25.645309, 33.059273, 34.565212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400806, 32.878853, 34.825340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327307, 0.892210, 0.311178,
		-0.720577, -0.022643, -0.693005,
		-0.611259, -0.451053, 0.650317,
		25.217428, 32.743538, 35.020435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052988, 33.369854, 34.503960>,  <25.645309, 33.059273, 34.565212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052988, 33.369854, 34.503960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042778, 33.199780, 34.865856>,  <25.036652, 33.097736, 35.082996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042778, 33.199780, 34.865856>,  <25.052988, 33.369854, 34.503960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042778, 33.199780, 34.865856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407332, 0.830926, 0.379003,
		-0.912923, -0.358857, -0.194403,
		-0.025527, -0.425187, 0.904745,
		25.035120, 33.072224, 35.137280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429420, 33.694176, 34.883465>,  <25.052988, 33.369854, 34.503960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429420, 33.694176, 34.883465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665913, 33.550510, 35.172310>,  <24.807808, 33.464310, 35.345615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665913, 33.550510, 35.172310>,  <24.429420, 33.694176, 34.883465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665913, 33.550510, 35.172310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237615, 0.778048, 0.581533,
		-0.770704, -0.515405, 0.374664,
		0.591232, -0.359165, 0.722112,
		24.843283, 33.442760, 35.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.129417, 33.454449, 35.526596>,  <24.429420, 33.694176, 34.883465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.129417, 33.454449, 35.526596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433378, 33.315144, 35.746147>,  <24.615755, 33.231560, 35.877876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433378, 33.315144, 35.746147>,  <24.129417, 33.454449, 35.526596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433378, 33.315144, 35.746147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041583, 0.816598, 0.575706,
		-0.648709, -0.460303, 0.606051,
		0.759900, -0.348265, 0.548875,
		24.661348, 33.210663, 35.910809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937893, 33.570400, 36.265102>,  <24.129417, 33.454449, 35.526596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937893, 33.570400, 36.265102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329041, 33.557838, 36.182362>,  <24.563728, 33.550301, 36.132717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329041, 33.557838, 36.182362>,  <23.937893, 33.570400, 36.265102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329041, 33.557838, 36.182362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125197, 0.879953, 0.458268,
		0.167627, -0.474023, 0.864410,
		0.977869, -0.031404, -0.206850,
		24.622400, 33.548416, 36.120308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.338259, 33.447803, 36.827782>,  <23.937893, 33.570400, 36.265102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.338259, 33.447803, 36.827782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577606, 33.643967, 36.574337>,  <24.721214, 33.761665, 36.422272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577606, 33.643967, 36.574337>,  <24.338259, 33.447803, 36.827782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577606, 33.643967, 36.574337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016238, 0.783215, 0.621539,
		0.801064, -0.382192, 0.460679,
		0.598358, 0.490412, -0.633612,
		24.757116, 33.791088, 36.384254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644478, 33.939293, 37.304089>,  <24.338259, 33.447803, 36.827782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644478, 33.939293, 37.304089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757242, 34.084255, 36.948742>,  <24.824902, 34.171230, 36.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757242, 34.084255, 36.948742>,  <24.644478, 33.939293, 37.304089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757242, 34.084255, 36.948742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020762, 0.928006, 0.371985,
		0.959216, -0.086423, 0.269139,
		0.281911, 0.362402, -0.888364,
		24.841816, 34.192974, 36.682232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266161, 34.403816, 37.294109>,  <24.644478, 33.939293, 37.304089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266161, 34.403816, 37.294109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038284, 34.507107, 36.982014>,  <24.901558, 34.569080, 36.794758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038284, 34.507107, 36.982014>,  <25.266161, 34.403816, 37.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038284, 34.507107, 36.982014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094239, 0.963620, 0.250111,
		0.816437, 0.068957, -0.573302,
		-0.569693, 0.258227, -0.780236,
		24.867376, 34.584576, 36.747944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652122, 34.903889, 36.925846>,  <25.266161, 34.403816, 37.294109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652122, 34.903889, 36.925846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264359, 34.943123, 36.835842>,  <25.031700, 34.966663, 36.781841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264359, 34.943123, 36.835842>,  <25.652122, 34.903889, 36.925846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264359, 34.943123, 36.835842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075297, 0.991325, 0.107729,
		0.233622, 0.087491, -0.968383,
		-0.969408, 0.098084, -0.225008,
		24.973536, 34.972549, 36.768341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022768, 35.521549, 36.954063>,  <25.652122, 34.903889, 36.925846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022768, 35.521549, 36.954063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007435, 35.626736, 37.339680>,  <25.998236, 35.689846, 37.571049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007435, 35.626736, 37.339680>,  <26.022768, 35.521549, 36.954063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007435, 35.626736, 37.339680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332269, -0.906502, 0.260481,
		0.942405, 0.330307, -0.052628,
		-0.038331, 0.262966, 0.964043,
		25.995935, 35.705624, 37.628891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658554, 35.503693, 37.380688>,  <26.022768, 35.521549, 36.954063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658554, 35.503693, 37.380688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330111, 35.403721, 37.585945>,  <26.133045, 35.343739, 37.709099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330111, 35.403721, 37.585945>,  <26.658554, 35.503693, 37.380688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330111, 35.403721, 37.585945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327990, -0.942384, 0.065838,
		0.467122, 0.222365, 0.855775,
		-0.821109, -0.249931, 0.513142,
		26.083778, 35.328743, 37.739887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908566, 36.040356, 37.871613>,  <26.658554, 35.503693, 37.380688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908566, 36.040356, 37.871613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995033, 36.377228, 37.674026>,  <27.046915, 36.579350, 37.555473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995033, 36.377228, 37.674026>,  <26.908566, 36.040356, 37.871613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995033, 36.377228, 37.674026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818617, 0.432065, 0.378400,
		0.532106, 0.322568, 0.782824,
		0.216171, 0.842181, -0.493964,
		27.059885, 36.629883, 37.525837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936464, 36.543541, 38.350128>,  <26.908566, 36.040356, 37.871613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936464, 36.543541, 38.350128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892603, 36.754345, 38.013027>,  <26.866287, 36.880825, 37.810764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892603, 36.754345, 38.013027>,  <26.936464, 36.543541, 38.350128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892603, 36.754345, 38.013027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648710, 0.604455, 0.462394,
		0.753094, 0.597408, 0.275596,
		-0.109652, 0.527008, -0.842757,
		26.859707, 36.912449, 37.760201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061766, 37.284393, 38.474144>,  <26.936464, 36.543541, 38.350128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061766, 37.284393, 38.474144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854517, 37.289574, 38.132061>,  <26.730167, 37.292683, 37.926811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854517, 37.289574, 38.132061>,  <27.061766, 37.284393, 38.474144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854517, 37.289574, 38.132061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541195, 0.769305, 0.339526,
		0.662314, 0.638751, -0.391584,
		-0.518120, 0.012950, -0.855210,
		26.699081, 37.293457, 37.875500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358028, 37.825935, 37.929901>,  <27.061766, 37.284393, 38.474144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358028, 37.825935, 37.929901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110275, 37.847134, 37.616581>,  <26.961622, 37.859852, 37.428589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110275, 37.847134, 37.616581>,  <27.358028, 37.825935, 37.929901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110275, 37.847134, 37.616581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685880, 0.448943, 0.572729,
		0.382009, 0.891987, -0.241718,
		-0.619385, 0.052999, -0.783297,
		26.924459, 37.863033, 37.381592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977238, 38.551643, 37.879967>,  <27.358028, 37.825935, 37.929901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977238, 38.551643, 37.879967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738848, 38.258312, 37.749092>,  <26.595814, 38.082314, 37.670567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738848, 38.258312, 37.749092>,  <26.977238, 38.551643, 37.879967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738848, 38.258312, 37.749092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777637, 0.425458, 0.462888,
		-0.200241, 0.530303, -0.823821,
		-0.595973, -0.733323, -0.327190,
		26.560057, 38.038315, 37.650936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394249, 38.871815, 37.638062>,  <26.977238, 38.551643, 37.879967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394249, 38.871815, 37.638062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249933, 38.505650, 37.709457>,  <26.163343, 38.285950, 37.752293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249933, 38.505650, 37.709457>,  <26.394249, 38.871815, 37.638062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249933, 38.505650, 37.709457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768646, 0.400241, 0.498991,
		-0.528217, 0.042839, -0.848028,
		-0.360791, -0.915408, 0.178486,
		26.141695, 38.231026, 37.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687881, 38.945473, 37.439392>,  <26.394249, 38.871815, 37.638062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687881, 38.945473, 37.439392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721020, 38.619995, 37.669537>,  <25.740902, 38.424709, 37.807625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721020, 38.619995, 37.669537>,  <25.687881, 38.945473, 37.439392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721020, 38.619995, 37.669537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840730, 0.252929, 0.478749,
		-0.535080, -0.523387, -0.663140,
		0.082843, -0.813691, 0.575365,
		25.745872, 38.375889, 37.842148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018530, 38.562187, 37.486328>,  <25.687881, 38.945473, 37.439392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018530, 38.562187, 37.486328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253733, 38.522907, 37.807476>,  <25.394854, 38.499340, 38.000164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253733, 38.522907, 37.807476>,  <25.018530, 38.562187, 37.486328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253733, 38.522907, 37.807476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783180, 0.178994, 0.595475,
		-0.202183, -0.978937, 0.028345,
		0.588006, -0.098196, 0.802873,
		25.430134, 38.493450, 38.048340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.557579, 39.048885, 37.843761>,  <25.018530, 38.562187, 37.486328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.557579, 39.048885, 37.843761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436510, 38.764381, 38.097534>,  <24.363869, 38.593678, 38.249798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436510, 38.764381, 38.097534>,  <24.557579, 39.048885, 37.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436510, 38.764381, 38.097534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910331, -0.412892, -0.028594,
		0.282288, 0.568884, 0.772453,
		-0.302673, -0.711260, 0.634427,
		24.345709, 38.551003, 38.287861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071430, 39.100079, 38.360332>,  <24.557579, 39.048885, 37.843761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071430, 39.100079, 38.360332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893953, 38.741844, 38.347294>,  <24.787466, 38.526905, 38.339470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893953, 38.741844, 38.347294>,  <25.071430, 39.100079, 38.360332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893953, 38.741844, 38.347294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879993, -0.442273, 0.173223,
		-0.169553, 0.048173, 0.984343,
		-0.443693, -0.895586, -0.032597,
		24.760845, 38.473167, 38.337513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195570, 38.601974, 38.990940>,  <25.071430, 39.100079, 38.360332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195570, 38.601974, 38.990940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128918, 38.409168, 38.646873>,  <25.088926, 38.293484, 38.440434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128918, 38.409168, 38.646873>,  <25.195570, 38.601974, 38.990940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128918, 38.409168, 38.646873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925864, -0.376531, 0.031641,
		-0.339132, -0.791126, 0.509027,
		-0.166632, -0.482020, -0.860169,
		25.078928, 38.264561, 38.388824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784880, 38.155136, 38.940937>,  <25.195570, 38.601974, 38.990940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784880, 38.155136, 38.940937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597723, 38.120701, 38.589104>,  <25.485430, 38.100040, 38.378002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597723, 38.120701, 38.589104>,  <25.784880, 38.155136, 38.940937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597723, 38.120701, 38.589104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841156, -0.348750, -0.413315,
		-0.271172, -0.933253, 0.235592,
		-0.467890, -0.086090, -0.879583,
		25.457355, 38.094875, 38.325230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775255, 37.431831, 38.656647>,  <25.784880, 38.155136, 38.940937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775255, 37.431831, 38.656647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751938, 37.706547, 38.366840>,  <25.737947, 37.871376, 38.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751938, 37.706547, 38.366840>,  <25.775255, 37.431831, 38.656647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751938, 37.706547, 38.366840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811499, -0.390098, -0.435078,
		-0.581439, -0.613308, -0.534586,
		-0.058296, 0.686787, -0.724517,
		25.734449, 37.912582, 38.149487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666307, 37.069923, 38.041248>,  <25.775255, 37.431831, 38.656647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666307, 37.069923, 38.041248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826992, 37.425140, 37.951805>,  <25.923403, 37.638271, 37.898140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826992, 37.425140, 37.951805>,  <25.666307, 37.069923, 38.041248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826992, 37.425140, 37.951805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691002, -0.454178, -0.562351,
		-0.600954, 0.071385, -0.796089,
		0.401709, 0.888047, -0.223613,
		25.947504, 37.691555, 37.884720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616623, 37.170120, 37.264141>,  <25.666307, 37.069923, 38.041248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616623, 37.170120, 37.264141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904140, 37.370079, 37.457405>,  <26.076651, 37.490055, 37.573364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904140, 37.370079, 37.457405>,  <25.616623, 37.170120, 37.264141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904140, 37.370079, 37.457405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688364, -0.609116, -0.393869,
		0.097406, 0.615699, -0.781938,
		0.718796, 0.499892, 0.483157,
		26.119780, 37.520046, 37.602352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177179, 37.274994, 36.711605>,  <25.616623, 37.170120, 37.264141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177179, 37.274994, 36.711605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319195, 37.269547, 37.085506>,  <26.404404, 37.266277, 37.309849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319195, 37.269547, 37.085506>,  <26.177179, 37.274994, 36.711605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319195, 37.269547, 37.085506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810886, -0.493081, -0.315176,
		0.465202, 0.869877, -0.164017,
		0.355038, -0.013621, 0.934753,
		26.425707, 37.265461, 37.365932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771784, 37.693260, 36.745956>,  <26.177179, 37.274994, 36.711605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771784, 37.693260, 36.745956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808027, 37.443363, 37.056179>,  <26.829773, 37.293427, 37.242313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808027, 37.443363, 37.056179>,  <26.771784, 37.693260, 36.745956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808027, 37.443363, 37.056179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817009, -0.398674, -0.416600,
		0.569461, 0.671384, 0.474297,
		0.090608, -0.624743, 0.775556,
		26.835209, 37.255939, 37.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481661, 37.795105, 37.107529>,  <26.771784, 37.693260, 36.745956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481661, 37.795105, 37.107529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340538, 37.434212, 37.206726>,  <27.255865, 37.217674, 37.266243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340538, 37.434212, 37.206726>,  <27.481661, 37.795105, 37.107529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340538, 37.434212, 37.206726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869468, -0.414049, -0.269425,
		0.345764, 0.120564, 0.930544,
		-0.352807, -0.902235, 0.247990,
		27.234695, 37.163540, 37.281124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089415, 37.589050, 37.509178>,  <27.481661, 37.795105, 37.107529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089415, 37.589050, 37.509178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894140, 37.271343, 37.364506>,  <27.776976, 37.080719, 37.277702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894140, 37.271343, 37.364506>,  <28.089415, 37.589050, 37.509178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894140, 37.271343, 37.364506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872079, -0.460067, -0.166784,
		-0.033926, -0.396836, 0.917262,
		-0.488188, -0.794267, -0.361680,
		27.747684, 37.033062, 37.256001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665689, 37.260036, 37.238220>,  <28.089415, 37.589050, 37.509178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665689, 37.260036, 37.238220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344980, 37.023762, 37.201889>,  <28.152555, 36.881996, 37.180092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344980, 37.023762, 37.201889>,  <28.665689, 37.260036, 37.238220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344980, 37.023762, 37.201889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597401, -0.787952, -0.149142,
		0.016532, -0.173836, 0.984636,
		-0.801772, -0.590688, -0.090824,
		28.104448, 36.846554, 37.174641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878481, 36.651825, 37.576157>,  <28.665689, 37.260036, 37.238220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878481, 36.651825, 37.576157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550640, 36.573547, 37.360767>,  <28.353935, 36.526581, 37.231533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550640, 36.573547, 37.360767>,  <28.878481, 36.651825, 37.576157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550640, 36.573547, 37.360767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397367, -0.871228, -0.288202,
		-0.412733, -0.450183, 0.791825,
		-0.819604, -0.195695, -0.538473,
		28.304758, 36.514839, 37.199226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683779, 35.921474, 37.746151>,  <28.878481, 36.651825, 37.576157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683779, 35.921474, 37.746151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578613, 36.016518, 37.372108>,  <28.515514, 36.073544, 37.147682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578613, 36.016518, 37.372108>,  <28.683779, 35.921474, 37.746151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578613, 36.016518, 37.372108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357242, -0.876340, -0.323119,
		-0.896244, -0.419011, 0.145519,
		-0.262915, 0.237608, -0.935103,
		28.499739, 36.087799, 37.091576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855606, 35.286945, 38.287014>,  <28.683779, 35.921474, 37.746151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855606, 35.286945, 38.287014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021099, 35.382511, 37.935619>,  <29.120396, 35.439850, 37.724781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021099, 35.382511, 37.935619>,  <28.855606, 35.286945, 38.287014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021099, 35.382511, 37.935619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543483, 0.838960, -0.027793,
		0.730377, 0.488943, 0.476953,
		0.413734, 0.238916, -0.878489,
		29.145220, 35.454185, 37.672073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566641, 34.639576, 37.947590>,  <28.855606, 35.286945, 38.287014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566641, 34.639576, 37.947590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959551, 34.582104, 37.995739>,  <29.195297, 34.547619, 38.024628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959551, 34.582104, 37.995739>,  <28.566641, 34.639576, 37.947590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959551, 34.582104, 37.995739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024363, 0.538878, 0.842032,
		-0.185849, -0.830040, 0.525826,
		0.982276, -0.143680, 0.120372,
		29.254234, 34.539001, 38.031849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610176, 34.312992, 38.488647>,  <28.566641, 34.639576, 37.947590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610176, 34.312992, 38.488647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966856, 34.487408, 38.440094>,  <29.180864, 34.592056, 38.410961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966856, 34.487408, 38.440094>,  <28.610176, 34.312992, 38.488647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966856, 34.487408, 38.440094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087885, 0.429871, 0.898603,
		0.444027, -0.790609, 0.421636,
		0.891693, 0.436059, -0.121392,
		29.234367, 34.618221, 38.403679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030024, 34.113194, 39.046242>,  <28.610176, 34.312992, 38.488647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030024, 34.113194, 39.046242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189159, 34.455799, 38.914719>,  <29.284641, 34.661362, 38.835804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189159, 34.455799, 38.914719>,  <29.030024, 34.113194, 39.046242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189159, 34.455799, 38.914719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104381, 0.398320, 0.911288,
		0.911499, -0.328223, 0.247870,
		0.397837, 0.856511, -0.328808,
		29.308510, 34.712753, 38.816078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518740, 34.369003, 39.662098>,  <29.030024, 34.113194, 39.046242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518740, 34.369003, 39.662098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392363, 34.669205, 39.429920>,  <29.316536, 34.849327, 39.290611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392363, 34.669205, 39.429920>,  <29.518740, 34.369003, 39.662098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392363, 34.669205, 39.429920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127141, 0.572774, 0.809793,
		0.940221, 0.329647, -0.085544,
		-0.315943, 0.750508, -0.580446,
		29.297579, 34.894356, 39.255787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788658, 35.049007, 39.873291>,  <29.518740, 34.369003, 39.662098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788658, 35.049007, 39.873291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451668, 35.140789, 39.678322>,  <29.249474, 35.195858, 39.561340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451668, 35.140789, 39.678322>,  <29.788658, 35.049007, 39.873291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451668, 35.140789, 39.678322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209691, 0.693745, 0.689019,
		0.496250, 0.682691, -0.536348,
		-0.842476, 0.229458, -0.487425,
		29.198925, 35.209625, 39.532093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742811, 35.771355, 39.770626>,  <29.788658, 35.049007, 39.873291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742811, 35.771355, 39.770626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377487, 35.612358, 39.806095>,  <29.158293, 35.516960, 39.827377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377487, 35.612358, 39.806095>,  <29.742811, 35.771355, 39.770626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377487, 35.612358, 39.806095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149759, 0.530251, 0.834510,
		-0.378730, 0.748887, -0.543812,
		-0.913310, -0.397495, 0.088669,
		29.103495, 35.493111, 39.832695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119171, 36.250820, 39.767918>,  <29.742811, 35.771355, 39.770626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119171, 36.250820, 39.767918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093904, 35.917248, 39.987217>,  <29.078745, 35.717106, 40.118797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093904, 35.917248, 39.987217>,  <29.119171, 36.250820, 39.767918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093904, 35.917248, 39.987217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437440, 0.516894, 0.735844,
		-0.897027, -0.193345, -0.397443,
		-0.063164, -0.833930, 0.548245,
		29.074955, 35.667068, 40.151691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826820, 35.699604, 39.246468>,  <29.119171, 36.250820, 39.767918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826820, 35.699604, 39.246468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165140, 35.521221, 39.363598>,  <29.368132, 35.414192, 39.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165140, 35.521221, 39.363598>,  <28.826820, 35.699604, 39.246468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165140, 35.521221, 39.363598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187940, -0.264630, -0.945859,
		0.499300, 0.855042, -0.140011,
		0.845800, -0.445954, 0.292826,
		29.418880, 35.387436, 39.451447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316120, 35.970531, 38.882874>,  <28.826820, 35.699604, 39.246468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316120, 35.970531, 38.882874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419050, 35.600769, 38.995480>,  <29.480808, 35.378910, 39.063042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419050, 35.600769, 38.995480>,  <29.316120, 35.970531, 38.882874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419050, 35.600769, 38.995480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023086, -0.285359, -0.958143,
		0.966049, 0.253052, -0.052089,
		0.257324, -0.924411, 0.281513,
		29.496248, 35.323444, 39.079933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701309, 35.758762, 38.265511>,  <29.316120, 35.970531, 38.882874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701309, 35.758762, 38.265511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621096, 35.423122, 38.467777>,  <29.572968, 35.221737, 38.589138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621096, 35.423122, 38.467777>,  <29.701309, 35.758762, 38.265511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621096, 35.423122, 38.467777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191834, -0.539788, -0.819652,
		0.960721, -0.067366, 0.269215,
		-0.200536, -0.839101, 0.505662,
		29.560934, 35.171391, 38.619476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334522, 35.281998, 38.235008>,  <29.701309, 35.758762, 38.265511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334522, 35.281998, 38.235008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001230, 35.064137, 38.273125>,  <29.801256, 34.933418, 38.295994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001230, 35.064137, 38.273125>,  <30.334522, 35.281998, 38.235008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001230, 35.064137, 38.273125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305236, -0.596793, -0.742071,
		0.461044, -0.589227, 0.663513,
		-0.833228, -0.544656, 0.095295,
		29.751263, 34.900742, 38.301712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510023, 34.596310, 38.270924>,  <30.334522, 35.281998, 38.235008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510023, 34.596310, 38.270924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127550, 34.575760, 38.155628>,  <29.898067, 34.563431, 38.086452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127550, 34.575760, 38.155628>,  <30.510023, 34.596310, 38.270924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127550, 34.575760, 38.155628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264041, -0.576663, -0.773138,
		-0.126497, -0.815365, 0.564958,
		-0.956180, -0.051372, -0.288236,
		29.840696, 34.560349, 38.069157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348591, 33.947670, 38.084160>,  <30.510023, 34.596310, 38.270924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348591, 33.947670, 38.084160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063059, 34.168427, 37.911713>,  <29.891739, 34.300880, 37.808243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063059, 34.168427, 37.911713>,  <30.348591, 33.947670, 38.084160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063059, 34.168427, 37.911713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139712, -0.491002, -0.859882,
		-0.686242, -0.674042, 0.273386,
		-0.713830, 0.551892, -0.431118,
		29.848909, 34.333992, 37.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654314, 33.509876, 37.818169>,  <30.348591, 33.947670, 38.084160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654314, 33.509876, 37.818169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738363, 33.825836, 37.587727>,  <29.788794, 34.015411, 37.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738363, 33.825836, 37.587727>,  <29.654314, 33.509876, 37.818169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738363, 33.825836, 37.587727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199300, -0.611499, -0.765734,
		-0.957146, 0.046080, -0.285918,
		0.210123, 0.789902, -0.576110,
		29.801401, 34.062805, 37.414894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321154, 33.419495, 37.204960>,  <29.654314, 33.509876, 37.818169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321154, 33.419495, 37.204960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612261, 33.677677, 37.112228>,  <29.786924, 33.832584, 37.056591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612261, 33.677677, 37.112228>,  <29.321154, 33.419495, 37.204960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612261, 33.677677, 37.112228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231287, -0.549212, -0.803040,
		-0.645648, 0.530806, -0.548983,
		0.727767, 0.645454, -0.231829,
		29.830591, 33.871315, 37.042679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257261, 33.527916, 36.499432>,  <29.321154, 33.419495, 37.204960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257261, 33.527916, 36.499432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632046, 33.627129, 36.597885>,  <29.856916, 33.686657, 36.656960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632046, 33.627129, 36.597885>,  <29.257261, 33.527916, 36.499432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632046, 33.627129, 36.597885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344636, -0.539581, -0.768166,
		-0.057721, 0.804568, -0.591048,
		0.936960, 0.248036, 0.246138,
		29.913134, 33.701538, 36.671726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614582, 33.779140, 35.935608>,  <29.257261, 33.527916, 36.499432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614582, 33.779140, 35.935608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891565, 33.642529, 36.189808>,  <30.057755, 33.560562, 36.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891565, 33.642529, 36.189808>,  <29.614582, 33.779140, 35.935608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891565, 33.642529, 36.189808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336912, -0.625827, -0.703442,
		0.637961, 0.701210, -0.318292,
		0.692456, -0.341532, 0.635500,
		30.099302, 33.540070, 36.380459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111401, 33.563675, 35.465565>,  <29.614582, 33.779140, 35.935608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111401, 33.563675, 35.465565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263264, 33.415936, 35.804844>,  <30.354382, 33.327290, 36.008411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263264, 33.415936, 35.804844>,  <30.111401, 33.563675, 35.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263264, 33.415936, 35.804844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544221, -0.652254, -0.527626,
		0.748119, 0.661924, -0.046625,
		0.379660, -0.369352, 0.848196,
		30.377161, 33.305130, 36.059303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875465, 33.721405, 35.593025>,  <30.111401, 33.563675, 35.465565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875465, 33.721405, 35.593025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746845, 33.380642, 35.758362>,  <30.669672, 33.176182, 35.857563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746845, 33.380642, 35.758362>,  <30.875465, 33.721405, 35.593025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746845, 33.380642, 35.758362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546754, -0.523447, -0.653500,
		0.773088, 0.015864, 0.634101,
		-0.321551, -0.851910, 0.413344,
		30.650379, 33.125069, 35.882366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448736, 33.195942, 35.451218>,  <30.875465, 33.721405, 35.593025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448736, 33.195942, 35.451218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146513, 32.960232, 35.565685>,  <30.965179, 32.818806, 35.634365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146513, 32.960232, 35.565685>,  <31.448736, 33.195942, 35.451218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146513, 32.960232, 35.565685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408967, -0.765562, -0.496651,
		0.511740, -0.258216, 0.819419,
		-0.755559, -0.589271, 0.286166,
		30.919846, 32.783451, 35.651535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717083, 32.536770, 35.457603>,  <31.448736, 33.195942, 35.451218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717083, 32.536770, 35.457603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325871, 32.453419, 35.455177>,  <31.091143, 32.403408, 35.453720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325871, 32.453419, 35.455177>,  <31.717083, 32.536770, 35.457603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325871, 32.453419, 35.455177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179564, -0.827279, -0.532321,
		0.105907, -0.521715, 0.846521,
		-0.978029, -0.208381, -0.006067,
		31.032461, 32.390903, 35.453358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606501, 31.837372, 35.545181>,  <31.717083, 32.536770, 35.457603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606501, 31.837372, 35.545181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290846, 31.958782, 35.331589>,  <31.101454, 32.031628, 35.203434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290846, 31.958782, 35.331589>,  <31.606501, 31.837372, 35.545181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290846, 31.958782, 35.331589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186872, -0.709510, -0.679466,
		-0.585100, -0.635978, 0.503180,
		-0.789136, 0.303525, -0.533981,
		31.054106, 32.049839, 35.171394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388767, 31.226606, 35.279739>,  <31.606501, 31.837372, 35.545181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388767, 31.226606, 35.279739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198509, 31.489454, 35.045834>,  <31.084354, 31.647163, 34.905491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198509, 31.489454, 35.045834>,  <31.388767, 31.226606, 35.279739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198509, 31.489454, 35.045834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108080, -0.616087, -0.780228,
		-0.872973, -0.434312, 0.222017,
		-0.475644, 0.657122, -0.584767,
		31.055817, 31.686590, 34.870403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958002, 30.835087, 34.863041>,  <31.388767, 31.226606, 35.279739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958002, 30.835087, 34.863041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968370, 31.180021, 34.660774>,  <30.974590, 31.386982, 34.539413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968370, 31.180021, 34.660774>,  <30.958002, 30.835087, 34.863041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968370, 31.180021, 34.660774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013777, -0.506099, -0.862366,
		-0.999569, 0.015386, -0.024998,
		0.025920, 0.862338, -0.505669,
		30.976147, 31.438723, 34.509075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427217, 30.795620, 34.334881>,  <30.958002, 30.835087, 34.863041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427217, 30.795620, 34.334881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669456, 31.093105, 34.221642>,  <30.814800, 31.271597, 34.153698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669456, 31.093105, 34.221642>,  <30.427217, 30.795620, 34.334881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669456, 31.093105, 34.221642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069300, -0.305113, -0.949792,
		-0.792749, 0.594808, -0.133236,
		0.605596, 0.743713, -0.283098,
		30.851135, 31.316219, 34.136711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074223, 31.101002, 33.662952>,  <30.427217, 30.795620, 34.334881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074223, 31.101002, 33.662952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453022, 31.229376, 33.668480>,  <30.680302, 31.306400, 33.671799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453022, 31.229376, 33.668480>,  <30.074223, 31.101002, 33.662952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453022, 31.229376, 33.668480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097879, -0.247298, -0.963983,
		-0.305958, 0.914245, -0.265604,
		0.947000, 0.320936, 0.013823,
		30.737122, 31.325657, 33.672626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168131, 31.606867, 33.125568>,  <30.074223, 31.101002, 33.662952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168131, 31.606867, 33.125568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537228, 31.464180, 33.183941>,  <30.758686, 31.378569, 33.218964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537228, 31.464180, 33.183941>,  <30.168131, 31.606867, 33.125568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537228, 31.464180, 33.183941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109662, -0.119994, -0.986699,
		0.369484, 0.926474, -0.071606,
		0.922744, -0.356717, 0.145935,
		30.814051, 31.357164, 33.227722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532038, 31.819332, 32.573986>,  <30.168131, 31.606867, 33.125568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532038, 31.819332, 32.573986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792471, 31.554024, 32.721588>,  <30.948730, 31.394838, 32.810150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792471, 31.554024, 32.721588>,  <30.532038, 31.819332, 32.573986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792471, 31.554024, 32.721588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364251, -0.153479, -0.918567,
		0.665893, 0.732473, 0.141669,
		0.651082, -0.663270, 0.369005,
		30.987795, 31.355043, 32.832291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167618, 32.084175, 32.271824>,  <30.532038, 31.819332, 32.573986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167618, 32.084175, 32.271824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164526, 31.694464, 32.361912>,  <31.162670, 31.460636, 32.415962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164526, 31.694464, 32.361912>,  <31.167618, 32.084175, 32.271824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164526, 31.694464, 32.361912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080462, -0.225098, -0.971008,
		0.996728, 0.010616, 0.080132,
		-0.007730, -0.974278, 0.225215,
		31.162207, 31.402180, 32.429478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609200, 31.842083, 31.836102>,  <31.167618, 32.084175, 32.271824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609200, 31.842083, 31.836102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409351, 31.519346, 31.962202>,  <31.289442, 31.325705, 32.037861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409351, 31.519346, 31.962202>,  <31.609200, 31.842083, 31.836102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409351, 31.519346, 31.962202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044915, -0.339311, -0.939601,
		0.865079, -0.483604, 0.133288,
		-0.499621, -0.806843, 0.315251,
		31.259464, 31.277294, 32.056778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849768, 31.250803, 31.466997>,  <31.609200, 31.842083, 31.836102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849768, 31.250803, 31.466997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489542, 31.113747, 31.574013>,  <31.273407, 31.031513, 31.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489542, 31.113747, 31.574013>,  <31.849768, 31.250803, 31.466997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489542, 31.113747, 31.574013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168699, -0.291747, -0.941501,
		0.400651, -0.893018, 0.204934,
		-0.900566, -0.342641, 0.267540,
		31.219372, 31.010954, 31.654274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753157, 30.451431, 31.221586>,  <31.849768, 31.250803, 31.466997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753157, 30.451431, 31.221586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388012, 30.597107, 31.295397>,  <31.168924, 30.684511, 31.339684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388012, 30.597107, 31.295397>,  <31.753157, 30.451431, 31.221586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388012, 30.597107, 31.295397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335964, -0.413285, -0.846359,
		-0.231969, -0.834605, 0.499625,
		-0.912863, 0.364185, 0.184528,
		31.114153, 30.706364, 31.350756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332670, 29.950388, 31.102695>,  <31.753157, 30.451431, 31.221586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332670, 29.950388, 31.102695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085760, 30.264324, 31.080799>,  <30.937614, 30.452686, 31.067661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085760, 30.264324, 31.080799>,  <31.332670, 29.950388, 31.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085760, 30.264324, 31.080799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364859, -0.347215, -0.863898,
		-0.697028, -0.513291, 0.500683,
		-0.617276, 0.784840, -0.054740,
		30.900578, 30.499777, 31.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739161, 29.641977, 30.772039>,  <31.332670, 29.950388, 31.102695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739161, 29.641977, 30.772039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740520, 30.037777, 30.714243>,  <30.741337, 30.275257, 30.679565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740520, 30.037777, 30.714243>,  <30.739161, 29.641977, 30.772039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740520, 30.037777, 30.714243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584613, -0.115261, -0.803083,
		-0.811305, 0.087202, 0.578083,
		0.003401, 0.989500, -0.144491,
		30.741541, 30.334627, 30.670897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048014, 29.843292, 30.447876>,  <30.739161, 29.641977, 30.772039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048014, 29.843292, 30.447876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296972, 30.150890, 30.389536>,  <30.446348, 30.335449, 30.354532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296972, 30.150890, 30.389536>,  <30.048014, 29.843292, 30.447876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296972, 30.150890, 30.389536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409632, 0.161246, -0.897887,
		-0.666952, 0.618586, 0.415363,
		0.622396, 0.768994, -0.145849,
		30.483690, 30.381588, 30.345781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589266, 30.320124, 30.272404>,  <30.048014, 29.843292, 30.447876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589266, 30.320124, 30.272404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952295, 30.416012, 30.134506>,  <30.170113, 30.473545, 30.051767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952295, 30.416012, 30.134506>,  <29.589266, 30.320124, 30.272404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952295, 30.416012, 30.134506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389616, 0.174644, -0.904267,
		-0.156563, 0.955005, 0.251901,
		0.907572, 0.239720, -0.344742,
		30.224567, 30.487928, 30.031084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451431, 30.943043, 29.771511>,  <29.589266, 30.320124, 30.272404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451431, 30.943043, 29.771511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804697, 30.776558, 29.684986>,  <30.016657, 30.676666, 29.633072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804697, 30.776558, 29.684986>,  <29.451431, 30.943043, 29.771511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804697, 30.776558, 29.684986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241829, -0.008873, -0.970278,
		0.401924, 0.909223, -0.108489,
		0.883162, -0.416214, -0.216311,
		30.069645, 30.651693, 29.620092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832592, 31.383991, 29.383615>,  <29.451431, 30.943043, 29.771511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832592, 31.383991, 29.383615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949974, 31.008495, 29.311337>,  <30.020403, 30.783197, 29.267969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949974, 31.008495, 29.311337>,  <29.832592, 31.383991, 29.383615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949974, 31.008495, 29.311337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261778, 0.102885, -0.959628,
		0.919433, 0.328910, -0.215550,
		0.293454, -0.938740, -0.180698,
		30.038010, 30.726873, 29.257128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028187, 31.542465, 28.751862>,  <29.832592, 31.383991, 29.383615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028187, 31.542465, 28.751862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045628, 31.144224, 28.785017>,  <30.056091, 30.905279, 28.804911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045628, 31.144224, 28.785017>,  <30.028187, 31.542465, 28.751862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045628, 31.144224, 28.785017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145023, -0.088398, -0.985472,
		0.988467, 0.030946, -0.148240,
		0.043600, -0.995605, 0.082890,
		30.058708, 30.845543, 28.809885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529867, 31.383726, 28.316650>,  <30.028187, 31.542465, 28.751862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529867, 31.383726, 28.316650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302525, 31.056244, 28.349377>,  <30.166119, 30.859755, 28.369013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302525, 31.056244, 28.349377>,  <30.529867, 31.383726, 28.316650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302525, 31.056244, 28.349377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038180, -0.125575, -0.991349,
		0.821896, -0.560316, 0.102630,
		-0.568356, -0.818705, 0.081816,
		30.132017, 30.810633, 28.373922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785198, 30.810951, 27.918255>,  <30.529867, 31.383726, 28.316650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785198, 30.810951, 27.918255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408665, 30.679546, 27.949158>,  <30.182745, 30.600702, 27.967699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408665, 30.679546, 27.949158>,  <30.785198, 30.810951, 27.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408665, 30.679546, 27.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048055, -0.357082, -0.932836,
		0.334038, -0.874397, 0.351920,
		-0.941334, -0.328515, 0.077260,
		30.126265, 30.580992, 27.972336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697124, 30.083086, 27.515444>,  <30.785198, 30.810951, 27.918255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697124, 30.083086, 27.515444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342161, 30.263895, 27.551630>,  <30.129183, 30.372381, 27.573341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342161, 30.263895, 27.551630>,  <30.697124, 30.083086, 27.515444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342161, 30.263895, 27.551630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143787, -0.084960, -0.985955,
		-0.437989, -0.887951, 0.140390,
		-0.887406, 0.452024, 0.090464,
		30.075939, 30.399502, 27.578770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242105, 29.619810, 27.169067>,  <30.697124, 30.083086, 27.515444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242105, 29.619810, 27.169067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028959, 29.958067, 27.156815>,  <29.901072, 30.161022, 27.149462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028959, 29.958067, 27.156815>,  <30.242105, 29.619810, 27.169067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028959, 29.958067, 27.156815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270467, -0.204509, -0.940757,
		-0.801811, -0.493013, 0.337694,
		-0.532867, 0.845644, -0.030634,
		29.869099, 30.211760, 27.147625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798527, 29.472742, 26.684906>,  <30.242105, 29.619810, 27.169067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798527, 29.472742, 26.684906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721519, 29.864546, 26.708563>,  <29.675316, 30.099628, 26.722757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721519, 29.864546, 26.708563>,  <29.798527, 29.472742, 26.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721519, 29.864546, 26.708563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366304, -0.015822, -0.930361,
		-0.910362, -0.200774, 0.361845,
		-0.192518, 0.979510, 0.059140,
		29.663765, 30.158400, 26.726305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201393, 29.605650, 26.194681>,  <29.798527, 29.472742, 26.684906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201393, 29.605650, 26.194681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410021, 29.942352, 26.250412>,  <29.535198, 30.144373, 26.283852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410021, 29.942352, 26.250412>,  <29.201393, 29.605650, 26.194681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410021, 29.942352, 26.250412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091089, 0.217301, -0.971845,
		-0.848333, 0.494193, 0.190012,
		0.521569, 0.841756, 0.139328,
		29.566492, 30.194880, 26.292210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776285, 30.089239, 25.888224>,  <29.201393, 29.605650, 26.194681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776285, 30.089239, 25.888224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141605, 30.251947, 25.880011>,  <29.360798, 30.349573, 25.875084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141605, 30.251947, 25.880011>,  <28.776285, 30.089239, 25.888224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141605, 30.251947, 25.880011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125425, 0.232933, -0.964371,
		-0.387497, 0.883334, 0.263757,
		0.913299, 0.406772, -0.020531,
		29.415596, 30.373980, 25.873852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687788, 30.767904, 25.568184>,  <28.776285, 30.089239, 25.888224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687788, 30.767904, 25.568184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070328, 30.657461, 25.529896>,  <29.299852, 30.591196, 25.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070328, 30.657461, 25.529896>,  <28.687788, 30.767904, 25.568184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070328, 30.657461, 25.529896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066305, 0.113992, -0.991267,
		0.284606, 0.954343, 0.090709,
		0.956349, -0.276106, -0.095721,
		29.357233, 30.574629, 25.501179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871916, 31.160015, 24.978008>,  <28.687788, 30.767904, 25.568184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871916, 31.160015, 24.978008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191753, 30.921949, 25.010067>,  <29.383656, 30.779110, 25.029303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191753, 30.921949, 25.010067>,  <28.871916, 31.160015, 24.978008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191753, 30.921949, 25.010067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164545, 0.088774, -0.982367,
		0.577557, 0.798684, 0.168915,
		0.799596, -0.595167, 0.080147,
		29.431633, 30.743399, 25.034111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426863, 31.484858, 24.627680>,  <28.871916, 31.160015, 24.978008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426863, 31.484858, 24.627680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517687, 31.095972, 24.650454>,  <29.572182, 30.862640, 24.664118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517687, 31.095972, 24.650454>,  <29.426863, 31.484858, 24.627680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517687, 31.095972, 24.650454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389583, 0.037094, -0.920244,
		0.892563, 0.231133, 0.387181,
		0.227061, -0.972215, 0.056936,
		29.585806, 30.804308, 24.667534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098122, 31.448193, 24.402121>,  <29.426863, 31.484858, 24.627680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098122, 31.448193, 24.402121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922050, 31.093533, 24.345423>,  <29.816408, 30.880735, 24.311405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922050, 31.093533, 24.345423>,  <30.098122, 31.448193, 24.402121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922050, 31.093533, 24.345423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218808, 0.047180, -0.974627,
		0.870842, -0.460026, 0.173238,
		-0.440180, -0.886651, -0.141744,
		29.789997, 30.827538, 24.302900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459293, 31.113386, 23.941902>,  <30.098122, 31.448193, 24.402121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459293, 31.113386, 23.941902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140015, 30.875130, 23.905910>,  <29.948448, 30.732176, 23.884315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140015, 30.875130, 23.905910>,  <30.459293, 31.113386, 23.941902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140015, 30.875130, 23.905910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180109, -0.093436, -0.979199,
		0.574844, -0.797798, 0.181860,
		-0.798195, -0.595641, -0.089980,
		29.900557, 30.696438, 23.878916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632975, 30.401840, 23.578974>,  <30.459293, 31.113386, 23.941902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632975, 30.401840, 23.578974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236729, 30.435678, 23.536039>,  <29.998981, 30.455982, 23.510279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236729, 30.435678, 23.536039>,  <30.632975, 30.401840, 23.578974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236729, 30.435678, 23.536039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118356, 0.138306, -0.983292,
		-0.068340, -0.986770, -0.147021,
		-0.990617, 0.084599, -0.107338,
		29.939543, 30.461058, 23.503838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436632, 30.002710, 22.850662>,  <30.632975, 30.401840, 23.578974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436632, 30.002710, 22.850662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134466, 30.244156, 22.952639>,  <29.953167, 30.389023, 23.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134466, 30.244156, 22.952639>,  <30.436632, 30.002710, 22.850662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134466, 30.244156, 22.952639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153153, 0.215650, -0.964386,
		-0.637094, -0.767558, -0.070461,
		-0.755417, 0.603613, 0.254943,
		29.907841, 30.425240, 23.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926140, 29.880400, 22.300085>,  <30.436632, 30.002710, 22.850662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926140, 29.880400, 22.300085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832394, 30.235180, 22.459278>,  <29.776146, 30.448048, 22.554794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832394, 30.235180, 22.459278>,  <29.926140, 29.880400, 22.300085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832394, 30.235180, 22.459278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184518, 0.361358, -0.913988,
		-0.954477, -0.287642, 0.078969,
		-0.234366, 0.886951, 0.397983,
		29.762083, 30.501265, 22.578672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338154, 30.096519, 22.001074>,  <29.926140, 29.880400, 22.300085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338154, 30.096519, 22.001074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480904, 30.435337, 22.158634>,  <29.566553, 30.638628, 22.253170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480904, 30.435337, 22.158634>,  <29.338154, 30.096519, 22.001074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480904, 30.435337, 22.158634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225913, 0.487410, -0.843442,
		-0.906424, 0.212015, 0.365302,
		0.356874, 0.847043, 0.393903,
		29.587965, 30.689449, 22.276806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906755, 30.535849, 21.690424>,  <29.338154, 30.096519, 22.001074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906755, 30.535849, 21.690424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218689, 30.750961, 21.818581>,  <29.405849, 30.880030, 21.895475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218689, 30.750961, 21.818581>,  <28.906755, 30.535849, 21.690424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218689, 30.750961, 21.818581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053841, 0.452299, -0.890240,
		-0.623669, 0.711488, 0.323762,
		0.779832, 0.537784, 0.320392,
		29.452639, 30.912296, 21.914698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393469, 31.048195, 21.619726>,  <28.906755, 30.535849, 21.690424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393469, 31.048195, 21.619726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475880, 31.341934, 21.361025>,  <28.525326, 31.518177, 21.205805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475880, 31.341934, 21.361025>,  <28.393469, 31.048195, 21.619726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475880, 31.341934, 21.361025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432582, -0.661193, -0.612941,
		-0.877738, -0.153490, -0.453890,
		0.206029, 0.734346, -0.646752,
		28.537689, 31.562239, 21.167000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023438, 30.919855, 21.092108>,  <28.393469, 31.048195, 21.619726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023438, 30.919855, 21.092108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313526, 31.157291, 20.952562>,  <28.487579, 31.299753, 20.868835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313526, 31.157291, 20.952562>,  <28.023438, 30.919855, 21.092108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313526, 31.157291, 20.952562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218490, -0.678908, -0.700960,
		-0.652928, 0.432129, -0.622053,
		0.725222, 0.593589, -0.348863,
		28.531094, 31.335367, 20.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092030, 30.807194, 20.369181>,  <28.023438, 30.919855, 21.092108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092030, 30.807194, 20.369181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431362, 30.948690, 20.526764>,  <28.634962, 31.033588, 20.621313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431362, 30.948690, 20.526764>,  <28.092030, 30.807194, 20.369181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431362, 30.948690, 20.526764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524430, -0.458984, -0.717152,
		-0.072867, 0.814984, -0.574883,
		0.848330, 0.353743, 0.393957,
		28.685862, 31.054813, 20.644951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412018, 31.331270, 19.920076>,  <28.092030, 30.807194, 20.369181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412018, 31.331270, 19.920076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637959, 31.090458, 20.145821>,  <28.773523, 30.945971, 20.281267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637959, 31.090458, 20.145821>,  <28.412018, 31.331270, 19.920076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637959, 31.090458, 20.145821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425618, -0.373372, -0.824283,
		0.706961, 0.705798, 0.045337,
		0.564850, -0.602032, 0.564360,
		28.807413, 30.909849, 20.315128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170885, 31.375969, 19.641628>,  <28.412018, 31.331270, 19.920076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170885, 31.375969, 19.641628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037323, 31.049021, 19.829422>,  <28.957186, 30.852852, 19.942099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037323, 31.049021, 19.829422>,  <29.170885, 31.375969, 19.641628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037323, 31.049021, 19.829422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310531, -0.565651, -0.763943,
		0.889988, -0.109295, 0.442692,
		-0.333904, -0.817370, 0.469483,
		28.937151, 30.803810, 19.970266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597805, 30.890572, 19.370640>,  <29.170885, 31.375969, 19.641628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597805, 30.890572, 19.370640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354954, 30.657593, 19.586843>,  <29.209244, 30.517805, 19.716566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354954, 30.657593, 19.586843>,  <29.597805, 30.890572, 19.370640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354954, 30.657593, 19.586843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243470, -0.783865, -0.571208,
		0.756385, -0.215198, 0.617715,
		-0.607128, -0.582448, 0.540509,
		29.172815, 30.482859, 19.748997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188025, 31.021933, 19.829214>,  <29.597805, 30.890572, 19.370640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188025, 31.021933, 19.829214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248455, 30.635965, 19.743326>,  <30.284714, 30.404385, 19.691793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248455, 30.635965, 19.743326>,  <30.188025, 31.021933, 19.829214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248455, 30.635965, 19.743326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977093, 0.112832, 0.180436,
		-0.149880, -0.237060, 0.959864,
		0.151077, -0.964920, -0.214718,
		30.293777, 30.346489, 19.678911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850376, 31.460497, 20.464184>,  <30.188025, 31.021933, 19.829214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850376, 31.460497, 20.464184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456270, 31.394976, 20.444483>,  <29.219807, 31.355663, 20.432663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456270, 31.394976, 20.444483>,  <29.850376, 31.460497, 20.464184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456270, 31.394976, 20.444483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159360, 0.774466, 0.612214,
		-0.062140, 0.611041, -0.789156,
		-0.985263, -0.163803, -0.049250,
		29.160692, 31.345835, 20.429708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447493, 32.104916, 20.332945>,  <29.850376, 31.460497, 20.464184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447493, 32.104916, 20.332945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171431, 31.857315, 20.482891>,  <29.005793, 31.708755, 20.572859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171431, 31.857315, 20.482891>,  <29.447493, 32.104916, 20.332945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171431, 31.857315, 20.482891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422003, 0.765073, 0.486392,
		-0.587877, 0.177491, -0.789239,
		-0.690155, -0.619000, 0.374867,
		28.964384, 31.671616, 20.595350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759354, 32.547417, 20.324823>,  <29.447493, 32.104916, 20.332945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759354, 32.547417, 20.324823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773026, 32.244133, 20.585270>,  <28.781229, 32.062164, 20.741539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773026, 32.244133, 20.585270>,  <28.759354, 32.547417, 20.324823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773026, 32.244133, 20.585270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383343, 0.591722, 0.709164,
		-0.922974, -0.273839, -0.270429,
		0.034178, -0.758207, 0.651118,
		28.783279, 32.016670, 20.780605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145401, 32.617687, 20.721863>,  <28.759354, 32.547417, 20.324823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145401, 32.617687, 20.721863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379078, 32.386269, 20.949549>,  <28.519283, 32.247417, 21.086161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379078, 32.386269, 20.949549>,  <28.145401, 32.617687, 20.721863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379078, 32.386269, 20.949549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305748, 0.492790, 0.814663,
		-0.751824, -0.649955, 0.110993,
		0.584191, -0.578548, 0.569214,
		28.554335, 32.212704, 21.120314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715731, 32.339993, 21.270304>,  <28.145401, 32.617687, 20.721863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715731, 32.339993, 21.270304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100002, 32.360298, 21.379498>,  <28.330564, 32.372482, 21.445015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100002, 32.360298, 21.379498>,  <27.715731, 32.339993, 21.270304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100002, 32.360298, 21.379498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262914, 0.482498, 0.835507,
		-0.089301, -0.874425, 0.476871,
		0.960678, 0.050764, 0.272986,
		28.388206, 32.375526, 21.461393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722513, 32.239151, 21.946095>,  <27.715731, 32.339993, 21.270304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722513, 32.239151, 21.946095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081732, 32.409977, 21.903910>,  <28.297264, 32.512474, 21.878599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081732, 32.409977, 21.903910>,  <27.722513, 32.239151, 21.946095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081732, 32.409977, 21.903910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178619, 0.573103, 0.799780,
		0.402000, -0.699404, 0.590957,
		0.898049, 0.427068, -0.105460,
		28.351147, 32.538097, 21.872272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015434, 32.373398, 22.618963>,  <27.722513, 32.239151, 21.946095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015434, 32.373398, 22.618963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193798, 32.654125, 22.396751>,  <28.300816, 32.822563, 22.263424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193798, 32.654125, 22.396751>,  <28.015434, 32.373398, 22.618963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193798, 32.654125, 22.396751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201187, 0.683354, 0.701820,
		0.872175, -0.201182, 0.445911,
		0.445909, 0.701821, -0.555529,
		28.327572, 32.864670, 22.230093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494192, 32.671329, 23.055475>,  <28.015434, 32.373398, 22.618963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494192, 32.671329, 23.055475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512337, 32.951302, 22.770369>,  <28.523224, 33.119286, 22.599304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512337, 32.951302, 22.770369>,  <28.494192, 32.671329, 23.055475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512337, 32.951302, 22.770369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134546, 0.702719, 0.698629,
		0.989869, -0.127589, -0.062299,
		0.045359, 0.699933, -0.712766,
		28.525944, 33.161282, 22.556540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151731, 32.968449, 23.082710>,  <28.494192, 32.671329, 23.055475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151731, 32.968449, 23.082710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897772, 33.223595, 22.908337>,  <28.745396, 33.376682, 22.803713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897772, 33.223595, 22.908337>,  <29.151731, 32.968449, 23.082710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897772, 33.223595, 22.908337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230835, 0.695083, 0.680863,
		0.737307, 0.331649, -0.588547,
		-0.634897, 0.637862, -0.435934,
		28.707302, 33.414955, 22.777557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466045, 33.556015, 23.132504>,  <29.151731, 32.968449, 23.082710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466045, 33.556015, 23.132504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088045, 33.679111, 23.088198>,  <28.861246, 33.752972, 23.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088045, 33.679111, 23.088198>,  <29.466045, 33.556015, 23.132504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088045, 33.679111, 23.088198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130718, 0.665793, 0.734597,
		0.299815, 0.679715, -0.669402,
		-0.944999, 0.307746, -0.110764,
		28.804544, 33.771435, 23.054968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515524, 34.336300, 23.026665>,  <29.466045, 33.556015, 23.132504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515524, 34.336300, 23.026665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139442, 34.245716, 23.128435>,  <28.913794, 34.191368, 23.189497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139442, 34.245716, 23.128435>,  <29.515524, 34.336300, 23.026665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139442, 34.245716, 23.128435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060449, 0.624180, 0.778939,
		-0.335204, 0.747741, -0.573167,
		-0.940204, -0.226456, 0.254428,
		28.857382, 34.177780, 23.204763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326241, 34.969864, 23.162210>,  <29.515524, 34.336300, 23.026665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326241, 34.969864, 23.162210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078869, 34.718975, 23.351582>,  <28.930447, 34.568439, 23.465204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078869, 34.718975, 23.351582>,  <29.326241, 34.969864, 23.162210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078869, 34.718975, 23.351582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124844, 0.516378, 0.847212,
		-0.775861, 0.583045, -0.241037,
		-0.618429, -0.627226, 0.473427,
		28.893341, 34.530807, 23.493610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958990, 35.457615, 23.564949>,  <29.326241, 34.969864, 23.162210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958990, 35.457615, 23.564949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917416, 35.095680, 23.730097>,  <28.892471, 34.878517, 23.829185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917416, 35.095680, 23.730097>,  <28.958990, 35.457615, 23.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917416, 35.095680, 23.730097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044645, 0.410457, 0.910787,
		-0.993581, 0.113096, -0.002265,
		-0.103936, -0.904840, 0.412871,
		28.886234, 34.824230, 23.853958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496414, 35.612301, 24.118549>,  <28.958990, 35.457615, 23.564949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496414, 35.612301, 24.118549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673977, 35.268105, 24.218554>,  <28.780514, 35.061588, 24.278557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673977, 35.268105, 24.218554>,  <28.496414, 35.612301, 24.118549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673977, 35.268105, 24.218554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030477, 0.264347, 0.963946,
		-0.895556, -0.435520, 0.091119,
		0.443905, -0.860490, 0.250011,
		28.807148, 35.009956, 24.293556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136980, 35.296276, 24.761608>,  <28.496414, 35.612301, 24.118549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136980, 35.296276, 24.761608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507385, 35.149319, 24.726925>,  <28.729630, 35.061142, 24.706116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507385, 35.149319, 24.726925>,  <28.136980, 35.296276, 24.761608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507385, 35.149319, 24.726925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140709, 0.122804, 0.982405,
		-0.350284, -0.921921, 0.165414,
		0.926014, -0.367396, -0.086706,
		28.785189, 35.039101, 24.700912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235897, 34.618687, 25.194744>,  <28.136980, 35.296276, 24.761608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235897, 34.618687, 25.194744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606405, 34.762646, 25.150030>,  <28.828711, 34.849022, 25.123201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606405, 34.762646, 25.150030>,  <28.235897, 34.618687, 25.194744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606405, 34.762646, 25.150030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091115, 0.073957, 0.993090,
		0.365681, -0.930055, 0.035712,
		0.926270, 0.359900, -0.111787,
		28.884287, 34.870617, 25.116495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665035, 34.062084, 25.524216>,  <28.235897, 34.618687, 25.194744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665035, 34.062084, 25.524216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870647, 34.405148, 25.518675>,  <28.994015, 34.610985, 25.515350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870647, 34.405148, 25.518675>,  <28.665035, 34.062084, 25.524216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870647, 34.405148, 25.518675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166528, -0.083938, 0.982458,
		0.841453, -0.507318, -0.185971,
		0.514028, 0.857662, -0.013853,
		29.024857, 34.662445, 25.514519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110056, 33.952271, 26.091852>,  <28.665035, 34.062084, 25.524216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110056, 33.952271, 26.091852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137547, 34.339294, 25.994606>,  <29.154041, 34.571510, 25.936258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137547, 34.339294, 25.994606>,  <29.110056, 33.952271, 26.091852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137547, 34.339294, 25.994606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318435, 0.209666, 0.924467,
		0.945450, -0.140952, -0.293695,
		0.068728, 0.967560, -0.243113,
		29.158165, 34.629562, 25.921673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756493, 34.143311, 26.202787>,  <29.110056, 33.952271, 26.091852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756493, 34.143311, 26.202787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554987, 34.485443, 26.251181>,  <29.434084, 34.690723, 26.280216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554987, 34.485443, 26.251181>,  <29.756493, 34.143311, 26.202787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554987, 34.485443, 26.251181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263203, 0.018584, 0.964562,
		0.822767, 0.517755, -0.234486,
		-0.503764, 0.855327, 0.120984,
		29.403858, 34.742043, 26.287476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040054, 34.397301, 26.722752>,  <29.756493, 34.143311, 26.202787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040054, 34.397301, 26.722752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694496, 34.594734, 26.682621>,  <29.487162, 34.713196, 26.658543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694496, 34.594734, 26.682621>,  <30.040054, 34.397301, 26.722752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694496, 34.594734, 26.682621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044713, 0.123246, 0.991368,
		0.501686, 0.860922, -0.084402,
		-0.863893, 0.493582, -0.100325,
		29.435328, 34.742809, 26.652523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118496, 35.095592, 27.028246>,  <30.040054, 34.397301, 26.722752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118496, 35.095592, 27.028246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737103, 34.975761, 27.041611>,  <29.508266, 34.903862, 27.049629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737103, 34.975761, 27.041611>,  <30.118496, 35.095592, 27.028246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737103, 34.975761, 27.041611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039723, 0.234753, 0.971243,
		-0.298811, 0.924739, -0.235734,
		-0.953485, -0.299582, 0.033414,
		29.451057, 34.885887, 27.051636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938284, 35.476952, 27.484875>,  <30.118496, 35.095592, 27.028246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938284, 35.476952, 27.484875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631456, 35.220768, 27.499926>,  <29.447359, 35.067059, 27.508957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631456, 35.220768, 27.499926>,  <29.938284, 35.476952, 27.484875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631456, 35.220768, 27.499926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122752, 0.204080, 0.971228,
		-0.629712, 0.740379, -0.235161,
		-0.767069, -0.640460, 0.037629,
		29.401337, 35.028629, 27.511215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527382, 35.832188, 27.927324>,  <29.938284, 35.476952, 27.484875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527382, 35.832188, 27.927324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385971, 35.458763, 27.903746>,  <29.301125, 35.234707, 27.889599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385971, 35.458763, 27.903746>,  <29.527382, 35.832188, 27.927324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385971, 35.458763, 27.903746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287622, 0.048523, 0.956514,
		-0.890109, 0.355106, -0.285668,
		-0.353525, -0.933566, -0.058946,
		29.279913, 35.178692, 27.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785795, 35.840294, 28.167387>,  <29.527382, 35.832188, 27.927324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785795, 35.840294, 28.167387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921286, 35.465542, 28.202063>,  <29.002581, 35.240688, 28.222868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921286, 35.465542, 28.202063>,  <28.785795, 35.840294, 28.167387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921286, 35.465542, 28.202063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192109, 0.021329, 0.981142,
		-0.921064, -0.348993, -0.172758,
		0.338726, -0.936883, 0.086690,
		29.022903, 35.184479, 28.228069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338491, 35.478165, 28.644367>,  <28.785795, 35.840294, 28.167387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338491, 35.478165, 28.644367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676908, 35.264919, 28.644573>,  <28.879959, 35.136971, 28.644697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676908, 35.264919, 28.644573>,  <28.338491, 35.478165, 28.644367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676908, 35.264919, 28.644573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102736, -0.162096, 0.981412,
		-0.523120, -0.830371, -0.191910,
		0.846044, -0.533113, 0.000513,
		28.930721, 35.104984, 28.644728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196398, 34.945808, 29.093439>,  <28.338491, 35.478165, 28.644367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196398, 34.945808, 29.093439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596350, 34.946064, 29.099577>,  <28.836321, 34.946217, 29.103260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596350, 34.946064, 29.099577>,  <28.196398, 34.945808, 29.093439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596350, 34.946064, 29.099577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015079, -0.148771, 0.988757,
		0.002912, -0.988872, -0.148744,
		0.999883, 0.000636, 0.015344,
		28.896315, 34.946255, 29.104179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444540, 34.477615, 29.552160>,  <28.196398, 34.945808, 29.093439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444540, 34.477615, 29.552160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769384, 34.710953, 29.546638>,  <28.964291, 34.850956, 29.543325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769384, 34.710953, 29.546638>,  <28.444540, 34.477615, 29.552160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769384, 34.710953, 29.546638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152514, -0.189368, 0.969989,
		0.563220, -0.789844, -0.242755,
		0.812110, 0.583341, -0.013806,
		29.013018, 34.885956, 29.542496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957668, 34.061901, 29.874371>,  <28.444540, 34.477615, 29.552160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957668, 34.061901, 29.874371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074026, 34.442478, 29.914633>,  <29.143841, 34.670826, 29.938789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074026, 34.442478, 29.914633>,  <28.957668, 34.061901, 29.874371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074026, 34.442478, 29.914633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250188, -0.177189, 0.951846,
		0.923464, -0.251704, -0.289583,
		0.290895, 0.951446, 0.100654,
		29.161295, 34.727913, 29.944830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518593, 34.013752, 30.369204>,  <28.957668, 34.061901, 29.874371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518593, 34.013752, 30.369204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478357, 34.409344, 30.325743>,  <29.454216, 34.646698, 30.299665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478357, 34.409344, 30.325743>,  <29.518593, 34.013752, 30.369204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478357, 34.409344, 30.325743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376077, 0.138897, 0.916119,
		0.921113, 0.051288, -0.385903,
		-0.100587, 0.988978, -0.108651,
		29.448181, 34.706036, 30.293148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145985, 34.418961, 30.737257>,  <29.518593, 34.013752, 30.369204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145985, 34.418961, 30.737257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866840, 34.705452, 30.736673>,  <29.699354, 34.877346, 30.736324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866840, 34.705452, 30.736673>,  <30.145985, 34.418961, 30.737257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866840, 34.705452, 30.736673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172525, 0.170075, 0.970211,
		0.695143, 0.676822, -0.242257,
		-0.697863, 0.716230, -0.001458,
		29.657482, 34.920322, 30.736237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411272, 35.046406, 31.141506>,  <30.145985, 34.418961, 30.737257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411272, 35.046406, 31.141506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011374, 35.040440, 31.134735>,  <29.771435, 35.036861, 31.130672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011374, 35.040440, 31.134735>,  <30.411272, 35.046406, 31.141506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011374, 35.040440, 31.134735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020398, 0.277104, 0.960623,
		-0.009637, 0.960724, -0.277338,
		-0.999745, -0.014914, -0.016927,
		29.711451, 35.035965, 31.129658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240202, 35.567207, 31.561987>,  <30.411272, 35.046406, 31.141506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240202, 35.567207, 31.561987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897604, 35.362022, 31.539049>,  <29.692045, 35.238911, 31.525288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897604, 35.362022, 31.539049>,  <30.240202, 35.567207, 31.561987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897604, 35.362022, 31.539049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132208, 0.110634, 0.985029,
		-0.498938, 0.851252, -0.162575,
		-0.856494, -0.512962, -0.057343,
		29.640656, 35.208134, 31.521847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721525, 36.077061, 31.673149>,  <30.240202, 35.567207, 31.561987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721525, 36.077061, 31.673149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615959, 35.703754, 31.770615>,  <29.552620, 35.479771, 31.829094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615959, 35.703754, 31.770615>,  <29.721525, 36.077061, 31.673149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615959, 35.703754, 31.770615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309071, 0.321124, 0.895184,
		-0.913688, 0.160941, -0.373193,
		-0.263913, -0.933262, 0.243665,
		29.536785, 35.423775, 31.843714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220907, 36.153179, 32.270592>,  <29.721525, 36.077061, 31.673149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220907, 36.153179, 32.270592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251133, 35.754395, 32.262981>,  <29.269268, 35.515125, 32.258415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251133, 35.754395, 32.262981>,  <29.220907, 36.153179, 32.270592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251133, 35.754395, 32.262981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176039, -0.032119, 0.983859,
		-0.981478, -0.070997, -0.177931,
		0.075566, -0.996959, -0.019026,
		29.273804, 35.455307, 32.257275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615274, 35.888435, 32.618496>,  <29.220907, 36.153179, 32.270592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615274, 35.888435, 32.618496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908314, 35.617954, 32.649593>,  <29.084137, 35.455666, 32.668251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908314, 35.617954, 32.649593>,  <28.615274, 35.888435, 32.618496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908314, 35.617954, 32.649593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149648, -0.048586, 0.987545,
		-0.664008, -0.735107, -0.136787,
		0.732598, -0.676207, 0.077746,
		29.128094, 35.415092, 32.672916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343952, 35.278496, 33.053535>,  <28.615274, 35.888435, 32.618496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343952, 35.278496, 33.053535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743435, 35.295452, 33.064774>,  <28.983124, 35.305626, 33.071518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743435, 35.295452, 33.064774>,  <28.343952, 35.278496, 33.053535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743435, 35.295452, 33.064774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031894, 0.091768, 0.995270,
		0.039609, -0.994878, 0.093002,
		0.998706, 0.042388, 0.028096,
		29.043047, 35.308170, 33.073204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569988, 34.805916, 33.608574>,  <28.343952, 35.278496, 33.053535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569988, 34.805916, 33.608574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876205, 35.054630, 33.542450>,  <29.059935, 35.203857, 33.502773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876205, 35.054630, 33.542450>,  <28.569988, 34.805916, 33.608574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876205, 35.054630, 33.542450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240981, -0.038869, 0.969751,
		0.596553, -0.782221, -0.179595,
		0.765541, 0.621787, -0.165313,
		29.105867, 35.241165, 33.492855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186556, 34.435669, 33.896194>,  <28.569988, 34.805916, 33.608574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186556, 34.435669, 33.896194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253124, 34.828793, 33.864197>,  <29.293064, 35.064667, 33.844997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253124, 34.828793, 33.864197>,  <29.186556, 34.435669, 33.896194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253124, 34.828793, 33.864197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240959, 0.038137, 0.969786,
		0.956161, -0.180668, -0.230469,
		0.166420, 0.982804, -0.079998,
		29.303051, 35.123634, 33.840199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665951, 34.530544, 34.358948>,  <29.186556, 34.435669, 33.896194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665951, 34.530544, 34.358948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554768, 34.909546, 34.295734>,  <29.488058, 35.136948, 34.257805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554768, 34.909546, 34.295734>,  <29.665951, 34.530544, 34.358948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554768, 34.909546, 34.295734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225754, 0.224342, 0.948001,
		0.933688, 0.227830, -0.276261,
		-0.277960, 0.947504, -0.158032,
		29.471380, 35.193798, 34.248325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234062, 34.968319, 34.507965>,  <29.665951, 34.530544, 34.358948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234062, 34.968319, 34.507965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889263, 35.158794, 34.577484>,  <29.682384, 35.273079, 34.619198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889263, 35.158794, 34.577484>,  <30.234062, 34.968319, 34.507965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889263, 35.158794, 34.577484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307552, 0.218740, 0.926048,
		0.402959, 0.851701, -0.335006,
		-0.861995, 0.476191, 0.173799,
		29.630665, 35.301651, 34.629623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431059, 35.621738, 34.856609>,  <30.234062, 34.968319, 34.507965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431059, 35.621738, 34.856609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035099, 35.587879, 34.902096>,  <29.797523, 35.567562, 34.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035099, 35.587879, 34.902096>,  <30.431059, 35.621738, 34.856609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035099, 35.587879, 34.902096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093597, 0.212250, 0.972723,
		-0.106477, 0.973542, -0.202183,
		-0.989900, -0.084649, 0.113720,
		29.738129, 35.562485, 34.936211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213892, 36.175556, 35.259293>,  <30.431059, 35.621738, 34.856609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213892, 36.175556, 35.259293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941452, 35.890282, 35.325588>,  <29.777988, 35.719116, 35.365368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941452, 35.890282, 35.325588>,  <30.213892, 36.175556, 35.259293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941452, 35.890282, 35.325588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148251, 0.356002, 0.922651,
		-0.717025, 0.603846, -0.348203,
		-0.681100, -0.713185, 0.165742,
		29.737122, 35.676327, 35.375309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860949, 36.498272, 35.586899>,  <30.213892, 36.175556, 35.259293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860949, 36.498272, 35.586899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252453, 36.455444, 35.656826>,  <31.487356, 36.429749, 35.698784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252453, 36.455444, 35.656826>,  <30.860949, 36.498272, 35.586899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252453, 36.455444, 35.656826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204297, 0.438749, -0.875078,
		0.016994, 0.892208, 0.451305,
		0.978761, -0.107071, 0.174820,
		31.546082, 36.423325, 35.709270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986763, 37.058784, 35.261150>,  <30.860949, 36.498272, 35.586899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986763, 37.058784, 35.261150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320044, 36.839909, 35.293045>,  <31.520012, 36.708584, 35.312183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320044, 36.839909, 35.293045>,  <30.986763, 37.058784, 35.261150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320044, 36.839909, 35.293045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221279, 0.197779, -0.954945,
		0.506764, 0.813307, 0.285871,
		0.833202, -0.547189, 0.079740,
		31.570004, 36.675751, 35.316967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416729, 37.505711, 34.839359>,  <30.986763, 37.058784, 35.261150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416729, 37.505711, 34.839359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561836, 37.135479, 34.882626>,  <31.648901, 36.913342, 34.908585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561836, 37.135479, 34.882626>,  <31.416729, 37.505711, 34.839359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561836, 37.135479, 34.882626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184936, -0.042262, -0.981842,
		0.913345, 0.376185, 0.155842,
		0.362768, -0.925580, 0.108170,
		31.670666, 36.857803, 34.915077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152782, 37.549515, 34.596107>,  <31.416729, 37.505711, 34.839359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152782, 37.549515, 34.596107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022778, 37.173695, 34.553005>,  <31.944773, 36.948204, 34.527142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022778, 37.173695, 34.553005>,  <32.152782, 37.549515, 34.596107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022778, 37.173695, 34.553005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213536, 0.038095, -0.976192,
		0.921285, -0.340289, 0.188246,
		-0.325016, -0.939549, -0.107760,
		31.925272, 36.891830, 34.520676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660591, 37.154221, 34.185406>,  <32.152782, 37.549515, 34.596107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660591, 37.154221, 34.185406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312523, 36.960533, 34.148884>,  <32.103680, 36.844322, 34.126972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312523, 36.960533, 34.148884>,  <32.660591, 37.154221, 34.185406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312523, 36.960533, 34.148884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108649, -0.007819, -0.994049,
		0.480620, -0.874914, 0.059413,
		-0.870173, -0.484215, -0.091300,
		32.051472, 36.815269, 34.121494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913376, 36.506622, 33.838924>,  <32.660591, 37.154221, 34.185406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913376, 36.506622, 33.838924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521763, 36.561371, 33.778591>,  <32.286793, 36.594219, 33.742390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521763, 36.561371, 33.778591>,  <32.913376, 36.506622, 33.838924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521763, 36.561371, 33.778591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079841, -0.423390, -0.902423,
		-0.187381, -0.895548, 0.403586,
		-0.979037, 0.136874, -0.150836,
		32.228050, 36.602432, 33.733341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623745, 35.892605, 33.577129>,  <32.913376, 36.506622, 33.838924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623745, 35.892605, 33.577129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355061, 36.168270, 33.468422>,  <32.193848, 36.333668, 33.403198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355061, 36.168270, 33.468422>,  <32.623745, 35.892605, 33.577129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355061, 36.168270, 33.468422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122869, -0.258134, -0.958264,
		-0.730551, -0.677071, 0.088715,
		-0.671713, 0.689160, -0.271772,
		32.153545, 36.375019, 33.386890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236172, 35.572140, 32.985527>,  <32.623745, 35.892605, 33.577129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236172, 35.572140, 32.985527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097240, 35.946194, 32.957565>,  <32.013882, 36.170628, 32.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097240, 35.946194, 32.957565>,  <32.236172, 35.572140, 32.985527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097240, 35.946194, 32.957565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122955, -0.119319, -0.985213,
		-0.929647, -0.333599, 0.156422,
		-0.347330, 0.935134, -0.069906,
		31.993042, 36.226734, 32.936592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880491, 35.406174, 32.547073>,  <32.236172, 35.572140, 32.985527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880491, 35.406174, 32.547073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893587, 35.805843, 32.537395>,  <31.901443, 36.045643, 32.531590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893587, 35.805843, 32.537395>,  <31.880491, 35.406174, 32.547073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893587, 35.805843, 32.537395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340271, -0.011616, -0.940256,
		-0.939758, 0.039014, 0.339608,
		0.032738, 0.999171, -0.024191,
		31.903408, 36.105595, 32.530140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238686, 35.754108, 32.362389>,  <31.880491, 35.406174, 32.547073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238686, 35.754108, 32.362389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525425, 36.008999, 32.249203>,  <31.697470, 36.161934, 32.181293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525425, 36.008999, 32.249203>,  <31.238686, 35.754108, 32.362389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525425, 36.008999, 32.249203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327979, -0.049940, -0.943364,
		-0.615269, 0.769056, 0.173197,
		0.716850, 0.637227, -0.282961,
		31.740480, 36.200169, 32.164314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942982, 36.265778, 31.835335>,  <31.238686, 35.754108, 32.362389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942982, 36.265778, 31.835335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339724, 36.284000, 31.787762>,  <31.577768, 36.294933, 31.759218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339724, 36.284000, 31.787762>,  <30.942982, 36.265778, 31.835335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339724, 36.284000, 31.787762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109720, -0.168511, -0.979574,
		-0.064673, 0.984646, -0.162140,
		0.991856, 0.045561, -0.118934,
		31.637281, 36.297668, 31.752081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959398, 36.634033, 31.261484>,  <30.942982, 36.265778, 31.835335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959398, 36.634033, 31.261484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330332, 36.484348, 31.263062>,  <31.552893, 36.394539, 31.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330332, 36.484348, 31.263062>,  <30.959398, 36.634033, 31.261484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330332, 36.484348, 31.263062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013625, 0.023231, -0.999637,
		0.373985, 0.927052, 0.026642,
		0.927335, -0.374212, 0.003943,
		31.608532, 36.372086, 31.264244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321793, 37.086998, 30.859682>,  <30.959398, 36.634033, 31.261484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321793, 37.086998, 30.859682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544230, 36.754696, 30.849873>,  <31.677692, 36.555313, 30.843987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544230, 36.754696, 30.849873>,  <31.321793, 37.086998, 30.859682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544230, 36.754696, 30.849873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058299, -0.009556, -0.998253,
		0.829072, 0.556553, -0.053746,
		0.556095, -0.830757, -0.024524,
		31.711058, 36.505470, 30.842516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927896, 37.130692, 30.403893>,  <31.321793, 37.086998, 30.859682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927896, 37.130692, 30.403893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810520, 36.748940, 30.425983>,  <31.740095, 36.519890, 30.439238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810520, 36.748940, 30.425983>,  <31.927896, 37.130692, 30.403893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810520, 36.748940, 30.425983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096085, -0.028034, -0.994978,
		0.951137, -0.297273, -0.083476,
		-0.293440, -0.954381, 0.055227,
		31.722488, 36.462624, 30.442553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326073, 36.894543, 29.982990>,  <31.927896, 37.130692, 30.403893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326073, 36.894543, 29.982990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053562, 36.604584, 30.023737>,  <31.890055, 36.430607, 30.048185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053562, 36.604584, 30.023737>,  <32.326073, 36.894543, 29.982990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053562, 36.604584, 30.023737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017907, -0.122611, -0.992293,
		0.731805, -0.677853, 0.070551,
		-0.681279, -0.724902, 0.101866,
		31.849178, 36.387112, 30.054296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481644, 36.591637, 29.434420>,  <32.326073, 36.894543, 29.982990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481644, 36.591637, 29.434420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142162, 36.402344, 29.528862>,  <31.938473, 36.288769, 29.585527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142162, 36.402344, 29.528862>,  <32.481644, 36.591637, 29.434420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142162, 36.402344, 29.528862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243624, -0.046412, -0.968759,
		0.469408, -0.879713, -0.075901,
		-0.848707, -0.473234, 0.236105,
		31.887550, 36.260372, 29.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441391, 36.055374, 28.986410>,  <32.481644, 36.591637, 29.434420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441391, 36.055374, 28.986410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073540, 36.137554, 29.120325>,  <31.852829, 36.186863, 29.200674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073540, 36.137554, 29.120325>,  <32.441391, 36.055374, 28.986410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073540, 36.137554, 29.120325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315603, 0.120949, -0.941151,
		-0.233849, -0.971165, -0.046387,
		-0.919624, 0.205448, 0.334786,
		31.797653, 36.199188, 29.220760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002460, 35.573746, 28.678705>,  <32.441391, 36.055374, 28.986410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002460, 35.573746, 28.678705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759022, 35.873173, 28.783970>,  <31.612959, 36.052830, 28.847128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759022, 35.873173, 28.783970>,  <32.002460, 35.573746, 28.678705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759022, 35.873173, 28.783970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457714, -0.060282, -0.887054,
		-0.648156, -0.660312, 0.379318,
		-0.608598, 0.748569, 0.263161,
		31.576443, 36.097744, 28.862919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351110, 35.305202, 28.577143>,  <32.002460, 35.573746, 28.678705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351110, 35.305202, 28.577143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314594, 35.702408, 28.547239>,  <31.292685, 35.940731, 28.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314594, 35.702408, 28.547239>,  <31.351110, 35.305202, 28.577143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314594, 35.702408, 28.547239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334487, -0.101285, -0.936942,
		-0.937968, -0.060529, 0.341397,
		-0.091290, 0.993015, -0.074756,
		31.287207, 36.000313, 28.524813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670450, 35.477772, 28.245436>,  <31.351110, 35.305202, 28.577143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670450, 35.477772, 28.245436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897806, 35.803822, 28.200699>,  <31.034220, 35.999451, 28.173857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897806, 35.803822, 28.200699>,  <30.670450, 35.477772, 28.245436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897806, 35.803822, 28.200699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207175, 0.010238, -0.978250,
		-0.796248, 0.579200, 0.174692,
		0.568391, 0.815121, -0.111844,
		31.068323, 36.048359, 28.167145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275023, 36.025494, 27.828362>,  <30.670450, 35.477772, 28.245436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275023, 36.025494, 27.828362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666437, 36.098309, 27.789734>,  <30.901287, 36.141998, 27.766558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666437, 36.098309, 27.789734>,  <30.275023, 36.025494, 27.828362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666437, 36.098309, 27.789734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069859, -0.147819, -0.986544,
		-0.193862, 0.972118, -0.131929,
		0.978538, 0.182037, -0.096567,
		30.959999, 36.152920, 27.760763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479042, 36.537331, 27.272646>,  <30.275023, 36.025494, 27.828362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479042, 36.537331, 27.272646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781641, 36.279869, 27.318985>,  <30.963200, 36.125393, 27.346788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781641, 36.279869, 27.318985>,  <30.479042, 36.537331, 27.272646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781641, 36.279869, 27.318985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099247, -0.062099, -0.993123,
		0.646423, 0.762792, 0.016903,
		0.756497, -0.643655, 0.115847,
		31.008591, 36.086773, 27.353739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777620, 36.692455, 26.673025>,  <30.479042, 36.537331, 27.272646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777620, 36.692455, 26.673025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951086, 36.351154, 26.788881>,  <31.055166, 36.146374, 26.858395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951086, 36.351154, 26.788881>,  <30.777620, 36.692455, 26.673025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951086, 36.351154, 26.788881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132145, -0.257742, -0.957135,
		0.891332, 0.453351, 0.000979,
		0.433665, -0.853254, 0.289642,
		31.081186, 36.095177, 26.875774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466452, 36.605453, 26.331581>,  <30.777620, 36.692455, 26.673025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466452, 36.605453, 26.331581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403542, 36.229179, 26.451838>,  <31.365795, 36.003414, 26.523991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403542, 36.229179, 26.451838>,  <31.466452, 36.605453, 26.331581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403542, 36.229179, 26.451838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427131, -0.339276, -0.838123,
		0.890406, -0.003403, 0.455154,
		-0.157275, -0.940681, 0.300640,
		31.356359, 35.946976, 26.542030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001614, 36.181244, 26.279440>,  <31.466452, 36.605453, 26.331581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001614, 36.181244, 26.279440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708853, 35.909122, 26.263927>,  <31.533195, 35.745850, 26.254620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708853, 35.909122, 26.263927>,  <32.001614, 36.181244, 26.279440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708853, 35.909122, 26.263927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326024, -0.299641, -0.896618,
		0.598353, -0.668880, 0.441104,
		-0.731903, -0.680304, -0.038779,
		31.489283, 35.705032, 26.252295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310623, 35.543297, 26.020609>,  <32.001614, 36.181244, 26.279440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310623, 35.543297, 26.020609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917591, 35.483120, 25.976967>,  <31.681772, 35.447014, 25.950781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917591, 35.483120, 25.976967>,  <32.310623, 35.543297, 26.020609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917591, 35.483120, 25.976967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164348, -0.429342, -0.888062,
		0.086763, -0.890523, 0.446588,
		-0.982579, -0.150447, -0.109105,
		31.622818, 35.437984, 25.944235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248459, 34.833733, 25.804661>,  <32.310623, 35.543297, 26.020609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248459, 34.833733, 25.804661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883070, 34.975018, 25.723864>,  <31.663836, 35.059788, 25.675385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883070, 34.975018, 25.723864>,  <32.248459, 34.833733, 25.804661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883070, 34.975018, 25.723864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050289, -0.590630, -0.805374,
		-0.403773, -0.725531, 0.557289,
		-0.913476, 0.353214, -0.201994,
		31.609028, 35.080982, 25.663265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889091, 34.280190, 25.661610>,  <32.248459, 34.833733, 25.804661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889091, 34.280190, 25.661610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687405, 34.578682, 25.487755>,  <31.566393, 34.757778, 25.383442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687405, 34.578682, 25.487755>,  <31.889091, 34.280190, 25.661610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687405, 34.578682, 25.487755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139396, -0.567028, -0.811818,
		-0.852251, -0.348748, 0.389927,
		-0.504219, 0.746227, -0.434636,
		31.536139, 34.802551, 25.357365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200577, 34.021458, 25.394913>,  <31.889091, 34.280190, 25.661610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200577, 34.021458, 25.394913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335070, 34.332413, 25.182266>,  <31.415766, 34.518986, 25.054678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335070, 34.332413, 25.182266>,  <31.200577, 34.021458, 25.394913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335070, 34.332413, 25.182266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170395, -0.504951, -0.846162,
		-0.926236, 0.375091, -0.037318,
		0.336232, 0.777387, -0.531618,
		31.435940, 34.565628, 25.022781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733328, 34.081406, 24.905304>,  <31.200577, 34.021458, 25.394913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733328, 34.081406, 24.905304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059309, 34.276997, 24.780886>,  <31.254898, 34.394352, 24.706236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059309, 34.276997, 24.780886>,  <30.733328, 34.081406, 24.905304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059309, 34.276997, 24.780886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121169, -0.381088, -0.916564,
		-0.566716, 0.784647, -0.251320,
		0.814954, 0.488980, -0.311044,
		31.303795, 34.423691, 24.687572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562828, 34.168976, 24.261078>,  <30.733328, 34.081406, 24.905304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562828, 34.168976, 24.261078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952694, 34.257202, 24.246210>,  <31.186613, 34.310139, 24.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952694, 34.257202, 24.246210>,  <30.562828, 34.168976, 24.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952694, 34.257202, 24.246210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084472, -0.516843, -0.851903,
		-0.207110, 0.827179, -0.522380,
		0.974664, 0.220564, -0.037170,
		31.245092, 34.323372, 24.235060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692097, 34.415546, 23.521233>,  <30.562828, 34.168976, 24.261078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692097, 34.415546, 23.521233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047888, 34.304432, 23.666372>,  <31.261362, 34.237762, 23.753456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047888, 34.304432, 23.666372>,  <30.692097, 34.415546, 23.521233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047888, 34.304432, 23.666372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113429, -0.634971, -0.764163,
		0.442673, 0.720866, -0.533285,
		0.889480, -0.277785, 0.362851,
		31.314732, 34.221096, 23.775229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040207, 34.254578, 23.002716>,  <30.692097, 34.415546, 23.521233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040207, 34.254578, 23.002716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292929, 34.069099, 23.251169>,  <31.444561, 33.957813, 23.400240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292929, 34.069099, 23.251169>,  <31.040207, 34.254578, 23.002716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292929, 34.069099, 23.251169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330699, -0.563487, -0.757047,
		0.701042, 0.683714, -0.202669,
		0.631805, -0.463700, 0.621132,
		31.482470, 33.929989, 23.437510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522079, 34.098190, 22.500854>,  <31.040207, 34.254578, 23.002716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522079, 34.098190, 22.500854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587444, 33.850525, 22.808084>,  <31.626663, 33.701927, 22.992422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587444, 33.850525, 22.808084>,  <31.522079, 34.098190, 22.500854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587444, 33.850525, 22.808084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252648, -0.726313, -0.639248,
		0.953659, 0.298512, 0.037743,
		0.163410, -0.619161, 0.768073,
		31.636467, 33.664776, 23.038507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273758, 33.716297, 22.381559>,  <31.522079, 34.098190, 22.500854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273758, 33.716297, 22.381559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076710, 33.483330, 22.640205>,  <31.958481, 33.343548, 22.795393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076710, 33.483330, 22.640205>,  <32.273758, 33.716297, 22.381559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076710, 33.483330, 22.640205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078793, -0.769827, -0.633370,
		0.866669, -0.261063, 0.425124,
		-0.492622, -0.582419, 0.646616,
		31.928923, 33.308605, 22.834190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722366, 33.176704, 22.395008>,  <32.273758, 33.716297, 22.381559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722366, 33.176704, 22.395008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372971, 33.047802, 22.540977>,  <32.163334, 32.970459, 22.628559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372971, 33.047802, 22.540977>,  <32.722366, 33.176704, 22.395008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372971, 33.047802, 22.540977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075933, -0.830571, -0.551712,
		0.480890, -0.454203, 0.749963,
		-0.873486, -0.322259, 0.364925,
		32.110924, 32.951126, 22.650455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850731, 32.464405, 22.391304>,  <32.722366, 33.176704, 22.395008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850731, 32.464405, 22.391304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455315, 32.524269, 22.383444>,  <32.218063, 32.560188, 22.378727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455315, 32.524269, 22.383444>,  <32.850731, 32.464405, 22.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455315, 32.524269, 22.383444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089560, -0.686346, -0.721740,
		-0.121502, -0.711711, 0.691885,
		-0.988543, 0.149657, -0.019652,
		32.158752, 32.569168, 22.377548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554970, 31.811319, 22.378216>,  <32.850731, 32.464405, 22.391304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554970, 31.811319, 22.378216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265293, 32.041790, 22.226658>,  <32.091488, 32.180073, 22.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265293, 32.041790, 22.226658>,  <32.554970, 31.811319, 22.378216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265293, 32.041790, 22.226658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037931, -0.581894, -0.812379,
		-0.688553, -0.573948, 0.443259,
		-0.724193, 0.576180, -0.378895,
		32.048035, 32.214645, 22.112989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856186, 31.676556, 21.961393>,  <32.554970, 31.811319, 22.378216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856186, 31.676556, 21.961393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126751, 31.383486, 21.931318>,  <32.289089, 31.207644, 21.913273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126751, 31.383486, 21.931318>,  <31.856186, 31.676556, 21.961393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126751, 31.383486, 21.931318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146771, 0.034051, 0.988584,
		-0.721751, -0.679726, 0.130568,
		0.676413, -0.732675, -0.075188,
		32.329674, 31.163683, 21.908762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771511, 31.173780, 22.431932>,  <31.856186, 31.676556, 21.961393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771511, 31.173780, 22.431932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159214, 31.151644, 22.336033>,  <32.391834, 31.138361, 22.278494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159214, 31.151644, 22.336033>,  <31.771511, 31.173780, 22.431932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159214, 31.151644, 22.336033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245738, 0.168489, 0.954581,
		-0.012434, -0.984149, 0.176908,
		0.969256, -0.055343, -0.239748,
		32.449989, 31.135042, 22.264109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115002, 30.501600, 22.668554>,  <31.771511, 31.173780, 22.431932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115002, 30.501600, 22.668554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405136, 30.775875, 22.644157>,  <32.579216, 30.940439, 22.629519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405136, 30.775875, 22.644157>,  <32.115002, 30.501600, 22.668554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405136, 30.775875, 22.644157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077143, 0.007079, 0.996995,
		0.684059, -0.727861, -0.047761,
		0.725336, 0.685688, -0.060992,
		32.622738, 30.981581, 22.625860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552956, 30.343876, 23.118021>,  <32.115002, 30.501600, 22.668554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552956, 30.343876, 23.118021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710068, 30.704185, 23.043917>,  <32.804337, 30.920372, 22.999454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710068, 30.704185, 23.043917>,  <32.552956, 30.343876, 23.118021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710068, 30.704185, 23.043917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125329, 0.147142, 0.981143,
		0.911050, -0.408597, -0.055099,
		0.392785, 0.900776, -0.185263,
		32.827904, 30.974419, 22.988338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222652, 30.368025, 23.505106>,  <32.552956, 30.343876, 23.118021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222652, 30.368025, 23.505106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118347, 30.747984, 23.436174>,  <33.055763, 30.975960, 23.394815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118347, 30.747984, 23.436174>,  <33.222652, 30.368025, 23.505106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118347, 30.747984, 23.436174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197341, 0.227184, 0.953648,
		0.945019, 0.214665, -0.246694,
		-0.260760, 0.949898, -0.172331,
		33.040119, 31.032953, 23.384476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513447, 30.664286, 24.018059>,  <33.222652, 30.368025, 23.505106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513447, 30.664286, 24.018059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292423, 30.981855, 23.916580>,  <33.159809, 31.172398, 23.855692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292423, 30.981855, 23.916580>,  <33.513447, 30.664286, 24.018059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292423, 30.981855, 23.916580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254501, 0.450565, 0.855699,
		0.793670, 0.408255, -0.451017,
		-0.552556, 0.793927, -0.253698,
		33.126656, 31.220034, 23.840471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865437, 31.273064, 24.267881>,  <33.513447, 30.664286, 24.018059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865437, 31.273064, 24.267881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477589, 31.364029, 24.231829>,  <33.244881, 31.418608, 24.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477589, 31.364029, 24.231829>,  <33.865437, 31.273064, 24.267881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477589, 31.364029, 24.231829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, 0.423142, 0.905939,
		0.244162, 0.877060, -0.413703,
		-0.969618, 0.227414, -0.090134,
		33.186703, 31.432253, 24.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985973, 32.007893, 24.433455>,  <33.865437, 31.273064, 24.267881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985973, 32.007893, 24.433455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614697, 31.865047, 24.475266>,  <33.391930, 31.779341, 24.500351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614697, 31.865047, 24.475266>,  <33.985973, 32.007893, 24.433455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614697, 31.865047, 24.475266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146148, 0.608227, 0.780192,
		-0.342191, 0.708894, -0.616744,
		-0.928195, -0.357111, 0.104527,
		33.336239, 31.757914, 24.506624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658180, 32.611416, 24.581860>,  <33.985973, 32.007893, 24.433455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658180, 32.611416, 24.581860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432465, 32.309891, 24.716524>,  <33.297035, 32.128975, 24.797323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432465, 32.309891, 24.716524>,  <33.658180, 32.611416, 24.581860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432465, 32.309891, 24.716524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197311, 0.519117, 0.831617,
		-0.801649, 0.402849, -0.441669,
		-0.564294, -0.753811, 0.336663,
		33.263176, 32.083748, 24.817522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161636, 32.972450, 24.774706>,  <33.658180, 32.611416, 24.581860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161636, 32.972450, 24.774706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139389, 32.616653, 24.956131>,  <33.126041, 32.403175, 25.064985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139389, 32.616653, 24.956131>,  <33.161636, 32.972450, 24.774706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139389, 32.616653, 24.956131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059287, 0.456405, 0.887795,
		-0.996690, 0.022487, -0.078120,
		-0.055618, -0.889488, 0.453561,
		33.122704, 32.349808, 25.092199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580959, 33.066338, 25.267567>,  <33.161636, 32.972450, 24.774706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580959, 33.066338, 25.267567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774361, 32.736271, 25.384411>,  <32.890404, 32.538231, 25.454517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774361, 32.736271, 25.384411>,  <32.580959, 33.066338, 25.267567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774361, 32.736271, 25.384411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039864, 0.312608, 0.949045,
		-0.874433, -0.470514, 0.118253,
		0.483506, -0.825162, 0.292112,
		32.919411, 32.488724, 25.472044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321831, 32.845139, 25.861931>,  <32.580959, 33.066338, 25.267567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321831, 32.845139, 25.861931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679588, 32.669605, 25.896526>,  <32.894241, 32.564285, 25.917284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679588, 32.669605, 25.896526>,  <32.321831, 32.845139, 25.861931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679588, 32.669605, 25.896526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025044, 0.143925, 0.989272,
		-0.446577, -0.886965, 0.117736,
		0.894395, -0.438837, 0.086487,
		32.947906, 32.537952, 25.922472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197315, 32.293037, 26.456663>,  <32.321831, 32.845139, 25.861931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197315, 32.293037, 26.456663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568352, 32.436050, 26.413322>,  <32.790974, 32.521858, 26.387318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568352, 32.436050, 26.413322>,  <32.197315, 32.293037, 26.456663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568352, 32.436050, 26.413322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056326, 0.152877, 0.986639,
		0.369319, -0.921303, 0.121670,
		0.927594, 0.357531, -0.108354,
		32.846630, 32.543308, 26.380816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702309, 31.969110, 26.933170>,  <32.197315, 32.293037, 26.456663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702309, 31.969110, 26.933170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805267, 32.347374, 26.853693>,  <32.867043, 32.574333, 26.806007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805267, 32.347374, 26.853693>,  <32.702309, 31.969110, 26.933170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805267, 32.347374, 26.853693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085280, 0.182586, 0.979484,
		0.962535, -0.269062, -0.033648,
		0.257398, 0.945657, -0.198691,
		32.882488, 32.631073, 26.794086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197052, 32.189548, 27.531063>,  <32.702309, 31.969110, 26.933170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197052, 32.189548, 27.531063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092854, 32.531956, 27.352461>,  <33.030334, 32.737400, 27.245300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092854, 32.531956, 27.352461>,  <33.197052, 32.189548, 27.531063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092854, 32.531956, 27.352461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148975, 0.421296, 0.894604,
		0.953911, 0.299561, 0.017779,
		-0.260499, 0.856022, -0.446506,
		33.014706, 32.788761, 27.218510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627029, 32.665710, 27.787931>,  <33.197052, 32.189548, 27.531063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627029, 32.665710, 27.787931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304066, 32.868553, 27.667315>,  <33.110287, 32.990261, 27.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304066, 32.868553, 27.667315>,  <33.627029, 32.665710, 27.787931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304066, 32.868553, 27.667315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030762, 0.546583, 0.836839,
		0.589187, 0.666397, -0.456917,
		-0.807411, 0.507111, -0.301540,
		33.061844, 33.020687, 27.576853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824493, 33.234467, 27.918140>,  <33.627029, 32.665710, 27.787931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824493, 33.234467, 27.918140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431061, 33.290607, 27.872776>,  <33.195000, 33.324291, 27.845558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431061, 33.290607, 27.872776>,  <33.824493, 33.234467, 27.918140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431061, 33.290607, 27.872776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029330, 0.495789, 0.867948,
		0.178050, 0.857026, -0.483534,
		-0.983584, 0.140356, -0.113411,
		33.135986, 33.332714, 27.838753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706436, 33.904545, 27.938684>,  <33.824493, 33.234467, 27.918140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706436, 33.904545, 27.938684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350697, 33.747154, 28.031837>,  <33.137253, 33.652718, 28.087730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350697, 33.747154, 28.031837>,  <33.706436, 33.904545, 27.938684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350697, 33.747154, 28.031837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019115, 0.476893, 0.878753,
		-0.456831, 0.785969, -0.416603,
		-0.889348, -0.393478, 0.232884,
		33.083893, 33.629112, 28.101702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194683, 34.436630, 28.195932>,  <33.706436, 33.904545, 27.938684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194683, 34.436630, 28.195932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028000, 34.100491, 28.334595>,  <32.927990, 33.898808, 28.417793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028000, 34.100491, 28.334595>,  <33.194683, 34.436630, 28.195932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028000, 34.100491, 28.334595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219265, 0.463001, 0.858809,
		-0.882201, 0.281861, -0.377194,
		-0.416706, -0.840348, 0.346658,
		32.902988, 33.848385, 28.438593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468735, 34.608307, 28.448500>,  <33.194683, 34.436630, 28.195932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468735, 34.608307, 28.448500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582207, 34.261482, 28.612318>,  <32.650291, 34.053387, 28.710609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582207, 34.261482, 28.612318>,  <32.468735, 34.608307, 28.448500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582207, 34.261482, 28.612318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096837, 0.399005, 0.911821,
		-0.954017, -0.298325, 0.029226,
		0.283680, -0.867063, 0.409546,
		32.667313, 34.001362, 28.735182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068707, 34.553055, 29.085007>,  <32.468735, 34.608307, 28.448500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068707, 34.553055, 29.085007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373810, 34.295185, 29.105398>,  <32.556870, 34.140465, 29.117634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373810, 34.295185, 29.105398>,  <32.068707, 34.553055, 29.085007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373810, 34.295185, 29.105398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150170, 0.253247, 0.955675,
		-0.629010, -0.721291, 0.289976,
		0.762755, -0.644675, 0.050978,
		32.602638, 34.101784, 29.120691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013294, 34.401306, 29.781345>,  <32.068707, 34.553055, 29.085007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013294, 34.401306, 29.781345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377399, 34.262646, 29.690783>,  <32.595863, 34.179447, 29.636444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377399, 34.262646, 29.690783>,  <32.013294, 34.401306, 29.781345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377399, 34.262646, 29.690783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387699, 0.521699, 0.759947,
		-0.145323, -0.779526, 0.609279,
		0.910259, -0.346655, -0.226407,
		32.650478, 34.158649, 29.622860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356377, 33.972984, 30.293779>,  <32.013294, 34.401306, 29.781345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356377, 33.972984, 30.293779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678001, 34.083763, 30.083340>,  <32.870979, 34.150230, 29.957077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678001, 34.083763, 30.083340>,  <32.356377, 33.972984, 30.293779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678001, 34.083763, 30.083340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379518, 0.442057, 0.812743,
		0.457654, -0.853162, 0.250336,
		0.804064, 0.276948, -0.526099,
		32.919220, 34.166847, 29.925510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955715, 33.693817, 30.653227>,  <32.356377, 33.972984, 30.293779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955715, 33.693817, 30.653227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080479, 34.005127, 30.435238>,  <33.155338, 34.191914, 30.304443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080479, 34.005127, 30.435238>,  <32.955715, 33.693817, 30.653227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080479, 34.005127, 30.435238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600004, 0.283392, 0.748120,
		0.736686, -0.560333, -0.378576,
		0.311911, 0.778277, -0.544973,
		33.174053, 34.238609, 30.271746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704117, 33.636974, 30.493208>,  <32.955715, 33.693817, 30.653227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704117, 33.636974, 30.493208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586395, 34.018623, 30.471142>,  <33.515762, 34.247612, 30.457903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586395, 34.018623, 30.471142>,  <33.704117, 33.636974, 30.493208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586395, 34.018623, 30.471142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670033, 0.247146, 0.699982,
		0.681499, 0.169047, -0.712027,
		-0.294304, 0.954118, -0.055163,
		33.498104, 34.304859, 30.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240635, 33.933830, 30.773031>,  <33.704117, 33.636974, 30.493208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240635, 33.933830, 30.773031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982311, 34.239231, 30.772009>,  <33.827316, 34.422470, 30.771397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982311, 34.239231, 30.772009>,  <34.240635, 33.933830, 30.773031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982311, 34.239231, 30.772009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537314, 0.456859, 0.708924,
		0.542430, 0.456454, -0.705280,
		-0.645805, 0.763498, -0.002555,
		33.788570, 34.468281, 30.771242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662655, 34.661999, 30.705368>,  <34.240635, 33.933830, 30.773031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662655, 34.661999, 30.705368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301975, 34.717762, 30.869076>,  <34.085567, 34.751221, 30.967300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301975, 34.717762, 30.869076>,  <34.662655, 34.661999, 30.705368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301975, 34.717762, 30.869076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417869, 0.524003, 0.742163,
		-0.110994, 0.840230, -0.530749,
		-0.901702, 0.139407, 0.409267,
		34.031464, 34.759583, 30.991856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750378, 35.402004, 30.989395>,  <34.662655, 34.661999, 30.705368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750378, 35.402004, 30.989395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426620, 35.238377, 31.157940>,  <34.232365, 35.140198, 31.259066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426620, 35.238377, 31.157940>,  <34.750378, 35.402004, 30.989395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426620, 35.238377, 31.157940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228487, 0.441605, 0.867628,
		-0.540996, 0.798527, -0.263965,
		-0.809393, -0.409071, 0.421360,
		34.183804, 35.115654, 31.284348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498734, 35.960396, 31.290791>,  <34.750378, 35.402004, 30.989395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498734, 35.960396, 31.290791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326603, 35.658745, 31.489229>,  <34.223324, 35.477757, 31.608292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326603, 35.658745, 31.489229>,  <34.498734, 35.960396, 31.290791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326603, 35.658745, 31.489229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235859, 0.436558, 0.868209,
		-0.871313, 0.490625, -0.009997,
		-0.430330, -0.754125, 0.496097,
		34.197506, 35.432507, 31.638058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073223, 36.168900, 31.818602>,  <34.498734, 35.960396, 31.290791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073223, 36.168900, 31.818602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185238, 35.803715, 31.937315>,  <34.252445, 35.584602, 32.008545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185238, 35.803715, 31.937315>,  <34.073223, 36.168900, 31.818602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185238, 35.803715, 31.937315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300176, 0.376926, 0.876254,
		-0.911851, -0.156297, 0.379603,
		0.280038, -0.912961, 0.296783,
		34.269249, 35.529827, 32.026352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082375, 36.316082, 32.457691>,  <34.073223, 36.168900, 31.818602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082375, 36.316082, 32.457691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244984, 35.950764, 32.467739>,  <34.342548, 35.731575, 32.473766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244984, 35.950764, 32.467739>,  <34.082375, 36.316082, 32.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244984, 35.950764, 32.467739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288277, 0.154308, 0.945032,
		-0.866967, -0.376941, 0.326012,
		0.406527, -0.913293, 0.025116,
		34.366943, 35.676777, 32.475273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888832, 36.065578, 33.127075>,  <34.082375, 36.316082, 32.457691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888832, 36.065578, 33.127075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188717, 35.842724, 32.984230>,  <34.368649, 35.709011, 32.898525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188717, 35.842724, 32.984230>,  <33.888832, 36.065578, 33.127075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188717, 35.842724, 32.984230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348078, -0.126962, 0.928828,
		-0.562825, -0.820657, 0.098742,
		0.749713, -0.557138, -0.357111,
		34.413631, 35.675583, 32.877098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901676, 35.575062, 33.525116>,  <33.888832, 36.065578, 33.127075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901676, 35.575062, 33.525116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265614, 35.543007, 33.362259>,  <34.483974, 35.523773, 33.264545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265614, 35.543007, 33.362259>,  <33.901676, 35.575062, 33.525116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265614, 35.543007, 33.362259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399431, -0.096721, 0.911647,
		-0.112450, -0.992079, -0.055986,
		0.909841, -0.080152, -0.407143,
		34.538567, 35.518967, 33.240116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118523, 34.924206, 33.742176>,  <33.901676, 35.575062, 33.525116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118523, 34.924206, 33.742176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447296, 35.138474, 33.664726>,  <34.644558, 35.267033, 33.618256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447296, 35.138474, 33.664726>,  <34.118523, 34.924206, 33.742176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447296, 35.138474, 33.664726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284761, -0.092042, 0.954169,
		0.493294, -0.839399, -0.228189,
		0.821932, 0.535665, -0.193625,
		34.693874, 35.299171, 33.606640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625877, 34.630802, 34.179245>,  <34.118523, 34.924206, 33.742176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625877, 34.630802, 34.179245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797253, 34.966049, 34.044193>,  <34.900078, 35.167198, 33.963161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797253, 34.966049, 34.044193>,  <34.625877, 34.630802, 34.179245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797253, 34.966049, 34.044193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575840, 0.034687, 0.816826,
		0.696311, -0.544378, -0.467764,
		0.428437, 0.838122, -0.337628,
		34.925785, 35.217487, 33.942905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299286, 34.554111, 34.237061>,  <34.625877, 34.630802, 34.179245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299286, 34.554111, 34.237061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263706, 34.951344, 34.206375>,  <35.242359, 35.189682, 34.187965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263706, 34.951344, 34.206375>,  <35.299286, 34.554111, 34.237061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263706, 34.951344, 34.206375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636095, 0.115905, 0.762856,
		0.766467, 0.019059, -0.642001,
		-0.088951, 0.993077, -0.076714,
		35.237022, 35.249268, 34.183361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086521, 34.834347, 34.215969>,  <35.299286, 34.554111, 34.237061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086521, 34.834347, 34.215969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812637, 35.089001, 34.357880>,  <35.648308, 35.241795, 34.443027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812637, 35.089001, 34.357880>,  <36.086521, 34.834347, 34.215969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812637, 35.089001, 34.357880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431305, -0.038439, 0.901387,
		0.587493, 0.770206, -0.248265,
		-0.684710, 0.636636, 0.354777,
		35.607224, 35.279991, 34.464314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459511, 35.338318, 34.677715>,  <36.086521, 34.834347, 34.215969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459511, 35.338318, 34.677715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076935, 35.374817, 34.788635>,  <35.847389, 35.396717, 34.855186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076935, 35.374817, 34.788635>,  <36.459511, 35.338318, 34.677715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076935, 35.374817, 34.788635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286072, 0.103688, 0.952582,
		0.058169, 0.990415, -0.125275,
		-0.956441, 0.091248, 0.277299,
		35.790001, 35.402191, 34.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344929, 35.975254, 35.050400>,  <36.459511, 35.338318, 34.677715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344929, 35.975254, 35.050400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070477, 35.715519, 35.181606>,  <35.905807, 35.559677, 35.260330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070477, 35.715519, 35.181606>,  <36.344929, 35.975254, 35.050400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070477, 35.715519, 35.181606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191724, 0.273545, 0.942558,
		-0.701763, 0.709602, -0.063194,
		-0.686127, -0.649337, 0.328012,
		35.864639, 35.520718, 35.280010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868843, 36.354950, 35.434109>,  <36.344929, 35.975254, 35.050400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868843, 36.354950, 35.434109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872429, 35.971924, 35.549339>,  <35.874580, 35.742107, 35.618477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872429, 35.971924, 35.549339>,  <35.868843, 36.354950, 35.434109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872429, 35.971924, 35.549339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546171, 0.246008, 0.800735,
		-0.837626, 0.150156, 0.525202,
		0.008969, -0.957566, 0.288074,
		35.875118, 35.684654, 35.635761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536076, 36.180683, 36.138622>,  <35.868843, 36.354950, 35.434109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536076, 36.180683, 36.138622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828777, 35.920933, 36.055824>,  <36.004398, 35.765083, 36.006145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828777, 35.920933, 36.055824>,  <35.536076, 36.180683, 36.138622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828777, 35.920933, 36.055824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503799, 0.310801, 0.805971,
		-0.459040, -0.694060, 0.554584,
		0.731758, -0.649372, -0.206997,
		36.048306, 35.726120, 35.993725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739376, 35.861755, 36.771740>,  <35.536076, 36.180683, 36.138622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739376, 35.861755, 36.771740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051464, 35.800751, 36.529091>,  <36.238716, 35.764149, 36.383503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051464, 35.800751, 36.529091>,  <35.739376, 35.861755, 36.771740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051464, 35.800751, 36.529091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624983, 0.150650, 0.765964,
		-0.025429, -0.976752, 0.212857,
		0.780224, -0.152510, -0.606623,
		36.285530, 35.754997, 36.347103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208763, 35.478653, 37.029629>,  <35.739376, 35.861755, 36.771740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208763, 35.478653, 37.029629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449394, 35.640106, 36.753895>,  <36.593773, 35.736977, 36.588455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449394, 35.640106, 36.753895>,  <36.208763, 35.478653, 37.029629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449394, 35.640106, 36.753895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746753, 0.022278, 0.664728,
		0.283661, -0.914651, -0.288010,
		0.601578, 0.403630, -0.689338,
		36.629868, 35.761196, 36.547092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914062, 35.148678, 37.212135>,  <36.208763, 35.478653, 37.029629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914062, 35.148678, 37.212135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051785, 35.445766, 36.982414>,  <37.134418, 35.624020, 36.844582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051785, 35.445766, 36.982414>,  <36.914062, 35.148678, 37.212135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051785, 35.445766, 36.982414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817931, 0.063013, 0.571856,
		0.460918, -0.666629, -0.585799,
		0.344302, 0.742721, -0.574300,
		37.155075, 35.668583, 36.810123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586571, 34.983543, 37.040001>,  <36.914062, 35.148678, 37.212135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586571, 34.983543, 37.040001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506371, 35.375420, 37.038853>,  <37.458252, 35.610546, 37.038166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506371, 35.375420, 37.038853>,  <37.586571, 34.983543, 37.040001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506371, 35.375420, 37.038853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692444, 0.143784, 0.706999,
		0.693052, 0.139768, -0.707209,
		-0.200502, 0.979689, -0.002868,
		37.446220, 35.669327, 37.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209217, 35.298016, 37.051006>,  <37.586571, 34.983543, 37.040001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209217, 35.298016, 37.051006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956139, 35.594498, 37.140720>,  <37.804291, 35.772388, 37.194550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956139, 35.594498, 37.140720>,  <38.209217, 35.298016, 37.051006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956139, 35.594498, 37.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709945, 0.439491, 0.550296,
		0.309311, 0.507402, -0.804282,
		-0.632696, 0.741209, 0.224288,
		37.766331, 35.816860, 37.208008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543636, 35.855892, 36.814411>,  <38.209217, 35.298016, 37.051006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543636, 35.855892, 36.814411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308212, 35.959591, 37.120712>,  <38.166958, 36.021812, 37.304493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308212, 35.959591, 37.120712>,  <38.543636, 35.855892, 36.814411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308212, 35.959591, 37.120712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767455, 0.476961, 0.428393,
		-0.254175, 0.839820, -0.479685,
		-0.588564, 0.259250, 0.765756,
		38.131641, 36.037365, 37.350437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817318, 36.461681, 37.072483>,  <38.543636, 35.855892, 36.814411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817318, 36.461681, 37.072483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575985, 36.358006, 37.374161>,  <38.431187, 36.295799, 37.555168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575985, 36.358006, 37.374161>,  <38.817318, 36.461681, 37.072483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575985, 36.358006, 37.374161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602301, 0.471771, 0.643946,
		-0.522713, 0.842765, -0.128523,
		-0.603328, -0.259189, 0.754199,
		38.394985, 36.280251, 37.600422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519650, 36.958881, 37.357193>,  <38.817318, 36.461681, 37.072483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519650, 36.958881, 37.357193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597050, 36.651108, 37.600677>,  <38.643490, 36.466442, 37.746769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597050, 36.651108, 37.600677>,  <38.519650, 36.958881, 37.357193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597050, 36.651108, 37.600677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746783, 0.517896, 0.417252,
		-0.636297, 0.373840, 0.674811,
		0.193496, -0.769433, 0.608713,
		38.655098, 36.420277, 37.783291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548889, 37.195393, 38.022507>,  <38.519650, 36.958881, 37.357193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548889, 37.195393, 38.022507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779408, 36.869148, 38.001877>,  <38.917717, 36.673401, 37.989498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779408, 36.869148, 38.001877>,  <38.548889, 37.195393, 38.022507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779408, 36.869148, 38.001877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763607, 0.514911, 0.389577,
		-0.291188, -0.263894, 0.919549,
		0.576293, -0.815614, -0.051575,
		38.952293, 36.624462, 37.986404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900059, 37.318474, 38.671017>,  <38.548889, 37.195393, 38.022507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900059, 37.318474, 38.671017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082260, 37.034569, 38.456074>,  <39.191582, 36.864227, 38.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082260, 37.034569, 38.456074>,  <38.900059, 37.318474, 38.671017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082260, 37.034569, 38.456074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829455, 0.119153, 0.545717,
		-0.323301, -0.694290, 0.642991,
		0.455500, -0.709763, -0.537360,
		39.218910, 36.821640, 38.294865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240616, 36.698914, 39.101017>,  <38.900059, 37.318474, 38.671017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240616, 36.698914, 39.101017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423386, 36.771999, 38.752804>,  <39.533047, 36.815853, 38.543877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423386, 36.771999, 38.752804>,  <39.240616, 36.698914, 39.101017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423386, 36.771999, 38.752804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851710, 0.192379, 0.487422,
		0.256534, -0.964160, -0.067720,
		0.456925, 0.182718, -0.870536,
		39.560463, 36.826817, 38.491642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930805, 36.963402, 39.312992>,  <39.240616, 36.698914, 39.101017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930805, 36.963402, 39.312992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016754, 36.947330, 38.922665>,  <40.068325, 36.937687, 38.688469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016754, 36.947330, 38.922665>,  <39.930805, 36.963402, 39.312992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016754, 36.947330, 38.922665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874347, 0.453083, 0.173874,
		0.435139, -0.890562, 0.132486,
		0.214873, -0.040180, -0.975815,
		40.081215, 36.935276, 38.629921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615608, 36.683041, 39.188457>,  <39.930805, 36.963402, 39.312992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615608, 36.683041, 39.188457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519913, 36.925594, 38.885124>,  <40.462498, 37.071125, 38.703125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519913, 36.925594, 38.885124>,  <40.615608, 36.683041, 39.188457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519913, 36.925594, 38.885124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875999, 0.471662, 0.100798,
		0.418797, -0.640181, -0.644032,
		-0.239236, 0.606386, -0.758329,
		40.448143, 37.107510, 38.657627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252064, 36.810776, 38.893299>,  <40.615608, 36.683041, 39.188457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252064, 36.810776, 38.893299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998379, 37.092377, 38.765457>,  <40.846169, 37.261337, 38.688751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998379, 37.092377, 38.765457>,  <41.252064, 36.810776, 38.893299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998379, 37.092377, 38.765457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760668, 0.642161, -0.094939,
		0.138403, -0.303328, -0.942781,
		-0.634215, 0.704004, -0.319609,
		40.808113, 37.303577, 38.669575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603642, 37.039757, 38.400951>,  <41.252064, 36.810776, 38.893299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603642, 37.039757, 38.400951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319984, 37.315704, 38.459183>,  <41.149792, 37.481274, 38.494122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319984, 37.315704, 38.459183>,  <41.603642, 37.039757, 38.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319984, 37.315704, 38.459183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658681, 0.721869, -0.212237,
		-0.251505, -0.054617, -0.966314,
		-0.709144, 0.689871, 0.145578,
		41.107243, 37.522667, 38.502857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683826, 37.563686, 37.851456>,  <41.603642, 37.039757, 38.400951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683826, 37.563686, 37.851456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513252, 37.747097, 38.163326>,  <41.410908, 37.857143, 38.350449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513252, 37.747097, 38.163326>,  <41.683826, 37.563686, 37.851456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513252, 37.747097, 38.163326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564571, 0.808390, -0.166629,
		-0.706689, 0.369127, -0.603602,
		-0.426439, 0.458531, 0.779679,
		41.385319, 37.884655, 38.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457199, 38.194172, 37.571346>,  <41.683826, 37.563686, 37.851456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457199, 38.194172, 37.571346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485729, 38.256111, 37.965488>,  <41.502846, 38.293274, 38.201973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485729, 38.256111, 37.965488>,  <41.457199, 38.194172, 37.571346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485729, 38.256111, 37.965488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441885, 0.880741, -0.170394,
		-0.894232, 0.447568, -0.005611,
		0.071321, 0.154851, 0.985360,
		41.507126, 38.302567, 38.261097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184120, 38.881519, 37.622017>,  <41.457199, 38.194172, 37.571346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184120, 38.881519, 37.622017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360016, 38.827240, 37.977142>,  <41.465553, 38.794674, 38.190220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360016, 38.827240, 37.977142>,  <41.184120, 38.881519, 37.622017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360016, 38.827240, 37.977142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446765, 0.890588, -0.085165,
		-0.779124, 0.434096, 0.452246,
		0.439734, -0.135694, 0.887818,
		41.491936, 38.786533, 38.243488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025200, 39.424351, 38.170170>,  <41.184120, 38.881519, 37.622017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025200, 39.424351, 38.170170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395924, 39.278500, 38.206123>,  <41.618359, 39.190990, 38.227695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395924, 39.278500, 38.206123>,  <41.025200, 39.424351, 38.170170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395924, 39.278500, 38.206123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374828, 0.912890, -0.161668,
		-0.023108, 0.183526, 0.982743,
		0.926807, -0.364623, 0.089885,
		41.673965, 39.169113, 38.233089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386265, 39.802940, 38.682270>,  <41.025200, 39.424351, 38.170170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386265, 39.802940, 38.682270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630096, 39.654476, 38.402084>,  <41.776394, 39.565399, 38.233971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630096, 39.654476, 38.402084>,  <41.386265, 39.802940, 38.682270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630096, 39.654476, 38.402084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266963, 0.928121, -0.259464,
		0.746421, -0.028835, 0.664849,
		0.609579, -0.371160, -0.700467,
		41.812969, 39.543129, 38.191944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984436, 40.198391, 38.660393>,  <41.386265, 39.802940, 38.682270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984436, 40.198391, 38.660393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901913, 40.074825, 38.289013>,  <41.852398, 40.000687, 38.066185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901913, 40.074825, 38.289013>,  <41.984436, 40.198391, 38.660393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901913, 40.074825, 38.289013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141183, 0.929531, -0.340646,
		0.968248, -0.201358, -0.148157,
		-0.206308, -0.308912, -0.928445,
		41.840019, 39.982151, 38.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575783, 40.337101, 38.205097>,  <41.984436, 40.198391, 38.660393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575783, 40.337101, 38.205097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203709, 40.363609, 38.060673>,  <41.980465, 40.379513, 37.974018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203709, 40.363609, 38.060673>,  <42.575783, 40.337101, 38.205097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203709, 40.363609, 38.060673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116643, 0.985955, -0.119532,
		0.348070, -0.153302, -0.924849,
		-0.930184, 0.066272, -0.361063,
		41.924652, 40.383492, 37.952354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786018, 39.607189, 38.518719>,  <42.575783, 40.337101, 38.205097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786018, 39.607189, 38.518719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590919, 39.621693, 38.169827>,  <42.473858, 39.630394, 37.960491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590919, 39.621693, 38.169827>,  <42.786018, 39.607189, 38.518719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590919, 39.621693, 38.169827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848121, -0.217067, -0.483293,
		-0.206855, -0.975483, 0.075124,
		-0.487751, 0.036258, -0.872229,
		42.444595, 39.632572, 37.908157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965118, 39.011410, 38.027458>,  <42.786018, 39.607189, 38.518719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965118, 39.011410, 38.027458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840183, 39.316048, 37.800327>,  <42.765221, 39.498829, 37.664051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840183, 39.316048, 37.800327>,  <42.965118, 39.011410, 38.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840183, 39.316048, 37.800327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863126, -0.022168, -0.504503,
		-0.396812, -0.647679, -0.650425,
		-0.312337, 0.761591, -0.567825,
		42.746483, 39.544525, 37.629978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621140, 38.894882, 38.783669>,  <42.965118, 39.011410, 38.027458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621140, 38.894882, 38.783669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240925, 39.005882, 38.727848>,  <42.012794, 39.072483, 38.694355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240925, 39.005882, 38.727848>,  <42.621140, 38.894882, 38.783669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240925, 39.005882, 38.727848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302172, -0.930151, 0.208594,
		-0.071919, 0.240445, 0.967995,
		-0.950536, 0.277499, -0.139551,
		41.955765, 39.089130, 38.685982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246723, 38.566723, 39.305450>,  <42.621140, 38.894882, 38.783669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246723, 38.566723, 39.305450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992161, 38.662693, 39.012215>,  <41.839424, 38.720276, 38.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992161, 38.662693, 39.012215>,  <42.246723, 38.566723, 39.305450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992161, 38.662693, 39.012215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430087, -0.899322, 0.079032,
		-0.640325, 0.365590, 0.675520,
		-0.636403, 0.239926, -0.733094,
		41.801239, 38.734673, 38.792286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482754, 38.546989, 39.523293>,  <42.246723, 38.566723, 39.305450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482754, 38.546989, 39.523293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485111, 38.488724, 39.127567>,  <41.486526, 38.453766, 38.890133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485111, 38.488724, 39.127567>,  <41.482754, 38.546989, 39.523293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485111, 38.488724, 39.127567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701021, -0.706123, 0.099792,
		-0.713116, 0.692944, -0.106274,
		0.005893, -0.145664, -0.989317,
		41.486877, 38.445026, 38.830772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815437, 38.555824, 39.303509>,  <41.482754, 38.546989, 39.523293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815437, 38.555824, 39.303509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984150, 38.339684, 39.012272>,  <41.085377, 38.209999, 38.837528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984150, 38.339684, 39.012272>,  <40.815437, 38.555824, 39.303509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984150, 38.339684, 39.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834491, -0.545377, -0.078670,
		-0.354578, 0.640772, -0.680945,
		0.421781, -0.540348, -0.728097,
		41.110683, 38.177578, 38.793842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281380, 38.483986, 38.839771>,  <40.815437, 38.555824, 39.303509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281380, 38.483986, 38.839771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561932, 38.209435, 38.762878>,  <40.730263, 38.044704, 38.716743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561932, 38.209435, 38.762878>,  <40.281380, 38.483986, 38.839771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561932, 38.209435, 38.762878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712298, -0.684926, -0.153325,
		-0.026427, 0.244467, -0.969297,
		0.701380, -0.686376, -0.192234,
		40.772346, 38.003521, 38.705208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118298, 38.234344, 38.160271>,  <40.281380, 38.483986, 38.839771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118298, 38.234344, 38.160271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330639, 37.952641, 38.348827>,  <40.458046, 37.783619, 38.461960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330639, 37.952641, 38.348827>,  <40.118298, 38.234344, 38.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330639, 37.952641, 38.348827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643081, -0.697031, -0.317165,
		0.551940, -0.134772, -0.822921,
		0.530857, -0.704261, 0.471389,
		40.489895, 37.741364, 38.490246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083118, 37.807655, 37.616371>,  <40.118298, 38.234344, 38.160271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083118, 37.807655, 37.616371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204205, 37.594532, 37.932465>,  <40.276855, 37.466656, 38.122120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204205, 37.594532, 37.932465>,  <40.083118, 37.807655, 37.616371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204205, 37.594532, 37.932465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643077, -0.726140, -0.243255,
		0.703433, -0.434547, -0.562450,
		0.302712, -0.532813, 0.790238,
		40.295017, 37.434689, 38.169537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094250, 37.201538, 37.369419>,  <40.083118, 37.807655, 37.616371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094250, 37.201538, 37.369419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100925, 37.106888, 37.758003>,  <40.104931, 37.050098, 37.991154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100925, 37.106888, 37.758003>,  <40.094250, 37.201538, 37.369419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100925, 37.106888, 37.758003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567965, -0.801862, -0.185561,
		0.822884, -0.548657, -0.147776,
		0.016687, -0.236627, 0.971457,
		40.105930, 37.035900, 38.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176556, 36.538090, 37.416645>,  <40.094250, 37.201538, 37.369419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176556, 36.538090, 37.416645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004375, 36.625000, 37.767075>,  <39.901066, 36.677147, 37.977333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004375, 36.625000, 37.767075>,  <40.176556, 36.538090, 37.416645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004375, 36.625000, 37.767075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590303, -0.802022, -0.091127,
		0.682829, -0.556373, 0.473490,
		-0.430450, 0.217278, 0.876073,
		39.875240, 36.690182, 38.029896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887245, 35.893478, 37.553173>,  <40.176556, 36.538090, 37.416645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887245, 35.893478, 37.553173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735744, 36.153141, 37.817032>,  <39.644844, 36.308941, 37.975346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735744, 36.153141, 37.817032>,  <39.887245, 35.893478, 37.553173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735744, 36.153141, 37.817032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859445, -0.511139, 0.009541,
		0.343366, -0.563318, 0.751514,
		-0.378753, 0.649161, 0.659648,
		39.622120, 36.347889, 38.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567127, 35.473740, 38.114429>,  <39.887245, 35.893478, 37.553173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567127, 35.473740, 38.114429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390915, 35.831562, 38.084244>,  <39.285187, 36.046257, 38.066132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390915, 35.831562, 38.084244>,  <39.567127, 35.473740, 38.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390915, 35.831562, 38.084244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896370, -0.442941, -0.017990,
		-0.049517, 0.059715, 0.996987,
		-0.440532, 0.894560, -0.075460,
		39.258755, 36.099930, 38.061607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005436, 35.481010, 38.551853>,  <39.567127, 35.473740, 38.114429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005436, 35.481010, 38.551853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935669, 35.747559, 38.261879>,  <38.893810, 35.907486, 38.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935669, 35.747559, 38.261879>,  <39.005436, 35.481010, 38.551853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935669, 35.747559, 38.261879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938253, -0.335851, -0.082978,
		-0.298765, 0.665699, 0.683801,
		-0.174417, 0.666369, -0.724934,
		38.883343, 35.947468, 38.044399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238815, 35.531998, 38.517220>,  <39.005436, 35.481010, 38.551853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238815, 35.531998, 38.517220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328789, 35.678108, 38.155891>,  <38.382774, 35.765774, 37.939095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328789, 35.678108, 38.155891>,  <38.238815, 35.531998, 38.517220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328789, 35.678108, 38.155891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890250, -0.299786, -0.342904,
		-0.396055, 0.881308, 0.257752,
		0.224934, 0.365273, -0.903316,
		38.396271, 35.787689, 37.884895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633621, 35.952713, 38.612648>,  <38.238815, 35.531998, 38.517220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633621, 35.952713, 38.612648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857475, 36.067280, 38.301579>,  <37.991787, 36.136021, 38.114937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857475, 36.067280, 38.301579>,  <37.633621, 35.952713, 38.612648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857475, 36.067280, 38.301579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779939, -0.135229, -0.611071,
		-0.280185, 0.948514, 0.147708,
		0.559635, 0.286416, -0.777673,
		38.025364, 36.153206, 38.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254082, 36.421535, 38.291344>,  <37.633621, 35.952713, 38.612648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254082, 36.421535, 38.291344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515522, 36.337612, 38.000473>,  <37.672386, 36.287258, 37.825951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515522, 36.337612, 38.000473>,  <37.254082, 36.421535, 38.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515522, 36.337612, 38.000473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754584, -0.106509, -0.647501,
		0.058402, 0.971923, -0.227935,
		0.653599, -0.209812, -0.727178,
		37.711601, 36.274670, 37.782318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010677, 36.750740, 37.602440>,  <37.254082, 36.421535, 38.291344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010677, 36.750740, 37.602440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266457, 36.457943, 37.508389>,  <37.419926, 36.282265, 37.451958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266457, 36.457943, 37.508389>,  <37.010677, 36.750740, 37.602440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266457, 36.457943, 37.508389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576185, -0.253779, -0.776922,
		0.509034, 0.632279, -0.584044,
		0.639449, -0.731997, -0.235127,
		37.458290, 36.238342, 37.437851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251720, 37.041370, 36.988430>,  <37.010677, 36.750740, 37.602440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251720, 37.041370, 36.988430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277878, 36.643326, 37.018013>,  <37.293571, 36.404499, 37.035763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277878, 36.643326, 37.018013>,  <37.251720, 37.041370, 36.988430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277878, 36.643326, 37.018013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597052, -0.098403, -0.796144,
		0.799533, 0.007903, -0.600570,
		0.065390, -0.995115, 0.073958,
		37.297493, 36.344791, 37.040199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245991, 36.832935, 36.364319>,  <37.251720, 37.041370, 36.988430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245991, 36.832935, 36.364319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191586, 36.460442, 36.499554>,  <37.158943, 36.236946, 36.580692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191586, 36.460442, 36.499554>,  <37.245991, 36.832935, 36.364319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191586, 36.460442, 36.499554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534665, -0.218297, -0.816382,
		0.834047, -0.291801, -0.468207,
		-0.136013, -0.931235, 0.338086,
		37.150780, 36.181072, 36.600979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404594, 36.408482, 35.760242>,  <37.245991, 36.832935, 36.364319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404594, 36.408482, 35.760242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164997, 36.207962, 36.010014>,  <37.021236, 36.087650, 36.159874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164997, 36.207962, 36.010014>,  <37.404594, 36.408482, 35.760242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164997, 36.207962, 36.010014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647409, -0.155724, -0.746064,
		0.471237, -0.851148, -0.231265,
		-0.598997, -0.501296, 0.624424,
		36.985298, 36.057575, 36.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227715, 35.750847, 35.413536>,  <37.404594, 36.408482, 35.760242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227715, 35.750847, 35.413536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954536, 35.761463, 35.705528>,  <36.790630, 35.767834, 35.880726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954536, 35.761463, 35.705528>,  <37.227715, 35.750847, 35.413536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954536, 35.761463, 35.705528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687390, -0.361452, -0.629958,
		0.247132, -0.932013, 0.265100,
		-0.682950, 0.026545, 0.729983,
		36.749653, 35.769428, 35.924522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009583, 35.018112, 35.709110>,  <37.227715, 35.750847, 35.413536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009583, 35.018112, 35.709110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700420, 35.270638, 35.734604>,  <36.514923, 35.422153, 35.749901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700420, 35.270638, 35.734604>,  <37.009583, 35.018112, 35.709110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700420, 35.270638, 35.734604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460186, -0.488563, -0.741306,
		-0.436852, -0.602294, 0.668133,
		-0.772910, 0.631307, 0.063738,
		36.468548, 35.460030, 35.753723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783882, 34.894913, 35.500866>,  <37.009583, 35.018112, 35.709110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783882, 34.894913, 35.500866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113861, 34.743649, 35.668892>,  <38.311848, 34.652889, 35.769707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113861, 34.743649, 35.668892>,  <37.783882, 34.894913, 35.500866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113861, 34.743649, 35.668892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561263, 0.460424, -0.687745,
		0.066671, 0.803121, 0.592074,
		0.824948, -0.378162, 0.420065,
		38.361347, 34.630199, 35.794910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201397, 35.469593, 35.674484>,  <37.783882, 34.894913, 35.500866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201397, 35.469593, 35.674484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370033, 35.117828, 35.586033>,  <38.471214, 34.906769, 35.532963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370033, 35.117828, 35.586033>,  <38.201397, 35.469593, 35.674484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370033, 35.117828, 35.586033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528182, 0.436377, -0.728422,
		0.737078, 0.190299, 0.648461,
		0.421592, -0.879410, -0.221131,
		38.496510, 34.854004, 35.519695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981129, 35.362331, 35.781071>,  <38.201397, 35.469593, 35.674484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981129, 35.362331, 35.781071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816502, 35.193481, 35.457981>,  <38.717724, 35.092171, 35.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816502, 35.193481, 35.457981>,  <38.981129, 35.362331, 35.781071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816502, 35.193481, 35.457981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530154, 0.610002, -0.588927,
		0.741317, -0.670602, -0.027265,
		-0.411567, -0.422127, -0.807727,
		38.693031, 35.066845, 35.215664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439217, 35.144794, 35.163677>,  <38.981129, 35.362331, 35.781071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439217, 35.144794, 35.163677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080807, 35.244968, 35.017029>,  <38.865761, 35.305073, 34.929039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080807, 35.244968, 35.017029>,  <39.439217, 35.144794, 35.163677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080807, 35.244968, 35.017029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441943, 0.582362, -0.682306,
		0.042632, -0.773392, -0.632492,
		-0.896030, 0.250437, -0.366623,
		38.811996, 35.320099, 34.907043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134323, 35.001137, 35.360283>,  <39.439217, 35.144794, 35.163677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134323, 35.001137, 35.360283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373013, 35.302761, 35.470058>,  <40.516224, 35.483734, 35.535923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373013, 35.302761, 35.470058>,  <40.134323, 35.001137, 35.360283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373013, 35.302761, 35.470058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583869, -0.642611, 0.496133,
		0.550473, -0.135815, -0.823731,
		0.596721, 0.754060, 0.274442,
		40.552029, 35.528980, 35.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713764, 34.785988, 35.057671>,  <40.134323, 35.001137, 35.360283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713764, 34.785988, 35.057671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744026, 35.022972, 35.378487>,  <40.762184, 35.165161, 35.570976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744026, 35.022972, 35.378487>,  <40.713764, 34.785988, 35.057671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744026, 35.022972, 35.378487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710131, -0.596669, 0.373766,
		0.699993, 0.541277, -0.465863,
		0.075655, 0.592457, 0.802042,
		40.766724, 35.200710, 35.619099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407967, 35.067360, 35.162701>,  <40.713764, 34.785988, 35.057671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407967, 35.067360, 35.162701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235584, 35.019138, 35.520412>,  <41.132153, 34.990208, 35.735039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235584, 35.019138, 35.520412>,  <41.407967, 35.067360, 35.162701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235584, 35.019138, 35.520412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819637, -0.466832, 0.332058,
		0.377450, 0.876091, 0.299993,
		-0.430959, -0.120550, 0.894283,
		41.106297, 34.982975, 35.788696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443600, 35.046181, 34.376663>,  <41.407967, 35.067360, 35.162701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443600, 35.046181, 34.376663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712448, 35.273670, 34.187004>,  <41.873756, 35.410164, 34.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712448, 35.273670, 34.187004>,  <41.443600, 35.046181, 34.376663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712448, 35.273670, 34.187004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712046, -0.672086, 0.203203,
		-0.203099, -0.474187, -0.856678,
		0.672117, 0.568724, -0.474143,
		41.914082, 35.444286, 34.044762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932407, 34.619648, 34.241749>,  <41.443600, 35.046181, 34.376663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932407, 34.619648, 34.241749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113960, 34.972897, 34.194279>,  <42.222893, 35.184845, 34.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113960, 34.972897, 34.194279>,  <41.932407, 34.619648, 34.241749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113960, 34.972897, 34.194279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874905, -0.416427, 0.247246,
		0.168929, -0.216049, -0.961658,
		0.453878, 0.883126, -0.118676,
		42.250122, 35.237835, 34.158676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689751, 34.396812, 33.998806>,  <41.932407, 34.619648, 34.241749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689751, 34.396812, 33.998806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709793, 34.758778, 34.167858>,  <42.721817, 34.975956, 34.269291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709793, 34.758778, 34.167858>,  <42.689751, 34.396812, 33.998806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709793, 34.758778, 34.167858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943537, -0.181632, 0.277034,
		0.327455, 0.384889, -0.862921,
		0.050107, 0.904914, 0.422634,
		42.724827, 35.030251, 34.294647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228088, 34.910027, 33.707645>,  <42.689751, 34.396812, 33.998806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228088, 34.910027, 33.707645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158245, 34.970100, 34.096893>,  <43.116337, 35.006145, 34.330441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158245, 34.970100, 34.096893>,  <43.228088, 34.910027, 33.707645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158245, 34.970100, 34.096893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984362, 0.049998, 0.168912,
		-0.023286, 0.987393, -0.156565,
		-0.174610, 0.150183, 0.973117,
		43.105862, 35.015156, 34.388828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326313, 35.512997, 34.012321>,  <43.228088, 34.910027, 33.707645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326313, 35.512997, 34.012321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363895, 35.275059, 34.331654>,  <43.386444, 35.132298, 34.523254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363895, 35.275059, 34.331654>,  <43.326313, 35.512997, 34.012321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363895, 35.275059, 34.331654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887357, 0.413621, 0.203753,
		-0.451408, 0.689261, 0.566702,
		0.093960, -0.594843, 0.798332,
		43.392082, 35.096607, 34.571152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524990, 35.867706, 34.507900>,  <43.326313, 35.512997, 34.012321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524990, 35.867706, 34.507900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671761, 35.510944, 34.613628>,  <43.759823, 35.296886, 34.677067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671761, 35.510944, 34.613628>,  <43.524990, 35.867706, 34.507900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671761, 35.510944, 34.613628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876272, 0.426772, 0.223636,
		-0.312268, 0.149561, 0.938147,
		0.366928, -0.891906, 0.264324,
		43.781837, 35.243374, 34.692924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718784, 35.765480, 35.233063>,  <43.524990, 35.867706, 34.507900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718784, 35.765480, 35.233063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950584, 35.609756, 34.946671>,  <44.089664, 35.516323, 34.774837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950584, 35.609756, 34.946671>,  <43.718784, 35.765480, 35.233063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950584, 35.609756, 34.946671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792613, 0.473606, 0.384008,
		0.189595, -0.790025, 0.583021,
		0.579498, -0.389305, -0.715978,
		44.124435, 35.492966, 34.731876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369328, 35.385643, 35.506905>,  <43.718784, 35.765480, 35.233063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369328, 35.385643, 35.506905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463093, 35.528557, 35.145264>,  <44.519352, 35.614304, 34.928280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463093, 35.528557, 35.145264>,  <44.369328, 35.385643, 35.506905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463093, 35.528557, 35.145264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703282, 0.579746, 0.411447,
		0.671153, -0.732285, -0.115374,
		0.234409, 0.357285, -0.904102,
		44.533417, 35.635742, 34.874035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170582, 35.391808, 35.484043>,  <44.369328, 35.385643, 35.506905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170582, 35.391808, 35.484043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918972, 35.615589, 35.268139>,  <44.768005, 35.749859, 35.138596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918972, 35.615589, 35.268139>,  <45.170582, 35.391808, 35.484043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918972, 35.615589, 35.268139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380398, 0.827032, 0.413902,
		0.677961, 0.055029, -0.733036,
		-0.629021, 0.559455, -0.539762,
		44.730267, 35.783424, 35.106209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424152, 35.981285, 34.964539>,  <45.170582, 35.391808, 35.484043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424152, 35.981285, 34.964539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103470, 36.046459, 35.194572>,  <44.911060, 36.085564, 35.332592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103470, 36.046459, 35.194572>,  <45.424152, 35.981285, 34.964539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103470, 36.046459, 35.194572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535312, 0.623763, 0.569527,
		-0.265917, 0.764441, -0.587296,
		-0.801704, 0.162940, 0.575084,
		44.862957, 36.095341, 35.367096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602097, 35.682087, 34.249546>,  <45.424152, 35.981285, 34.964539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602097, 35.682087, 34.249546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265743, 35.757820, 34.452354>,  <45.063931, 35.803261, 34.574039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265743, 35.757820, 34.452354>,  <45.602097, 35.682087, 34.249546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265743, 35.757820, 34.452354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540508, 0.341723, 0.768816,
		-0.027696, 0.920531, -0.389686,
		-0.840883, 0.189336, 0.507018,
		45.013477, 35.814621, 34.604462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216061, 35.871971, 34.782654>,  <45.602097, 35.682087, 34.249546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216061, 35.871971, 34.782654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478725, 36.106766, 34.972069>,  <46.636326, 36.247643, 35.085716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478725, 36.106766, 34.972069>,  <46.216061, 35.871971, 34.782654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478725, 36.106766, 34.972069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154965, -0.509470, 0.846420,
		0.738090, -0.629196, -0.243588,
		0.656665, 0.586986, 0.473538,
		46.675724, 36.282860, 35.114132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856895, 35.512627, 35.010628>,  <46.216061, 35.871971, 34.782654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856895, 35.512627, 35.010628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755798, 35.801659, 35.268002>,  <46.695141, 35.975079, 35.422424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755798, 35.801659, 35.268002>,  <46.856895, 35.512627, 35.010628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755798, 35.801659, 35.268002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197506, -0.689550, 0.696787,
		0.947160, 0.049027, 0.316994,
		-0.252745, 0.722576, 0.643431,
		46.679974, 36.018433, 35.461029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.508671, 35.149361, 35.118698>,  <46.856895, 35.512627, 35.010628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.508671, 35.149361, 35.118698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.806473, 34.918846, 35.253525>,  <47.985153, 34.780537, 35.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.806473, 34.918846, 35.253525>,  <47.508671, 35.149361, 35.118698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.806473, 34.918846, 35.253525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055993, -0.449206, -0.891672,
		0.665268, 0.682725, -0.302167,
		0.744502, -0.576282, 0.337070,
		48.029823, 34.745960, 35.354645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.535976, 29.065580, 29.363968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.181099, 28.894230, 29.432537>,  <32.968174, 28.791420, 29.473679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.181099, 28.894230, 29.432537>,  <33.535976, 29.065580, 29.363968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181099, 28.894230, 29.432537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000117, 0.371734, 0.928339,
		-0.461400, 0.823596, -0.329850,
		-0.887192, -0.428374, 0.171421,
		32.914940, 28.765718, 29.483963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096779, 29.559778, 29.602121>,  <33.535976, 29.065580, 29.363968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096779, 29.559778, 29.602121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.956059, 29.206026, 29.724831>,  <32.871628, 28.993774, 29.798456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.956059, 29.206026, 29.724831>,  <33.096779, 29.559778, 29.602121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956059, 29.206026, 29.724831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006903, 0.330164, 0.943898,
		-0.936049, 0.329948, -0.122257,
		-0.351802, -0.884379, 0.306772,
		32.850517, 28.940712, 29.816862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508751, 29.734356, 29.998459>,  <33.096779, 29.559778, 29.602121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508751, 29.734356, 29.998459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.610294, 29.374712, 30.141098>,  <32.671219, 29.158926, 30.226681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.610294, 29.374712, 30.141098>,  <32.508751, 29.734356, 29.998459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610294, 29.374712, 30.141098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121350, 0.336154, 0.933957,
		-0.959599, -0.280364, -0.023772,
		0.253857, -0.899109, 0.356596,
		32.686451, 29.104979, 30.248077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028080, 29.575432, 30.585403>,  <32.508751, 29.734356, 29.998459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028080, 29.575432, 30.585403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.333096, 29.319077, 30.620712>,  <32.516106, 29.165264, 30.641897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.333096, 29.319077, 30.620712>,  <32.028080, 29.575432, 30.585403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333096, 29.319077, 30.620712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091005, 0.241355, 0.966160,
		-0.640504, -0.728706, 0.242368,
		0.762543, -0.640887, 0.088273,
		32.561859, 29.126810, 30.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951342, 29.382158, 31.234997>,  <32.028080, 29.575432, 30.585403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951342, 29.382158, 31.234997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330769, 29.273092, 31.170654>,  <32.558426, 29.207653, 31.132050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330769, 29.273092, 31.170654>,  <31.951342, 29.382158, 31.234997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330769, 29.273092, 31.170654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234755, 0.264939, 0.935253,
		-0.212395, -0.924911, 0.315322,
		0.948566, -0.272666, -0.160856,
		32.615337, 29.191292, 31.122398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118626, 29.020870, 31.761189>,  <31.951342, 29.382158, 31.234997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118626, 29.020870, 31.761189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490990, 29.100264, 31.638538>,  <32.714409, 29.147900, 31.564949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490990, 29.100264, 31.638538>,  <32.118626, 29.020870, 31.761189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490990, 29.100264, 31.638538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262685, 0.219486, 0.939586,
		0.253796, -0.955212, 0.152181,
		0.930905, 0.198487, -0.306624,
		32.770260, 29.159809, 31.546551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616669, 28.683056, 32.303181>,  <32.118626, 29.020870, 31.761189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616669, 28.683056, 32.303181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805275, 28.986771, 32.123775>,  <32.918438, 29.168999, 32.016132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805275, 28.986771, 32.123775>,  <32.616669, 28.683056, 32.303181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805275, 28.986771, 32.123775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255484, 0.369168, 0.893556,
		0.844041, -0.535908, -0.019919,
		0.471511, 0.759287, -0.448509,
		32.946728, 29.214558, 31.989223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131214, 28.763641, 32.788937>,  <32.616669, 28.683056, 32.303181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131214, 28.763641, 32.788937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122677, 29.097956, 32.569481>,  <33.117554, 29.298544, 32.437809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122677, 29.097956, 32.569481>,  <33.131214, 28.763641, 32.788937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122677, 29.097956, 32.569481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300219, 0.528794, 0.793881,
		0.953632, -0.147768, -0.262204,
		-0.021342, 0.835788, -0.548637,
		33.116276, 29.348692, 32.404888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809490, 29.156775, 32.803322>,  <33.131214, 28.763641, 32.788937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809490, 29.156775, 32.803322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534397, 29.433241, 32.714485>,  <33.369343, 29.599121, 32.661182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534397, 29.433241, 32.714485>,  <33.809490, 29.156775, 32.803322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534397, 29.433241, 32.714485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404873, 0.619083, 0.672914,
		0.602584, 0.372865, -0.705595,
		-0.687728, 0.691164, -0.222087,
		33.328079, 29.640591, 32.647858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177231, 29.763693, 32.991215>,  <33.809490, 29.156775, 32.803322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177231, 29.763693, 32.991215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797409, 29.887892, 32.973583>,  <33.569515, 29.962412, 32.963005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797409, 29.887892, 32.973583>,  <34.177231, 29.763693, 32.991215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797409, 29.887892, 32.973583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171916, 0.632909, 0.754898,
		0.262291, 0.709237, -0.654360,
		-0.949552, 0.310498, -0.044077,
		33.512543, 29.981041, 32.960361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212723, 30.526724, 32.862148>,  <34.177231, 29.763693, 32.991215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212723, 30.526724, 32.862148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851749, 30.448359, 33.015633>,  <33.635166, 30.401339, 33.107723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851749, 30.448359, 33.015633>,  <34.212723, 30.526724, 32.862148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851749, 30.448359, 33.015633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207972, 0.581896, 0.786222,
		-0.377312, 0.789312, -0.484377,
		-0.902432, -0.195914, 0.383712,
		33.581020, 30.389584, 33.130745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041668, 31.132498, 33.057526>,  <34.212723, 30.526724, 32.862148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041668, 31.132498, 33.057526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.801205, 30.878473, 33.251556>,  <33.656925, 30.726059, 33.367977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.801205, 30.878473, 33.251556>,  <34.041668, 31.132498, 33.057526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801205, 30.878473, 33.251556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210633, 0.459625, 0.862773,
		-0.770868, 0.620841, -0.142545,
		-0.601163, -0.635060, 0.485080,
		33.620857, 30.687956, 33.397079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655987, 31.495609, 33.449066>,  <34.041668, 31.132498, 33.057526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655987, 31.495609, 33.449066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625488, 31.143950, 33.637230>,  <33.607189, 30.932953, 33.750126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625488, 31.143950, 33.637230>,  <33.655987, 31.495609, 33.449066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625488, 31.143950, 33.637230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088541, 0.463946, 0.881428,
		-0.993150, 0.108859, 0.042464,
		-0.076250, -0.879149, 0.470407,
		33.602612, 30.880205, 33.778351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095936, 31.619432, 33.983776>,  <33.655987, 31.495609, 33.449066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095936, 31.619432, 33.983776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.312241, 31.302305, 34.096218>,  <33.442024, 31.112030, 34.163685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.312241, 31.302305, 34.096218>,  <33.095936, 31.619432, 33.983776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312241, 31.302305, 34.096218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103620, 0.394423, 0.913068,
		-0.834772, -0.464620, 0.295439,
		0.540757, -0.792817, 0.281109,
		33.474468, 31.064461, 34.180550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759777, 31.389561, 34.634533>,  <33.095936, 31.619432, 33.983776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759777, 31.389561, 34.634533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112202, 31.200432, 34.639622>,  <33.323658, 31.086954, 34.642677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112202, 31.200432, 34.639622>,  <32.759777, 31.389561, 34.634533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112202, 31.200432, 34.639622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203298, 0.402842, 0.892406,
		-0.427077, -0.783680, 0.451054,
		0.881065, -0.472825, 0.012724,
		33.376522, 31.058584, 34.643440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880871, 31.010635, 35.270187>,  <32.759777, 31.389561, 34.634533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880871, 31.010635, 35.270187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.253960, 31.076014, 35.141621>,  <33.477814, 31.115240, 35.064480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.253960, 31.076014, 35.141621>,  <32.880871, 31.010635, 35.270187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253960, 31.076014, 35.141621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248528, 0.354433, 0.901449,
		0.261257, -0.920686, 0.289969,
		0.932726, 0.163445, -0.321415,
		33.533779, 31.125048, 35.045197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357140, 30.694788, 35.775505>,  <32.880871, 31.010635, 35.270187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357140, 30.694788, 35.775505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.557896, 30.970339, 35.566296>,  <33.678349, 31.135670, 35.440769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.557896, 30.970339, 35.566296>,  <33.357140, 30.694788, 35.775505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557896, 30.970339, 35.566296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281414, 0.441740, 0.851864,
		0.817870, -0.574728, 0.027845,
		0.501890, 0.688878, -0.523022,
		33.708462, 31.177002, 35.409389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991997, 30.748695, 36.086197>,  <33.357140, 30.694788, 35.775505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991997, 30.748695, 36.086197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994091, 31.078785, 35.860287>,  <33.995346, 31.276838, 35.724739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994091, 31.078785, 35.860287>,  <33.991997, 30.748695, 36.086197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994091, 31.078785, 35.860287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345055, 0.528607, 0.775572,
		0.938568, -0.198939, -0.281981,
		0.005235, 0.825226, -0.564778,
		33.995663, 31.326353, 35.690853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666847, 30.986326, 36.014423>,  <33.991997, 30.748695, 36.086197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666847, 30.986326, 36.014423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.411625, 31.291752, 35.974701>,  <34.258492, 31.475006, 35.950867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.411625, 31.291752, 35.974701>,  <34.666847, 30.986326, 36.014423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411625, 31.291752, 35.974701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486012, 0.499399, 0.717212,
		0.597227, 0.409357, -0.689744,
		-0.638053, 0.763562, -0.099303,
		34.220207, 31.520821, 35.944912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161198, 31.603718, 36.079632>,  <34.666847, 30.986326, 36.014423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161198, 31.603718, 36.079632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785469, 31.726446, 36.140991>,  <34.560032, 31.800083, 36.177807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785469, 31.726446, 36.140991>,  <35.161198, 31.603718, 36.079632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785469, 31.726446, 36.140991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293839, 0.488926, 0.821347,
		0.177004, 0.816586, -0.549415,
		-0.939323, 0.306821, 0.153403,
		34.503674, 31.818493, 36.187012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205994, 32.296547, 36.174118>,  <35.161198, 31.603718, 36.079632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205994, 32.296547, 36.174118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843304, 32.223915, 36.326374>,  <34.625690, 32.180336, 36.417728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843304, 32.223915, 36.326374>,  <35.205994, 32.296547, 36.174118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843304, 32.223915, 36.326374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195326, 0.619104, 0.760630,
		-0.373768, 0.764028, -0.525889,
		-0.906722, -0.181579, 0.380636,
		34.571285, 32.169441, 36.440563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071407, 32.945267, 36.372074>,  <35.205994, 32.296547, 36.174118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071407, 32.945267, 36.372074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893936, 32.662975, 36.593018>,  <34.787453, 32.493603, 36.725586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893936, 32.662975, 36.593018>,  <35.071407, 32.945267, 36.372074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893936, 32.662975, 36.593018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407730, 0.389908, 0.825668,
		-0.798066, 0.591543, 0.114753,
		-0.443675, -0.705726, 0.552362,
		34.760834, 32.451256, 36.758728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662945, 33.137962, 35.837139>,  <35.071407, 32.945267, 36.372074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662945, 33.137962, 35.837139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.060738, 33.153595, 35.876076>,  <35.299416, 33.162975, 35.899437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.060738, 33.153595, 35.876076>,  <34.662945, 33.137962, 35.837139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060738, 33.153595, 35.876076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104463, -0.452812, -0.885465,
		0.009476, 0.890749, -0.454396,
		0.994484, 0.039077, 0.097341,
		35.359081, 33.165318, 35.905277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975956, 33.408207, 35.153801>,  <34.662945, 33.137962, 35.837139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975956, 33.408207, 35.153801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.276131, 33.230675, 35.349701>,  <35.456234, 33.124153, 35.467243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.276131, 33.230675, 35.349701>,  <34.975956, 33.408207, 35.153801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276131, 33.230675, 35.349701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362751, -0.342843, -0.866528,
		0.552502, 0.827932, -0.096281,
		0.750436, -0.443832, 0.489754,
		35.501263, 33.097527, 35.496628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635178, 33.654873, 34.835579>,  <34.975956, 33.408207, 35.153801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635178, 33.654873, 34.835579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699341, 33.299793, 35.008205>,  <35.737839, 33.086746, 35.111782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699341, 33.299793, 35.008205>,  <35.635178, 33.654873, 34.835579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699341, 33.299793, 35.008205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450830, -0.323068, -0.832093,
		0.878078, 0.328042, 0.348379,
		0.160411, -0.887702, 0.431570,
		35.747463, 33.033482, 35.137676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186680, 33.495052, 34.535946>,  <35.635178, 33.654873, 34.835579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186680, 33.495052, 34.535946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068966, 33.147163, 34.694431>,  <35.998337, 32.938431, 34.789520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068966, 33.147163, 34.694431>,  <36.186680, 33.495052, 34.535946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068966, 33.147163, 34.694431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343349, -0.483101, -0.805435,
		0.891913, -0.100987, 0.440786,
		-0.294283, -0.869721, 0.396210,
		35.980682, 32.886246, 34.813293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778740, 33.077282, 34.529778>,  <36.186680, 33.495052, 34.535946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778740, 33.077282, 34.529778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.445293, 32.856644, 34.541218>,  <36.245224, 32.724262, 34.548084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.445293, 32.856644, 34.541218>,  <36.778740, 33.077282, 34.529778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445293, 32.856644, 34.541218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305267, -0.503267, -0.808415,
		0.460314, -0.665179, 0.587918,
		-0.833621, -0.551597, 0.028604,
		36.195206, 32.691166, 34.549797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969883, 32.268379, 34.392303>,  <36.778740, 33.077282, 34.529778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969883, 32.268379, 34.392303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583946, 32.322697, 34.302284>,  <36.352386, 32.355286, 34.248272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583946, 32.322697, 34.302284>,  <36.969883, 32.268379, 34.392303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583946, 32.322697, 34.302284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107262, -0.578253, -0.808776,
		-0.239956, -0.804478, 0.543357,
		-0.964840, 0.135790, -0.225045,
		36.294495, 32.363434, 34.234772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746773, 31.616726, 34.183800>,  <36.969883, 32.268379, 34.392303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746773, 31.616726, 34.183800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446815, 31.846924, 34.053288>,  <36.266842, 31.985043, 33.974979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446815, 31.846924, 34.053288>,  <36.746773, 31.616726, 34.183800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446815, 31.846924, 34.053288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015682, -0.508533, -0.860900,
		-0.661370, -0.640468, 0.390372,
		-0.749896, 0.575495, -0.326284,
		36.221848, 32.019573, 33.955402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250263, 31.205442, 33.953865>,  <36.746773, 31.616726, 34.183800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250263, 31.205442, 33.953865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133541, 31.546825, 33.781143>,  <36.063507, 31.751656, 33.677509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133541, 31.546825, 33.781143>,  <36.250263, 31.205442, 33.953865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133541, 31.546825, 33.781143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156266, -0.487930, -0.858781,
		-0.943625, -0.183123, 0.275748,
		-0.291809, 0.853458, -0.431807,
		36.045998, 31.802862, 33.651600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538227, 31.043383, 33.683270>,  <36.250263, 31.205442, 33.953865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538227, 31.043383, 33.683270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669556, 31.367479, 33.489067>,  <35.748352, 31.561937, 33.372547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669556, 31.367479, 33.489067>,  <35.538227, 31.043383, 33.683270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669556, 31.367479, 33.489067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365842, -0.364803, -0.856200,
		-0.870842, 0.458727, 0.176647,
		0.328320, 0.810240, -0.485507,
		35.768051, 31.610552, 33.343414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983776, 31.358631, 33.292641>,  <35.538227, 31.043383, 33.683270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983776, 31.358631, 33.292641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321728, 31.473303, 33.111977>,  <35.524498, 31.542105, 33.003578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321728, 31.473303, 33.111977>,  <34.983776, 31.358631, 33.292641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321728, 31.473303, 33.111977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301782, -0.441711, -0.844878,
		-0.441711, 0.850122, -0.286678,
		0.844878, 0.286678, -0.451660,
		35.575191, 31.559305, 32.976479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828049, 31.400866, 32.568592>,  <34.983776, 31.358631, 33.292641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828049, 31.400866, 32.568592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223156, 31.460032, 32.548874>,  <35.460220, 31.495531, 32.537045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223156, 31.460032, 32.548874>,  <34.828049, 31.400866, 32.568592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223156, 31.460032, 32.548874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011514, -0.384510, -0.923049,
		-0.155489, 0.911193, -0.381511,
		0.987771, 0.147917, -0.049295,
		35.519485, 31.504406, 32.534084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872967, 31.744717, 31.951502>,  <34.828049, 31.400866, 32.568592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872967, 31.744717, 31.951502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237877, 31.599493, 32.027336>,  <35.456821, 31.512360, 32.072838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237877, 31.599493, 32.027336>,  <34.872967, 31.744717, 31.951502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237877, 31.599493, 32.027336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089219, -0.275610, -0.957120,
		0.399743, 0.890071, -0.219040,
		0.912275, -0.363060, 0.189584,
		35.511559, 31.490576, 32.084213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341045, 31.909454, 31.395266>,  <34.872967, 31.744717, 31.951502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341045, 31.909454, 31.395266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540894, 31.599863, 31.550875>,  <35.660801, 31.414108, 31.644239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540894, 31.599863, 31.550875>,  <35.341045, 31.909454, 31.395266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540894, 31.599863, 31.550875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130693, -0.376600, -0.917110,
		0.856330, 0.509048, -0.087003,
		0.499619, -0.773978, 0.389023,
		35.690781, 31.367670, 31.667582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916950, 31.846972, 31.037388>,  <35.341045, 31.909454, 31.395266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916950, 31.846972, 31.037388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853226, 31.482567, 31.189535>,  <35.814991, 31.263924, 31.280825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853226, 31.482567, 31.189535>,  <35.916950, 31.846972, 31.037388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853226, 31.482567, 31.189535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003057, -0.384834, -0.922981,
		0.987224, -0.148203, 0.058523,
		-0.159311, -0.911010, 0.380370,
		35.805431, 31.209265, 31.303646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383595, 31.405554, 30.671257>,  <35.916950, 31.846972, 31.037388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383595, 31.405554, 30.671257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112717, 31.160393, 30.834108>,  <35.950188, 31.013296, 30.931820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112717, 31.160393, 30.834108>,  <36.383595, 31.405554, 30.671257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112717, 31.160393, 30.834108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094903, -0.475937, -0.874344,
		0.729654, -0.630743, 0.264138,
		-0.677199, -0.612901, 0.407129,
		35.909557, 30.976522, 30.956247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523594, 30.794983, 30.357037>,  <36.383595, 31.405554, 30.671257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523594, 30.794983, 30.357037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167038, 30.715738, 30.520092>,  <35.953102, 30.668192, 30.617926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167038, 30.715738, 30.520092>,  <36.523594, 30.794983, 30.357037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167038, 30.715738, 30.520092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192201, -0.649297, -0.735848,
		0.410460, -0.734278, 0.540701,
		-0.891393, -0.198113, 0.407640,
		35.899620, 30.656305, 30.642384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374496, 30.015266, 30.305019>,  <36.523594, 30.794983, 30.357037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374496, 30.015266, 30.305019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030491, 30.218901, 30.318954>,  <35.824089, 30.341082, 30.327316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030491, 30.218901, 30.318954>,  <36.374496, 30.015266, 30.305019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030491, 30.218901, 30.318954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366296, -0.568378, -0.736731,
		-0.355258, -0.646358, 0.675287,
		-0.860011, 0.509085, 0.034838,
		35.772488, 30.371626, 30.329405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781593, 29.484739, 30.377872>,  <36.374496, 30.015266, 30.305019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781593, 29.484739, 30.377872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611404, 29.825033, 30.254440>,  <35.509293, 30.029209, 30.180382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611404, 29.825033, 30.254440>,  <35.781593, 29.484739, 30.377872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611404, 29.825033, 30.254440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687601, -0.525593, -0.500956,
		-0.588369, -0.000963, 0.808592,
		-0.425472, 0.850736, -0.308580,
		35.483761, 30.080254, 30.161867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.014080, 29.452637, 30.433529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073837, 29.747833, 30.170301>,  <35.109692, 29.924952, 30.012365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073837, 29.747833, 30.170301>,  <35.014080, 29.452637, 30.433529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073837, 29.747833, 30.170301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540137, -0.496551, -0.679477,
		-0.828211, 0.456955, 0.324435,
		0.149392, 0.737990, -0.658068,
		35.118656, 29.969231, 29.972881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352119, 29.393583, 30.093977>,  <35.014080, 29.452637, 30.433529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352119, 29.393583, 30.093977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587990, 29.627781, 29.871454>,  <34.729511, 29.768299, 29.737940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587990, 29.627781, 29.871454>,  <34.352119, 29.393583, 30.093977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587990, 29.627781, 29.871454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531929, -0.236760, -0.813017,
		-0.607726, 0.775335, 0.171827,
		0.589678, 0.585492, -0.556308,
		34.764893, 29.803429, 29.704561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025742, 29.766964, 29.631842>,  <34.352119, 29.393583, 30.093977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025742, 29.766964, 29.631842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377701, 29.751516, 29.442406>,  <34.588875, 29.742249, 29.328743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377701, 29.751516, 29.442406>,  <34.025742, 29.766964, 29.631842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377701, 29.751516, 29.442406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409240, -0.568072, -0.714015,
		-0.241460, 0.822072, -0.515650,
		0.879898, -0.038619, -0.473591,
		34.641670, 29.739931, 29.300327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756924, 29.963289, 28.992247>,  <34.025742, 29.766964, 29.631842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756924, 29.963289, 28.992247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131535, 29.838306, 28.928637>,  <34.356300, 29.763317, 28.890471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131535, 29.838306, 28.928637>,  <33.756924, 29.963289, 28.992247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131535, 29.838306, 28.928637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290156, -0.436151, -0.851811,
		0.196795, 0.843886, -0.499128,
		0.936526, -0.312457, -0.159026,
		34.412491, 29.744570, 28.880928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872845, 30.100306, 28.306946>,  <33.756924, 29.963289, 28.992247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872845, 30.100306, 28.306946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149044, 29.829172, 28.407944>,  <34.314766, 29.666492, 28.468542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149044, 29.829172, 28.407944>,  <33.872845, 30.100306, 28.306946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149044, 29.829172, 28.407944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187549, -0.504908, -0.842552,
		0.698594, 0.534427, -0.475766,
		0.690501, -0.677831, 0.252494,
		34.356194, 29.625822, 28.483692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270832, 30.120762, 27.833536>,  <33.872845, 30.100306, 28.306946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270832, 30.120762, 27.833536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348701, 29.761217, 27.990583>,  <34.395424, 29.545490, 28.084812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348701, 29.761217, 27.990583>,  <34.270832, 30.120762, 27.833536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348701, 29.761217, 27.990583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072285, -0.412336, -0.908159,
		0.978201, 0.148414, -0.145246,
		0.194674, -0.898861, 0.392619,
		34.407104, 29.491558, 28.108370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758968, 29.849028, 27.444016>,  <34.270832, 30.120762, 27.833536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758968, 29.849028, 27.444016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593067, 29.523026, 27.605879>,  <34.493526, 29.327425, 27.702997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593067, 29.523026, 27.605879>,  <34.758968, 29.849028, 27.444016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593067, 29.523026, 27.605879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199261, -0.352567, -0.914326,
		0.887849, -0.459851, -0.016170,
		-0.414752, -0.815005, 0.404656,
		34.468643, 29.278524, 27.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184925, 29.359211, 27.147448>,  <34.758968, 29.849028, 27.444016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184925, 29.359211, 27.147448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853447, 29.182823, 27.285322>,  <34.654560, 29.076990, 27.368048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853447, 29.182823, 27.285322>,  <35.184925, 29.359211, 27.147448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853447, 29.182823, 27.285322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168251, -0.391087, -0.904844,
		0.533813, -0.807833, 0.249898,
		-0.828695, -0.440972, 0.344686,
		34.604839, 29.050531, 27.388727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341000, 28.684574, 27.082157>,  <35.184925, 29.359211, 27.147448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341000, 28.684574, 27.082157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.946552, 28.750509, 27.074133>,  <34.709885, 28.790070, 27.069319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.946552, 28.750509, 27.074133>,  <35.341000, 28.684574, 27.082157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946552, 28.750509, 27.074133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051863, -0.420504, -0.905807,
		-0.157747, -0.892191, 0.423215,
		-0.986116, 0.164837, -0.020062,
		34.650719, 28.799961, 27.068115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983677, 28.038174, 27.097292>,  <35.341000, 28.684574, 27.082157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983677, 28.038174, 27.097292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.717556, 28.291847, 26.939720>,  <34.557884, 28.444052, 26.845177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.717556, 28.291847, 26.939720>,  <34.983677, 28.038174, 27.097292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717556, 28.291847, 26.939720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022101, -0.544148, -0.838698,
		-0.746246, -0.549282, 0.376040,
		-0.665303, 0.634186, -0.393929,
		34.517963, 28.482103, 26.821541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425121, 27.688223, 26.653151>,  <34.983677, 28.038174, 27.097292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425121, 27.688223, 26.653151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408733, 28.064314, 26.517921>,  <34.398899, 28.289968, 26.436785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408733, 28.064314, 26.517921>,  <34.425121, 27.688223, 26.653151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408733, 28.064314, 26.517921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084587, -0.333876, -0.938814,
		-0.995573, -0.067063, -0.065851,
		-0.040974, 0.940228, -0.338071,
		34.396442, 28.346382, 26.416500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729744, 27.765102, 26.335752>,  <34.425121, 27.688223, 26.653151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729744, 27.765102, 26.335752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961403, 28.053255, 26.183105>,  <34.100399, 28.226147, 26.091516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961403, 28.053255, 26.183105>,  <33.729744, 27.765102, 26.335752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961403, 28.053255, 26.183105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201218, -0.327312, -0.923244,
		-0.789997, 0.611485, -0.044609,
		0.579151, 0.720384, -0.381617,
		34.135147, 28.269371, 26.068621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363514, 27.992649, 25.724882>,  <33.729744, 27.765102, 26.335752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363514, 27.992649, 25.724882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720074, 28.167456, 25.676838>,  <33.934010, 28.272341, 25.648012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720074, 28.167456, 25.676838>,  <33.363514, 27.992649, 25.724882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720074, 28.167456, 25.676838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129045, -0.009312, -0.991595,
		-0.434464, 0.899404, 0.048094,
		0.891397, 0.437018, -0.120110,
		33.987492, 28.298561, 25.640804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300488, 28.656706, 25.373913>,  <33.363514, 27.992649, 25.724882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300488, 28.656706, 25.373913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670406, 28.522238, 25.302652>,  <33.892357, 28.441557, 25.259895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670406, 28.522238, 25.302652>,  <33.300488, 28.656706, 25.373913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670406, 28.522238, 25.302652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106569, 0.220626, -0.969519,
		0.365227, 0.915595, 0.168210,
		0.924799, -0.336168, -0.178153,
		33.947845, 28.421387, 25.249207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670486, 29.086105, 24.941107>,  <33.300488, 28.656706, 25.373913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670486, 29.086105, 24.941107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888412, 28.754791, 24.888763>,  <34.019169, 28.556004, 24.857357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888412, 28.754791, 24.888763>,  <33.670486, 29.086105, 24.941107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888412, 28.754791, 24.888763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081677, 0.102894, -0.991333,
		0.834569, 0.550781, -0.011593,
		0.544814, -0.828283, -0.130858,
		34.051857, 28.506306, 24.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096127, 29.255999, 24.368654>,  <33.670486, 29.086105, 24.941107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096127, 29.255999, 24.368654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109367, 28.856226, 24.371220>,  <34.117313, 28.616362, 24.372759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109367, 28.856226, 24.371220>,  <34.096127, 29.255999, 24.368654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109367, 28.856226, 24.371220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132387, -0.010747, -0.991140,
		0.990645, 0.031963, -0.132667,
		0.033106, -0.999431, 0.006415,
		34.119301, 28.556396, 24.373144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625481, 29.097086, 23.910192>,  <34.096127, 29.255999, 24.368654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625481, 29.097086, 23.910192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378662, 28.782902, 23.929394>,  <34.230572, 28.594391, 23.940914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378662, 28.782902, 23.929394>,  <34.625481, 29.097086, 23.910192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378662, 28.782902, 23.929394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101013, 0.018565, -0.994712,
		0.780417, -0.618632, -0.090797,
		-0.617046, -0.785462, 0.048001,
		34.193550, 28.547264, 23.943794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718208, 28.657673, 23.403769>,  <34.625481, 29.097086, 23.910192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718208, 28.657673, 23.403769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349968, 28.524755, 23.485823>,  <34.129025, 28.445005, 23.535055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349968, 28.524755, 23.485823>,  <34.718208, 28.657673, 23.403769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349968, 28.524755, 23.485823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199421, -0.051617, -0.978554,
		0.335758, -0.941761, -0.018749,
		-0.920596, -0.332296, 0.205137,
		34.073788, 28.425066, 23.547363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537914, 28.021627, 22.924126>,  <34.718208, 28.657673, 23.403769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537914, 28.021627, 22.924126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193249, 28.175100, 23.056984>,  <33.986450, 28.267183, 23.136698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193249, 28.175100, 23.056984>,  <34.537914, 28.021627, 22.924126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193249, 28.175100, 23.056984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350065, 0.024456, -0.936406,
		-0.367407, -0.923141, 0.113242,
		-0.861665, 0.383684, 0.332145,
		33.934750, 28.290205, 23.156628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152969, 27.562107, 22.673307>,  <34.537914, 28.021627, 22.924126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152969, 27.562107, 22.673307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905140, 27.856707, 22.781898>,  <33.756443, 28.033466, 22.847054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905140, 27.856707, 22.781898>,  <34.152969, 27.562107, 22.673307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905140, 27.856707, 22.781898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428957, -0.028046, -0.902889,
		-0.657361, -0.675859, 0.333302,
		-0.619574, 0.736497, 0.271478,
		33.719269, 28.077656, 22.863342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565784, 27.302319, 22.480453>,  <34.152969, 27.562107, 22.673307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565784, 27.302319, 22.480453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524986, 27.700130, 22.489431>,  <33.500507, 27.938818, 22.494818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524986, 27.700130, 22.489431>,  <33.565784, 27.302319, 22.480453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524986, 27.700130, 22.489431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359548, -0.015818, -0.932993,
		-0.927536, -0.103229, 0.359195,
		-0.101993, 0.994532, 0.022444,
		33.494389, 27.998489, 22.496164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970158, 27.429893, 21.974813>,  <33.565784, 27.302319, 22.480453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970158, 27.429893, 21.974813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155945, 27.782095, 22.012722>,  <33.267418, 27.993416, 22.035467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155945, 27.782095, 22.012722>,  <32.970158, 27.429893, 21.974813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155945, 27.782095, 22.012722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189996, 0.203598, -0.960442,
		-0.864969, 0.428088, 0.261857,
		0.464467, 0.880505, 0.094771,
		33.295284, 28.046246, 22.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456657, 27.936888, 21.672289>,  <32.970158, 27.429893, 21.974813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456657, 27.936888, 21.672289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835773, 28.063564, 21.657347>,  <33.063244, 28.139570, 21.648380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835773, 28.063564, 21.657347>,  <32.456657, 27.936888, 21.672289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835773, 28.063564, 21.657347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120603, 0.247541, -0.961342,
		-0.295199, 0.915659, 0.272812,
		0.947793, 0.316690, -0.037358,
		33.120110, 28.158571, 21.646139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867893, 27.435946, 21.433197>,  <32.456657, 27.936888, 21.672289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867893, 27.435946, 21.433197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225956, 27.374720, 21.265738>,  <32.440792, 27.337984, 21.165262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225956, 27.374720, 21.265738>,  <31.867893, 27.435946, 21.433197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225956, 27.374720, 21.265738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251231, -0.602570, 0.757491,
		-0.368209, -0.783251, -0.500939,
		0.895156, -0.153064, -0.418649,
		32.494503, 27.328800, 21.140142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194630, 27.631163, 21.581671>,  <31.867893, 27.435946, 21.433197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194630, 27.631163, 21.581671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805817, 27.583561, 21.662653>,  <30.572529, 27.555000, 21.711243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805817, 27.583561, 21.662653>,  <31.194630, 27.631163, 21.581671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805817, 27.583561, 21.662653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113467, 0.516803, 0.848552,
		-0.205611, 0.847793, -0.488847,
		-0.972034, -0.119004, 0.202457,
		30.514206, 27.547859, 21.723391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006405, 28.142021, 21.965889>,  <31.194630, 27.631163, 21.581671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006405, 28.142021, 21.965889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.704540, 27.911758, 22.091814>,  <30.523422, 27.773602, 22.167370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.704540, 27.911758, 22.091814>,  <31.006405, 28.142021, 21.965889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704540, 27.911758, 22.091814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073798, 0.402295, 0.912530,
		-0.651952, 0.711884, -0.261114,
		-0.754661, -0.575656, 0.314813,
		30.478142, 27.739061, 22.186258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534515, 28.566376, 22.356016>,  <31.006405, 28.142021, 21.965889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534515, 28.566376, 22.356016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455563, 28.193636, 22.477802>,  <30.408192, 27.969992, 22.550875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455563, 28.193636, 22.477802>,  <30.534515, 28.566376, 22.356016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455563, 28.193636, 22.477802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076959, 0.324346, 0.942803,
		-0.977301, 0.162661, -0.135734,
		-0.197382, -0.931848, 0.304466,
		30.396349, 27.914082, 22.569141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042330, 28.624475, 22.784529>,  <30.534515, 28.566376, 22.356016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042330, 28.624475, 22.784529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192741, 28.264730, 22.873747>,  <30.282988, 28.048883, 22.927277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192741, 28.264730, 22.873747>,  <30.042330, 28.624475, 22.784529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192741, 28.264730, 22.873747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073471, 0.268891, 0.960364,
		-0.923691, -0.344737, 0.167188,
		0.376029, -0.899363, 0.223044,
		30.305550, 27.994921, 22.940660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829115, 28.543703, 23.481579>,  <30.042330, 28.624475, 22.784529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829115, 28.543703, 23.481579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098864, 28.252157, 23.434288>,  <30.260714, 28.077230, 23.405912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.098864, 28.252157, 23.434288>,  <29.829115, 28.543703, 23.481579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098864, 28.252157, 23.434288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227068, 0.052348, 0.972471,
		-0.702612, -0.682653, 0.200804,
		0.674372, -0.728866, -0.118228,
		30.301176, 28.033497, 23.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680979, 28.015343, 23.996889>,  <29.829115, 28.543703, 23.481579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680979, 28.015343, 23.996889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.070490, 28.009174, 23.906097>,  <30.304197, 28.005474, 23.851624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.070490, 28.009174, 23.906097>,  <29.680979, 28.015343, 23.996889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070490, 28.009174, 23.906097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227351, 0.102273, 0.968427,
		0.008277, -0.994637, 0.103098,
		0.973778, -0.015423, -0.226978,
		30.362623, 28.004547, 23.838003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993793, 27.447554, 24.377228>,  <29.680979, 28.015343, 23.996889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993793, 27.447554, 24.377228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293819, 27.697737, 24.291243>,  <30.473835, 27.847847, 24.239651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293819, 27.697737, 24.291243>,  <29.993793, 27.447554, 24.377228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293819, 27.697737, 24.291243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159954, 0.143823, 0.976591,
		0.641732, -0.766889, 0.007832,
		0.750063, 0.625457, -0.214963,
		30.518839, 27.885374, 24.226753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570908, 27.288593, 24.883169>,  <29.993793, 27.447554, 24.377228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570908, 27.288593, 24.883169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670244, 27.645760, 24.732952>,  <30.729847, 27.860060, 24.642822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670244, 27.645760, 24.732952>,  <30.570908, 27.288593, 24.883169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670244, 27.645760, 24.732952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430946, 0.245364, 0.868379,
		0.867531, -0.377494, -0.323863,
		0.248344, 0.892913, -0.375541,
		30.744747, 27.913633, 24.620289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289936, 27.425388, 25.137310>,  <30.570908, 27.288593, 24.883169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289936, 27.425388, 25.137310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107498, 27.769480, 25.046112>,  <30.998035, 27.975935, 24.991392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107498, 27.769480, 25.046112>,  <31.289936, 27.425388, 25.137310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107498, 27.769480, 25.046112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477688, 0.452805, 0.752849,
		0.750862, 0.234458, -0.617443,
		-0.456093, 0.860231, -0.227996,
		30.970671, 28.027550, 24.977713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848019, 27.910370, 24.965174>,  <31.289936, 27.425388, 25.137310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848019, 27.910370, 24.965174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535559, 28.129091, 25.085714>,  <31.348083, 28.260324, 25.158039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535559, 28.129091, 25.085714>,  <31.848019, 27.910370, 24.965174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535559, 28.129091, 25.085714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549432, 0.372806, 0.747757,
		0.296530, 0.749682, -0.591648,
		-0.781150, 0.546802, 0.301351,
		31.301214, 28.293133, 25.176119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180977, 28.499123, 25.227438>,  <31.848019, 27.910370, 24.965174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180977, 28.499123, 25.227438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819801, 28.538380, 25.394800>,  <31.603094, 28.561934, 25.495216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819801, 28.538380, 25.394800>,  <32.180977, 28.499123, 25.227438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819801, 28.538380, 25.394800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428366, 0.283886, 0.857853,
		-0.034589, 0.953822, -0.298374,
		-0.902943, 0.098141, 0.418404,
		31.548918, 28.567822, 25.520321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164242, 29.167507, 25.637650>,  <32.180977, 28.499123, 25.227438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164242, 29.167507, 25.637650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843035, 28.969742, 25.770744>,  <31.650311, 28.851082, 25.850601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843035, 28.969742, 25.770744>,  <32.164242, 29.167507, 25.637650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843035, 28.969742, 25.770744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335604, 0.086215, 0.938050,
		-0.492472, 0.864940, 0.096695,
		-0.803020, -0.494415, 0.332736,
		31.602129, 28.821417, 25.870565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009300, 29.493729, 26.154133>,  <32.164242, 29.167507, 25.637650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009300, 29.493729, 26.154133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840750, 29.140182, 26.235353>,  <31.739620, 28.928055, 26.284086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840750, 29.140182, 26.235353>,  <32.009300, 29.493729, 26.154133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840750, 29.140182, 26.235353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219506, 0.117838, 0.968469,
		-0.879922, 0.452656, 0.144360,
		-0.421372, -0.883865, 0.203049,
		31.714338, 28.875023, 26.296268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516123, 29.576746, 26.751448>,  <32.009300, 29.493729, 26.154133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516123, 29.576746, 26.751448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598553, 29.185556, 26.738176>,  <31.648010, 28.950842, 26.730213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598553, 29.185556, 26.738176>,  <31.516123, 29.576746, 26.751448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598553, 29.185556, 26.738176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096221, -0.013487, 0.995268,
		-0.973794, -0.208292, 0.091322,
		0.206075, -0.977974, -0.033176,
		31.660376, 28.892164, 26.728224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207764, 29.268135, 27.328554>,  <31.516123, 29.576746, 26.751448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207764, 29.268135, 27.328554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.475597, 28.986910, 27.232754>,  <31.636297, 28.818174, 27.175274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.475597, 28.986910, 27.232754>,  <31.207764, 29.268135, 27.328554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475597, 28.986910, 27.232754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062048, -0.268380, 0.961313,
		-0.740139, -0.658541, -0.136080,
		0.669585, -0.703062, -0.239500,
		31.676474, 28.775991, 27.160904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013973, 28.590719, 27.626694>,  <31.207764, 29.268135, 27.328554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013973, 28.590719, 27.626694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408575, 28.565432, 27.566284>,  <31.645336, 28.550259, 27.530039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408575, 28.565432, 27.566284>,  <31.013973, 28.590719, 27.626694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408575, 28.565432, 27.566284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127317, -0.283743, 0.950410,
		-0.102933, -0.956814, -0.271866,
		0.986507, -0.063216, -0.151026,
		31.704527, 28.546467, 27.520977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222219, 28.098158, 28.017120>,  <31.013973, 28.590719, 27.626694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222219, 28.098158, 28.017120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573576, 28.283705, 27.971062>,  <31.784389, 28.395033, 27.943426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573576, 28.283705, 27.971062>,  <31.222219, 28.098158, 28.017120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573576, 28.283705, 27.971062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274190, -0.291744, 0.916354,
		0.391473, -0.836488, -0.383453,
		0.878390, 0.463867, -0.115147,
		31.837093, 28.422865, 27.936518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769693, 27.608706, 28.242641>,  <31.222219, 28.098158, 28.017120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769693, 27.608706, 28.242641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942469, 27.966717, 28.287098>,  <32.046135, 28.181524, 28.313772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942469, 27.966717, 28.287098>,  <31.769693, 27.608706, 28.242641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942469, 27.966717, 28.287098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356250, -0.282522, 0.890656,
		0.828562, -0.345115, -0.440886,
		0.431938, 0.895029, 0.111140,
		32.072052, 28.235226, 28.320440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446526, 27.455460, 28.409216>,  <31.769693, 27.608706, 28.242641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446526, 27.455460, 28.409216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376328, 27.832289, 28.523550>,  <32.334209, 28.058386, 28.592152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376328, 27.832289, 28.523550>,  <32.446526, 27.455460, 28.409216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376328, 27.832289, 28.523550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472913, -0.173981, 0.863762,
		0.863456, 0.286760, -0.414986,
		-0.175493, 0.942072, 0.285837,
		32.323681, 28.114910, 28.609301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087029, 27.586952, 28.612906>,  <32.446526, 27.455460, 28.409216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087029, 27.586952, 28.612906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.791542, 27.789743, 28.790564>,  <32.614250, 27.911419, 28.897158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.791542, 27.789743, 28.790564>,  <33.087029, 27.586952, 28.612906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791542, 27.789743, 28.790564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379221, -0.232137, 0.895714,
		0.557210, 0.830112, -0.020773,
		-0.738721, 0.506979, 0.444144,
		32.569927, 27.941837, 28.923807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.543999, 30.841871, 32.601601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256844, 31.050726, 32.417423>,  <36.084549, 31.176039, 32.306915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256844, 31.050726, 32.417423>,  <36.543999, 30.841871, 32.601601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256844, 31.050726, 32.417423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048444, 0.697271, 0.715169,
		0.694470, 0.491106, -0.525857,
		-0.717888, 0.522138, -0.460443,
		36.041477, 31.207367, 32.279289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786346, 31.467081, 32.419991>,  <36.543999, 30.841871, 32.601601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786346, 31.467081, 32.419991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.390079, 31.486706, 32.470860>,  <36.152321, 31.498480, 32.501381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.390079, 31.486706, 32.470860>,  <36.786346, 31.467081, 32.419991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390079, 31.486706, 32.470860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128396, 0.649035, 0.749845,
		-0.045750, 0.759175, -0.649277,
		-0.990667, 0.049059, 0.127169,
		36.092880, 31.501423, 32.509010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706303, 32.075615, 32.471886>,  <36.786346, 31.467081, 32.419991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706303, 32.075615, 32.471886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356148, 31.941216, 32.610909>,  <36.146053, 31.860577, 32.694321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356148, 31.941216, 32.610909>,  <36.706303, 32.075615, 32.471886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356148, 31.941216, 32.610909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025016, 0.686518, 0.726683,
		-0.482767, 0.644826, -0.592567,
		-0.875392, -0.335995, 0.347558,
		36.093529, 31.840418, 32.715176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356552, 32.635780, 32.801594>,  <36.706303, 32.075615, 32.471886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356552, 32.635780, 32.801594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178139, 32.314018, 32.958553>,  <36.071091, 32.120960, 33.052731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178139, 32.314018, 32.958553>,  <36.356552, 32.635780, 32.801594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178139, 32.314018, 32.958553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111936, 0.485126, 0.867251,
		-0.887987, 0.342902, -0.306426,
		-0.446037, -0.804407, 0.392402,
		36.044327, 32.072697, 33.076275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665890, 32.845211, 33.025387>,  <36.356552, 32.635780, 32.801594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665890, 32.845211, 33.025387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.793865, 32.527752, 33.232368>,  <35.870651, 32.337276, 33.356556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.793865, 32.527752, 33.232368>,  <35.665890, 32.845211, 33.025387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793865, 32.527752, 33.232368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228886, 0.465239, 0.855081,
		-0.919374, -0.392014, -0.032805,
		0.319942, -0.793648, 0.517455,
		35.889847, 32.289658, 33.387604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219822, 32.863621, 33.543774>,  <35.665890, 32.845211, 33.025387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219822, 32.863621, 33.543774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.523300, 32.630142, 33.659485>,  <35.705387, 32.490055, 33.728912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.523300, 32.630142, 33.659485>,  <35.219822, 32.863621, 33.543774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523300, 32.630142, 33.659485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087440, 0.348790, 0.933113,
		-0.645554, -0.733240, 0.213585,
		0.758693, -0.583699, 0.289278,
		35.750908, 32.455032, 33.746269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015621, 32.528008, 34.209641>,  <35.219822, 32.863621, 33.543774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015621, 32.528008, 34.209641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.414349, 32.499157, 34.196041>,  <35.653584, 32.481846, 34.187881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.414349, 32.499157, 34.196041>,  <35.015621, 32.528008, 34.209641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414349, 32.499157, 34.196041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041058, 0.098731, 0.994267,
		-0.068357, -0.992497, 0.101378,
		0.996816, -0.072128, -0.034001,
		35.713394, 32.477520, 34.185841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152634, 31.978968, 34.665890>,  <35.015621, 32.528008, 34.209641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152634, 31.978968, 34.665890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.470787, 32.217991, 34.625309>,  <35.661678, 32.361404, 34.600960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.470787, 32.217991, 34.625309>,  <35.152634, 31.978968, 34.665890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470787, 32.217991, 34.625309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080423, 0.269948, 0.959510,
		0.600747, -0.755020, 0.262769,
		0.795383, 0.597556, -0.101449,
		35.709404, 32.397259, 34.594875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579704, 31.680731, 35.256535>,  <35.152634, 31.978968, 34.665890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579704, 31.680731, 35.256535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.686413, 32.045704, 35.132408>,  <35.750439, 32.264687, 35.057930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.686413, 32.045704, 35.132408>,  <35.579704, 31.680731, 35.256535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686413, 32.045704, 35.132408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041328, 0.332523, 0.942189,
		0.962875, -0.238520, 0.126415,
		0.266767, 0.912435, -0.310321,
		35.766441, 32.319435, 35.039310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952160, 31.917324, 35.772701>,  <35.579704, 31.680731, 35.256535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952160, 31.917324, 35.772701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.904270, 32.263252, 35.577663>,  <35.875538, 32.470810, 35.460640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.904270, 32.263252, 35.577663>,  <35.952160, 31.917324, 35.772701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904270, 32.263252, 35.577663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004918, 0.491641, 0.870784,
		0.992795, 0.101854, -0.063113,
		-0.119721, 0.864821, -0.487598,
		35.868355, 32.522697, 35.431385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480854, 32.298420, 35.994629>,  <35.952160, 31.917324, 35.772701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480854, 32.298420, 35.994629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.214542, 32.557907, 35.847168>,  <36.054756, 32.713600, 35.758690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.214542, 32.557907, 35.847168>,  <36.480854, 32.298420, 35.994629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214542, 32.557907, 35.847168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065052, 0.441731, 0.894786,
		0.743310, 0.619710, -0.251894,
		-0.665777, 0.648717, -0.368657,
		36.014809, 32.752522, 35.736572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701672, 32.989548, 36.082531>,  <36.480854, 32.298420, 35.994629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701672, 32.989548, 36.082531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.308277, 33.048283, 36.040222>,  <36.072239, 33.083523, 36.014835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.308277, 33.048283, 36.040222>,  <36.701672, 32.989548, 36.082531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308277, 33.048283, 36.040222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019054, 0.497220, 0.867415,
		0.179960, 0.855109, -0.486213,
		-0.983489, 0.146835, -0.105773,
		36.013229, 33.092335, 36.008492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513176, 33.674755, 36.253345>,  <36.701672, 32.989548, 36.082531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513176, 33.674755, 36.253345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.224663, 33.411427, 36.339466>,  <36.051556, 33.253429, 36.391140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.224663, 33.411427, 36.339466>,  <36.513176, 33.674755, 36.253345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224663, 33.411427, 36.339466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075469, 0.383694, 0.920371,
		-0.688516, 0.647600, -0.326435,
		-0.721284, -0.658326, 0.215306,
		36.008278, 33.213928, 36.404057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916649, 34.250263, 36.043118>,  <36.513176, 33.674755, 36.253345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916649, 34.250263, 36.043118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924557, 34.635536, 36.150368>,  <35.929302, 34.866699, 36.214718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924557, 34.635536, 36.150368>,  <35.916649, 34.250263, 36.043118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924557, 34.635536, 36.150368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992476, -0.013506, 0.121690,
		0.120831, -0.268511, 0.955668,
		0.019768, 0.963182, 0.268123,
		35.930489, 34.924492, 36.230804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382164, 34.741974, 35.929310>,  <35.916649, 34.250263, 36.043118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382164, 34.741974, 35.929310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413990, 35.134445, 35.858940>,  <35.433086, 35.369930, 35.816719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413990, 35.134445, 35.858940>,  <35.382164, 34.741974, 35.929310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413990, 35.134445, 35.858940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254991, -0.150579, -0.955147,
		-0.963664, 0.120857, 0.238211,
		0.079567, 0.981183, -0.175925,
		35.437859, 35.428799, 35.806164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904083, 34.933941, 35.581139>,  <35.382164, 34.741974, 35.929310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904083, 34.933941, 35.581139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.172928, 35.214066, 35.484943>,  <35.334236, 35.382141, 35.427227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.172928, 35.214066, 35.484943>,  <34.904083, 34.933941, 35.581139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172928, 35.214066, 35.484943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366570, 0.032503, -0.929822,
		-0.643345, 0.713101, 0.278558,
		0.672111, 0.700307, -0.240491,
		35.374561, 35.424156, 35.412796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516880, 35.407578, 35.251801>,  <34.904083, 34.933941, 35.581139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516880, 35.407578, 35.251801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898735, 35.443287, 35.138172>,  <35.127850, 35.464714, 35.069996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898735, 35.443287, 35.138172>,  <34.516880, 35.407578, 35.251801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898735, 35.443287, 35.138172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292746, 0.106935, -0.950192,
		-0.054450, 0.990250, 0.128218,
		0.954639, 0.089273, -0.284069,
		35.185127, 35.470070, 35.052952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641167, 36.105042, 34.967735>,  <34.516880, 35.407578, 35.251801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641167, 36.105042, 34.967735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.916275, 35.854733, 34.820553>,  <35.081341, 35.704548, 34.732243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.916275, 35.854733, 34.820553>,  <34.641167, 36.105042, 34.967735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916275, 35.854733, 34.820553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297625, 0.219238, -0.929169,
		0.662113, 0.748565, -0.035460,
		0.687769, -0.625768, -0.367952,
		35.122604, 35.667004, 34.710167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919456, 36.474083, 34.386143>,  <34.641167, 36.105042, 34.967735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919456, 36.474083, 34.386143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.037971, 36.098576, 34.315804>,  <35.109081, 35.873272, 34.273602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.037971, 36.098576, 34.315804>,  <34.919456, 36.474083, 34.386143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037971, 36.098576, 34.315804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233227, 0.107426, -0.966470,
		0.926184, 0.327369, -0.187117,
		0.296291, -0.938770, -0.175847,
		35.126858, 35.816944, 34.263050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372570, 36.490116, 33.746883>,  <34.919456, 36.474083, 34.386143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372570, 36.490116, 33.746883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.253803, 36.110180, 33.786175>,  <35.182545, 35.882217, 33.809750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.253803, 36.110180, 33.786175>,  <35.372570, 36.490116, 33.746883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253803, 36.110180, 33.786175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176349, -0.046553, -0.983226,
		0.938479, -0.309255, -0.153681,
		-0.296914, -0.949839, 0.098226,
		35.164730, 35.825230, 33.815643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713310, 36.027069, 33.144348>,  <35.372570, 36.490116, 33.746883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713310, 36.027069, 33.144348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.412952, 35.806034, 33.289013>,  <35.232738, 35.673412, 33.375813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.412952, 35.806034, 33.289013>,  <35.713310, 36.027069, 33.144348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412952, 35.806034, 33.289013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275713, -0.235311, -0.931993,
		0.600113, -0.799545, 0.024338,
		-0.750897, -0.552591, 0.361658,
		35.187683, 35.640255, 33.397511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728088, 35.405365, 32.757328>,  <35.713310, 36.027069, 33.144348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728088, 35.405365, 32.757328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.361382, 35.470573, 32.903183>,  <35.141357, 35.509701, 32.990696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.361382, 35.470573, 32.903183>,  <35.728088, 35.405365, 32.757328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361382, 35.470573, 32.903183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397507, -0.283022, -0.872861,
		-0.039095, -0.945157, 0.324267,
		-0.916766, 0.163023, 0.364642,
		35.086353, 35.519482, 33.012577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404541, 34.902676, 32.557125>,  <35.728088, 35.405365, 32.757328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404541, 34.902676, 32.557125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.103203, 35.149105, 32.649155>,  <34.922401, 35.296963, 32.704372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.103203, 35.149105, 32.649155>,  <35.404541, 34.902676, 32.557125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103203, 35.149105, 32.649155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520143, -0.344122, -0.781685,
		-0.402404, -0.708543, 0.579687,
		-0.753341, 0.616073, 0.230068,
		34.877201, 35.333927, 32.718174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943802, 34.487568, 32.387424>,  <35.404541, 34.902676, 32.557125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943802, 34.487568, 32.387424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.770947, 34.846863, 32.419506>,  <34.667233, 35.062439, 32.438755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.770947, 34.846863, 32.419506>,  <34.943802, 34.487568, 32.387424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770947, 34.846863, 32.419506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562558, -0.198988, -0.802454,
		-0.704832, -0.391889, 0.591299,
		-0.432135, 0.898235, 0.080207,
		34.641308, 35.116333, 32.443569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288090, 34.275169, 32.268631>,  <34.943802, 34.487568, 32.387424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288090, 34.275169, 32.268631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.337875, 34.667343, 32.207630>,  <34.367748, 34.902649, 32.171032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.337875, 34.667343, 32.207630>,  <34.288090, 34.275169, 32.268631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337875, 34.667343, 32.207630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562729, -0.056835, -0.824686,
		-0.817218, 0.188458, 0.544645,
		0.124464, 0.980436, -0.152497,
		34.375214, 34.961475, 32.161880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613079, 34.509998, 32.399338>,  <34.288090, 34.275169, 32.268631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613079, 34.509998, 32.399338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.841824, 34.727131, 32.153309>,  <33.979069, 34.857410, 32.005692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.841824, 34.727131, 32.153309>,  <33.613079, 34.509998, 32.399338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841824, 34.727131, 32.153309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652536, -0.153393, -0.742070,
		-0.497165, 0.825716, 0.266496,
		0.571860, 0.542830, -0.615071,
		34.013382, 34.889980, 31.968788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246620, 34.503422, 31.926702>,  <33.613079, 34.509998, 32.399338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246620, 34.503422, 31.926702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.522182, 34.703362, 31.716724>,  <33.687519, 34.823326, 31.590738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.522182, 34.703362, 31.716724>,  <33.246620, 34.503422, 31.926702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522182, 34.703362, 31.716724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510602, -0.179394, -0.840894,
		-0.514491, 0.847332, 0.131638,
		0.688901, 0.499847, -0.524946,
		33.728851, 34.853317, 31.559240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868690, 35.003834, 31.526814>,  <33.246620, 34.503422, 31.926702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868690, 35.003834, 31.526814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.217773, 34.922615, 31.349203>,  <33.427223, 34.873882, 31.242638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.217773, 34.922615, 31.349203>,  <32.868690, 35.003834, 31.526814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217773, 34.922615, 31.349203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488235, -0.356234, -0.796696,
		0.003592, 0.912068, -0.410022,
		0.872705, -0.203048, -0.444024,
		33.479584, 34.861702, 31.215996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754955, 35.803730, 31.369699>,  <32.868690, 35.003834, 31.526814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754955, 35.803730, 31.369699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.397881, 35.982002, 31.342926>,  <32.183636, 36.088966, 31.326862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.397881, 35.982002, 31.342926>,  <32.754955, 35.803730, 31.369699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397881, 35.982002, 31.342926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072423, 0.288448, 0.954753,
		0.444822, 0.847447, -0.289771,
		-0.892686, 0.445681, -0.066933,
		32.130074, 36.115707, 31.322845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909840, 36.502468, 31.503279>,  <32.754955, 35.803730, 31.369699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909840, 36.502468, 31.503279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.521797, 36.450527, 31.585289>,  <32.288971, 36.419361, 31.634495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.521797, 36.450527, 31.585289>,  <32.909840, 36.502468, 31.503279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521797, 36.450527, 31.585289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146624, 0.359592, 0.921518,
		-0.193389, 0.924030, -0.329802,
		-0.970104, -0.129854, 0.205026,
		32.230766, 36.411572, 31.646797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632652, 37.092182, 31.816614>,  <32.909840, 36.502468, 31.503279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632652, 37.092182, 31.816614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.383808, 36.802826, 31.936405>,  <32.234501, 36.629211, 32.008278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.383808, 36.802826, 31.936405>,  <32.632652, 37.092182, 31.816614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383808, 36.802826, 31.936405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032274, 0.358488, 0.932976,
		-0.782263, 0.590081, -0.199673,
		-0.622112, -0.723389, 0.299476,
		32.197174, 36.585808, 32.026249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358746, 37.396538, 32.429615>,  <32.632652, 37.092182, 31.816614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358746, 37.396538, 32.429615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.206383, 37.027958, 32.460197>,  <32.114964, 36.806812, 32.478546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.206383, 37.027958, 32.460197>,  <32.358746, 37.396538, 32.429615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206383, 37.027958, 32.460197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109551, 0.127088, 0.985823,
		-0.918101, 0.367131, -0.149354,
		-0.380907, -0.921447, 0.076460,
		32.092110, 36.751522, 32.483135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727318, 37.507759, 32.742329>,  <32.358746, 37.396538, 32.429615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727318, 37.507759, 32.742329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.822273, 37.126015, 32.814812>,  <31.879246, 36.896969, 32.858303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.822273, 37.126015, 32.814812>,  <31.727318, 37.507759, 32.742329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822273, 37.126015, 32.814812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153512, 0.147342, 0.977100,
		-0.959209, -0.259768, -0.111529,
		0.237386, -0.954364, 0.181209,
		31.893490, 36.839706, 32.869175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224651, 37.222885, 33.138168>,  <31.727318, 37.507759, 32.742329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224651, 37.222885, 33.138168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.521744, 36.966846, 33.216782>,  <31.699999, 36.813221, 33.263950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.521744, 36.966846, 33.216782>,  <31.224651, 37.222885, 33.138168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521744, 36.966846, 33.216782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255676, 0.000159, 0.966763,
		-0.618854, -0.768293, -0.163540,
		0.742731, -0.640099, 0.196533,
		31.744562, 36.774818, 33.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925520, 36.740173, 33.552624>,  <31.224651, 37.222885, 33.138168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925520, 36.740173, 33.552624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.317444, 36.690125, 33.614994>,  <31.552599, 36.660095, 33.652416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.317444, 36.690125, 33.614994>,  <30.925520, 36.740173, 33.552624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317444, 36.690125, 33.614994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171134, -0.121686, 0.977704,
		-0.103337, -0.984654, -0.140639,
		0.979813, -0.125101, 0.155933,
		31.611387, 36.652588, 33.661774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991137, 36.182514, 33.979408>,  <30.925520, 36.740173, 33.552624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991137, 36.182514, 33.979408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.341410, 36.369820, 34.026581>,  <31.551573, 36.482204, 34.054882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.341410, 36.369820, 34.026581>,  <30.991137, 36.182514, 33.979408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341410, 36.369820, 34.026581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084587, -0.091688, 0.992189,
		0.475421, -0.878817, -0.040681,
		0.875682, 0.468266, 0.117927,
		31.604115, 36.510300, 34.061958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388191, 35.675888, 34.480991>,  <30.991137, 36.182514, 33.979408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388191, 35.675888, 34.480991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.527468, 36.050858, 34.480881>,  <31.611032, 36.275841, 34.480816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.527468, 36.050858, 34.480881>,  <31.388191, 35.675888, 34.480991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527468, 36.050858, 34.480881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117384, -0.043309, 0.992142,
		0.930046, -0.345486, -0.125119,
		0.348190, 0.937424, -0.000275,
		31.631926, 36.332085, 34.480797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994532, 35.598751, 34.897877>,  <31.388191, 35.675888, 34.480991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994532, 35.598751, 34.897877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.913338, 35.990326, 34.906593>,  <31.864620, 36.225273, 34.911823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.913338, 35.990326, 34.906593>,  <31.994532, 35.598751, 34.897877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913338, 35.990326, 34.906593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227914, 0.025595, 0.973345,
		0.952288, 0.202541, -0.228310,
		-0.202986, 0.978939, 0.021788,
		31.852442, 36.284008, 34.913128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614075, 35.962296, 35.240841>,  <31.994532, 35.598751, 34.897877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614075, 35.962296, 35.240841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.283176, 36.184589, 35.273884>,  <32.084637, 36.317966, 35.293709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.283176, 36.184589, 35.273884>,  <32.614075, 35.962296, 35.240841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283176, 36.184589, 35.273884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055790, -0.065046, 0.996321,
		0.559060, 0.828813, 0.022805,
		-0.827248, 0.555731, 0.082604,
		32.035004, 36.351307, 35.298664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809284, 36.353363, 35.813507>,  <32.614075, 35.962296, 35.240841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809284, 36.353363, 35.813507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.411469, 36.342770, 35.773125>,  <32.172779, 36.336414, 35.748898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.411469, 36.342770, 35.773125>,  <32.809284, 36.353363, 35.813507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411469, 36.342770, 35.773125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095897, -0.149869, 0.984044,
		-0.041190, 0.988351, 0.146511,
		-0.994539, -0.026483, -0.100953,
		32.113106, 36.334824, 35.742840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.194572, 36.505695, 27.776463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806971, 36.407646, 27.764143>,  <31.574409, 36.348816, 27.756752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806971, 36.407646, 27.764143>,  <32.194572, 36.505695, 27.776463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806971, 36.407646, 27.764143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103666, 0.290274, 0.951312,
		-0.224252, 0.925016, -0.306687,
		-0.969002, -0.245127, -0.030798,
		31.516270, 36.334106, 27.754904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797691, 37.093704, 28.117897>,  <32.194572, 36.505695, 27.776463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797691, 37.093704, 28.117897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545073, 36.783745, 28.128363>,  <31.393501, 36.597771, 28.134642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545073, 36.783745, 28.128363>,  <31.797691, 37.093704, 28.117897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545073, 36.783745, 28.128363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226767, 0.216878, 0.949495,
		-0.741434, 0.593718, -0.312690,
		-0.631548, -0.774895, 0.026165,
		31.355608, 36.551277, 28.136211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103889, 37.267460, 28.498165>,  <31.797691, 37.093704, 28.117897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103889, 37.267460, 28.498165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160023, 36.871468, 28.504465>,  <31.193703, 36.633873, 28.508245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160023, 36.871468, 28.504465>,  <31.103889, 37.267460, 28.498165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160023, 36.871468, 28.504465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113397, -0.000267, 0.993550,
		-0.983589, -0.141214, -0.112298,
		0.140333, -0.989979, 0.015751,
		31.202124, 36.574474, 28.509190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781435, 37.042339, 29.251308>,  <31.103889, 37.267460, 28.498165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781435, 37.042339, 29.251308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002422, 36.734673, 29.122829>,  <31.135015, 36.550072, 29.045742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002422, 36.734673, 29.122829>,  <30.781435, 37.042339, 29.251308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002422, 36.734673, 29.122829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109004, -0.315364, 0.942690,
		-0.826376, -0.555818, -0.090387,
		0.552469, -0.769163, -0.321195,
		31.168163, 36.503925, 29.026470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518259, 36.391312, 29.566975>,  <30.781435, 37.042339, 29.251308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518259, 36.391312, 29.566975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890877, 36.303894, 29.450726>,  <31.114449, 36.251446, 29.380976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890877, 36.303894, 29.450726>,  <30.518259, 36.391312, 29.566975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890877, 36.303894, 29.450726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238378, -0.236510, 0.941933,
		-0.274589, -0.946732, -0.168224,
		0.931545, -0.218543, -0.290623,
		31.170341, 36.238331, 29.363539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694832, 35.779770, 29.823278>,  <30.518259, 36.391312, 29.566975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694832, 35.779770, 29.823278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062548, 35.928749, 29.772377>,  <31.283176, 36.018135, 29.741837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062548, 35.928749, 29.772377>,  <30.694832, 35.779770, 29.823278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062548, 35.928749, 29.772377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291735, -0.427768, 0.855514,
		0.264200, -0.823588, -0.501898,
		0.919287, 0.372448, -0.127253,
		31.338333, 36.040482, 29.734201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027672, 35.338131, 30.195162>,  <30.694832, 35.779770, 29.823278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027672, 35.338131, 30.195162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278170, 35.645557, 30.142828>,  <31.428469, 35.830013, 30.111427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278170, 35.645557, 30.142828>,  <31.027672, 35.338131, 30.195162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278170, 35.645557, 30.142828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299273, -0.082023, 0.950636,
		0.719898, -0.634487, -0.281378,
		0.626246, 0.768569, -0.130837,
		31.466043, 35.876129, 30.103577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526501, 35.182732, 30.572580>,  <31.027672, 35.338131, 30.195162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526501, 35.182732, 30.572580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599928, 35.574112, 30.534782>,  <31.643984, 35.808941, 30.512104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599928, 35.574112, 30.534782>,  <31.526501, 35.182732, 30.572580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599928, 35.574112, 30.534782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426321, 0.007374, 0.904542,
		0.885750, -0.206328, -0.415783,
		0.183566, 0.978455, -0.094493,
		31.654997, 35.867649, 30.506433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191479, 35.297054, 30.970873>,  <31.526501, 35.182732, 30.572580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191479, 35.297054, 30.970873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034637, 35.660904, 30.915962>,  <31.940533, 35.879211, 30.883015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034637, 35.660904, 30.915962>,  <32.191479, 35.297054, 30.970873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034637, 35.660904, 30.915962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389392, 0.299314, 0.871083,
		0.833444, 0.288099, -0.471561,
		-0.392103, 0.909621, -0.137278,
		31.917006, 35.933788, 30.874779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938980, 35.451744, 30.745794>,  <32.191479, 35.297054, 30.970873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938980, 35.451744, 30.745794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190609, 35.140804, 30.745398>,  <33.341587, 34.954239, 30.745159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190609, 35.140804, 30.745398>,  <32.938980, 35.451744, 30.745794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190609, 35.140804, 30.745398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295255, -0.237752, -0.925364,
		0.719094, 0.582412, -0.379079,
		0.629069, -0.777349, -0.000994,
		33.379330, 34.907600, 30.745100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327656, 35.538578, 30.129238>,  <32.938980, 35.451744, 30.745794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327656, 35.538578, 30.129238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340611, 35.156010, 30.245316>,  <33.348381, 34.926468, 30.314962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340611, 35.156010, 30.245316>,  <33.327656, 35.538578, 30.129238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340611, 35.156010, 30.245316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280150, -0.287394, -0.915926,
		0.959410, -0.051637, -0.277247,
		0.032383, -0.956419, 0.290195,
		33.350327, 34.869083, 30.332375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516907, 35.257805, 29.573702>,  <33.327656, 35.538578, 30.129238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516907, 35.257805, 29.573702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432350, 34.931244, 29.788666>,  <33.381618, 34.735310, 29.917645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432350, 34.931244, 29.788666>,  <33.516907, 35.257805, 29.573702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432350, 34.931244, 29.788666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322731, -0.460694, -0.826804,
		0.922584, -0.348214, -0.166092,
		-0.211387, -0.816399, 0.537408,
		33.368935, 34.686325, 29.949888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822014, 34.765404, 29.250523>,  <33.516907, 35.257805, 29.573702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822014, 34.765404, 29.250523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550659, 34.566296, 29.466679>,  <33.387848, 34.446831, 29.596373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550659, 34.566296, 29.466679>,  <33.822014, 34.765404, 29.250523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550659, 34.566296, 29.466679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259109, -0.526170, -0.809943,
		0.687503, -0.689471, 0.227968,
		-0.678382, -0.497769, 0.540392,
		33.347145, 34.416965, 29.628796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839016, 34.011471, 29.171614>,  <33.822014, 34.765404, 29.250523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839016, 34.011471, 29.171614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466362, 34.064934, 29.306786>,  <33.242771, 34.097012, 29.387888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466362, 34.064934, 29.306786>,  <33.839016, 34.011471, 29.171614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466362, 34.064934, 29.306786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356137, -0.520810, -0.775837,
		0.072299, -0.843144, 0.532804,
		-0.931633, 0.133659, 0.337929,
		33.186871, 34.105030, 29.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625240, 33.349560, 29.184988>,  <33.839016, 34.011471, 29.171614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625240, 33.349560, 29.184988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287315, 33.563549, 29.188974>,  <33.084560, 33.691944, 29.191366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287315, 33.563549, 29.188974>,  <33.625240, 33.349560, 29.184988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287315, 33.563549, 29.188974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357572, -0.550613, -0.754300,
		-0.398045, -0.640803, 0.656454,
		-0.844809, 0.534975, 0.009964,
		33.033871, 33.724041, 29.191963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042839, 32.891541, 29.247078>,  <33.625240, 33.349560, 29.184988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042839, 32.891541, 29.247078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923679, 33.231514, 29.073244>,  <32.852184, 33.435497, 28.968943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923679, 33.231514, 29.073244>,  <33.042839, 32.891541, 29.247078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923679, 33.231514, 29.073244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299492, -0.515483, -0.802858,
		-0.906401, -0.109014, 0.408110,
		-0.297897, 0.849937, -0.434586,
		32.834309, 33.486496, 28.942869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397617, 32.739243, 28.941185>,  <33.042839, 32.891541, 29.247078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397617, 32.739243, 28.941185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554565, 33.064495, 28.769203>,  <32.648735, 33.259647, 28.666014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554565, 33.064495, 28.769203>,  <32.397617, 32.739243, 28.941185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554565, 33.064495, 28.769203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198215, -0.381711, -0.902777,
		-0.898198, 0.439444, 0.011405,
		0.392367, 0.813133, -0.429957,
		32.672276, 33.308434, 28.640217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943956, 33.070694, 28.447981>,  <32.397617, 32.739243, 28.941185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943956, 33.070694, 28.447981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282200, 33.252323, 28.335724>,  <32.485146, 33.361301, 28.268370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282200, 33.252323, 28.335724>,  <31.943956, 33.070694, 28.447981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282200, 33.252323, 28.335724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211212, -0.198228, -0.957129,
		-0.490239, 0.868633, -0.071717,
		0.845610, 0.454074, -0.280645,
		32.535881, 33.388546, 28.251530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822498, 33.455700, 27.833853>,  <31.943956, 33.070694, 28.447981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822498, 33.455700, 27.833853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221123, 33.424225, 27.823483>,  <32.460297, 33.405342, 27.817261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221123, 33.424225, 27.823483>,  <31.822498, 33.455700, 27.833853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221123, 33.424225, 27.823483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040628, -0.191432, -0.980665,
		0.072199, 0.978347, -0.193971,
		0.996562, -0.078684, -0.025927,
		32.520092, 33.400620, 27.815704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042854, 33.802528, 27.217535>,  <31.822498, 33.455700, 27.833853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042854, 33.802528, 27.217535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359150, 33.576984, 27.312864>,  <32.548927, 33.441658, 27.370062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359150, 33.576984, 27.312864>,  <32.042854, 33.802528, 27.217535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359150, 33.576984, 27.312864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026555, -0.357358, -0.933590,
		0.611580, 0.744552, -0.267603,
		0.790736, -0.563859, 0.238325,
		32.596371, 33.407825, 27.384361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469154, 33.868496, 26.734951>,  <32.042854, 33.802528, 27.217535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469154, 33.868496, 26.734951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642902, 33.532734, 26.865622>,  <32.747150, 33.331276, 26.944025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642902, 33.532734, 26.865622>,  <32.469154, 33.868496, 26.734951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642902, 33.532734, 26.865622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140508, -0.295095, -0.945080,
		0.889707, 0.456417, -0.010238,
		0.434372, -0.839406, 0.326678,
		32.773212, 33.280910, 26.963625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186905, 33.802021, 26.505003>,  <32.469154, 33.868496, 26.734951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186905, 33.802021, 26.505003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048550, 33.434795, 26.582487>,  <32.965538, 33.214462, 26.628977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048550, 33.434795, 26.582487>,  <33.186905, 33.802021, 26.505003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048550, 33.434795, 26.582487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294659, -0.302293, -0.906529,
		0.890808, -0.256477, 0.375075,
		-0.345887, -0.918062, 0.193711,
		32.944782, 33.159378, 26.640600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813713, 33.347618, 26.362749>,  <33.186905, 33.802021, 26.505003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813713, 33.347618, 26.362749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496796, 33.104572, 26.340603>,  <33.306644, 32.958744, 26.327316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496796, 33.104572, 26.340603>,  <33.813713, 33.347618, 26.362749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496796, 33.104572, 26.340603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516127, -0.619063, -0.591924,
		0.325390, -0.497554, 0.804090,
		-0.792297, -0.607619, -0.055365,
		33.259106, 32.922287, 26.323994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.014996, 29.987022, 28.243797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.360489, 30.168556, 28.156164>,  <29.567785, 30.277477, 28.103584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.360489, 30.168556, 28.156164>,  <29.014996, 29.987022, 28.243797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360489, 30.168556, 28.156164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239247, 0.013344, 0.970867,
		0.443538, -0.890986, -0.097053,
		0.863734, 0.453836, -0.219084,
		29.619610, 30.304707, 28.090439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450129, 29.717318, 28.613443>,  <29.014996, 29.987022, 28.243797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450129, 29.717318, 28.613443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647139, 30.055910, 28.532558>,  <29.765345, 30.259066, 28.484028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.647139, 30.055910, 28.532558>,  <29.450129, 29.717318, 28.613443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647139, 30.055910, 28.532558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349005, 0.020739, 0.936891,
		0.797254, -0.532016, -0.285212,
		0.492526, 0.846480, -0.202210,
		29.794897, 30.309855, 28.471895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972919, 29.538727, 28.946053>,  <29.450129, 29.717318, 28.613443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972919, 29.538727, 28.946053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.020828, 29.932156, 28.892029>,  <30.049574, 30.168213, 28.859615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.020828, 29.932156, 28.892029>,  <29.972919, 29.538727, 28.946053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020828, 29.932156, 28.892029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290689, 0.095332, 0.952057,
		0.949292, -0.153291, -0.274495,
		0.119773, 0.983572, -0.135058,
		30.056761, 30.227226, 28.851511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676144, 29.648741, 29.015018>,  <29.972919, 29.538727, 28.946053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676144, 29.648741, 29.015018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449654, 29.967840, 29.097950>,  <30.313761, 30.159300, 29.147709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449654, 29.967840, 29.097950>,  <30.676144, 29.648741, 29.015018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449654, 29.967840, 29.097950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489675, 0.123232, 0.863152,
		0.663030, 0.590262, -0.460416,
		-0.566224, 0.797750, 0.207330,
		30.279787, 30.207165, 29.160149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229343, 30.159529, 29.245029>,  <30.676144, 29.648741, 29.015018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229343, 30.159529, 29.245029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.880974, 30.311720, 29.369432>,  <30.671951, 30.403034, 29.444075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.880974, 30.311720, 29.369432>,  <31.229343, 30.159529, 29.245029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880974, 30.311720, 29.369432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402251, 0.188421, 0.895931,
		0.282282, 0.905391, -0.317148,
		-0.870925, 0.380479, 0.311007,
		30.619696, 30.425863, 29.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439154, 30.839159, 29.636259>,  <31.229343, 30.159529, 29.245029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439154, 30.839159, 29.636259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.062998, 30.742487, 29.731972>,  <30.837303, 30.684484, 29.789398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.062998, 30.742487, 29.731972>,  <31.439154, 30.839159, 29.636259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062998, 30.742487, 29.731972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169064, 0.278282, 0.945503,
		-0.295095, 0.929597, -0.220835,
		-0.940392, -0.241678, 0.239281,
		30.780880, 30.669983, 29.803757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231255, 31.450518, 29.993931>,  <31.439154, 30.839159, 29.636259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231255, 31.450518, 29.993931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.011112, 31.133423, 30.098755>,  <30.879026, 30.943165, 30.161650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.011112, 31.133423, 30.098755>,  <31.231255, 31.450518, 29.993931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011112, 31.133423, 30.098755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118377, 0.236616, 0.964365,
		-0.826497, 0.561764, -0.036381,
		-0.550354, -0.792738, 0.262062,
		30.846006, 30.895601, 30.177374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765711, 31.682186, 30.531895>,  <31.231255, 31.450518, 29.993931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765711, 31.682186, 30.531895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.751249, 31.285206, 30.578777>,  <30.742573, 31.047018, 30.606907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.751249, 31.285206, 30.578777>,  <30.765711, 31.682186, 30.531895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751249, 31.285206, 30.578777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032429, 0.118389, 0.992438,
		-0.998820, 0.032080, -0.036465,
		-0.036154, -0.992449, 0.117209,
		30.740402, 30.987471, 30.613939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221178, 31.602600, 30.994770>,  <30.765711, 31.682186, 30.531895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221178, 31.602600, 30.994770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.431648, 31.262783, 31.009811>,  <30.557930, 31.058893, 31.018837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.431648, 31.262783, 31.009811>,  <30.221178, 31.602600, 30.994770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431648, 31.262783, 31.009811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022365, 0.058031, 0.998064,
		-0.850081, -0.524317, 0.049535,
		0.526177, -0.849544, 0.037605,
		30.589500, 31.007919, 31.021093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933008, 31.145611, 31.552282>,  <30.221178, 31.602600, 30.994770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933008, 31.145611, 31.552282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.308334, 31.022940, 31.488396>,  <30.533531, 30.949337, 31.450064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.308334, 31.022940, 31.488396>,  <29.933008, 31.145611, 31.552282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308334, 31.022940, 31.488396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154980, -0.039898, 0.987112,
		-0.309100, -0.950976, 0.010092,
		0.938317, -0.306680, -0.159715,
		30.589830, 30.930935, 31.440481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026733, 30.582951, 32.098473>,  <29.933008, 31.145611, 31.552282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026733, 30.582951, 32.098473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.370161, 30.738447, 31.964764>,  <30.576218, 30.831745, 31.884539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.370161, 30.738447, 31.964764>,  <30.026733, 30.582951, 32.098473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370161, 30.738447, 31.964764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321777, 0.099003, 0.941625,
		0.399145, -0.916011, -0.040088,
		0.858571, 0.388744, -0.334268,
		30.627731, 30.855070, 31.864483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540413, 30.245983, 32.455048>,  <30.026733, 30.582951, 32.098473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540413, 30.245983, 32.455048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.760664, 30.546490, 32.309494>,  <30.892815, 30.726793, 32.222160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.760664, 30.546490, 32.309494>,  <30.540413, 30.245983, 32.455048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760664, 30.546490, 32.309494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478188, 0.073423, 0.875183,
		0.684211, -0.655905, -0.318817,
		0.550628, 0.751264, -0.363883,
		30.925852, 30.771870, 32.200329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284487, 30.162382, 32.753864>,  <30.540413, 30.245983, 32.455048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284487, 30.162382, 32.753864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.228407, 30.544659, 32.650330>,  <31.194759, 30.774025, 32.588207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.228407, 30.544659, 32.650330>,  <31.284487, 30.162382, 32.753864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228407, 30.544659, 32.650330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313930, 0.290835, 0.903805,
		0.939038, 0.045456, -0.340796,
		-0.140199, 0.955693, -0.258835,
		31.186348, 30.831366, 32.572678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681520, 30.368027, 33.240864>,  <31.284487, 30.162382, 32.753864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681520, 30.368027, 33.240864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.490622, 30.689001, 33.097572>,  <31.376081, 30.881586, 33.011597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.490622, 30.689001, 33.097572>,  <31.681520, 30.368027, 33.240864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490622, 30.689001, 33.097572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003921, 0.405700, 0.913998,
		0.878759, 0.437609, -0.190474,
		-0.477249, 0.802437, -0.358229,
		31.347446, 30.929731, 32.990105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233467, 30.317003, 32.888939>,  <31.681520, 30.368027, 33.240864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233467, 30.317003, 32.888939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.625736, 30.238760, 32.890491>,  <32.861099, 30.191814, 32.891422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.625736, 30.238760, 32.890491>,  <32.233467, 30.317003, 32.888939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625736, 30.238760, 32.890491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059041, -0.314799, -0.947321,
		0.186526, 0.928784, -0.320264,
		0.980675, -0.195608, 0.003882,
		32.919937, 30.180077, 32.891655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521011, 30.599419, 32.312500>,  <32.233467, 30.317003, 32.888939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521011, 30.599419, 32.312500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.747833, 30.290562, 32.427212>,  <32.883926, 30.105247, 32.496040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.747833, 30.290562, 32.427212>,  <32.521011, 30.599419, 32.312500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747833, 30.290562, 32.427212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072207, -0.393434, -0.916513,
		0.820507, 0.499008, -0.278854,
		0.567058, -0.772141, 0.286783,
		32.917950, 30.058920, 32.513248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950970, 30.458942, 31.767836>,  <32.521011, 30.599419, 32.312500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950970, 30.458942, 31.767836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.972759, 30.122576, 31.983200>,  <32.985832, 29.920755, 32.112419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.972759, 30.122576, 31.983200>,  <32.950970, 30.458942, 31.767836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972759, 30.122576, 31.983200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013495, -0.539784, -0.841695,
		0.998424, 0.038583, -0.040751,
		0.054472, -0.840919, 0.538413,
		32.989101, 29.870300, 32.144726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494503, 30.232460, 31.399378>,  <32.950970, 30.458942, 31.767836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494503, 30.232460, 31.399378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334843, 29.918648, 31.589195>,  <33.239048, 29.730360, 31.703085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334843, 29.918648, 31.589195>,  <33.494503, 30.232460, 31.399378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334843, 29.918648, 31.589195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050053, -0.535431, -0.843095,
		0.915518, -0.312770, 0.252986,
		-0.399152, -0.784531, 0.474541,
		33.215096, 29.683289, 31.731558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802017, 29.739243, 31.083344>,  <33.494503, 30.232460, 31.399378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802017, 29.739243, 31.083344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482769, 29.548967, 31.231247>,  <33.291218, 29.434803, 31.319988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482769, 29.548967, 31.231247>,  <33.802017, 29.739243, 31.083344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482769, 29.548967, 31.231247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009283, -0.603930, -0.796984,
		0.602422, -0.639524, 0.477595,
		-0.798124, -0.475687, 0.369758,
		33.243332, 29.406261, 31.342175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906693, 28.982519, 30.962421>,  <33.802017, 29.739243, 31.083344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906693, 28.982519, 30.962421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517021, 29.050722, 31.021631>,  <33.283218, 29.091644, 31.057158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517021, 29.050722, 31.021631>,  <33.906693, 28.982519, 30.962421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517021, 29.050722, 31.021631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215903, -0.511435, -0.831757,
		-0.066116, -0.842236, 0.535040,
		-0.974174, 0.170509, 0.148027,
		33.224770, 29.101875, 31.066040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529095, 28.334492, 30.850496>,  <33.906693, 28.982519, 30.962421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529095, 28.334492, 30.850496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243004, 28.604685, 30.778753>,  <33.071350, 28.766800, 30.735708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243004, 28.604685, 30.778753>,  <33.529095, 28.334492, 30.850496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243004, 28.604685, 30.778753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236148, -0.475114, -0.847644,
		-0.657785, -0.563905, 0.499330,
		-0.715230, 0.675483, -0.179358,
		33.028435, 28.807329, 30.724947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067772, 27.895994, 30.529066>,  <33.529095, 28.334492, 30.850496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067772, 27.895994, 30.529066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.938404, 28.264336, 30.441956>,  <32.860783, 28.485340, 30.389688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.938404, 28.264336, 30.441956>,  <33.067772, 27.895994, 30.529066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938404, 28.264336, 30.441956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364826, -0.333699, -0.869222,
		-0.873098, -0.201674, 0.443877,
		-0.323420, 0.920854, -0.217776,
		32.841377, 28.540592, 30.376623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358635, 27.860161, 30.272598>,  <33.067772, 27.895994, 30.529066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358635, 27.860161, 30.272598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.512398, 28.194569, 30.115984>,  <32.604656, 28.395212, 30.022015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.512398, 28.194569, 30.115984>,  <32.358635, 27.860161, 30.272598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512398, 28.194569, 30.115984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398560, -0.232266, -0.887244,
		-0.832693, 0.497118, 0.243918,
		0.384411, 0.836018, -0.391538,
		32.627720, 28.445374, 29.998522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788414, 28.273214, 29.839954>,  <32.358635, 27.860161, 30.272598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788414, 28.273214, 29.839954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145081, 28.406569, 29.717459>,  <32.359081, 28.486580, 29.643961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145081, 28.406569, 29.717459>,  <31.788414, 28.273214, 29.839954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145081, 28.406569, 29.717459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288404, -0.103074, -0.951945,
		-0.348929, 0.937140, 0.004242,
		0.891668, 0.333384, -0.306240,
		32.412582, 28.506584, 29.625587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755196, 28.906410, 29.394215>,  <31.788414, 28.273214, 29.839954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755196, 28.906410, 29.394215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.069809, 28.681124, 29.292904>,  <32.258579, 28.545952, 29.232119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.069809, 28.681124, 29.292904>,  <31.755196, 28.906410, 29.394215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069809, 28.681124, 29.292904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262580, 0.066197, -0.962637,
		0.558940, 0.823653, -0.095824,
		0.786535, -0.563218, -0.253275,
		32.305771, 28.512157, 29.216921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393219, 29.306477, 29.022243>,  <31.755196, 28.906410, 29.394215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393219, 29.306477, 29.022243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381310, 28.929155, 28.890003>,  <32.374165, 28.702763, 28.810659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381310, 28.929155, 28.890003>,  <32.393219, 29.306477, 29.022243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381310, 28.929155, 28.890003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108632, 0.331840, -0.937060,
		0.993636, 0.008015, -0.112353,
		-0.029773, -0.943301, -0.330599,
		32.372379, 28.646164, 28.790823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708496, 29.376034, 28.354033>,  <32.393219, 29.306477, 29.022243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708496, 29.376034, 28.354033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.512589, 29.027327, 28.358852>,  <32.395042, 28.818102, 28.361744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.512589, 29.027327, 28.358852>,  <32.708496, 29.376034, 28.354033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512589, 29.027327, 28.358852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074329, 0.027980, -0.996841,
		0.868678, -0.489118, -0.078501,
		-0.489769, -0.871769, 0.012050,
		32.365658, 28.765797, 28.362467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957001, 29.019953, 27.777891>,  <32.708496, 29.376034, 28.354033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957001, 29.019953, 27.777891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601948, 28.841448, 27.823439>,  <32.388916, 28.734344, 27.850767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601948, 28.841448, 27.823439>,  <32.957001, 29.019953, 27.777891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601948, 28.841448, 27.823439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031666, -0.187516, -0.981751,
		0.459470, -0.875036, 0.152313,
		-0.887629, -0.446262, 0.113867,
		32.335659, 28.707569, 27.857599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487007, 28.465981, 27.858917>,  <32.957001, 29.019953, 27.777891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487007, 28.465981, 27.858917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.832855, 28.615646, 27.724796>,  <34.040363, 28.705446, 27.644323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.832855, 28.615646, 27.724796>,  <33.487007, 28.465981, 27.858917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832855, 28.615646, 27.724796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196303, 0.362742, 0.910979,
		0.462487, -0.853474, 0.240184,
		0.864622, 0.374167, -0.335303,
		34.092243, 28.727896, 27.624205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074287, 28.222919, 28.266344>,  <33.487007, 28.465981, 27.858917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074287, 28.222919, 28.266344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208260, 28.560688, 28.099117>,  <34.288643, 28.763350, 27.998781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208260, 28.560688, 28.099117>,  <34.074287, 28.222919, 28.266344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208260, 28.560688, 28.099117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367061, 0.291710, 0.883273,
		0.867807, -0.449290, -0.212251,
		0.334930, 0.844419, -0.418065,
		34.308739, 28.814014, 27.973698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671249, 28.360605, 28.762794>,  <34.074287, 28.222919, 28.266344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671249, 28.360605, 28.762794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.599113, 28.692959, 28.552231>,  <34.555832, 28.892372, 28.425892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.599113, 28.692959, 28.552231>,  <34.671249, 28.360605, 28.762794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599113, 28.692959, 28.552231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369577, 0.553209, 0.746574,
		0.911531, -0.059909, -0.406844,
		-0.180343, 0.830885, -0.526408,
		34.545010, 28.942225, 28.394308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289387, 28.752762, 28.840120>,  <34.671249, 28.360605, 28.762794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289387, 28.752762, 28.840120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992371, 28.996859, 28.729671>,  <34.814163, 29.143316, 28.663403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992371, 28.996859, 28.729671>,  <35.289387, 28.752762, 28.840120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992371, 28.996859, 28.729671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182220, 0.580735, 0.793438,
		0.644542, 0.538843, -0.542415,
		-0.742538, 0.610242, -0.276120,
		34.769608, 29.179932, 28.646835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594402, 29.332520, 28.561243>,  <35.289387, 28.752762, 28.840120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594402, 29.332520, 28.561243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229374, 29.421982, 28.698172>,  <35.010357, 29.475658, 28.780329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229374, 29.421982, 28.698172>,  <35.594402, 29.332520, 28.561243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229374, 29.421982, 28.698172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379804, 0.773799, 0.506936,
		-0.151508, 0.592633, -0.791095,
		-0.912575, 0.223656, 0.342321,
		34.955601, 29.489079, 28.800867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809898, 29.904688, 28.830931>,  <35.594402, 29.332520, 28.561243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809898, 29.904688, 28.830931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425133, 29.887037, 28.938845>,  <35.194275, 29.876448, 29.003593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425133, 29.887037, 28.938845>,  <35.809898, 29.904688, 28.830931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425133, 29.887037, 28.938845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160692, 0.707109, 0.688604,
		-0.221152, 0.705726, -0.673084,
		-0.961910, -0.044127, 0.269783,
		35.136559, 29.873798, 29.019779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529179, 30.610231, 28.917805>,  <35.809898, 29.904688, 28.830931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529179, 30.610231, 28.917805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321571, 30.358747, 29.149441>,  <35.197006, 30.207857, 29.288424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321571, 30.358747, 29.149441>,  <35.529179, 30.610231, 28.917805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321571, 30.358747, 29.149441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209284, 0.563395, 0.799241,
		-0.828748, 0.536013, -0.160832,
		-0.519016, -0.628710, 0.579092,
		35.165867, 30.170135, 29.323168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187164, 31.065285, 29.218193>,  <35.529179, 30.610231, 28.917805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187164, 31.065285, 29.218193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154743, 30.729225, 29.432699>,  <35.135288, 30.527590, 29.561403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154743, 30.729225, 29.432699>,  <35.187164, 31.065285, 29.218193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154743, 30.729225, 29.432699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216200, 0.510404, 0.832313,
		-0.972979, 0.183405, 0.140269,
		-0.081056, -0.840149, 0.536264,
		35.130424, 30.477180, 29.593578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886284, 31.166233, 29.792107>,  <35.187164, 31.065285, 29.218193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886284, 31.166233, 29.792107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.044380, 30.823383, 29.924242>,  <35.139236, 30.617674, 30.003523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.044380, 30.823383, 29.924242>,  <34.886284, 31.166233, 29.792107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044380, 30.823383, 29.924242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074510, 0.388348, 0.918496,
		-0.915551, -0.338413, 0.217355,
		0.395240, -0.857125, 0.330337,
		35.162952, 30.566246, 30.023344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646507, 31.081499, 30.507032>,  <34.886284, 31.166233, 29.792107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646507, 31.081499, 30.507032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.958572, 30.832956, 30.478033>,  <35.145813, 30.683830, 30.460634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.958572, 30.832956, 30.478033>,  <34.646507, 31.081499, 30.507032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958572, 30.832956, 30.478033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325113, 0.303715, 0.895577,
		-0.534454, -0.722270, 0.438959,
		0.780167, -0.621356, -0.072498,
		35.192623, 30.646549, 30.456284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686489, 30.577528, 31.092529>,  <34.646507, 31.081499, 30.507032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686489, 30.577528, 31.092529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058289, 30.587343, 30.945328>,  <35.281368, 30.593231, 30.857006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058289, 30.587343, 30.945328>,  <34.686489, 30.577528, 31.092529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058289, 30.587343, 30.945328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336338, 0.353064, 0.873054,
		0.151351, -0.935277, 0.319921,
		0.929500, 0.024536, -0.368005,
		35.337139, 30.594704, 30.834927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055267, 30.107922, 31.513510>,  <34.686489, 30.577528, 31.092529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055267, 30.107922, 31.513510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287483, 30.374264, 31.326061>,  <35.426815, 30.534069, 31.213593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287483, 30.374264, 31.326061>,  <35.055267, 30.107922, 31.513510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287483, 30.374264, 31.326061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377917, 0.289436, 0.879435,
		0.721214, -0.687648, -0.083609,
		0.580543, 0.665857, -0.468619,
		35.461647, 30.574020, 31.185476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605858, 30.056545, 31.862574>,  <35.055267, 30.107922, 31.513510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605858, 30.056545, 31.862574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661602, 30.406982, 31.677948>,  <35.695049, 30.617245, 31.567173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661602, 30.406982, 31.677948>,  <35.605858, 30.056545, 31.862574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661602, 30.406982, 31.677948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361989, 0.388778, 0.847240,
		0.921706, -0.285155, -0.262955,
		0.139363, 0.876092, -0.461562,
		35.703411, 30.669809, 31.539480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255718, 30.311325, 32.177414>,  <35.605858, 30.056545, 31.862574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255718, 30.311325, 32.177414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.065044, 30.632305, 32.033833>,  <35.950642, 30.824894, 31.947683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.065044, 30.632305, 32.033833>,  <36.255718, 30.311325, 32.177414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065044, 30.632305, 32.033833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104690, 0.457244, 0.883158,
		0.872820, 0.383407, -0.301968,
		-0.476682, 0.802451, -0.358953,
		35.922039, 30.873041, 31.926147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.039951, 31.941399, 26.010406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.686649, 32.128403, 25.996027>,  <33.474667, 32.240604, 25.987400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.686649, 32.128403, 25.996027>,  <34.039951, 31.941399, 26.010406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686649, 32.128403, 25.996027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248416, -0.531594, -0.809751,
		-0.397676, -0.706288, 0.585671,
		-0.883257, 0.467509, -0.035949,
		33.421673, 32.268654, 25.985243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692013, 31.469208, 25.835680>,  <34.039951, 31.941399, 26.010406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692013, 31.469208, 25.835680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424770, 31.758011, 25.763754>,  <33.264423, 31.931293, 25.720598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424770, 31.758011, 25.763754>,  <33.692013, 31.469208, 25.835680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424770, 31.758011, 25.763754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245069, -0.441711, -0.863037,
		-0.702546, -0.532537, 0.472053,
		-0.668110, 0.722008, -0.179814,
		33.224339, 31.974613, 25.709810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979824, 31.241373, 25.717361>,  <33.692013, 31.469208, 25.835680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979824, 31.241373, 25.717361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.021736, 31.578661, 25.506458>,  <33.046883, 31.781034, 25.379917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.021736, 31.578661, 25.506458>,  <32.979824, 31.241373, 25.717361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021736, 31.578661, 25.506458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192661, -0.502922, -0.842586,
		-0.975655, 0.189867, 0.109760,
		0.104779, 0.843220, -0.527258,
		33.053169, 31.831627, 25.348280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430981, 31.211287, 25.266939>,  <32.979824, 31.241373, 25.717361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430981, 31.211287, 25.266939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682735, 31.478165, 25.107582>,  <32.833790, 31.638292, 25.011969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682735, 31.478165, 25.107582>,  <32.430981, 31.211287, 25.266939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682735, 31.478165, 25.107582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081879, -0.452881, -0.887803,
		-0.772763, 0.591396, -0.230410,
		0.629391, 0.667196, -0.398393,
		32.871552, 31.678324, 24.988064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092888, 31.259796, 24.669151>,  <32.430981, 31.211287, 25.266939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092888, 31.259796, 24.669151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463009, 31.403896, 24.621754>,  <32.685081, 31.490356, 24.593315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463009, 31.403896, 24.621754>,  <32.092888, 31.259796, 24.669151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463009, 31.403896, 24.621754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034058, -0.232258, -0.972058,
		-0.377706, 0.903480, -0.202639,
		0.925299, 0.360251, -0.118496,
		32.740597, 31.511972, 24.586205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943693, 31.783026, 24.159081>,  <32.092888, 31.259796, 24.669151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943693, 31.783026, 24.159081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.315758, 31.636263, 24.164404>,  <32.538998, 31.548206, 24.167599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.315758, 31.636263, 24.164404>,  <31.943693, 31.783026, 24.159081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315758, 31.636263, 24.164404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025704, 0.028912, -0.999252,
		0.366245, 0.929809, 0.036323,
		0.930163, -0.366905, 0.013311,
		32.594807, 31.526192, 24.168398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162270, 32.048809, 23.495939>,  <31.943693, 31.783026, 24.159081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162270, 32.048809, 23.495939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459568, 31.810160, 23.617020>,  <32.637947, 31.666971, 23.689669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459568, 31.810160, 23.617020>,  <32.162270, 32.048809, 23.495939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459568, 31.810160, 23.617020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284014, -0.128280, -0.950200,
		0.605741, 0.792203, 0.074106,
		0.743245, -0.596622, 0.302702,
		32.682541, 31.631172, 23.707830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727444, 32.303341, 23.290888>,  <32.162270, 32.048809, 23.495939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727444, 32.303341, 23.290888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.807644, 31.911730, 23.305336>,  <32.855762, 31.676764, 23.314005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.807644, 31.911730, 23.305336>,  <32.727444, 32.303341, 23.290888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807644, 31.911730, 23.305336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270234, 0.019830, -0.962590,
		0.941686, 0.202762, 0.268543,
		0.200502, -0.979027, 0.036119,
		32.867794, 31.618021, 23.316172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367413, 32.184486, 22.892363>,  <32.727444, 32.303341, 23.290888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367413, 32.184486, 22.892363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181824, 31.830484, 22.907864>,  <33.070469, 31.618084, 22.917164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181824, 31.830484, 22.907864>,  <33.367413, 32.184486, 22.892363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181824, 31.830484, 22.907864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125575, -0.109013, -0.986077,
		0.876904, -0.452646, 0.161713,
		-0.463973, -0.885001, 0.038753,
		33.042633, 31.564983, 22.919489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629597, 31.755650, 22.309708>,  <33.367413, 32.184486, 22.892363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629597, 31.755650, 22.309708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311810, 31.536009, 22.413486>,  <33.121136, 31.404224, 22.475754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311810, 31.536009, 22.413486>,  <33.629597, 31.755650, 22.309708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311810, 31.536009, 22.413486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090825, -0.314973, -0.944745,
		0.600478, -0.774132, 0.200364,
		-0.794467, -0.549100, 0.259445,
		33.073471, 31.371279, 22.491320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711720, 31.072165, 21.946629>,  <33.629597, 31.755650, 22.309708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711720, 31.072165, 21.946629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325558, 31.120523, 22.039049>,  <33.093861, 31.149538, 22.094501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325558, 31.120523, 22.039049>,  <33.711720, 31.072165, 21.946629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325558, 31.120523, 22.039049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260006, -0.378578, -0.888299,
		-0.019920, -0.917640, 0.396913,
		-0.965401, 0.120895, 0.231051,
		33.035938, 31.156792, 22.108364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441391, 30.887413, 21.177652>,  <33.711720, 31.072165, 21.946629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441391, 30.887413, 21.177652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.506363, 31.268745, 21.075848>,  <33.545345, 31.497545, 21.014765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.506363, 31.268745, 21.075848>,  <33.441391, 30.887413, 21.177652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506363, 31.268745, 21.075848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421395, 0.300252, 0.855731,
		0.892213, -0.031747, 0.450499,
		0.162430, 0.953331, -0.254511,
		33.555092, 31.554745, 20.999495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416611, 30.140739, 21.225405>,  <33.441391, 30.887413, 21.177652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416611, 30.140739, 21.225405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329411, 29.938667, 21.559414>,  <33.277092, 29.817423, 21.759819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329411, 29.938667, 21.559414>,  <33.416611, 30.140739, 21.225405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329411, 29.938667, 21.559414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531124, -0.656394, -0.535774,
		0.818769, -0.560301, -0.125219,
		-0.218001, -0.505182, 0.835025,
		33.264011, 29.787113, 21.809921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634594, 29.454638, 21.343611>,  <33.416611, 30.140739, 21.225405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634594, 29.454638, 21.343611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296257, 29.475277, 21.555983>,  <33.093254, 29.487661, 21.683405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296257, 29.475277, 21.555983>,  <33.634594, 29.454638, 21.343611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296257, 29.475277, 21.555983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350319, -0.804324, -0.479936,
		0.402274, -0.591946, 0.698409,
		-0.845844, 0.051600, 0.530929,
		33.042503, 29.490757, 21.715261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715466, 29.302525, 22.084467>,  <33.634594, 29.454638, 21.343611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715466, 29.302525, 22.084467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574123, 28.928535, 22.096888>,  <33.489319, 28.704142, 22.104340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574123, 28.928535, 22.096888>,  <33.715466, 29.302525, 22.084467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574123, 28.928535, 22.096888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097906, -0.003951, 0.995188,
		-0.930351, 0.354696, 0.092936,
		-0.353356, -0.934973, 0.031051,
		33.468117, 28.648043, 22.106203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347424, 29.297403, 22.721708>,  <33.715466, 29.302525, 22.084467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347424, 29.297403, 22.721708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402737, 28.910374, 22.637156>,  <33.435925, 28.678156, 22.586424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402737, 28.910374, 22.637156>,  <33.347424, 29.297403, 22.721708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402737, 28.910374, 22.637156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142746, -0.191732, 0.971011,
		-0.980052, -0.164445, 0.111604,
		0.138279, -0.967573, -0.211381,
		33.444221, 28.620102, 22.573742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974735, 29.093672, 23.301855>,  <33.347424, 29.297403, 22.721708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974735, 29.093672, 23.301855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182938, 28.778973, 23.169128>,  <33.307858, 28.590153, 23.089493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182938, 28.778973, 23.169128>,  <32.974735, 29.093672, 23.301855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182938, 28.778973, 23.169128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111293, -0.322781, 0.939907,
		-0.846573, -0.526157, -0.080450,
		0.520507, -0.786747, -0.331816,
		33.339088, 28.542948, 23.069584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794941, 28.620625, 23.779108>,  <32.974735, 29.093672, 23.301855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794941, 28.620625, 23.779108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123810, 28.512766, 23.578579>,  <33.321133, 28.448050, 23.458261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123810, 28.512766, 23.578579>,  <32.794941, 28.620625, 23.779108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123810, 28.512766, 23.578579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397622, -0.358173, 0.844754,
		-0.407347, -0.893869, -0.187261,
		0.822171, -0.269649, -0.501322,
		33.370461, 28.431871, 23.428183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934982, 27.863064, 23.803181>,  <32.794941, 28.620625, 23.779108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934982, 27.863064, 23.803181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286938, 28.039310, 23.732021>,  <33.498112, 28.145058, 23.689325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286938, 28.039310, 23.732021>,  <32.934982, 27.863064, 23.803181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286938, 28.039310, 23.732021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351483, -0.351578, 0.867671,
		0.319765, -0.825984, -0.464220,
		0.879892, 0.440616, -0.177897,
		33.550907, 28.171495, 23.678652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416996, 27.434763, 24.198643>,  <32.934982, 27.863064, 23.803181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416996, 27.434763, 24.198643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.652843, 27.742603, 24.100616>,  <33.794353, 27.927307, 24.041801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.652843, 27.742603, 24.100616>,  <33.416996, 27.434763, 24.198643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652843, 27.742603, 24.100616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404415, -0.018669, 0.914385,
		0.699138, -0.638251, -0.322246,
		0.589623, 0.769602, -0.245066,
		33.829731, 27.973484, 24.027096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101013, 27.276217, 24.418051>,  <33.416996, 27.434763, 24.198643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101013, 27.276217, 24.418051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081474, 27.675699, 24.412479>,  <34.069752, 27.915390, 24.409136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081474, 27.675699, 24.412479>,  <34.101013, 27.276217, 24.418051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081474, 27.675699, 24.412479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397788, 0.032247, 0.916911,
		0.916176, 0.039251, -0.398850,
		-0.048852, 0.998709, -0.013931,
		34.066818, 27.975311, 24.408300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627914, 27.382177, 24.839281>,  <34.101013, 27.276217, 24.418051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627914, 27.382177, 24.839281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470966, 27.747618, 24.796614>,  <34.376797, 27.966883, 24.771013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470966, 27.747618, 24.796614>,  <34.627914, 27.382177, 24.839281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470966, 27.747618, 24.796614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254662, 0.219334, 0.941828,
		0.883852, 0.342380, -0.318719,
		-0.392369, 0.913602, -0.106667,
		34.353256, 28.021698, 24.764614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168251, 28.051237, 24.967569>,  <34.627914, 27.382177, 24.839281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168251, 28.051237, 24.967569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.792328, 28.158842, 25.051846>,  <34.566772, 28.223404, 25.102411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.792328, 28.158842, 25.051846>,  <35.168251, 28.051237, 24.967569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792328, 28.158842, 25.051846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289437, 0.299014, 0.909295,
		0.181612, 0.915545, -0.358878,
		-0.939810, 0.269011, 0.210688,
		34.510384, 28.239546, 25.115051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236504, 28.594921, 25.390541>,  <35.168251, 28.051237, 24.967569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236504, 28.594921, 25.390541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.853420, 28.503958, 25.461056>,  <34.623569, 28.449379, 25.503365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.853420, 28.503958, 25.461056>,  <35.236504, 28.594921, 25.390541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853420, 28.503958, 25.461056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050825, 0.469340, 0.881554,
		-0.283211, 0.853233, -0.437933,
		-0.957710, -0.227408, 0.176288,
		34.566109, 28.435736, 25.513943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980202, 29.189453, 25.675711>,  <35.236504, 28.594921, 25.390541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980202, 29.189453, 25.675711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734741, 28.893032, 25.784719>,  <34.587463, 28.715179, 25.850124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734741, 28.893032, 25.784719>,  <34.980202, 29.189453, 25.675711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734741, 28.893032, 25.784719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143808, 0.444277, 0.884272,
		-0.776367, 0.503447, -0.379202,
		-0.613655, -0.741053, 0.272522,
		34.550644, 28.670715, 25.866476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374596, 29.519505, 25.946785>,  <34.980202, 29.189453, 25.675711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374596, 29.519505, 25.946785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363781, 29.148556, 26.096052>,  <34.357292, 28.925987, 26.185612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363781, 29.148556, 26.096052>,  <34.374596, 29.519505, 25.946785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363781, 29.148556, 26.096052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284412, 0.365011, 0.886497,
		-0.958321, -0.082167, -0.273623,
		-0.027035, -0.927370, 0.373167,
		34.355671, 28.870344, 26.208002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787212, 29.434439, 26.417141>,  <34.374596, 29.519505, 25.946785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787212, 29.434439, 26.417141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015358, 29.125172, 26.528063>,  <34.152245, 28.939611, 26.594616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015358, 29.125172, 26.528063>,  <33.787212, 29.434439, 26.417141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015358, 29.125172, 26.528063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133814, 0.245631, 0.960083,
		-0.810418, -0.584705, 0.036639,
		0.570365, -0.773165, 0.277306,
		34.186466, 28.893223, 26.611254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408142, 29.022305, 26.852688>,  <33.787212, 29.434439, 26.417141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408142, 29.022305, 26.852688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792896, 28.948761, 26.933647>,  <34.023750, 28.904634, 26.982222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792896, 28.948761, 26.933647>,  <33.408142, 29.022305, 26.852688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792896, 28.948761, 26.933647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146560, 0.278225, 0.949269,
		-0.230846, -0.942754, 0.240675,
		0.961889, -0.183862, 0.202397,
		34.081463, 28.893602, 26.994366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952835, 28.539127, 27.253176>,  <33.408142, 29.022305, 26.852688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952835, 28.539127, 27.253176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566925, 28.546661, 27.358139>,  <32.335381, 28.551182, 27.421116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566925, 28.546661, 27.358139>,  <32.952835, 28.539127, 27.253176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566925, 28.546661, 27.358139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254607, -0.317979, -0.913271,
		0.066238, -0.947910, 0.311574,
		-0.964773, 0.018836, 0.262407,
		32.277493, 28.552313, 27.436861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639568, 28.024345, 26.823032>,  <32.952835, 28.539127, 27.253176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639568, 28.024345, 26.823032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324207, 28.243122, 26.935650>,  <32.134991, 28.374388, 27.003220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324207, 28.243122, 26.935650>,  <32.639568, 28.024345, 26.823032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324207, 28.243122, 26.935650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406130, -0.119042, -0.906028,
		-0.462032, -0.828662, 0.315984,
		-0.788407, 0.546944, 0.281543,
		32.087685, 28.407206, 27.020113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957174, 27.685091, 26.676029>,  <32.639568, 28.024345, 26.823032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957174, 27.685091, 26.676029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.853323, 28.070683, 26.699142>,  <31.791012, 28.302038, 26.713011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.853323, 28.070683, 26.699142>,  <31.957174, 27.685091, 26.676029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853323, 28.070683, 26.699142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555409, -0.100102, -0.825530,
		-0.790009, -0.246424, 0.561392,
		-0.259627, 0.963979, 0.057785,
		31.775434, 28.359877, 26.716478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173128, 27.714701, 26.473293>,  <31.957174, 27.685091, 26.676029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173128, 27.714701, 26.473293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.329466, 28.076660, 26.405882>,  <31.423269, 28.293835, 26.365435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.329466, 28.076660, 26.405882>,  <31.173128, 27.714701, 26.473293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329466, 28.076660, 26.405882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556223, 0.086307, -0.826539,
		-0.733387, 0.416788, 0.537058,
		0.390844, 0.904897, -0.168531,
		31.446718, 28.348129, 26.355322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645521, 28.157986, 26.431561>,  <31.173128, 27.714701, 26.473293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645521, 28.157986, 26.431561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.927069, 28.379807, 26.254004>,  <31.095997, 28.512899, 26.147469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.927069, 28.379807, 26.254004>,  <30.645521, 28.157986, 26.431561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927069, 28.379807, 26.254004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578277, 0.084448, -0.811458,
		-0.412509, 0.827854, 0.380124,
		0.703869, 0.554551, -0.443893,
		31.138229, 28.546171, 26.120836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344006, 28.667921, 25.982929>,  <30.645521, 28.157986, 26.431561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344006, 28.667921, 25.982929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719824, 28.658300, 25.846300>,  <30.945314, 28.652527, 25.764322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719824, 28.658300, 25.846300>,  <30.344006, 28.667921, 25.982929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719824, 28.658300, 25.846300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342205, -0.030816, -0.939120,
		0.012063, 0.999236, -0.037184,
		0.939548, -0.024053, -0.341572,
		31.001688, 28.651085, 25.743828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378424, 29.138220, 25.416130>,  <30.344006, 28.667921, 25.982929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378424, 29.138220, 25.416130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667215, 28.873367, 25.335800>,  <30.840490, 28.714457, 25.287601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.667215, 28.873367, 25.335800>,  <30.378424, 29.138220, 25.416130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667215, 28.873367, 25.335800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451991, -0.231566, -0.861441,
		0.523883, 0.712713, -0.466463,
		0.721977, -0.662131, -0.200827,
		30.883808, 28.674728, 25.275553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390627, 29.821161, 25.239765>,  <30.378424, 29.138220, 25.416130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390627, 29.821161, 25.239765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.117615, 30.106901, 25.177992>,  <29.953808, 30.278345, 25.140928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.117615, 30.106901, 25.177992>,  <30.390627, 29.821161, 25.239765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117615, 30.106901, 25.177992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004115, 0.215060, 0.976592,
		0.730843, 0.665921, -0.149725,
		-0.682533, 0.714352, -0.154435,
		29.912855, 30.321207, 25.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637623, 30.485456, 25.524614>,  <30.390627, 29.821161, 25.239765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637623, 30.485456, 25.524614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.237852, 30.490417, 25.511993>,  <29.997990, 30.493393, 25.504421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.237852, 30.490417, 25.511993>,  <30.637623, 30.485456, 25.524614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237852, 30.490417, 25.511993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027419, 0.251769, 0.967399,
		0.019941, 0.967708, -0.251284,
		-0.999425, 0.012401, -0.031554,
		29.938025, 30.494139, 25.502527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495691, 31.040234, 26.019930>,  <30.637623, 30.485456, 25.524614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495691, 31.040234, 26.019930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.157814, 30.830675, 25.976065>,  <29.955088, 30.704941, 25.949745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.157814, 30.830675, 25.976065>,  <30.495691, 31.040234, 26.019930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157814, 30.830675, 25.976065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211755, 0.138924, 0.967398,
		-0.491580, 0.840378, -0.228286,
		-0.844694, -0.523895, -0.109662,
		29.904406, 30.673506, 25.943167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075430, 31.355108, 26.417952>,  <30.495691, 31.040234, 26.019930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075430, 31.355108, 26.417952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874165, 31.010538, 26.390314>,  <29.753405, 30.803797, 26.373732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874165, 31.010538, 26.390314>,  <30.075430, 31.355108, 26.417952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874165, 31.010538, 26.390314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197615, 0.036858, 0.979587,
		-0.841292, 0.506548, -0.188776,
		-0.503166, -0.861424, -0.069094,
		29.723215, 30.752111, 26.369587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597208, 31.468143, 26.850830>,  <30.075430, 31.355108, 26.417952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597208, 31.468143, 26.850830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604389, 31.070406, 26.808952>,  <29.608698, 30.831764, 26.783825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604389, 31.070406, 26.808952>,  <29.597208, 31.468143, 26.850830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604389, 31.070406, 26.808952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044319, -0.105399, 0.993442,
		-0.998856, -0.013195, -0.045961,
		0.017953, -0.994342, -0.104694,
		29.609776, 30.772102, 26.777544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100313, 31.262033, 27.325073>,  <29.597208, 31.468143, 26.850830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100313, 31.262033, 27.325073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.354525, 30.958347, 27.268940>,  <29.507051, 30.776136, 27.235260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.354525, 30.958347, 27.268940>,  <29.100313, 31.262033, 27.325073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354525, 30.958347, 27.268940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013255, -0.171007, 0.985181,
		-0.771963, -0.627971, -0.098617,
		0.635529, -0.759216, -0.140335,
		29.545183, 30.730583, 27.226839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866503, 30.741508, 27.819241>,  <29.100313, 31.262033, 27.325073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866503, 30.741508, 27.819241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.233009, 30.621220, 27.713396>,  <29.452913, 30.549046, 27.649889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.233009, 30.621220, 27.713396>,  <28.866503, 30.741508, 27.819241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233009, 30.621220, 27.713396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263435, -0.045252, 0.963615,
		-0.301757, -0.952637, 0.037759,
		0.916266, -0.300724, -0.264613,
		29.507889, 30.531002, 27.634012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.190941, 32.986458, 21.565363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442307, 32.740711, 21.756214>,  <31.593126, 32.593262, 21.870724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442307, 32.740711, 21.756214>,  <31.190941, 32.986458, 21.565363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442307, 32.740711, 21.756214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114975, 0.533273, 0.838094,
		-0.769337, -0.581526, 0.264478,
		0.628412, -0.614368, 0.477127,
		31.630831, 32.556400, 21.899353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918940, 32.862026, 22.188574>,  <31.190941, 32.986458, 21.565363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918940, 32.862026, 22.188574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306429, 32.789440, 22.256277>,  <31.538921, 32.745888, 22.296898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306429, 32.789440, 22.256277>,  <30.918940, 32.862026, 22.188574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306429, 32.789440, 22.256277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058878, 0.494512, 0.867174,
		-0.241065, -0.850016, 0.468360,
		0.968721, -0.181469, 0.169257,
		31.597046, 32.735001, 22.307055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915421, 32.589985, 22.882261>,  <30.918940, 32.862026, 22.188574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915421, 32.589985, 22.882261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302597, 32.684208, 22.847389>,  <31.534903, 32.740742, 22.826466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302597, 32.684208, 22.847389>,  <30.915421, 32.589985, 22.882261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302597, 32.684208, 22.847389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043878, 0.500347, 0.864712,
		0.247307, -0.833167, 0.494644,
		0.967943, 0.235554, -0.087182,
		31.592979, 32.754875, 22.821234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227451, 32.509457, 23.557283>,  <30.915421, 32.589985, 22.882261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227451, 32.509457, 23.557283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.469614, 32.747368, 23.345730>,  <31.614912, 32.890114, 23.218798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.469614, 32.747368, 23.345730>,  <31.227451, 32.509457, 23.557283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469614, 32.747368, 23.345730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028279, 0.648002, 0.761114,
		0.795413, -0.475740, 0.375486,
		0.605408, 0.594781, -0.528882,
		31.651236, 32.925804, 23.187065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640368, 32.753143, 24.058899>,  <31.227451, 32.509457, 23.557283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640368, 32.753143, 24.058899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641838, 33.028751, 23.769007>,  <31.642719, 33.194115, 23.595072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641838, 33.028751, 23.769007>,  <31.640368, 32.753143, 24.058899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641838, 33.028751, 23.769007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019659, 0.724647, 0.688840,
		0.999800, 0.011716, 0.016209,
		0.003675, 0.689020, -0.724732,
		31.642941, 33.235458, 23.551586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208019, 33.194016, 24.258656>,  <31.640368, 32.753143, 24.058899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208019, 33.194016, 24.258656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.969168, 33.412735, 24.023897>,  <31.825857, 33.543968, 23.883041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.969168, 33.412735, 24.023897>,  <32.208019, 33.194016, 24.258656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969168, 33.412735, 24.023897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062738, 0.761253, 0.645413,
		0.799688, 0.348574, -0.488871,
		-0.597129, 0.546800, -0.586896,
		31.790030, 33.576775, 23.847828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410156, 33.788197, 24.126919>,  <32.208019, 33.194016, 24.258656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410156, 33.788197, 24.126919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068611, 33.967274, 24.020720>,  <31.863684, 34.074718, 23.957001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068611, 33.967274, 24.020720>,  <32.410156, 33.788197, 24.126919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068611, 33.967274, 24.020720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160726, 0.711943, 0.683596,
		0.495060, 0.541026, -0.679858,
		-0.853863, 0.447692, -0.265498,
		31.812452, 34.101582, 23.941071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548363, 34.481304, 24.097145>,  <32.410156, 33.788197, 24.126919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548363, 34.481304, 24.097145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152054, 34.451023, 24.142115>,  <31.914268, 34.432854, 24.169096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152054, 34.451023, 24.142115>,  <32.548363, 34.481304, 24.097145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152054, 34.451023, 24.142115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013410, 0.770654, 0.637113,
		-0.134870, 0.632742, -0.762528,
		-0.990773, -0.075702, 0.112423,
		31.854822, 34.428314, 24.175842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239426, 35.125084, 24.120100>,  <32.548363, 34.481304, 24.097145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239426, 35.125084, 24.120100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975143, 34.899601, 24.318371>,  <31.816574, 34.764309, 24.437334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975143, 34.899601, 24.318371>,  <32.239426, 35.125084, 24.120100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975143, 34.899601, 24.318371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079760, 0.709319, 0.700360,
		-0.746394, 0.423198, -0.513614,
		-0.660707, -0.563710, 0.495678,
		31.776932, 34.730488, 24.467073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712099, 35.600025, 24.324982>,  <32.239426, 35.125084, 24.120100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712099, 35.600025, 24.324982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.661259, 35.271191, 24.546978>,  <31.630754, 35.073891, 24.680176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.661259, 35.271191, 24.546978>,  <31.712099, 35.600025, 24.324982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661259, 35.271191, 24.546978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064131, 0.565168, 0.822480,
		-0.989815, 0.068945, -0.124555,
		-0.127101, -0.822090, 0.554990,
		31.623129, 35.024563, 24.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059549, 35.801868, 24.699900>,  <31.712099, 35.600025, 24.324982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059549, 35.801868, 24.699900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179932, 35.479191, 24.903339>,  <31.252161, 35.285583, 25.025404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179932, 35.479191, 24.903339>,  <31.059549, 35.801868, 24.699900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179932, 35.479191, 24.903339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188762, 0.472383, 0.860943,
		-0.934769, -0.355112, -0.010105,
		0.300958, -0.806691, 0.508600,
		31.270220, 35.237183, 25.055920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585176, 35.707890, 25.164629>,  <31.059549, 35.801868, 24.699900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585176, 35.707890, 25.164629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888239, 35.493393, 25.313442>,  <31.070076, 35.364697, 25.402731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888239, 35.493393, 25.313442>,  <30.585176, 35.707890, 25.164629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888239, 35.493393, 25.313442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180766, 0.375313, 0.909101,
		-0.627122, -0.756036, 0.187425,
		0.757655, -0.536237, 0.372033,
		31.115536, 35.332523, 25.425053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132027, 35.213993, 24.886698>,  <30.585176, 35.707890, 25.164629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132027, 35.213993, 24.886698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749775, 35.129925, 24.969257>,  <29.520424, 35.079483, 25.018793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749775, 35.129925, 24.969257>,  <30.132027, 35.213993, 24.886698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749775, 35.129925, 24.969257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149464, -0.257824, -0.954561,
		0.253832, -0.943057, 0.214972,
		-0.955630, -0.210168, 0.206397,
		29.463085, 35.066875, 25.031176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939663, 34.498066, 24.573107>,  <30.132027, 35.213993, 24.886698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939663, 34.498066, 24.573107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583532, 34.675907, 24.612389>,  <29.369854, 34.782612, 24.635958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583532, 34.675907, 24.612389>,  <29.939663, 34.498066, 24.573107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583532, 34.675907, 24.612389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261580, -0.322908, -0.909564,
		-0.372690, -0.835496, 0.403794,
		-0.890325, 0.444609, 0.098205,
		29.316435, 34.809288, 24.641851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486008, 33.902763, 24.515486>,  <29.939663, 34.498066, 24.573107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486008, 33.902763, 24.515486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275618, 34.234169, 24.438629>,  <29.149384, 34.433014, 24.392515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275618, 34.234169, 24.438629>,  <29.486008, 33.902763, 24.515486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275618, 34.234169, 24.438629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371082, -0.426832, -0.824690,
		-0.765277, -0.362466, 0.531949,
		-0.525974, 0.828513, -0.192140,
		29.117825, 34.482723, 24.380987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747946, 33.660511, 24.381905>,  <29.486008, 33.902763, 24.515486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747946, 33.660511, 24.381905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802176, 34.020451, 24.216061>,  <28.834713, 34.236412, 24.116554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802176, 34.020451, 24.216061>,  <28.747946, 33.660511, 24.381905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802176, 34.020451, 24.216061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484449, -0.304829, -0.819993,
		-0.864251, 0.312025, 0.394603,
		0.135572, 0.899844, -0.414609,
		28.842848, 34.290405, 24.091679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063442, 33.845654, 24.147835>,  <28.747946, 33.660511, 24.381905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063442, 33.845654, 24.147835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322489, 34.060585, 23.931734>,  <28.477917, 34.189545, 23.802073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322489, 34.060585, 23.931734>,  <28.063442, 33.845654, 24.147835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322489, 34.060585, 23.931734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419261, -0.340757, -0.841490,
		-0.636250, 0.771469, 0.004600,
		0.647616, 0.537327, -0.540253,
		28.516773, 34.221783, 23.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631279, 33.880959, 23.531477>,  <28.063442, 33.845654, 24.147835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631279, 33.880959, 23.531477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999180, 34.001930, 23.431404>,  <28.219921, 34.074512, 23.371361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999180, 34.001930, 23.431404>,  <27.631279, 33.880959, 23.531477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999180, 34.001930, 23.431404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100134, -0.435523, -0.894591,
		-0.379508, 0.847855, -0.370291,
		0.919754, 0.302426, -0.250183,
		28.275106, 34.092659, 23.356350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572071, 34.199284, 22.849127>,  <27.631279, 33.880959, 23.531477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572071, 34.199284, 22.849127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941799, 34.055939, 22.901598>,  <28.163635, 33.969933, 22.933081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941799, 34.055939, 22.901598>,  <27.572071, 34.199284, 22.849127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941799, 34.055939, 22.901598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039511, -0.431760, -0.901123,
		0.379570, 0.827742, -0.413244,
		0.924319, -0.358367, 0.131178,
		28.219095, 33.948429, 22.940952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999531, 34.430923, 22.197273>,  <27.572071, 34.199284, 22.849127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999531, 34.430923, 22.197273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187508, 34.117077, 22.359028>,  <28.300293, 33.928768, 22.456081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187508, 34.117077, 22.359028>,  <27.999531, 34.430923, 22.197273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187508, 34.117077, 22.359028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024085, -0.446559, -0.894430,
		0.882369, 0.430069, -0.190959,
		0.469941, -0.784618, 0.404388,
		28.328489, 33.881691, 22.480345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226671, 33.974678, 21.628565>,  <27.999531, 34.430923, 22.197273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226671, 33.974678, 21.628565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332731, 33.718517, 21.916895>,  <28.396368, 33.564823, 22.089893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332731, 33.718517, 21.916895>,  <28.226671, 33.974678, 21.628565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332731, 33.718517, 21.916895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179989, -0.701567, -0.689498,
		0.947259, 0.312561, -0.070756,
		0.265151, -0.640397, 0.720823,
		28.412277, 33.526398, 22.133142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958723, 33.718361, 21.498199>,  <28.226671, 33.974678, 21.628565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958723, 33.718361, 21.498199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776735, 33.442825, 21.723946>,  <28.667542, 33.277504, 21.859392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776735, 33.442825, 21.723946>,  <28.958723, 33.718361, 21.498199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776735, 33.442825, 21.723946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314390, -0.717195, -0.621924,
		0.833162, -0.105527, 0.542867,
		-0.454972, -0.688836, 0.564364,
		28.640244, 33.236176, 21.893255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463354, 33.197384, 21.694952>,  <28.958723, 33.718361, 21.498199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463354, 33.197384, 21.694952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118387, 32.999969, 21.739943>,  <28.911407, 32.881519, 21.766937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118387, 32.999969, 21.739943>,  <29.463354, 33.197384, 21.694952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118387, 32.999969, 21.739943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409680, -0.811045, -0.417575,
		0.297313, -0.314045, 0.901654,
		-0.862419, -0.493540, 0.112477,
		28.859661, 32.851906, 21.773685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627342, 32.455429, 21.839117>,  <29.463354, 33.197384, 21.694952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627342, 32.455429, 21.839117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238901, 32.419678, 21.750595>,  <29.005836, 32.398228, 21.697483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238901, 32.419678, 21.750595>,  <29.627342, 32.455429, 21.839117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238901, 32.419678, 21.750595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190592, -0.848523, -0.493642,
		-0.143660, -0.521555, 0.841036,
		-0.971101, -0.089378, -0.221303,
		28.947571, 32.392864, 21.684204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544340, 31.712818, 21.849884>,  <29.627342, 32.455429, 21.839117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544340, 31.712818, 21.849884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238121, 31.854597, 21.635109>,  <29.054390, 31.939665, 21.506243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238121, 31.854597, 21.635109>,  <29.544340, 31.712818, 21.849884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238121, 31.854597, 21.635109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056731, -0.794124, -0.605103,
		-0.640872, -0.493697, 0.587832,
		-0.765549, 0.354445, -0.536940,
		29.008457, 31.960930, 21.474028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397125, 31.869583, 22.021158>,  <29.544340, 31.712818, 21.849884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397125, 31.869583, 22.021158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.113829, 31.587233, 22.016514>,  <29.943851, 31.417822, 22.013727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.113829, 31.587233, 22.016514>,  <30.397125, 31.869583, 22.021158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113829, 31.587233, 22.016514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108321, -0.124904, 0.986238,
		-0.697612, 0.697236, 0.164924,
		-0.708240, -0.705876, -0.011609,
		29.901356, 31.375469, 22.013031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102427, 31.845091, 22.797283>,  <30.397125, 31.869583, 22.021158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102427, 31.845091, 22.797283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959621, 31.508247, 22.635593>,  <29.873940, 31.306141, 22.538580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959621, 31.508247, 22.635593>,  <30.102427, 31.845091, 22.797283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959621, 31.508247, 22.635593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117259, -0.469720, 0.874993,
		-0.926711, 0.264983, 0.266439,
		-0.357011, -0.842109, -0.404223,
		29.852518, 31.255615, 22.514326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481543, 31.640926, 23.200888>,  <30.102427, 31.845091, 22.797283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481543, 31.640926, 23.200888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556139, 31.307501, 22.992891>,  <29.600897, 31.107445, 22.868093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556139, 31.307501, 22.992891>,  <29.481543, 31.640926, 23.200888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556139, 31.307501, 22.992891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205208, -0.550652, 0.809118,
		-0.960786, -0.044187, -0.273746,
		0.186491, -0.833564, -0.519991,
		29.612087, 31.057432, 22.836893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958969, 31.276850, 23.361713>,  <29.481543, 31.640926, 23.200888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958969, 31.276850, 23.361713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238827, 31.016230, 23.244425>,  <29.406742, 30.859858, 23.174051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238827, 31.016230, 23.244425>,  <28.958969, 31.276850, 23.361713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238827, 31.016230, 23.244425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144593, -0.531015, 0.834934,
		-0.699709, -0.541758, -0.465731,
		0.699642, -0.651553, -0.293222,
		29.448719, 30.820765, 23.156458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646040, 30.662304, 23.324642>,  <28.958969, 31.276850, 23.361713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646040, 30.662304, 23.324642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035637, 30.606972, 23.396423>,  <29.269396, 30.573772, 23.439491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035637, 30.606972, 23.396423>,  <28.646040, 30.662304, 23.324642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035637, 30.606972, 23.396423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219692, -0.382769, 0.897342,
		-0.055443, -0.913429, -0.403204,
		0.973992, -0.138332, 0.179451,
		29.327835, 30.565472, 23.450258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776152, 30.050936, 23.775166>,  <28.646040, 30.662304, 23.324642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776152, 30.050936, 23.775166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118742, 30.248829, 23.834072>,  <29.324297, 30.367565, 23.869415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118742, 30.248829, 23.834072>,  <28.776152, 30.050936, 23.775166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118742, 30.248829, 23.834072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100669, -0.439908, 0.892383,
		0.506275, -0.749480, -0.426575,
		0.856476, 0.494734, 0.147265,
		29.375685, 30.397249, 23.878252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204393, 29.661709, 24.188896>,  <28.776152, 30.050936, 23.775166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204393, 29.661709, 24.188896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384014, 30.016882, 24.228756>,  <29.491787, 30.229986, 24.252672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384014, 30.016882, 24.228756>,  <29.204393, 29.661709, 24.188896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384014, 30.016882, 24.228756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081379, -0.151709, 0.985069,
		0.889793, -0.434236, -0.140384,
		0.449050, 0.887932, 0.099652,
		29.518728, 30.283262, 24.258652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813498, 29.535837, 24.648808>,  <29.204393, 29.661709, 24.188896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813498, 29.535837, 24.648808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752689, 29.931114, 24.641190>,  <29.716206, 30.168282, 24.636620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752689, 29.931114, 24.641190>,  <29.813498, 29.535837, 24.648808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752689, 29.931114, 24.641190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027618, 0.015014, 0.999506,
		0.987992, 0.152469, 0.025009,
		-0.152018, 0.988194, -0.019045,
		29.707085, 30.227573, 24.635477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515230, 29.213209, 24.569530>,  <29.813498, 29.535837, 24.648808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515230, 29.213209, 24.569530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661026, 28.864668, 24.700918>,  <30.748505, 28.655544, 24.779751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661026, 28.864668, 24.700918>,  <30.515230, 29.213209, 24.569530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661026, 28.864668, 24.700918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273542, -0.437362, -0.856674,
		0.890124, 0.222399, -0.397765,
		0.364490, -0.871351, 0.328471,
		30.770372, 28.603262, 24.799459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054914, 29.032232, 24.018539>,  <30.515230, 29.213209, 24.569530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054914, 29.032232, 24.018539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.977009, 28.697264, 24.222811>,  <30.930265, 28.496283, 24.345373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.977009, 28.697264, 24.222811>,  <31.054914, 29.032232, 24.018539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977009, 28.697264, 24.222811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265946, -0.456061, -0.849283,
		0.944108, -0.301221, -0.133885,
		-0.194762, -0.837421, 0.510680,
		30.918581, 28.446037, 24.376015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586729, 28.542759, 23.827053>,  <31.054914, 29.032232, 24.018539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586729, 28.542759, 23.827053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264334, 28.338625, 23.947012>,  <31.070896, 28.216145, 24.018988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264334, 28.338625, 23.947012>,  <31.586729, 28.542759, 23.827053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264334, 28.338625, 23.947012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045097, -0.452233, -0.890759,
		0.590210, -0.731466, 0.341480,
		-0.805989, -0.510336, 0.299900,
		31.022537, 28.185524, 24.036982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628998, 27.813318, 23.610054>,  <31.586729, 28.542759, 23.827053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628998, 27.813318, 23.610054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234200, 27.841295, 23.667950>,  <30.997320, 27.858082, 23.702686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234200, 27.841295, 23.667950>,  <31.628998, 27.813318, 23.610054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234200, 27.841295, 23.667950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160688, -0.403830, -0.900611,
		-0.004540, -0.912157, 0.409817,
		-0.986995, 0.069941, 0.144739,
		30.938101, 27.862278, 23.711372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273872, 27.161161, 23.413061>,  <31.628998, 27.813318, 23.610054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273872, 27.161161, 23.413061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975016, 27.426085, 23.390697>,  <30.795702, 27.585039, 23.377279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975016, 27.426085, 23.390697>,  <31.273872, 27.161161, 23.413061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975016, 27.426085, 23.390697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358323, -0.472207, -0.805373,
		-0.559808, -0.581692, 0.590126,
		-0.747141, 0.662309, -0.055912,
		30.750874, 27.624777, 23.373924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761106, 26.824965, 23.183346>,  <31.273872, 27.161161, 23.413061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761106, 26.824965, 23.183346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.631487, 27.192715, 23.094133>,  <30.553715, 27.413364, 23.040606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.631487, 27.192715, 23.094133>,  <30.761106, 26.824965, 23.183346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631487, 27.192715, 23.094133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347336, -0.334908, -0.875896,
		-0.879972, -0.206365, 0.427858,
		-0.324048, 0.919375, -0.223032,
		30.534273, 27.468527, 23.027224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067474, 26.787203, 23.026033>,  <30.761106, 26.824965, 23.183346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067474, 26.787203, 23.026033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197725, 27.131029, 22.868494>,  <30.275875, 27.337324, 22.773970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197725, 27.131029, 22.868494>,  <30.067474, 26.787203, 23.026033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197725, 27.131029, 22.868494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466484, -0.216272, -0.857682,
		-0.822411, 0.463008, 0.330549,
		0.325626, 0.859564, -0.393851,
		30.295412, 27.388899, 22.750340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440947, 27.027542, 22.609900>,  <30.067474, 26.787203, 23.026033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440947, 27.027542, 22.609900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756844, 27.229589, 22.470665>,  <29.946381, 27.350819, 22.387125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756844, 27.229589, 22.470665>,  <29.440947, 27.027542, 22.609900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756844, 27.229589, 22.470665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414640, 0.021366, -0.909735,
		-0.452087, 0.862785, 0.226316,
		0.789741, 0.505119, -0.348086,
		29.993767, 27.381124, 22.366240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240715, 27.403025, 21.970789>,  <29.440947, 27.027542, 22.609900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240715, 27.403025, 21.970789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634216, 27.450159, 21.916615>,  <29.870317, 27.478439, 21.884109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634216, 27.450159, 21.916615>,  <29.240715, 27.403025, 21.970789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634216, 27.450159, 21.916615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106280, -0.225731, -0.968375,
		-0.144682, 0.967037, -0.209540,
		0.983754, 0.117837, -0.135436,
		29.929342, 27.485510, 21.875984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.384953, 31.377617, 37.439186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641621, 31.682350, 37.403706>,  <33.795620, 31.865191, 37.382416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641621, 31.682350, 37.403706>,  <33.384953, 31.377617, 37.439186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641621, 31.682350, 37.403706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766967, -0.638014, 0.068550,
		-0.004371, -0.112019, -0.993696,
		0.641671, 0.761833, -0.088704,
		33.834122, 31.910900, 37.377094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363213, 31.790779, 36.775394>,  <33.384953, 31.377617, 37.439186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363213, 31.790779, 36.775394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718296, 31.938740, 36.665749>,  <33.931347, 32.027515, 36.599960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718296, 31.938740, 36.665749>,  <33.363213, 31.790779, 36.775394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718296, 31.938740, 36.665749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144030, -0.342385, -0.928455,
		-0.437290, 0.863682, -0.250663,
		0.887712, 0.369901, -0.274117,
		33.984612, 32.049709, 36.583515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281918, 32.373306, 36.245689>,  <33.363213, 31.790779, 36.775394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281918, 32.373306, 36.245689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635910, 32.188725, 36.220806>,  <33.848305, 32.077976, 36.205875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635910, 32.188725, 36.220806>,  <33.281918, 32.373306, 36.245689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635910, 32.188725, 36.220806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172728, -0.201283, -0.964184,
		0.432409, 0.864027, -0.257838,
		0.884979, -0.461458, -0.062205,
		33.901405, 32.050285, 36.202145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783222, 32.657421, 35.592716>,  <33.281918, 32.373306, 36.245689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783222, 32.657421, 35.592716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903530, 32.294353, 35.709793>,  <33.975716, 32.076511, 35.780041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903530, 32.294353, 35.709793>,  <33.783222, 32.657421, 35.592716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903530, 32.294353, 35.709793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146716, -0.347288, -0.926210,
		0.942343, 0.235638, -0.237625,
		0.300774, -0.907671, 0.292692,
		33.993763, 32.022053, 35.797600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102428, 32.390289, 35.020451>,  <33.783222, 32.657421, 35.592716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102428, 32.390289, 35.020451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055862, 32.053062, 35.230476>,  <34.027924, 31.850727, 35.356491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055862, 32.053062, 35.230476>,  <34.102428, 32.390289, 35.020451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055862, 32.053062, 35.230476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049696, -0.523053, -0.850850,
		0.991957, -0.125143, 0.018993,
		-0.116412, -0.843063, 0.525066,
		34.020939, 31.800144, 35.387997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450912, 31.886772, 34.634251>,  <34.102428, 32.390289, 35.020451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450912, 31.886772, 34.634251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238937, 31.654015, 34.881008>,  <34.111752, 31.514360, 35.029064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238937, 31.654015, 34.881008>,  <34.450912, 31.886772, 34.634251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238937, 31.654015, 34.881008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055009, -0.702324, -0.709729,
		0.846249, -0.410048, 0.340180,
		-0.529939, -0.581894, 0.616898,
		34.079956, 31.479446, 35.066078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748993, 31.141850, 34.611786>,  <34.450912, 31.886772, 34.634251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748993, 31.141850, 34.611786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379116, 31.140188, 34.764061>,  <34.157188, 31.139193, 34.855427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379116, 31.140188, 34.764061>,  <34.748993, 31.141850, 34.611786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379116, 31.140188, 34.764061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243498, -0.762220, -0.599774,
		0.292658, -0.647304, 0.703810,
		-0.924695, -0.004152, 0.380687,
		34.101707, 31.138943, 34.878265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505878, 30.446762, 34.635754>,  <34.748993, 31.141850, 34.611786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505878, 30.446762, 34.635754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160740, 30.648119, 34.617462>,  <33.953655, 30.768932, 34.606487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160740, 30.648119, 34.617462>,  <34.505878, 30.446762, 34.635754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160740, 30.648119, 34.617462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305142, -0.590877, -0.746828,
		-0.402964, -0.630447, 0.663443,
		-0.862849, 0.503389, -0.045726,
		33.901886, 30.799135, 34.603745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006321, 29.890276, 34.610252>,  <34.505878, 30.446762, 34.635754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006321, 29.890276, 34.610252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847252, 30.229828, 34.470963>,  <33.751812, 30.433559, 34.387390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847252, 30.229828, 34.470963>,  <34.006321, 29.890276, 34.610252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847252, 30.229828, 34.470963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412651, -0.504444, -0.758456,
		-0.819497, -0.157922, 0.550894,
		-0.397673, 0.848880, -0.348224,
		33.727951, 30.484491, 34.366497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301285, 29.786097, 34.477589>,  <34.006321, 29.890276, 34.610252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301285, 29.786097, 34.477589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395771, 30.100914, 34.249634>,  <33.452461, 30.289804, 34.112862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395771, 30.100914, 34.249634>,  <33.301285, 29.786097, 34.477589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395771, 30.100914, 34.249634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379112, -0.465357, -0.799823,
		-0.894694, 0.404980, 0.188453,
		0.236214, 0.787041, -0.569885,
		33.466637, 30.337027, 34.078667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815678, 29.877584, 34.036297>,  <33.301285, 29.786097, 34.477589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815678, 29.877584, 34.036297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064079, 30.125853, 33.844830>,  <33.213120, 30.274813, 33.729950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064079, 30.125853, 33.844830>,  <32.815678, 29.877584, 34.036297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064079, 30.125853, 33.844830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394750, -0.279929, -0.875107,
		-0.677146, 0.732399, 0.071173,
		0.621004, 0.620671, -0.478667,
		33.250381, 30.312054, 33.701229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382862, 30.282267, 33.628532>,  <32.815678, 29.877584, 34.036297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382862, 30.282267, 33.628532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751492, 30.309584, 33.475670>,  <32.972668, 30.325974, 33.383953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751492, 30.309584, 33.475670>,  <32.382862, 30.282267, 33.628532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751492, 30.309584, 33.475670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346425, -0.299605, -0.888947,
		-0.175204, 0.951616, -0.252449,
		0.921571, 0.068293, -0.382156,
		33.027962, 30.330072, 33.361023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018879, 30.966513, 33.607986>,  <32.382862, 30.282267, 33.628532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018879, 30.966513, 33.607986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676886, 31.113810, 33.461895>,  <31.471689, 31.202188, 33.374241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676886, 31.113810, 33.461895>,  <32.018879, 30.966513, 33.607986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676886, 31.113810, 33.461895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081188, 0.600491, 0.795499,
		0.512255, 0.709794, -0.483516,
		-0.854987, 0.368243, -0.365231,
		31.420389, 31.224283, 33.352325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045616, 31.670847, 33.658939>,  <32.018879, 30.966513, 33.607986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045616, 31.670847, 33.658939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654398, 31.587578, 33.655060>,  <31.419668, 31.537617, 33.652733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.654398, 31.587578, 33.655060>,  <32.045616, 31.670847, 33.658939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654398, 31.587578, 33.655060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097432, 0.415618, 0.904306,
		-0.184218, 0.885396, -0.426775,
		-0.978044, -0.208171, -0.009702,
		31.360985, 31.525126, 33.652149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593933, 32.305531, 33.667099>,  <32.045616, 31.670847, 33.658939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593933, 32.305531, 33.667099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380775, 32.001293, 33.815437>,  <31.252880, 31.818752, 33.904442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380775, 32.001293, 33.815437>,  <31.593933, 32.305531, 33.667099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380775, 32.001293, 33.815437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129639, 0.506468, 0.852458,
		-0.836192, 0.406194, -0.368497,
		-0.532895, -0.760590, 0.370845,
		31.220907, 31.773117, 33.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068260, 32.621933, 33.875618>,  <31.593933, 32.305531, 33.667099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068260, 32.621933, 33.875618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044682, 32.268402, 34.061249>,  <31.030535, 32.056282, 34.172626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044682, 32.268402, 34.061249>,  <31.068260, 32.621933, 33.875618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044682, 32.268402, 34.061249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207478, 0.465583, 0.860341,
		-0.976462, -0.045574, -0.210819,
		-0.058944, -0.883830, 0.464079,
		31.026999, 32.003254, 34.200474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379932, 32.514946, 34.139652>,  <31.068260, 32.621933, 33.875618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379932, 32.514946, 34.139652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601347, 32.272724, 34.368355>,  <30.734196, 32.127392, 34.505577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601347, 32.272724, 34.368355>,  <30.379932, 32.514946, 34.139652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601347, 32.272724, 34.368355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461853, 0.348084, 0.815800,
		-0.693028, -0.715642, -0.086999,
		0.553537, -0.605553, 0.571754,
		30.767408, 32.091057, 34.539883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915752, 32.334259, 34.615486>,  <30.379932, 32.514946, 34.139652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915752, 32.334259, 34.615486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.281042, 32.267773, 34.764294>,  <30.500216, 32.227879, 34.853577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.281042, 32.267773, 34.764294>,  <29.915752, 32.334259, 34.615486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281042, 32.267773, 34.764294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291146, 0.372556, 0.881156,
		-0.285062, -0.913003, 0.291832,
		0.913222, -0.166219, 0.372018,
		30.555008, 32.217907, 34.875900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794563, 32.061611, 35.325245>,  <29.915752, 32.334259, 34.615486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794563, 32.061611, 35.325245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171982, 32.190392, 35.356396>,  <30.398434, 32.267658, 35.375088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171982, 32.190392, 35.356396>,  <29.794563, 32.061611, 35.325245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171982, 32.190392, 35.356396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219936, 0.433140, 0.874081,
		0.247676, -0.841867, 0.479497,
		0.943549, 0.321947, 0.077878,
		30.455046, 32.286976, 35.379761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899668, 32.034557, 36.014656>,  <29.794563, 32.061611, 35.325245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899668, 32.034557, 36.014656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227928, 32.238056, 35.910576>,  <30.424885, 32.360157, 35.848129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227928, 32.238056, 35.910576>,  <29.899668, 32.034557, 36.014656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227928, 32.238056, 35.910576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093481, 0.568741, 0.817187,
		0.563699, -0.646322, 0.514307,
		0.820673, 0.508725, -0.260180,
		30.474123, 32.390682, 35.832516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359421, 32.133526, 36.644554>,  <29.899668, 32.034557, 36.014656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359421, 32.133526, 36.644554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.456564, 32.429688, 36.393852>,  <30.514851, 32.607384, 36.243431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.456564, 32.429688, 36.393852>,  <30.359421, 32.133526, 36.644554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456564, 32.429688, 36.393852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200241, 0.670448, 0.714425,
		0.949170, -0.048002, 0.311083,
		0.242858, 0.740402, -0.626757,
		30.529421, 32.651810, 36.205826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743067, 32.592365, 37.104729>,  <30.359421, 32.133526, 36.644554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743067, 32.592365, 37.104729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621239, 32.798000, 36.783993>,  <30.548141, 32.921383, 36.591549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621239, 32.798000, 36.783993>,  <30.743067, 32.592365, 37.104729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621239, 32.798000, 36.783993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045304, 0.833065, 0.551316,
		0.951412, 0.204240, -0.230435,
		-0.304569, 0.514090, -0.801841,
		30.529867, 32.952229, 36.543442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105730, 33.179359, 37.101799>,  <30.743067, 32.592365, 37.104729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105730, 33.179359, 37.101799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789597, 33.279099, 36.877945>,  <30.599916, 33.338943, 36.743633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789597, 33.279099, 36.877945>,  <31.105730, 33.179359, 37.101799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789597, 33.279099, 36.877945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198064, 0.760406, 0.618509,
		0.579776, 0.599673, -0.551589,
		-0.790335, 0.249347, -0.559639,
		30.552496, 33.353901, 36.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180553, 34.017456, 37.052280>,  <31.105730, 33.179359, 37.101799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180553, 34.017456, 37.052280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809498, 33.911613, 36.946850>,  <30.586864, 33.848110, 36.883591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809498, 33.911613, 36.946850>,  <31.180553, 34.017456, 37.052280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809498, 33.911613, 36.946850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362778, 0.806103, 0.467537,
		0.088757, 0.529325, -0.843764,
		-0.927639, -0.264602, -0.263575,
		30.531206, 33.832233, 36.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902967, 34.595833, 36.672615>,  <31.180553, 34.017456, 37.052280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902967, 34.595833, 36.672615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597439, 34.382866, 36.818554>,  <30.414122, 34.255085, 36.906116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597439, 34.382866, 36.818554>,  <30.902967, 34.595833, 36.672615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597439, 34.382866, 36.818554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318250, 0.802460, 0.504753,
		-0.561510, 0.269430, -0.782377,
		-0.763821, -0.532415, 0.364843,
		30.368292, 34.223141, 36.928005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425333, 35.073299, 36.790039>,  <30.902967, 34.595833, 36.672615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425333, 35.073299, 36.790039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273943, 34.755692, 36.980320>,  <30.183109, 34.565128, 37.094490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273943, 34.755692, 36.980320>,  <30.425333, 35.073299, 36.790039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273943, 34.755692, 36.980320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348034, 0.598294, 0.721745,
		-0.857689, 0.107601, -0.502784,
		-0.378474, -0.794019, 0.475702,
		30.160400, 34.517487, 37.123032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000477, 34.918720, 36.170490>,  <30.425333, 35.073299, 36.790039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000477, 34.918720, 36.170490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761713, 35.239468, 36.181046>,  <29.618454, 35.431915, 36.187378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761713, 35.239468, 36.181046>,  <30.000477, 34.918720, 36.170490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761713, 35.239468, 36.181046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476895, -0.328171, -0.815399,
		-0.645188, -0.499303, 0.578298,
		-0.596912, 0.801873, 0.026384,
		29.582640, 35.480030, 36.188961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338228, 34.751434, 35.975800>,  <30.000477, 34.918720, 36.170490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338228, 34.751434, 35.975800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.378757, 35.142769, 35.903587>,  <29.403074, 35.377571, 35.860260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.378757, 35.142769, 35.903587>,  <29.338228, 34.751434, 35.975800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378757, 35.142769, 35.903587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429480, -0.120671, -0.894978,
		-0.897374, 0.168217, 0.407949,
		0.101323, 0.978336, -0.180533,
		29.409155, 35.436268, 35.849426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817638, 34.934517, 35.502987>,  <29.338228, 34.751434, 35.975800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817638, 34.934517, 35.502987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.070995, 35.239384, 35.449436>,  <29.223009, 35.422302, 35.417305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.070995, 35.239384, 35.449436>,  <28.817638, 34.934517, 35.502987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070995, 35.239384, 35.449436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197246, -0.008271, -0.980319,
		-0.748270, 0.647333, 0.145095,
		0.633393, 0.762163, -0.133873,
		29.261013, 35.468033, 35.409275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427782, 35.515171, 35.168007>,  <28.817638, 34.934517, 35.502987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427782, 35.515171, 35.168007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.822750, 35.522118, 35.105137>,  <29.059731, 35.526283, 35.067413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.822750, 35.522118, 35.105137>,  <28.427782, 35.515171, 35.168007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822750, 35.522118, 35.105137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158120, 0.097603, -0.982584,
		-0.001720, 0.995074, 0.099121,
		0.987418, 0.017363, -0.157174,
		29.118975, 35.527325, 35.057983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562086, 36.045227, 34.687088>,  <28.427782, 35.515171, 35.168007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562086, 36.045227, 34.687088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.899408, 35.832207, 34.658184>,  <29.101803, 35.704395, 34.640842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.899408, 35.832207, 34.658184>,  <28.562086, 36.045227, 34.687088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899408, 35.832207, 34.658184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046275, 0.061997, -0.997003,
		0.535435, 0.844124, 0.027639,
		0.843308, -0.532551, -0.072257,
		29.152401, 35.672440, 34.636505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067940, 36.419910, 34.248508>,  <28.562086, 36.045227, 34.687088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067940, 36.419910, 34.248508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.175093, 36.034531, 34.247345>,  <29.239386, 35.803303, 34.246647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.175093, 36.034531, 34.247345>,  <29.067940, 36.419910, 34.248508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175093, 36.034531, 34.247345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136984, 0.041074, -0.989721,
		0.953663, 0.264733, 0.142980,
		0.267885, -0.963447, -0.002907,
		29.255459, 35.745495, 34.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658716, 36.413605, 33.801647>,  <29.067940, 36.419910, 34.248508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658716, 36.413605, 33.801647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.524561, 36.036774, 33.801952>,  <29.444069, 35.810673, 33.802135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.524561, 36.036774, 33.801952>,  <29.658716, 36.413605, 33.801647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524561, 36.036774, 33.801952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096211, -0.035054, -0.994744,
		0.937155, -0.333550, 0.102395,
		-0.335386, -0.942081, 0.000760,
		29.423944, 35.754150, 33.802181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187410, 35.944889, 33.403297>,  <29.658716, 36.413605, 33.801647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187410, 35.944889, 33.403297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.842377, 35.742935, 33.416161>,  <29.635357, 35.621761, 33.423878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.842377, 35.742935, 33.416161>,  <30.187410, 35.944889, 33.403297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842377, 35.742935, 33.416161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005597, -0.054033, -0.998523,
		0.505881, -0.861491, 0.043782,
		-0.862585, -0.504889, 0.032156,
		29.583601, 35.591469, 33.425808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331535, 35.175343, 33.155846>,  <30.187410, 35.944889, 33.403297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331535, 35.175343, 33.155846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933477, 35.171551, 33.116653>,  <29.694643, 35.169277, 33.093140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933477, 35.171551, 33.116653>,  <30.331535, 35.175343, 33.155846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933477, 35.171551, 33.116653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097561, -0.227383, -0.968906,
		-0.013096, -0.973759, 0.227203,
		-0.995144, -0.009478, -0.097979,
		29.634933, 35.168709, 33.087261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189091, 34.710987, 32.638691>,  <30.331535, 35.175343, 33.155846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189091, 34.710987, 32.638691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.829725, 34.885532, 32.658447>,  <29.614107, 34.990261, 32.670300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.829725, 34.885532, 32.658447>,  <30.189091, 34.710987, 32.638691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829725, 34.885532, 32.658447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200567, -0.307666, -0.930115,
		-0.390678, -0.845532, 0.363932,
		-0.898412, 0.436369, 0.049387,
		29.560202, 35.016441, 32.673264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681030, 34.221756, 32.357250>,  <30.189091, 34.710987, 32.638691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681030, 34.221756, 32.357250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.539980, 34.593765, 32.315842>,  <29.455349, 34.816971, 32.290997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.539980, 34.593765, 32.315842>,  <29.681030, 34.221756, 32.357250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539980, 34.593765, 32.315842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233680, -0.194644, -0.952632,
		-0.906117, -0.311732, 0.285964,
		-0.352627, 0.930020, -0.103525,
		29.434193, 34.872772, 32.284782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973127, 34.242279, 32.051521>,  <29.681030, 34.221756, 32.357250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973127, 34.242279, 32.051521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.124023, 34.606266, 31.982639>,  <29.214561, 34.824657, 31.941311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.124023, 34.606266, 31.982639>,  <28.973127, 34.242279, 32.051521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124023, 34.606266, 31.982639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219801, -0.092659, -0.971134,
		-0.899654, 0.404201, 0.165056,
		0.377239, 0.909965, -0.172205,
		29.237196, 34.879257, 31.930979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544453, 34.565807, 31.606979>,  <28.973127, 34.242279, 32.051521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544453, 34.565807, 31.606979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.898247, 34.748264, 31.567751>,  <29.110523, 34.857738, 31.544214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.898247, 34.748264, 31.567751>,  <28.544453, 34.565807, 31.606979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898247, 34.748264, 31.567751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092451, -0.034684, -0.995113,
		-0.457315, 0.889230, 0.011493,
		0.884486, 0.456143, -0.098072,
		29.163593, 34.885109, 31.538330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417505, 35.053501, 31.094971>,  <28.544453, 34.565807, 31.606979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417505, 35.053501, 31.094971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.814554, 35.005226, 31.099630>,  <29.052784, 34.976261, 31.102427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.814554, 35.005226, 31.099630>,  <28.417505, 35.053501, 31.094971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814554, 35.005226, 31.099630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007385, -0.035723, -0.999335,
		0.121025, 0.992048, -0.034568,
		0.992622, -0.120689, 0.011649,
		29.112341, 34.969021, 31.103125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596292, 35.565323, 30.580154>,  <28.417505, 35.053501, 31.094971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596292, 35.565323, 30.580154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.934879, 35.358616, 30.631445>,  <29.138031, 35.234592, 30.662220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.934879, 35.358616, 30.631445>,  <28.596292, 35.565323, 30.580154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934879, 35.358616, 30.631445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182485, 0.055329, -0.981651,
		0.500191, 0.854335, 0.141137,
		0.846468, -0.516769, 0.128228,
		29.188820, 35.203587, 30.669912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126297, 35.990341, 30.287138>,  <28.596292, 35.565323, 30.580154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126297, 35.990341, 30.287138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.242825, 35.607838, 30.276592>,  <29.312740, 35.378334, 30.270264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.242825, 35.607838, 30.276592>,  <29.126297, 35.990341, 30.287138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242825, 35.607838, 30.276592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102312, 0.058547, -0.993028,
		0.951140, 0.286588, 0.114893,
		0.291317, -0.956263, -0.026365,
		29.330219, 35.320957, 30.268682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675039, 35.964767, 29.832335>,  <29.126297, 35.990341, 30.287138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675039, 35.964767, 29.832335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.519136, 35.599010, 29.876097>,  <29.425594, 35.379555, 29.902353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.519136, 35.599010, 29.876097>,  <29.675039, 35.964767, 29.832335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519136, 35.599010, 29.876097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225908, -0.210104, -0.951221,
		0.892779, -0.346030, 0.288459,
		-0.389757, -0.914396, 0.109405,
		29.402208, 35.324692, 29.908918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128633, 35.486275, 29.387051>,  <29.675039, 35.964767, 29.832335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128633, 35.486275, 29.387051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780352, 35.296078, 29.437286>,  <29.571383, 35.181957, 29.467428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.780352, 35.296078, 29.437286>,  <30.128633, 35.486275, 29.387051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780352, 35.296078, 29.437286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077948, -0.385560, -0.919384,
		0.485586, -0.790725, 0.372774,
		-0.870706, -0.475497, 0.125587,
		29.519140, 35.153427, 29.474962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222504, 34.871567, 28.951893>,  <30.128633, 35.486275, 29.387051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222504, 34.871567, 28.951893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.825306, 34.870869, 28.999147>,  <29.586987, 34.870449, 29.027500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.825306, 34.870869, 28.999147>,  <30.222504, 34.871567, 28.951893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825306, 34.870869, 28.999147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114702, -0.225611, -0.967441,
		0.028342, -0.974216, 0.223831,
		-0.992996, -0.001745, 0.118139,
		29.527407, 34.870346, 29.034590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984842, 34.361198, 28.535955>,  <30.222504, 34.871567, 28.951893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984842, 34.361198, 28.535955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.647545, 34.571228, 28.581978>,  <29.445166, 34.697247, 28.609591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.647545, 34.571228, 28.581978>,  <29.984842, 34.361198, 28.535955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647545, 34.571228, 28.581978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219913, -0.141681, -0.965176,
		-0.490487, -0.839181, 0.234942,
		-0.843244, 0.525074, 0.115054,
		29.394571, 34.728748, 28.616493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471127, 33.943123, 28.240648>,  <29.984842, 34.361198, 28.535955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471127, 33.943123, 28.240648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.312597, 34.310131, 28.227503>,  <29.217480, 34.530334, 28.219616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.312597, 34.310131, 28.227503>,  <29.471127, 33.943123, 28.240648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312597, 34.310131, 28.227503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105226, -0.080952, -0.991148,
		-0.912060, -0.389358, 0.128630,
		-0.396325, 0.917522, -0.032863,
		29.193699, 34.585388, 28.217644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841576, 33.924454, 27.890749>,  <29.471127, 33.943123, 28.240648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841576, 33.924454, 27.890749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.939240, 34.312241, 27.881670>,  <28.997839, 34.544914, 27.876223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.939240, 34.312241, 27.881670>,  <28.841576, 33.924454, 27.890749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939240, 34.312241, 27.881670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105132, 0.003195, -0.994453,
		-0.964019, 0.245194, 0.102702,
		0.244162, 0.969469, -0.022698,
		29.012487, 34.603081, 27.874861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363909, 34.241642, 27.446997>,  <28.841576, 33.924454, 27.890749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363909, 34.241642, 27.446997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.686401, 34.478203, 27.453144>,  <28.879898, 34.620140, 27.456833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.686401, 34.478203, 27.453144>,  <28.363909, 34.241642, 27.446997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686401, 34.478203, 27.453144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000114, 0.026136, -0.999658,
		-0.591597, 0.805957, 0.021139,
		0.806234, 0.591397, 0.015370,
		28.928272, 34.655621, 27.457754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230764, 34.554462, 26.841793>,  <28.363909, 34.241642, 27.446997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230764, 34.554462, 26.841793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600842, 34.681599, 26.924734>,  <28.822887, 34.757881, 26.974499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.600842, 34.681599, 26.924734>,  <28.230764, 34.554462, 26.841793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600842, 34.681599, 26.924734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139381, 0.223605, -0.964663,
		-0.352974, 0.921400, 0.162577,
		0.925193, 0.317841, 0.207352,
		28.878399, 34.776951, 26.986940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272301, 35.228981, 26.560596>,  <28.230764, 34.554462, 26.841793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272301, 35.228981, 26.560596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.653955, 35.115555, 26.598999>,  <28.882948, 35.047501, 26.622040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.653955, 35.115555, 26.598999>,  <28.272301, 35.228981, 26.560596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653955, 35.115555, 26.598999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171214, 0.253786, -0.951987,
		0.245582, 0.924762, 0.290696,
		0.954136, -0.283562, 0.096007,
		28.940197, 35.030487, 26.627802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690044, 35.788696, 26.306391>,  <28.272301, 35.228981, 26.560596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690044, 35.788696, 26.306391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.905399, 35.451668, 26.300661>,  <29.034613, 35.249451, 26.297222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.905399, 35.451668, 26.300661>,  <28.690044, 35.788696, 26.306391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905399, 35.451668, 26.300661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155938, 0.116319, -0.980894,
		0.828144, 0.525867, 0.194015,
		0.538387, -0.842576, -0.014326,
		29.066916, 35.198895, 26.296364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148853, 35.931671, 25.843046>,  <28.690044, 35.788696, 26.306391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148853, 35.931671, 25.843046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.152065, 35.531704, 25.846926>,  <29.153992, 35.291721, 25.849253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.152065, 35.531704, 25.846926>,  <29.148853, 35.931671, 25.843046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152065, 35.531704, 25.846926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057468, -0.009220, -0.998305,
		0.998315, 0.008572, 0.057390,
		0.008028, -0.999921, 0.009697,
		29.154474, 35.231728, 25.849834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820133, 35.760670, 25.555174>,  <29.148853, 35.931671, 25.843046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820133, 35.760670, 25.555174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.564850, 35.454136, 25.525698>,  <29.411680, 35.270218, 25.508011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.564850, 35.454136, 25.525698>,  <29.820133, 35.760670, 25.555174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564850, 35.454136, 25.525698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212457, -0.083311, -0.973613,
		0.739969, -0.637022, 0.215982,
		-0.638206, -0.766330, -0.073692,
		29.373388, 35.224236, 25.503590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343475, 35.222733, 25.738955>,  <29.820133, 35.760670, 25.555174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343475, 35.222733, 25.738955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727488, 35.306908, 25.812769>,  <30.957895, 35.357414, 25.857058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727488, 35.306908, 25.812769>,  <30.343475, 35.222733, 25.738955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727488, 35.306908, 25.812769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188749, -0.000070, 0.982025,
		0.206671, -0.977607, 0.039653,
		0.960032, 0.210441, 0.184537,
		31.015497, 35.370041, 25.868130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467710, 34.896248, 26.324505>,  <30.343475, 35.222733, 25.738955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467710, 34.896248, 26.324505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784012, 35.139896, 26.300243>,  <30.973793, 35.286087, 26.285686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784012, 35.139896, 26.300243>,  <30.467710, 34.896248, 26.324505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784012, 35.139896, 26.300243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006320, 0.107202, 0.994217,
		0.612101, -0.785798, 0.088620,
		0.790754, 0.609121, -0.060652,
		31.021238, 35.322632, 26.282047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970644, 34.764362, 26.874283>,  <30.467710, 34.896248, 26.324505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970644, 34.764362, 26.874283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099453, 35.130505, 26.777596>,  <31.176739, 35.350189, 26.719584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099453, 35.130505, 26.777596>,  <30.970644, 34.764362, 26.874283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099453, 35.130505, 26.777596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059273, 0.274312, 0.959812,
		0.944874, -0.294756, 0.142592,
		0.322025, 0.915353, -0.241719,
		31.196060, 35.405109, 26.705080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480299, 34.933220, 27.232210>,  <30.970644, 34.764362, 26.874283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480299, 34.933220, 27.232210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354050, 35.299194, 27.131594>,  <31.278299, 35.518780, 27.071224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354050, 35.299194, 27.131594>,  <31.480299, 34.933220, 27.232210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354050, 35.299194, 27.131594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149343, 0.309684, 0.939038,
		0.937059, 0.258816, -0.234383,
		-0.315623, 0.914937, -0.251540,
		31.259363, 35.573677, 27.056131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923082, 35.247761, 27.736959>,  <31.480299, 34.933220, 27.232210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923082, 35.247761, 27.736959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615932, 35.475334, 27.619192>,  <31.431643, 35.611877, 27.548532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615932, 35.475334, 27.619192>,  <31.923082, 35.247761, 27.736959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615932, 35.475334, 27.619192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270101, 0.129199, 0.954124,
		0.580871, 0.812172, 0.054460,
		-0.767877, 0.568933, -0.294417,
		31.385569, 35.646015, 27.530867>
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
