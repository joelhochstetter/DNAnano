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
	<24.090637, 34.968643, 34.983303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329536, 35.288685, 34.960960>,  <24.472876, 35.480713, 34.947556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329536, 35.288685, 34.960960>,  <24.090637, 34.968643, 34.983303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329536, 35.288685, 34.960960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579960, -0.478919, -0.659001,
		-0.554021, 0.361195, -0.750066,
		0.597249, 0.800109, -0.055853,
		24.508711, 35.528717, 34.944206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477934, 34.979721, 34.242840>,  <24.090637, 34.968643, 34.983303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477934, 34.979721, 34.242840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702192, 35.173943, 34.511143>,  <24.836748, 35.290474, 34.672123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702192, 35.173943, 34.511143>,  <24.477934, 34.979721, 34.242840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702192, 35.173943, 34.511143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806690, -0.137449, -0.574769,
		-0.186885, 0.863335, -0.468750,
		0.560647, 0.485551, 0.670757,
		24.870386, 35.319607, 34.712368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861120, 35.593246, 33.952034>,  <24.477934, 34.979721, 34.242840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861120, 35.593246, 33.952034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050663, 35.432297, 34.265354>,  <25.164389, 35.335728, 34.453346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050663, 35.432297, 34.265354>,  <24.861120, 35.593246, 33.952034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050663, 35.432297, 34.265354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846532, -0.036889, -0.531058,
		0.242581, 0.914731, 0.323145,
		0.473855, -0.402377, 0.783297,
		25.192820, 35.311584, 34.500343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513792, 35.993156, 34.155956>,  <24.861120, 35.593246, 33.952034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513792, 35.993156, 34.155956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533878, 35.602722, 34.240562>,  <25.545931, 35.368462, 34.291325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533878, 35.602722, 34.240562>,  <25.513792, 35.993156, 34.155956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533878, 35.602722, 34.240562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834490, -0.075349, -0.545846,
		0.548729, 0.203915, 0.810749,
		0.050217, -0.976084, 0.211512,
		25.548943, 35.309898, 34.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074560, 35.825493, 33.842331>,  <25.513792, 35.993156, 34.155956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074560, 35.825493, 33.842331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989927, 35.461987, 33.986202>,  <25.939148, 35.243881, 34.072525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989927, 35.461987, 33.986202>,  <26.074560, 35.825493, 33.842331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989927, 35.461987, 33.986202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822200, -0.364468, -0.437208,
		0.528413, 0.203224, 0.824306,
		-0.211582, -0.908770, 0.359680,
		25.926453, 35.189354, 34.094105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667181, 35.688633, 34.284527>,  <26.074560, 35.825493, 33.842331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667181, 35.688633, 34.284527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477840, 35.373432, 34.127048>,  <26.364237, 35.184311, 34.032562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477840, 35.373432, 34.127048>,  <26.667181, 35.688633, 34.284527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477840, 35.373432, 34.127048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873546, -0.362391, -0.324946,
		0.113384, -0.497727, 0.859890,
		-0.473351, -0.787997, -0.393698,
		26.335835, 35.137032, 34.008938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139797, 35.127846, 34.192028>,  <26.667181, 35.688633, 34.284527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139797, 35.127846, 34.192028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855078, 34.935398, 33.987335>,  <26.684246, 34.819931, 33.864521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855078, 34.935398, 33.987335>,  <27.139797, 35.127846, 34.192028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855078, 34.935398, 33.987335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696292, -0.579077, -0.424083,
		-0.092300, -0.658178, 0.747184,
		-0.711799, -0.481115, -0.511732,
		26.641539, 34.791065, 33.833817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157228, 34.340160, 34.279030>,  <27.139797, 35.127846, 34.192028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157228, 34.340160, 34.279030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999775, 34.448872, 33.927761>,  <26.905302, 34.514099, 33.716999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999775, 34.448872, 33.927761>,  <27.157228, 34.340160, 34.279030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999775, 34.448872, 33.927761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614992, -0.632176, -0.471315,
		-0.683255, -0.725595, 0.081701,
		-0.393633, 0.271783, -0.878172,
		26.881685, 34.530407, 33.664310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666496, 33.897190, 33.962559>,  <27.157228, 34.340160, 34.279030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666496, 33.897190, 33.962559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887871, 34.092693, 33.692795>,  <27.020695, 34.209995, 33.530937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887871, 34.092693, 33.692795>,  <26.666496, 33.897190, 33.962559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887871, 34.092693, 33.692795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433290, -0.860473, -0.268039,
		-0.711315, -0.143871, -0.687991,
		0.553435, 0.488760, -0.674405,
		27.053902, 34.239323, 33.490475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666706, 33.638264, 33.235104>,  <26.666496, 33.897190, 33.962559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666706, 33.638264, 33.235104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010941, 33.824421, 33.317856>,  <27.217482, 33.936115, 33.367508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010941, 33.824421, 33.317856>,  <26.666706, 33.638264, 33.235104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010941, 33.824421, 33.317856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509302, -0.787054, -0.348077,
		0.000832, 0.404914, -0.914355,
		0.860588, 0.465393, 0.206878,
		27.269117, 33.964039, 33.379921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939093, 33.746109, 32.583122>,  <26.666706, 33.638264, 33.235104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939093, 33.746109, 32.583122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220976, 33.677158, 32.858418>,  <27.390106, 33.635788, 33.023594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220976, 33.677158, 32.858418>,  <26.939093, 33.746109, 32.583122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220976, 33.677158, 32.858418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202395, -0.880886, -0.427873,
		0.680015, 0.440822, -0.585881,
		0.704710, -0.172380, 0.688236,
		27.432388, 33.625443, 33.064888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542221, 33.623016, 32.185043>,  <26.939093, 33.746109, 32.583122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542221, 33.623016, 32.185043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598286, 33.459335, 32.545689>,  <27.631926, 33.361126, 32.762077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598286, 33.459335, 32.545689>,  <27.542221, 33.623016, 32.185043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598286, 33.459335, 32.545689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396794, -0.811067, -0.429795,
		0.907143, 0.417996, 0.048689,
		0.140162, -0.409206, 0.901613,
		27.640335, 33.336575, 32.816174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197437, 33.289501, 32.288197>,  <27.542221, 33.623016, 32.185043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197437, 33.289501, 32.288197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951536, 33.107029, 32.545559>,  <27.803995, 32.997547, 32.699978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951536, 33.107029, 32.545559>,  <28.197437, 33.289501, 32.288197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951536, 33.107029, 32.545559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441796, -0.874944, -0.198218,
		0.653370, 0.162401, 0.739414,
		-0.614755, -0.456179, 0.643410,
		27.767109, 32.970177, 32.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586742, 32.967907, 32.801144>,  <28.197437, 33.289501, 32.288197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586742, 32.967907, 32.801144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250631, 32.753361, 32.769535>,  <28.048965, 32.624634, 32.750568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250631, 32.753361, 32.769535>,  <28.586742, 32.967907, 32.801144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250631, 32.753361, 32.769535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537536, -0.843207, 0.007498,
		-0.070655, -0.036177, 0.996844,
		-0.840275, -0.536370, -0.079024,
		27.998549, 32.592449, 32.745827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135521, 33.307270, 33.055199>,  <28.586742, 32.967907, 32.801144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135521, 33.307270, 33.055199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455097, 33.192429, 32.843815>,  <29.646843, 33.123524, 32.716984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455097, 33.192429, 32.843815>,  <29.135521, 33.307270, 33.055199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455097, 33.192429, 32.843815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035510, 0.854644, -0.517999,
		0.600358, 0.432617, 0.672616,
		0.798942, -0.287100, -0.528455,
		29.694780, 33.106297, 32.685280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645718, 33.876064, 33.078209>,  <29.135521, 33.307270, 33.055199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645718, 33.876064, 33.078209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674809, 33.660381, 32.742599>,  <29.692263, 33.530972, 32.541233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674809, 33.660381, 32.742599>,  <29.645718, 33.876064, 33.078209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674809, 33.660381, 32.742599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270953, 0.798931, -0.536931,
		0.959842, 0.266385, -0.087998,
		0.072725, -0.539212, -0.839024,
		29.696627, 33.498619, 32.490891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139627, 34.106640, 32.490337>,  <29.645718, 33.876064, 33.078209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139627, 34.106640, 32.490337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807924, 33.944561, 32.336380>,  <29.608902, 33.847313, 32.244007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807924, 33.944561, 32.336380>,  <30.139627, 34.106640, 32.490337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807924, 33.944561, 32.336380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242123, 0.881198, -0.406038,
		0.503691, -0.243520, -0.828851,
		-0.829260, -0.405201, -0.384890,
		29.559147, 33.823002, 32.220913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078091, 34.286003, 31.726742>,  <30.139627, 34.106640, 32.490337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078091, 34.286003, 31.726742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723036, 34.227657, 31.901476>,  <29.510004, 34.192650, 32.006317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723036, 34.227657, 31.901476>,  <30.078091, 34.286003, 31.726742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723036, 34.227657, 31.901476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303020, 0.899257, -0.315460,
		-0.346816, -0.412384, -0.842412,
		-0.887636, -0.145861, 0.436837,
		29.456745, 34.183899, 32.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531662, 34.330345, 31.185322>,  <30.078091, 34.286003, 31.726742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531662, 34.330345, 31.185322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414089, 34.437260, 31.552399>,  <29.343546, 34.501408, 31.772644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414089, 34.437260, 31.552399>,  <29.531662, 34.330345, 31.185322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414089, 34.437260, 31.552399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268157, 0.898486, -0.347585,
		-0.917441, -0.348251, -0.192416,
		-0.293930, 0.267291, 0.917693,
		29.325911, 34.517448, 31.827707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780870, 34.575989, 31.296179>,  <29.531662, 34.330345, 31.185322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780870, 34.575989, 31.296179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017614, 34.783886, 31.542616>,  <29.159660, 34.908623, 31.690479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017614, 34.783886, 31.542616>,  <28.780870, 34.575989, 31.296179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017614, 34.783886, 31.542616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163912, 0.825982, -0.539338,
		-0.789198, 0.218228, 0.574058,
		0.591861, 0.519740, 0.616094,
		29.195173, 34.939808, 31.727444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378828, 34.005760, 31.634031>,  <28.780870, 34.575989, 31.296179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378828, 34.005760, 31.634031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448917, 34.384808, 31.740856>,  <28.490971, 34.612236, 31.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448917, 34.384808, 31.740856>,  <28.378828, 34.005760, 31.634031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448917, 34.384808, 31.740856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954324, -0.096804, -0.282658,
		-0.241998, 0.304392, -0.921294,
		0.175223, 0.947615, 0.267062,
		28.501484, 34.669090, 31.820974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005451, 33.639072, 31.436789>,  <28.378828, 34.005760, 31.634031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005451, 33.639072, 31.436789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880947, 33.561981, 31.064558>,  <28.806246, 33.515724, 30.841219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880947, 33.561981, 31.064558>,  <29.005451, 33.639072, 31.436789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880947, 33.561981, 31.064558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262016, 0.923861, -0.278979,
		0.913490, -0.330661, -0.237063,
		-0.311261, -0.192731, -0.930576,
		28.787569, 33.504162, 30.785385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203661, 32.955326, 31.481571>,  <29.005451, 33.639072, 31.436789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203661, 32.955326, 31.481571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435366, 33.239311, 31.641771>,  <29.574389, 33.409702, 31.737892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435366, 33.239311, 31.641771>,  <29.203661, 32.955326, 31.481571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435366, 33.239311, 31.641771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426186, -0.682607, 0.593644,
		0.694853, -0.173187, -0.697987,
		0.579262, 0.709967, 0.400502,
		29.609144, 33.452301, 31.761921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993801, 32.827389, 31.420307>,  <29.203661, 32.955326, 31.481571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993801, 32.827389, 31.420307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893360, 33.035069, 31.747080>,  <29.833096, 33.159676, 31.943144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893360, 33.035069, 31.747080>,  <29.993801, 32.827389, 31.420307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893360, 33.035069, 31.747080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432130, -0.695073, 0.574576,
		0.866148, 0.497298, -0.049828,
		-0.251101, 0.519199, 0.816933,
		29.818029, 33.190826, 31.992161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586140, 32.852097, 31.851053>,  <29.993801, 32.827389, 31.420307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586140, 32.852097, 31.851053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285149, 32.915066, 32.106865>,  <30.104553, 32.952847, 32.260353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285149, 32.915066, 32.106865>,  <30.586140, 32.852097, 31.851053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285149, 32.915066, 32.106865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343578, -0.734595, 0.585085,
		0.561901, 0.659991, 0.498678,
		-0.752477, 0.157425, 0.639527,
		30.059406, 32.962292, 32.298721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867281, 33.019005, 32.523144>,  <30.586140, 32.852097, 31.851053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867281, 33.019005, 32.523144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504585, 32.864307, 32.590382>,  <30.286968, 32.771488, 32.630726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504585, 32.864307, 32.590382>,  <30.867281, 33.019005, 32.523144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504585, 32.864307, 32.590382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413155, -0.734919, 0.537770,
		-0.084444, 0.557065, 0.826164,
		-0.906737, -0.386745, 0.168095,
		30.232565, 32.748283, 32.640808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846153, 32.837265, 33.246651>,  <30.867281, 33.019005, 32.523144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846153, 32.837265, 33.246651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606680, 32.606441, 33.024452>,  <30.462996, 32.467945, 32.891132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606680, 32.606441, 33.024452>,  <30.846153, 32.837265, 33.246651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606680, 32.606441, 33.024452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229794, -0.788104, 0.571040,
		-0.767317, 0.214221, 0.604429,
		-0.598682, -0.577062, -0.555499,
		30.427074, 32.433323, 32.857803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398083, 32.354656, 33.739925>,  <30.846153, 32.837265, 33.246651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398083, 32.354656, 33.739925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487919, 32.227345, 33.371521>,  <30.541821, 32.150959, 33.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487919, 32.227345, 33.371521>,  <30.398083, 32.354656, 33.739925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487919, 32.227345, 33.371521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325220, -0.866480, 0.378741,
		-0.918581, -0.384592, -0.091093,
		0.224591, -0.318279, -0.921009,
		30.555296, 32.131863, 33.095219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359373, 31.750416, 33.340698>,  <30.398083, 32.354656, 33.739925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359373, 31.750416, 33.340698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736502, 31.634550, 33.274746>,  <30.962778, 31.565031, 33.235176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736502, 31.634550, 33.274746>,  <30.359373, 31.750416, 33.340698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736502, 31.634550, 33.274746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216725, 0.908613, -0.357005,
		0.253221, 0.300859, 0.919436,
		0.942820, -0.289666, -0.164876,
		31.019348, 31.547649, 33.225285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568432, 31.040375, 33.637302>,  <30.359373, 31.750416, 33.340698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568432, 31.040375, 33.637302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744638, 31.209536, 33.954060>,  <30.850363, 31.311031, 34.144115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744638, 31.209536, 33.954060>,  <30.568432, 31.040375, 33.637302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744638, 31.209536, 33.954060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695632, -0.396796, 0.598873,
		0.567485, -0.814682, 0.119387,
		0.440519, 0.422901, 0.791895,
		30.876795, 31.336407, 34.191628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538637, 30.741795, 34.235573>,  <30.568432, 31.040375, 33.637302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538637, 30.741795, 34.235573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688162, 31.047907, 34.445187>,  <30.777876, 31.231573, 34.570953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688162, 31.047907, 34.445187>,  <30.538637, 30.741795, 34.235573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688162, 31.047907, 34.445187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745044, -0.088759, 0.661084,
		0.552427, -0.637549, 0.536987,
		0.373811, 0.765280, 0.524035,
		30.800304, 31.277491, 34.602398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640802, 30.580711, 34.993416>,  <30.538637, 30.741795, 34.235573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640802, 30.580711, 34.993416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573368, 30.972164, 34.946323>,  <30.532907, 31.207035, 34.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573368, 30.972164, 34.946323>,  <30.640802, 30.580711, 34.993416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573368, 30.972164, 34.946323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696705, -0.033817, 0.716560,
		0.697267, 0.202826, 0.687518,
		-0.168587, 0.978631, -0.117730,
		30.522793, 31.265753, 34.911003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584873, 30.962667, 35.651821>,  <30.640802, 30.580711, 34.993416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584873, 30.962667, 35.651821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369194, 31.129211, 35.358997>,  <30.239786, 31.229137, 35.183304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369194, 31.129211, 35.358997>,  <30.584873, 30.962667, 35.651821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369194, 31.129211, 35.358997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811238, -0.023334, 0.584250,
		0.226177, 0.908900, 0.350350,
		-0.539200, 0.416361, -0.732057,
		30.207434, 31.254120, 35.139381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519373, 31.679951, 36.022507>,  <30.584873, 30.962667, 35.651821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519373, 31.679951, 36.022507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700554, 31.334784, 36.112137>,  <30.809263, 31.127684, 36.165916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700554, 31.334784, 36.112137>,  <30.519373, 31.679951, 36.022507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700554, 31.334784, 36.112137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413865, -0.019096, -0.910138,
		0.789651, 0.504987, 0.348481,
		0.452953, -0.862916, 0.224076,
		30.836439, 31.075909, 36.179359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953783, 31.457018, 36.539345>,  <30.519373, 31.679951, 36.022507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953783, 31.457018, 36.539345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802660, 31.802792, 36.406670>,  <30.711987, 32.010254, 36.327065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802660, 31.802792, 36.406670>,  <30.953783, 31.457018, 36.539345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802660, 31.802792, 36.406670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289633, 0.450601, 0.844436,
		0.879417, 0.222966, -0.420609,
		-0.377807, 0.864433, -0.331687,
		30.689318, 32.062122, 36.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635357, 31.742332, 36.643551>,  <30.953783, 31.457018, 36.539345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635357, 31.742332, 36.643551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515369, 31.361340, 36.664700>,  <31.443377, 31.132744, 36.677387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515369, 31.361340, 36.664700>,  <31.635357, 31.742332, 36.643551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515369, 31.361340, 36.664700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851684, 0.292366, 0.434921,
		-0.429712, 0.085437, -0.898915,
		-0.299971, -0.952482, 0.052868,
		31.425379, 31.075596, 36.680561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965036, 31.826666, 35.889507>,  <31.635357, 31.742332, 36.643551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965036, 31.826666, 35.889507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999094, 31.793240, 35.492363>,  <32.019527, 31.773184, 35.254078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999094, 31.793240, 35.492363>,  <31.965036, 31.826666, 35.889507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999094, 31.793240, 35.492363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274550, 0.959867, -0.057244,
		0.957796, -0.267716, 0.104669,
		0.085143, -0.083565, -0.992858,
		32.024635, 31.768169, 35.194504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694000, 31.903761, 35.604362>,  <31.965036, 31.826666, 35.889507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694000, 31.903761, 35.604362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405800, 32.038498, 35.361904>,  <32.232880, 32.119339, 35.216431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405800, 32.038498, 35.361904>,  <32.694000, 31.903761, 35.604362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405800, 32.038498, 35.361904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364720, 0.927508, 0.081897,
		0.589790, -0.162066, -0.791127,
		-0.720505, 0.336842, -0.606144,
		32.189648, 32.139549, 35.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138943, 32.198608, 35.017841>,  <32.694000, 31.903761, 35.604362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138943, 32.198608, 35.017841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791794, 32.357185, 35.137589>,  <32.583504, 32.452332, 35.209438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791794, 32.357185, 35.137589>,  <33.138943, 32.198608, 35.017841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791794, 32.357185, 35.137589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405077, 0.913593, -0.035513,
		-0.287584, 0.090448, -0.953475,
		-0.867876, 0.396444, 0.299373,
		32.531429, 32.476120, 35.227402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918289, 32.628803, 35.654594>,  <33.138943, 32.198608, 35.017841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918289, 32.628803, 35.654594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858204, 32.845337, 35.323681>,  <32.822155, 32.975258, 35.125134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858204, 32.845337, 35.323681>,  <32.918289, 32.628803, 35.654594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858204, 32.845337, 35.323681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068342, 0.829087, 0.554927,
		0.986289, 0.139894, -0.087542,
		-0.150211, 0.541335, -0.827280,
		32.813141, 33.007736, 35.075497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269985, 33.288292, 35.584286>,  <32.918289, 32.628803, 35.654594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269985, 33.288292, 35.584286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952324, 33.389713, 35.363365>,  <32.761726, 33.450565, 35.230812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952324, 33.389713, 35.363365>,  <33.269985, 33.288292, 35.584286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952324, 33.389713, 35.363365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052403, 0.876851, 0.477898,
		0.605460, 0.408465, -0.683063,
		-0.794149, 0.253553, -0.552303,
		32.714081, 33.465778, 35.197674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329868, 33.936665, 35.248173>,  <33.269985, 33.288292, 35.584286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329868, 33.936665, 35.248173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940002, 33.876854, 35.314713>,  <32.706081, 33.840969, 35.354637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940002, 33.876854, 35.314713>,  <33.329868, 33.936665, 35.248173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940002, 33.876854, 35.314713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059733, 0.890702, 0.450646,
		-0.215551, 0.429292, -0.877067,
		-0.974664, -0.149527, 0.166349,
		32.647602, 33.831997, 35.364616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907284, 34.043159, 34.920639>,  <33.329868, 33.936665, 35.248173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907284, 34.043159, 34.920639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083942, 33.868835, 34.606945>,  <34.189938, 33.764240, 34.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083942, 33.868835, 34.606945>,  <33.907284, 34.043159, 34.920639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083942, 33.868835, 34.606945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765166, -0.273462, 0.582872,
		-0.468479, -0.857490, 0.212694,
		0.441643, -0.435809, -0.784233,
		34.216434, 33.738094, 34.371674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544121, 34.018864, 35.276268>,  <33.907284, 34.043159, 34.920639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544121, 34.018864, 35.276268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812435, 33.781185, 35.453796>,  <34.973423, 33.638580, 35.560314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812435, 33.781185, 35.453796>,  <34.544121, 34.018864, 35.276268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812435, 33.781185, 35.453796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703107, 0.319096, -0.635468,
		0.235970, 0.738318, 0.631827,
		0.670790, -0.594193, 0.443819,
		35.013672, 33.602928, 35.586941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135868, 34.214474, 35.799477>,  <34.544121, 34.018864, 35.276268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135868, 34.214474, 35.799477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322258, 33.950596, 35.563618>,  <35.434090, 33.792271, 35.422104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322258, 33.950596, 35.563618>,  <35.135868, 34.214474, 35.799477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322258, 33.950596, 35.563618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673041, 0.696867, -0.247776,
		0.574358, -0.281398, 0.768718,
		0.465971, -0.659691, -0.589643,
		35.462048, 33.752689, 35.386726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878674, 34.088600, 35.949730>,  <35.135868, 34.214474, 35.799477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878674, 34.088600, 35.949730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773956, 34.071186, 35.564075>,  <35.711124, 34.060738, 35.332684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773956, 34.071186, 35.564075>,  <35.878674, 34.088600, 35.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773956, 34.071186, 35.564075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604503, 0.771353, -0.198973,
		0.752356, -0.634916, -0.175620,
		-0.261797, -0.043536, -0.964141,
		35.695415, 34.058125, 35.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533978, 34.095104, 35.546333>,  <35.878674, 34.088600, 35.949730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533978, 34.095104, 35.546333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240307, 34.217930, 35.304111>,  <36.064106, 34.291626, 35.158779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240307, 34.217930, 35.304111>,  <36.533978, 34.095104, 35.546333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240307, 34.217930, 35.304111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496824, 0.850857, -0.170904,
		0.462765, -0.426328, -0.777234,
		-0.734177, 0.307060, -0.605557,
		36.020054, 34.310047, 35.122444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785084, 34.264175, 34.815922>,  <36.533978, 34.095104, 35.546333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785084, 34.264175, 34.815922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493275, 34.502991, 34.949394>,  <36.318188, 34.646278, 35.029476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493275, 34.502991, 34.949394>,  <36.785084, 34.264175, 34.815922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493275, 34.502991, 34.949394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551929, 0.802021, -0.228334,
		-0.403942, 0.017592, -0.914616,
		-0.729524, 0.597036, 0.333679,
		36.274418, 34.682102, 35.049500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022297, 33.925980, 34.188148>,  <36.785084, 34.264175, 34.815922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022297, 33.925980, 34.188148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314648, 34.183758, 34.098255>,  <37.490059, 34.338425, 34.044319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314648, 34.183758, 34.098255>,  <37.022297, 33.925980, 34.188148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314648, 34.183758, 34.098255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595067, -0.440456, 0.672231,
		0.334232, -0.625050, -0.705409,
		0.730879, 0.644447, -0.224731,
		37.533913, 34.377090, 34.030834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674019, 33.552197, 34.113136>,  <37.022297, 33.925980, 34.188148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674019, 33.552197, 34.113136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771126, 33.930878, 34.197811>,  <37.829388, 34.158089, 34.248615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771126, 33.930878, 34.197811>,  <37.674019, 33.552197, 34.113136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771126, 33.930878, 34.197811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729505, -0.322000, 0.603439,
		0.639444, 0.007936, -0.768797,
		0.242763, 0.946707, 0.211690,
		37.843956, 34.214890, 34.261318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336796, 33.577614, 34.119766>,  <37.674019, 33.552197, 34.113136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336796, 33.577614, 34.119766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262634, 33.908463, 34.331989>,  <38.218140, 34.106972, 34.459324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262634, 33.908463, 34.331989>,  <38.336796, 33.577614, 34.119766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262634, 33.908463, 34.331989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722789, -0.251000, 0.643875,
		0.665735, 0.502857, -0.551300,
		-0.185401, 0.827124, 0.530559,
		38.207016, 34.156601, 34.491158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981308, 33.689289, 34.245567>,  <38.336796, 33.577614, 34.119766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981308, 33.689289, 34.245567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762177, 33.921333, 34.486683>,  <38.630695, 34.060558, 34.631351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762177, 33.921333, 34.486683>,  <38.981308, 33.689289, 34.245567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762177, 33.921333, 34.486683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664768, -0.135585, 0.734643,
		0.507902, 0.803175, -0.311360,
		-0.547831, 0.580109, 0.602789,
		38.597828, 34.095367, 34.667519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457855, 34.161739, 34.640522>,  <38.981308, 33.689289, 34.245567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457855, 34.161739, 34.640522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119358, 34.096359, 34.843361>,  <38.916260, 34.057133, 34.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119358, 34.096359, 34.843361>,  <39.457855, 34.161739, 34.640522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119358, 34.096359, 34.843361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524828, -0.091777, 0.846246,
		-0.091777, 0.982274, 0.163447,
		-0.846246, -0.163447, 0.507102,
		38.865482, 34.047325, 34.995491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625217, 34.477543, 35.230198>,  <39.457855, 34.161739, 34.640522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625217, 34.477543, 35.230198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332626, 34.219360, 35.318130>,  <39.157070, 34.064449, 35.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332626, 34.219360, 35.318130>,  <39.625217, 34.477543, 35.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332626, 34.219360, 35.318130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493039, -0.277969, 0.824406,
		-0.471012, 0.711421, 0.521564,
		-0.731478, -0.645456, 0.219831,
		39.113182, 34.025723, 35.384079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291348, 34.595062, 35.923191>,  <39.625217, 34.477543, 35.230198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291348, 34.595062, 35.923191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250721, 34.217228, 35.798328>,  <39.226345, 33.990528, 35.723412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250721, 34.217228, 35.798328>,  <39.291348, 34.595062, 35.923191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250721, 34.217228, 35.798328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486954, -0.320824, 0.812372,
		-0.867502, -0.069498, 0.492554,
		-0.101564, -0.944586, -0.312158,
		39.220253, 33.933853, 35.704681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227955, 34.070290, 36.412678>,  <39.291348, 34.595062, 35.923191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227955, 34.070290, 36.412678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286873, 33.773151, 36.151455>,  <39.322224, 33.594868, 35.994720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286873, 33.773151, 36.151455>,  <39.227955, 34.070290, 36.412678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286873, 33.773151, 36.151455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636886, -0.433934, 0.637242,
		-0.756756, -0.509786, 0.409191,
		0.147295, -0.742845, -0.653058,
		39.331062, 33.550297, 35.955536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150131, 33.361115, 36.688328>,  <39.227955, 34.070290, 36.412678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150131, 33.361115, 36.688328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413334, 33.355450, 36.387177>,  <39.571255, 33.352051, 36.206486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413334, 33.355450, 36.387177>,  <39.150131, 33.361115, 36.688328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413334, 33.355450, 36.387177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686106, -0.400737, 0.607181,
		-0.310309, -0.916084, -0.253967,
		0.658003, -0.014165, -0.752882,
		39.610733, 33.351200, 36.161312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393711, 32.708744, 36.647243>,  <39.150131, 33.361115, 36.688328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393711, 32.708744, 36.647243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669781, 32.960186, 36.503845>,  <39.835423, 33.111050, 36.417805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669781, 32.960186, 36.503845>,  <39.393711, 32.708744, 36.647243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669781, 32.960186, 36.503845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676305, -0.384060, 0.628578,
		0.257441, -0.676281, -0.690195,
		0.690171, 0.628603, -0.358499,
		39.876831, 33.148766, 36.396294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836899, 32.132698, 36.786167>,  <39.393711, 32.708744, 36.647243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836899, 32.132698, 36.786167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020947, 32.483395, 36.730137>,  <40.131374, 32.693813, 36.696518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020947, 32.483395, 36.730137>,  <39.836899, 32.132698, 36.786167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020947, 32.483395, 36.730137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554856, -0.160780, 0.816263,
		0.693127, -0.453300, -0.560441,
		0.460119, 0.876738, -0.140075,
		40.158981, 32.746414, 36.688114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473595, 31.941883, 36.629105>,  <39.836899, 32.132698, 36.786167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473595, 31.941883, 36.629105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502056, 32.326420, 36.735508>,  <40.519135, 32.557140, 36.799351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502056, 32.326420, 36.735508>,  <40.473595, 31.941883, 36.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502056, 32.326420, 36.735508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763572, -0.224089, 0.605593,
		0.641790, 0.160024, -0.749998,
		0.071156, 0.961341, 0.266008,
		40.523403, 32.614822, 36.815311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158237, 32.056580, 36.492954>,  <40.473595, 31.941883, 36.629105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158237, 32.056580, 36.492954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031502, 32.306931, 36.778023>,  <40.955460, 32.457142, 36.949062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031502, 32.306931, 36.778023>,  <41.158237, 32.056580, 36.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031502, 32.306931, 36.778023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713684, -0.337577, 0.613756,
		0.624713, 0.703083, -0.339718,
		-0.316840, 0.625873, 0.712668,
		40.936451, 32.494694, 36.991821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787022, 31.447554, 36.207191>,  <41.158237, 32.056580, 36.492954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787022, 31.447554, 36.207191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683296, 31.318035, 36.571152>,  <40.621063, 31.240324, 36.789528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683296, 31.318035, 36.571152>,  <40.787022, 31.447554, 36.207191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683296, 31.318035, 36.571152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699576, -0.586555, -0.408101,
		0.665848, -0.742367, -0.074421,
		-0.259309, -0.323796, 0.909898,
		40.605503, 31.220896, 36.844120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671227, 30.684071, 36.220547>,  <40.787022, 31.447554, 36.207191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671227, 30.684071, 36.220547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521481, 30.779135, 36.579071>,  <40.431633, 30.836172, 36.794186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521481, 30.779135, 36.579071>,  <40.671227, 30.684071, 36.220547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521481, 30.779135, 36.579071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701087, -0.705176, -0.105846,
		0.606900, -0.668016, 0.430612,
		-0.374364, 0.237659, 0.896309,
		40.409172, 30.850433, 36.847965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089256, 31.014084, 35.891392>,  <40.671227, 30.684071, 36.220547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089256, 31.014084, 35.891392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869949, 31.312241, 36.043072>,  <39.738365, 31.491135, 36.134079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869949, 31.312241, 36.043072>,  <40.089256, 31.014084, 35.891392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869949, 31.312241, 36.043072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827822, -0.419306, -0.372684,
		-0.118795, -0.518240, 0.846944,
		-0.548269, 0.745392, 0.379199,
		39.705467, 31.535858, 36.156830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506897, 30.759911, 35.332355>,  <40.089256, 31.014084, 35.891392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506897, 30.759911, 35.332355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557838, 30.691740, 35.723198>,  <39.588406, 30.650839, 35.957703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557838, 30.691740, 35.723198>,  <39.506897, 30.759911, 35.332355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557838, 30.691740, 35.723198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897347, 0.399886, 0.186709,
		-0.422551, -0.900581, -0.102003,
		0.127357, -0.170426, 0.977105,
		39.596046, 30.640612, 36.016331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046680, 30.365934, 35.554371>,  <39.506897, 30.759911, 35.332355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046680, 30.365934, 35.554371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149593, 30.618603, 35.846889>,  <39.211342, 30.770205, 36.022400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149593, 30.618603, 35.846889>,  <39.046680, 30.365934, 35.554371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149593, 30.618603, 35.846889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955598, 0.278817, 0.095364,
		-0.143660, -0.723363, 0.675358,
		0.257284, 0.631670, 0.731298,
		39.226780, 30.808104, 36.066280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885494, 30.267859, 36.209217>,  <39.046680, 30.365934, 35.554371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885494, 30.267859, 36.209217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737198, 30.522137, 35.938385>,  <38.648220, 30.674704, 35.775887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737198, 30.522137, 35.938385>,  <38.885494, 30.267859, 36.209217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737198, 30.522137, 35.938385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371164, -0.769700, -0.519422,
		-0.851345, 0.058738, 0.521307,
		-0.370740, 0.635698, -0.677082,
		38.625977, 30.712847, 35.735260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240280, 30.013006, 36.085915>,  <38.885494, 30.267859, 36.209217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240280, 30.013006, 36.085915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347900, 30.225182, 35.764359>,  <38.412472, 30.352488, 35.571423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347900, 30.225182, 35.764359>,  <38.240280, 30.013006, 36.085915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347900, 30.225182, 35.764359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661815, -0.504577, -0.554439,
		-0.699722, 0.681203, 0.215294,
		0.269054, 0.530438, -0.803894,
		38.428616, 30.384314, 35.523190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760860, 30.378843, 35.683594>,  <38.240280, 30.013006, 36.085915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760860, 30.378843, 35.683594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021408, 30.323689, 35.385143>,  <38.177738, 30.290596, 35.206074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021408, 30.323689, 35.385143>,  <37.760860, 30.378843, 35.683594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021408, 30.323689, 35.385143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725159, -0.402524, -0.558676,
		-0.223301, 0.904965, -0.362181,
		0.651369, -0.137886, -0.746128,
		38.216820, 30.282322, 35.161304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316322, 30.549664, 35.183731>,  <37.760860, 30.378843, 35.683594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316322, 30.549664, 35.183731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626205, 30.379309, 34.996773>,  <37.812134, 30.277096, 34.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626205, 30.379309, 34.996773>,  <37.316322, 30.549664, 35.183731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626205, 30.379309, 34.996773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612027, -0.319256, -0.723532,
		0.158924, 0.846580, -0.507982,
		0.774704, -0.425885, -0.467393,
		37.858616, 30.251543, 34.856556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203079, 30.635292, 34.526802>,  <37.316322, 30.549664, 35.183731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203079, 30.635292, 34.526802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493172, 30.360188, 34.513973>,  <37.667225, 30.195124, 34.506275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493172, 30.360188, 34.513973>,  <37.203079, 30.635292, 34.526802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493172, 30.360188, 34.513973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360412, -0.339535, -0.868804,
		0.586642, 0.641638, -0.494118,
		0.725227, -0.687762, -0.032068,
		37.710739, 30.153858, 34.504353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576183, 30.722151, 33.877377>,  <37.203079, 30.635292, 34.526802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576183, 30.722151, 33.877377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628494, 30.342663, 33.992496>,  <37.659882, 30.114969, 34.061569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628494, 30.342663, 33.992496>,  <37.576183, 30.722151, 33.877377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628494, 30.342663, 33.992496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391791, -0.316116, -0.864043,
		0.910713, 0.000238, -0.413040,
		0.130774, -0.948721, 0.287797,
		37.667728, 30.058046, 34.078835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066917, 30.420267, 33.375191>,  <37.576183, 30.722151, 33.877377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066917, 30.420267, 33.375191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900158, 30.096739, 33.541088>,  <37.800102, 29.902622, 33.640625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900158, 30.096739, 33.541088>,  <38.066917, 30.420267, 33.375191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900158, 30.096739, 33.541088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421730, -0.232079, -0.876517,
		0.805197, -0.540325, -0.244351,
		-0.416895, -0.808819, 0.414741,
		37.775089, 29.854094, 33.665512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273602, 29.883909, 32.926353>,  <38.066917, 30.420267, 33.375191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273602, 29.883909, 32.926353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983631, 29.708302, 33.138672>,  <37.809650, 29.602936, 33.266064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983631, 29.708302, 33.138672>,  <38.273602, 29.883909, 32.926353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983631, 29.708302, 33.138672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294852, -0.498646, -0.815117,
		0.622532, -0.747405, 0.232035,
		-0.724925, -0.439020, 0.530796,
		37.766155, 29.576595, 33.297913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165462, 29.126013, 32.692570>,  <38.273602, 29.883909, 32.926353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165462, 29.126013, 32.692570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817009, 29.235256, 32.855801>,  <37.607937, 29.300802, 32.953739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817009, 29.235256, 32.855801>,  <38.165462, 29.126013, 32.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817009, 29.235256, 32.855801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466362, -0.200027, -0.861682,
		-0.153704, -0.940958, 0.301618,
		-0.871138, 0.273107, 0.408081,
		37.555668, 29.317188, 32.978226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790024, 28.705057, 32.374039>,  <38.165462, 29.126013, 32.692570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790024, 28.705057, 32.374039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507412, 28.943512, 32.526588>,  <37.337845, 29.086584, 32.618118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507412, 28.943512, 32.526588>,  <37.790024, 28.705057, 32.374039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507412, 28.943512, 32.526588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476018, -0.001553, -0.879434,
		-0.523669, -0.802883, 0.284868,
		-0.706525, 0.596135, 0.381373,
		37.295456, 29.122353, 32.640999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151039, 28.369963, 32.324581>,  <37.790024, 28.705057, 32.374039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151039, 28.369963, 32.324581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055275, 28.758005, 32.340466>,  <36.997818, 28.990831, 32.349998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055275, 28.758005, 32.340466>,  <37.151039, 28.369963, 32.324581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055275, 28.758005, 32.340466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391724, -0.059085, -0.918184,
		-0.888389, -0.235378, 0.394159,
		-0.239409, 0.970106, 0.039713,
		36.983452, 29.049038, 32.352379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431404, 28.348988, 32.144058>,  <37.151039, 28.369963, 32.324581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431404, 28.348988, 32.144058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578274, 28.715448, 32.079750>,  <36.666397, 28.935326, 32.041164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578274, 28.715448, 32.079750>,  <36.431404, 28.348988, 32.144058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578274, 28.715448, 32.079750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358322, -0.020184, -0.933380,
		-0.858364, 0.400320, 0.320866,
		0.367175, 0.916153, -0.160769,
		36.688427, 28.990294, 32.031521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925419, 28.729076, 31.814335>,  <36.431404, 28.348988, 32.144058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925419, 28.729076, 31.814335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255703, 28.940357, 31.735130>,  <36.453873, 29.067125, 31.687607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255703, 28.940357, 31.735130>,  <35.925419, 28.729076, 31.814335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255703, 28.940357, 31.735130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319464, 0.148559, -0.935881,
		-0.464917, 0.836022, 0.291408,
		0.825709, 0.528201, -0.198011,
		36.503414, 29.098818, 31.675728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727837, 29.362885, 31.470928>,  <35.925419, 28.729076, 31.814335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727837, 29.362885, 31.470928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117317, 29.338100, 31.383224>,  <36.351006, 29.323231, 31.330603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117317, 29.338100, 31.383224>,  <35.727837, 29.362885, 31.470928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117317, 29.338100, 31.383224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213520, 0.087693, -0.972995,
		0.079513, 0.994219, 0.072158,
		0.973698, -0.061959, -0.219258,
		36.409428, 29.319513, 31.317448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890839, 30.030664, 31.205486>,  <35.727837, 29.362885, 31.470928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890839, 30.030664, 31.205486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164867, 29.779320, 31.058064>,  <36.329285, 29.628513, 30.969610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164867, 29.779320, 31.058064>,  <35.890839, 30.030664, 31.205486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164867, 29.779320, 31.058064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313029, 0.202916, -0.927814,
		0.657787, 0.750992, -0.057682,
		0.685076, -0.628360, -0.368558,
		36.370392, 29.590813, 30.947496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463715, 30.424677, 30.923025>,  <35.890839, 30.030664, 31.205486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463715, 30.424677, 30.923025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490307, 30.072306, 30.735603>,  <36.506264, 29.860884, 30.623150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490307, 30.072306, 30.735603>,  <36.463715, 30.424677, 30.923025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490307, 30.072306, 30.735603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234547, 0.442640, -0.865481,
		0.969829, 0.167438, -0.177192,
		0.066482, -0.880928, -0.468557,
		36.510250, 29.808027, 30.595036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970287, 30.505720, 30.335800>,  <36.463715, 30.424677, 30.923025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970287, 30.505720, 30.335800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723392, 30.203384, 30.248417>,  <36.575256, 30.021982, 30.195988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723392, 30.203384, 30.248417>,  <36.970287, 30.505720, 30.335800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723392, 30.203384, 30.248417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272638, 0.465937, -0.841767,
		0.738028, -0.460011, -0.493665,
		-0.617238, -0.755840, -0.218458,
		36.538219, 29.976633, 30.182880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049366, 30.416279, 29.643791>,  <36.970287, 30.505720, 30.335800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049366, 30.416279, 29.643791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722370, 30.201542, 29.727224>,  <36.526173, 30.072699, 29.777285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722370, 30.201542, 29.727224>,  <37.049366, 30.416279, 29.643791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722370, 30.201542, 29.727224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366122, 0.204833, -0.907743,
		0.444592, -0.818439, -0.364000,
		-0.817492, -0.536844, 0.208582,
		36.477123, 30.040489, 29.789799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910255, 30.052383, 29.069088>,  <37.049366, 30.416279, 29.643791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910255, 30.052383, 29.069088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566330, 30.071714, 29.272415>,  <36.359974, 30.083313, 29.394411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566330, 30.071714, 29.272415>,  <36.910255, 30.052383, 29.069088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566330, 30.071714, 29.272415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507367, 0.031193, -0.861165,
		-0.057475, -0.998344, -0.002300,
		-0.859811, 0.048328, 0.508319,
		36.308388, 30.086212, 29.424911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500202, 29.596804, 28.771254>,  <36.910255, 30.052383, 29.069088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500202, 29.596804, 28.771254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229595, 29.836916, 28.941895>,  <36.067230, 29.980984, 29.044279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229595, 29.836916, 28.941895>,  <36.500202, 29.596804, 28.771254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229595, 29.836916, 28.941895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567611, -0.055954, -0.821393,
		-0.469197, -0.797829, 0.378580,
		-0.676514, 0.600282, 0.426603,
		36.026642, 30.017000, 29.069876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857552, 29.290802, 28.596720>,  <36.500202, 29.596804, 28.771254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857552, 29.290802, 28.596720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785156, 29.672064, 28.693663>,  <35.741718, 29.900822, 28.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785156, 29.672064, 28.693663>,  <35.857552, 29.290802, 28.596720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785156, 29.672064, 28.693663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516407, 0.117621, -0.848227,
		-0.837000, -0.278670, 0.470930,
		-0.180984, 0.953157, 0.242356,
		35.730862, 29.958012, 28.766369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417061, 29.451590, 28.155996>,  <35.857552, 29.290802, 28.596720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417061, 29.451590, 28.155996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421120, 29.816298, 28.320229>,  <35.423553, 30.035122, 28.418768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421120, 29.816298, 28.320229>,  <35.417061, 29.451590, 28.155996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421120, 29.816298, 28.320229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669173, 0.311300, -0.674759,
		-0.743037, -0.267902, 0.613290,
		0.010147, 0.911768, 0.410580,
		35.424164, 30.089828, 28.443403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746342, 29.565418, 28.120926>,  <35.417061, 29.451590, 28.155996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746342, 29.565418, 28.120926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928207, 29.919353, 28.161613>,  <35.037327, 30.131714, 28.186026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928207, 29.919353, 28.161613>,  <34.746342, 29.565418, 28.120926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928207, 29.919353, 28.161613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510853, 0.352625, -0.784018,
		-0.729596, 0.304502, 0.612347,
		0.454664, 0.884836, 0.101718,
		35.064606, 30.184805, 28.192129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308193, 30.186676, 28.217360>,  <34.746342, 29.565418, 28.120926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308193, 30.186676, 28.217360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654068, 30.272802, 28.035831>,  <34.861595, 30.324478, 27.926914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654068, 30.272802, 28.035831>,  <34.308193, 30.186676, 28.217360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654068, 30.272802, 28.035831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502077, 0.343126, -0.793841,
		-0.015209, 0.914278, 0.404802,
		0.864689, 0.215316, -0.453819,
		34.913475, 30.337397, 27.899685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230469, 30.829729, 28.093590>,  <34.308193, 30.186676, 28.217360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230469, 30.829729, 28.093590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533611, 30.734436, 27.850641>,  <34.715496, 30.677259, 27.704872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533611, 30.734436, 27.850641>,  <34.230469, 30.829729, 28.093590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533611, 30.734436, 27.850641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407390, 0.554350, -0.725761,
		0.509598, 0.797459, 0.323063,
		0.757855, -0.238233, -0.607372,
		34.760967, 30.662966, 27.668430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449047, 31.390965, 27.670547>,  <34.230469, 30.829729, 28.093590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449047, 31.390965, 27.670547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570320, 31.076662, 27.454893>,  <34.643082, 30.888081, 27.325500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570320, 31.076662, 27.454893>,  <34.449047, 31.390965, 27.670547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570320, 31.076662, 27.454893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262007, 0.475226, -0.839948,
		0.916207, 0.395912, -0.061796,
		0.303178, -0.785757, -0.539137,
		34.661274, 30.840935, 27.293152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668514, 31.720575, 27.161558>,  <34.449047, 31.390965, 27.670547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668514, 31.720575, 27.161558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674366, 31.349709, 27.011812>,  <34.677879, 31.127188, 26.921965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674366, 31.349709, 27.011812>,  <34.668514, 31.720575, 27.161558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674366, 31.349709, 27.011812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173364, 0.366381, -0.914171,
		0.984749, 0.078277, -0.155377,
		0.014631, -0.927166, -0.374364,
		34.678757, 31.071558, 26.899504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064888, 31.709568, 26.544538>,  <34.668514, 31.720575, 27.161558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064888, 31.709568, 26.544538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879616, 31.361975, 26.474873>,  <34.768452, 31.153419, 26.433073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879616, 31.361975, 26.474873>,  <35.064888, 31.709568, 26.544538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879616, 31.361975, 26.474873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356423, 0.362567, -0.861109,
		0.811435, -0.336772, -0.477659,
		-0.463180, -0.868982, -0.174166,
		34.740662, 31.101280, 26.422623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337234, 31.439175, 25.976284>,  <35.064888, 31.709568, 26.544538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337234, 31.439175, 25.976284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967091, 31.296661, 26.028080>,  <34.745003, 31.211153, 26.059158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967091, 31.296661, 26.028080>,  <35.337234, 31.439175, 25.976284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967091, 31.296661, 26.028080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297761, 0.471725, -0.829948,
		0.234611, -0.806560, -0.542604,
		-0.925362, -0.356281, 0.129490,
		34.689484, 31.189777, 26.066927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103294, 31.081444, 25.288620>,  <35.337234, 31.439175, 25.976284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103294, 31.081444, 25.288620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780605, 31.158710, 25.512009>,  <34.586994, 31.205070, 25.646042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780605, 31.158710, 25.512009>,  <35.103294, 31.081444, 25.288620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780605, 31.158710, 25.512009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485595, 0.321853, -0.812778,
		-0.336747, -0.926875, -0.165844,
		-0.806720, 0.193168, 0.558469,
		34.538589, 31.216661, 25.679550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501301, 30.802944, 24.900898>,  <35.103294, 31.081444, 25.288620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501301, 30.802944, 24.900898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310997, 31.045042, 25.156189>,  <34.196815, 31.190300, 25.309364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310997, 31.045042, 25.156189>,  <34.501301, 30.802944, 24.900898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310997, 31.045042, 25.156189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566980, 0.343713, -0.748595,
		-0.672451, -0.718011, 0.179638,
		-0.475756, 0.605245, 0.638228,
		34.168270, 31.226616, 25.347658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706387, 30.736996, 24.908236>,  <34.501301, 30.802944, 24.900898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706387, 30.736996, 24.908236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817005, 31.105148, 25.018812>,  <33.883377, 31.326040, 25.085159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817005, 31.105148, 25.018812>,  <33.706387, 30.736996, 24.908236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817005, 31.105148, 25.018812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498398, 0.383315, -0.777605,
		-0.821657, 0.077268, 0.564721,
		0.276550, 0.920380, 0.276444,
		33.899971, 31.381262, 25.101746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169113, 31.235886, 24.673557>,  <33.706387, 30.736996, 24.908236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169113, 31.235886, 24.673557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482384, 31.476343, 24.737127>,  <33.670345, 31.620617, 24.775269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482384, 31.476343, 24.737127>,  <33.169113, 31.235886, 24.673557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482384, 31.476343, 24.737127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302547, 0.591708, -0.747226,
		-0.543226, 0.537130, 0.645288,
		0.783180, 0.601142, 0.158925,
		33.717339, 31.656687, 24.784805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872166, 31.963579, 24.669046>,  <33.169113, 31.235886, 24.673557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872166, 31.963579, 24.669046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268208, 31.996191, 24.623350>,  <33.505833, 32.015759, 24.595932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268208, 31.996191, 24.623350>,  <32.872166, 31.963579, 24.669046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268208, 31.996191, 24.623350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139931, 0.636190, -0.758737,
		0.010818, 0.767213, 0.641302,
		0.990102, 0.081530, -0.114239,
		33.565239, 32.020649, 24.589079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911484, 32.673290, 24.551682>,  <32.872166, 31.963579, 24.669046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911484, 32.673290, 24.551682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238018, 32.477943, 24.428335>,  <33.433941, 32.360737, 24.354328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238018, 32.477943, 24.428335>,  <32.911484, 32.673290, 24.551682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238018, 32.477943, 24.428335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070518, 0.445626, -0.892437,
		0.573252, 0.750277, 0.329343,
		0.816339, -0.488367, -0.308364,
		33.482918, 32.331432, 24.335825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418095, 33.156700, 24.282286>,  <32.911484, 32.673290, 24.551682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418095, 33.156700, 24.282286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528534, 32.806107, 24.124533>,  <33.594799, 32.595749, 24.029881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528534, 32.806107, 24.124533>,  <33.418095, 33.156700, 24.282286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528534, 32.806107, 24.124533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156906, 0.445933, -0.881206,
		0.948236, 0.181418, 0.260647,
		0.276098, -0.876488, -0.394384,
		33.611362, 32.543159, 24.006218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155056, 33.225712, 24.012333>,  <33.418095, 33.156700, 24.282286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155056, 33.225712, 24.012333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985641, 32.919785, 23.818150>,  <33.883991, 32.736229, 23.701639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985641, 32.919785, 23.818150>,  <34.155056, 33.225712, 24.012333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985641, 32.919785, 23.818150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218830, 0.433645, -0.874108,
		0.879052, -0.476448, -0.016298,
		-0.423535, -0.764820, -0.485458,
		33.858582, 32.690338, 23.672512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574074, 33.195381, 23.480961>,  <34.155056, 33.225712, 24.012333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574074, 33.195381, 23.480961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270184, 32.962448, 23.365240>,  <34.087849, 32.822689, 23.295807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270184, 32.962448, 23.365240>,  <34.574074, 33.195381, 23.480961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270184, 32.962448, 23.365240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151473, 0.274178, -0.949675,
		0.632351, -0.765317, -0.120093,
		-0.759729, -0.582337, -0.289302,
		34.042263, 32.787746, 23.278450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769192, 32.982521, 22.819670>,  <34.574074, 33.195381, 23.480961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769192, 32.982521, 22.819670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373482, 32.924103, 22.818794>,  <34.136055, 32.889050, 22.818270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373482, 32.924103, 22.818794>,  <34.769192, 32.982521, 22.819670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373482, 32.924103, 22.818794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032930, 0.237606, -0.970803,
		0.142301, -0.960320, -0.239868,
		-0.989275, -0.146045, -0.002188,
		34.076698, 32.880287, 22.818138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646614, 32.685207, 22.261866>,  <34.769192, 32.982521, 22.819670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646614, 32.685207, 22.261866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270363, 32.804836, 22.326082>,  <34.044613, 32.876614, 22.364613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270363, 32.804836, 22.326082>,  <34.646614, 32.685207, 22.261866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270363, 32.804836, 22.326082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076851, 0.273050, -0.958925,
		-0.330621, -0.914331, -0.233855,
		-0.940630, 0.299068, 0.160543,
		33.988174, 32.894558, 22.374245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194317, 32.405708, 21.663153>,  <34.646614, 32.685207, 22.261866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194317, 32.405708, 21.663153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039864, 32.737125, 21.825344>,  <33.947189, 32.935978, 21.922659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039864, 32.737125, 21.825344>,  <34.194317, 32.405708, 21.663153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039864, 32.737125, 21.825344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288308, 0.309145, -0.906260,
		-0.876229, -0.466842, 0.119504,
		-0.386136, 0.828546, 0.405476,
		33.924023, 32.985687, 21.946987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539074, 32.474720, 21.537024>,  <34.194317, 32.405708, 21.663153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539074, 32.474720, 21.537024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611866, 32.865486, 21.581791>,  <33.655540, 33.099945, 21.608652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611866, 32.865486, 21.581791>,  <33.539074, 32.474720, 21.537024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611866, 32.865486, 21.581791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300738, 0.163663, -0.939559,
		-0.936183, 0.137324, 0.323578,
		0.181982, 0.976912, 0.111920,
		33.666462, 33.158558, 21.615366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019989, 32.780598, 21.075798>,  <33.539074, 32.474720, 21.537024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019989, 32.780598, 21.075798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274971, 33.078720, 21.153955>,  <33.427959, 33.257591, 21.200850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274971, 33.078720, 21.153955>,  <33.019989, 32.780598, 21.075798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274971, 33.078720, 21.153955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315910, 0.484119, -0.815984,
		-0.702749, 0.458424, 0.544051,
		0.637452, 0.745303, 0.195393,
		33.466206, 33.302311, 21.212574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733635, 33.395046, 21.131346>,  <33.019989, 32.780598, 21.075798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733635, 33.395046, 21.131346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101048, 33.476715, 20.995932>,  <33.321495, 33.525715, 20.914682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101048, 33.476715, 20.995932>,  <32.733635, 33.395046, 21.131346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101048, 33.476715, 20.995932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394169, 0.407131, -0.823939,
		-0.030396, 0.890257, 0.454443,
		0.918535, 0.204172, -0.338536,
		33.376610, 33.537968, 20.894371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581768, 34.010162, 20.647736>,  <32.733635, 33.395046, 21.131346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581768, 34.010162, 20.647736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933243, 33.841122, 20.558903>,  <33.144127, 33.739697, 20.505604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933243, 33.841122, 20.558903>,  <32.581768, 34.010162, 20.647736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933243, 33.841122, 20.558903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012557, 0.444569, -0.895657,
		0.477235, 0.789790, 0.385330,
		0.878686, -0.422600, -0.222081,
		33.196850, 33.714340, 20.492279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018841, 34.578632, 20.386942>,  <32.581768, 34.010162, 20.647736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018841, 34.578632, 20.386942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129353, 34.228146, 20.228998>,  <33.195660, 34.017853, 20.134232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129353, 34.228146, 20.228998>,  <33.018841, 34.578632, 20.386942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129353, 34.228146, 20.228998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034973, 0.401413, -0.915229,
		0.960440, 0.266673, 0.080260,
		0.276284, -0.876215, -0.394860,
		33.212238, 33.965282, 20.110540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450451, 34.679813, 19.737463>,  <33.018841, 34.578632, 20.386942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450451, 34.679813, 19.737463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274624, 34.320530, 19.736441>,  <33.169128, 34.104961, 19.735826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274624, 34.320530, 19.736441>,  <33.450451, 34.679813, 19.737463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274624, 34.320530, 19.736441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194575, 0.098000, -0.975980,
		0.876884, -0.428507, -0.217846,
		-0.439564, -0.898208, -0.002558,
		33.142754, 34.051067, 19.735674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776188, 34.307999, 19.193289>,  <33.450451, 34.679813, 19.737463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776188, 34.307999, 19.193289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402599, 34.194294, 19.279905>,  <33.178444, 34.126072, 19.331875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402599, 34.194294, 19.279905>,  <33.776188, 34.307999, 19.193289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402599, 34.194294, 19.279905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310559, 0.345935, -0.885371,
		0.176763, -0.894163, -0.411373,
		-0.933975, -0.284256, 0.216542,
		33.122406, 34.109016, 19.344868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572277, 33.818188, 18.695972>,  <33.776188, 34.307999, 19.193289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572277, 33.818188, 18.695972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283134, 34.033733, 18.868994>,  <33.109650, 34.163059, 18.972807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283134, 34.033733, 18.868994>,  <33.572277, 33.818188, 18.695972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283134, 34.033733, 18.868994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176479, 0.461256, -0.869539,
		-0.668082, -0.704889, -0.238324,
		-0.722857, 0.538864, 0.432555,
		33.066277, 34.195393, 18.998760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069176, 34.140034, 18.354420>,  <33.572277, 33.818188, 18.695972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069176, 34.140034, 18.354420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426346, 34.317638, 18.324654>,  <34.640648, 34.424202, 18.306793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426346, 34.317638, 18.324654>,  <34.069176, 34.140034, 18.354420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426346, 34.317638, 18.324654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082392, 0.001336, 0.996599,
		0.442597, -0.896022, -0.035390,
		0.892927, 0.444008, -0.074416,
		34.694225, 34.450840, 18.302328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496513, 33.756706, 18.800629>,  <34.069176, 34.140034, 18.354420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496513, 33.756706, 18.800629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634483, 34.131298, 18.775219>,  <34.717266, 34.356052, 18.759974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634483, 34.131298, 18.775219>,  <34.496513, 33.756706, 18.800629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634483, 34.131298, 18.775219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000301, 0.067786, 0.997700,
		0.938630, -0.344113, 0.023663,
		0.344925, 0.936478, -0.063522,
		34.737961, 34.412243, 18.756163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888317, 33.846767, 19.330345>,  <34.496513, 33.756706, 18.800629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888317, 33.846767, 19.330345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765720, 34.214294, 19.230875>,  <34.692162, 34.434811, 19.171192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765720, 34.214294, 19.230875>,  <34.888317, 33.846767, 19.330345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765720, 34.214294, 19.230875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121695, 0.296929, 0.947113,
		0.944062, 0.260018, -0.202821,
		-0.306490, 0.918816, -0.248677,
		34.673775, 34.489941, 19.156273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422482, 34.325806, 19.273464>,  <34.888317, 33.846767, 19.330345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422482, 34.325806, 19.273464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095589, 34.486393, 19.438852>,  <34.899452, 34.582745, 19.538086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095589, 34.486393, 19.438852>,  <35.422482, 34.325806, 19.273464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095589, 34.486393, 19.438852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547452, 0.316615, 0.774630,
		0.180076, 0.859407, -0.478531,
		-0.817233, 0.401465, 0.413470,
		34.850418, 34.606831, 19.562893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580189, 35.046883, 19.407196>,  <35.422482, 34.325806, 19.273464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580189, 35.046883, 19.407196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307598, 34.908386, 19.665098>,  <35.144043, 34.825287, 19.819839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307598, 34.908386, 19.665098>,  <35.580189, 35.046883, 19.407196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307598, 34.908386, 19.665098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617534, 0.200730, 0.760500,
		-0.392740, 0.916418, 0.077025,
		-0.681474, -0.346245, 0.644754,
		35.103157, 34.804512, 19.858524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468895, 35.541267, 20.010756>,  <35.580189, 35.046883, 19.407196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468895, 35.541267, 20.010756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349434, 35.181976, 20.139744>,  <35.277756, 34.966400, 20.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349434, 35.181976, 20.139744>,  <35.468895, 35.541267, 20.010756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349434, 35.181976, 20.139744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536799, 0.121270, 0.834949,
		-0.789082, 0.422465, 0.445951,
		-0.298656, -0.898230, 0.322471,
		35.259838, 34.912506, 20.236485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168343, 35.608215, 20.578651>,  <35.468895, 35.541267, 20.010756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168343, 35.608215, 20.578651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286003, 35.226040, 20.588551>,  <35.356598, 34.996735, 20.594490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286003, 35.226040, 20.588551>,  <35.168343, 35.608215, 20.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286003, 35.226040, 20.588551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357401, 0.133974, 0.924292,
		-0.886420, -0.263035, 0.380883,
		0.294150, -0.955439, 0.024749,
		35.374249, 34.939407, 20.595976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842571, 35.215405, 21.229622>,  <35.168343, 35.608215, 20.578651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842571, 35.215405, 21.229622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165203, 35.011295, 21.110256>,  <35.358784, 34.888828, 21.038637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165203, 35.011295, 21.110256>,  <34.842571, 35.215405, 21.229622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165203, 35.011295, 21.110256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260594, -0.146181, 0.954317,
		-0.530584, -0.847498, 0.015067,
		0.806580, -0.510272, -0.298414,
		35.407177, 34.858215, 21.020731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980293, 34.744934, 21.764858>,  <34.842571, 35.215405, 21.229622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980293, 34.744934, 21.764858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316452, 34.711994, 21.550585>,  <35.518147, 34.692230, 21.422020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316452, 34.711994, 21.550585>,  <34.980293, 34.744934, 21.764858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316452, 34.711994, 21.550585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517725, -0.170384, 0.838410,
		-0.160328, -0.981929, -0.100547,
		0.840391, -0.082365, -0.535686,
		35.568569, 34.687290, 21.389879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169758, 34.109310, 21.956049>,  <34.980293, 34.744934, 21.764858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169758, 34.109310, 21.956049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481178, 34.320568, 21.820450>,  <35.668030, 34.447323, 21.739090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481178, 34.320568, 21.820450>,  <35.169758, 34.109310, 21.956049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481178, 34.320568, 21.820450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511189, -0.220325, 0.830749,
		0.364068, -0.820072, -0.441517,
		0.778550, 0.528147, -0.338998,
		35.714745, 34.479012, 21.718750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723537, 33.722340, 22.072523>,  <35.169758, 34.109310, 21.956049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723537, 33.722340, 22.072523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903526, 34.076904, 22.029072>,  <36.011520, 34.289642, 22.003000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903526, 34.076904, 22.029072>,  <35.723537, 33.722340, 22.072523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903526, 34.076904, 22.029072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630832, -0.229392, 0.741235,
		0.632122, -0.402060, -0.662397,
		0.449970, 0.886413, -0.108628,
		36.038517, 34.342827, 21.996483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494320, 33.615250, 22.115887>,  <35.723537, 33.722340, 22.072523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494320, 33.615250, 22.115887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419487, 33.997601, 22.206484>,  <36.374588, 34.227013, 22.260841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419487, 33.997601, 22.206484>,  <36.494320, 33.615250, 22.115887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419487, 33.997601, 22.206484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674895, -0.042466, 0.736690,
		0.713804, 0.290680, -0.637173,
		-0.187083, 0.955878, 0.226491,
		36.363361, 34.284363, 22.274431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215286, 33.879738, 22.613043>,  <36.494320, 33.615250, 22.115887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215286, 33.879738, 22.613043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945358, 34.173820, 22.638605>,  <36.783401, 34.350269, 22.653942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945358, 34.173820, 22.638605>,  <37.215286, 33.879738, 22.613043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945358, 34.173820, 22.638605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372503, 0.264590, 0.889513,
		0.637067, 0.624070, -0.452419,
		-0.674824, 0.735207, 0.063906,
		36.742912, 34.394382, 22.657778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550858, 34.478565, 22.838266>,  <37.215286, 33.879738, 22.613043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550858, 34.478565, 22.838266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173420, 34.554131, 22.947041>,  <36.946957, 34.599472, 23.012304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173420, 34.554131, 22.947041>,  <37.550858, 34.478565, 22.838266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173420, 34.554131, 22.947041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311553, 0.228451, 0.922358,
		0.112125, 0.955050, -0.274422,
		-0.943590, 0.188916, 0.271934,
		36.890343, 34.610806, 23.028622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533772, 35.005730, 23.176197>,  <37.550858, 34.478565, 22.838266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533772, 35.005730, 23.176197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189110, 34.858177, 23.315613>,  <36.982315, 34.769646, 23.399261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189110, 34.858177, 23.315613>,  <37.533772, 35.005730, 23.176197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189110, 34.858177, 23.315613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227660, 0.332840, 0.915089,
		-0.453570, 0.867837, -0.202812,
		-0.861653, -0.368885, 0.348538,
		36.930614, 34.747513, 23.420174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305042, 35.453327, 23.845036>,  <37.533772, 35.005730, 23.176197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305042, 35.453327, 23.845036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079639, 35.123802, 23.869671>,  <36.944397, 34.926086, 23.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079639, 35.123802, 23.869671>,  <37.305042, 35.453327, 23.845036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079639, 35.123802, 23.869671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173936, -0.045434, 0.983708,
		-0.807592, 0.565041, 0.168892,
		-0.563509, -0.823811, 0.061589,
		36.910587, 34.876659, 23.888147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938190, 35.587761, 24.359709>,  <37.305042, 35.453327, 23.845036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938190, 35.587761, 24.359709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934471, 35.188759, 24.331701>,  <36.932240, 34.949360, 24.314896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934471, 35.188759, 24.331701>,  <36.938190, 35.587761, 24.359709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934471, 35.188759, 24.331701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101779, -0.070604, 0.992298,
		-0.994764, 0.002102, 0.102181,
		-0.009300, -0.997502, -0.070020,
		36.931683, 34.889507, 24.310696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496586, 35.324154, 24.774139>,  <36.938190, 35.587761, 24.359709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496586, 35.324154, 24.774139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735806, 35.007553, 24.723747>,  <36.879337, 34.817593, 24.693512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735806, 35.007553, 24.723747>,  <36.496586, 35.324154, 24.774139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735806, 35.007553, 24.723747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118832, -0.067882, 0.990591,
		-0.792604, -0.607389, 0.053459,
		0.598045, -0.791499, -0.125981,
		36.915218, 34.770103, 24.685953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354519, 34.749992, 25.175953>,  <36.496586, 35.324154, 24.774139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354519, 34.749992, 25.175953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742195, 34.684467, 25.102373>,  <36.974800, 34.645153, 25.058226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742195, 34.684467, 25.102373>,  <36.354519, 34.749992, 25.175953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742195, 34.684467, 25.102373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158274, -0.158055, 0.974663,
		-0.188742, -0.973746, -0.127257,
		0.969188, -0.163818, -0.183950,
		37.032951, 34.635323, 25.047188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475193, 34.123932, 25.498129>,  <36.354519, 34.749992, 25.175953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475193, 34.123932, 25.498129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832836, 34.300728, 25.469240>,  <37.047424, 34.406803, 25.451906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832836, 34.300728, 25.469240>,  <36.475193, 34.123932, 25.498129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832836, 34.300728, 25.469240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158685, -0.161859, 0.973972,
		0.418793, -0.882298, -0.214856,
		0.894109, 0.441987, -0.072222,
		37.101070, 34.433323, 25.447573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893776, 33.882530, 26.047073>,  <36.475193, 34.123932, 25.498129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893776, 33.882530, 26.047073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119621, 34.203590, 25.970161>,  <37.255127, 34.396225, 25.924015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119621, 34.203590, 25.970161>,  <36.893776, 33.882530, 26.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119621, 34.203590, 25.970161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398682, -0.061242, 0.915042,
		0.722680, -0.593303, -0.354579,
		0.564612, 0.802646, -0.192280,
		37.289005, 34.444386, 25.912477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614407, 33.696587, 26.196198>,  <36.893776, 33.882530, 26.047073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614407, 33.696587, 26.196198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636009, 34.095936, 26.188971>,  <37.648972, 34.335545, 26.184635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636009, 34.095936, 26.188971>,  <37.614407, 33.696587, 26.196198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636009, 34.095936, 26.188971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372135, -0.003335, 0.928173,
		0.926606, -0.056855, -0.371711,
		0.054011, 0.998377, -0.018067,
		37.652214, 34.395451, 26.183550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238602, 33.871918, 26.371466>,  <37.614407, 33.696587, 26.196198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238602, 33.871918, 26.371466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018463, 34.196609, 26.449657>,  <37.886379, 34.391426, 26.496572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018463, 34.196609, 26.449657>,  <38.238602, 33.871918, 26.371466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018463, 34.196609, 26.449657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247967, -0.064656, 0.966609,
		0.797262, 0.580446, -0.165699,
		-0.550350, 0.811728, 0.195479,
		37.853359, 34.440128, 26.508301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636303, 34.239647, 26.898508>,  <38.238602, 33.871918, 26.371466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636303, 34.239647, 26.898508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298222, 34.451920, 26.923813>,  <38.095371, 34.579285, 26.938995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298222, 34.451920, 26.923813>,  <38.636303, 34.239647, 26.898508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298222, 34.451920, 26.923813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159326, 0.137210, 0.977645,
		0.510140, 0.836390, -0.200522,
		-0.845205, 0.530684, 0.063262,
		38.044659, 34.611126, 26.942791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736149, 34.733887, 27.405565>,  <38.636303, 34.239647, 26.898508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736149, 34.733887, 27.405565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337177, 34.743374, 27.378494>,  <38.097794, 34.749065, 27.362251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337177, 34.743374, 27.378494>,  <38.736149, 34.733887, 27.405565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337177, 34.743374, 27.378494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064093, 0.128558, 0.989629,
		0.032171, 0.991418, -0.126707,
		-0.997425, 0.023716, -0.067679,
		38.037949, 34.750488, 27.358191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499237, 35.314980, 27.691559>,  <38.736149, 34.733887, 27.405565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499237, 35.314980, 27.691559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177132, 35.079136, 27.716579>,  <37.983868, 34.937630, 27.731592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177132, 35.079136, 27.716579>,  <38.499237, 35.314980, 27.691559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177132, 35.079136, 27.716579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139160, 0.290490, 0.946705,
		-0.576361, 0.753639, -0.315970,
		-0.805260, -0.589614, 0.062550,
		37.935555, 34.902252, 27.735344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046394, 35.675304, 28.077589>,  <38.499237, 35.314980, 27.691559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046394, 35.675304, 28.077589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932377, 35.294075, 28.118376>,  <37.863968, 35.065338, 28.142847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932377, 35.294075, 28.118376>,  <38.046394, 35.675304, 28.077589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932377, 35.294075, 28.118376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124879, 0.142399, 0.981900,
		-0.950345, 0.267152, -0.159609,
		-0.285045, -0.953075, 0.101966,
		37.846863, 35.008152, 28.148966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473728, 35.649689, 28.603008>,  <38.046394, 35.675304, 28.077589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473728, 35.649689, 28.603008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663704, 35.301788, 28.549398>,  <37.777691, 35.093048, 28.517233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663704, 35.301788, 28.549398>,  <37.473728, 35.649689, 28.603008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663704, 35.301788, 28.549398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001450, -0.153071, 0.988214,
		-0.880017, -0.469148, -0.073960,
		0.474939, -0.869753, -0.134025,
		37.806187, 35.040863, 28.509192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390770, 35.311928, 29.233530>,  <37.473728, 35.649689, 28.603008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390770, 35.311928, 29.233530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641071, 35.034443, 29.090878>,  <37.791252, 34.867950, 29.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641071, 35.034443, 29.090878>,  <37.390770, 35.311928, 29.233530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641071, 35.034443, 29.090878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085782, -0.393230, 0.915430,
		-0.775286, -0.603429, -0.186558,
		0.625757, -0.693717, -0.356629,
		37.828800, 34.826328, 28.983889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186260, 34.641445, 29.639091>,  <37.390770, 35.311928, 29.233530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186260, 34.641445, 29.639091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549969, 34.598469, 29.478251>,  <37.768192, 34.572685, 29.381746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549969, 34.598469, 29.478251>,  <37.186260, 34.641445, 29.639091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549969, 34.598469, 29.478251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315465, -0.452302, 0.834209,
		-0.271497, -0.885370, -0.377372,
		0.909270, -0.107437, -0.402102,
		37.822750, 34.566238, 29.357620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369480, 33.977524, 29.764645>,  <37.186260, 34.641445, 29.639091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369480, 33.977524, 29.764645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721569, 34.154930, 29.697115>,  <37.932823, 34.261372, 29.656597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721569, 34.154930, 29.697115>,  <37.369480, 33.977524, 29.764645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721569, 34.154930, 29.697115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382104, -0.451408, 0.806366,
		0.281426, -0.774291, -0.566809,
		0.880225, 0.443513, -0.168822,
		37.985638, 34.287983, 29.646469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888443, 33.416828, 29.644838>,  <37.369480, 33.977524, 29.764645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888443, 33.416828, 29.644838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075924, 33.737080, 29.794140>,  <38.188412, 33.929230, 29.883720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075924, 33.737080, 29.794140>,  <37.888443, 33.416828, 29.644838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075924, 33.737080, 29.794140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350436, -0.556392, 0.753407,
		0.810872, -0.222322, -0.541350,
		0.468702, 0.800625, 0.373253,
		38.216534, 33.977268, 29.906116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557121, 33.205143, 29.788334>,  <37.888443, 33.416828, 29.644838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557121, 33.205143, 29.788334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498726, 33.538120, 30.002150>,  <38.463688, 33.737907, 30.130438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498726, 33.538120, 30.002150>,  <38.557121, 33.205143, 29.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498726, 33.538120, 30.002150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326636, -0.469466, 0.820311,
		0.933808, 0.294353, -0.203369,
		-0.145986, 0.832441, 0.534538,
		38.454929, 33.787853, 30.162510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184654, 33.271832, 30.246044>,  <38.557121, 33.205143, 29.788334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184654, 33.271832, 30.246044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889954, 33.495792, 30.397676>,  <38.713135, 33.630169, 30.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889954, 33.495792, 30.397676>,  <39.184654, 33.271832, 30.246044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889954, 33.495792, 30.397676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216141, -0.336202, 0.916652,
		0.640686, 0.757281, 0.126680,
		-0.736753, 0.559905, 0.379079,
		38.668926, 33.663765, 30.511400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487606, 33.743908, 30.684437>,  <39.184654, 33.271832, 30.246044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487606, 33.743908, 30.684437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118896, 33.714973, 30.836802>,  <38.897671, 33.697613, 30.928221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118896, 33.714973, 30.836802>,  <39.487606, 33.743908, 30.684437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118896, 33.714973, 30.836802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385187, -0.058800, 0.920963,
		-0.044221, 0.995646, 0.082063,
		-0.921778, -0.072336, 0.380909,
		38.842361, 33.693272, 30.951075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489323, 33.928024, 31.417370>,  <39.487606, 33.743908, 30.684437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489323, 33.928024, 31.417370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119640, 33.779873, 31.380117>,  <38.897831, 33.690983, 31.357767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119640, 33.779873, 31.380117>,  <39.489323, 33.928024, 31.417370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119640, 33.779873, 31.380117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086766, -0.441111, 0.893248,
		-0.371918, 0.817461, 0.439812,
		-0.924202, -0.370376, -0.093130,
		38.842381, 33.668758, 31.352179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208679, 34.173965, 32.019566>,  <39.489323, 33.928024, 31.417370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208679, 34.173965, 32.019566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965401, 33.877419, 31.906099>,  <38.819435, 33.699490, 31.838020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965401, 33.877419, 31.906099>,  <39.208679, 34.173965, 32.019566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965401, 33.877419, 31.906099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006112, -0.352971, 0.935614,
		-0.793762, 0.570772, 0.210145,
		-0.608198, -0.741371, -0.283664,
		38.782940, 33.655006, 31.821001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603508, 34.100574, 32.494217>,  <39.208679, 34.173965, 32.019566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603508, 34.100574, 32.494217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663792, 33.748737, 32.313728>,  <38.699963, 33.537636, 32.205437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663792, 33.748737, 32.313728>,  <38.603508, 34.100574, 32.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663792, 33.748737, 32.313728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041547, -0.450394, 0.891863,
		-0.987704, -0.153162, -0.031336,
		0.150713, -0.879595, -0.451219,
		38.709007, 33.484859, 32.178364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267704, 33.571693, 32.947483>,  <38.603508, 34.100574, 32.494217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267704, 33.571693, 32.947483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465485, 33.324741, 32.702744>,  <38.584152, 33.176571, 32.555901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465485, 33.324741, 32.702744>,  <38.267704, 33.571693, 32.947483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465485, 33.324741, 32.702744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190990, -0.609550, 0.769397,
		-0.847961, -0.497289, -0.183482,
		0.494454, -0.617376, -0.611852,
		38.613819, 33.139530, 32.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984367, 32.986637, 32.919285>,  <38.267704, 33.571693, 32.947483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984367, 32.986637, 32.919285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372902, 32.933380, 32.840508>,  <38.606022, 32.901428, 32.793240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372902, 32.933380, 32.840508>,  <37.984367, 32.986637, 32.919285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372902, 32.933380, 32.840508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031621, -0.748739, 0.662110,
		-0.235612, -0.649357, -0.723065,
		0.971333, -0.133138, -0.196945,
		38.664303, 32.893440, 32.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084534, 32.281261, 33.062031>,  <37.984367, 32.986637, 32.919285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084534, 32.281261, 33.062031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459976, 32.414242, 33.025154>,  <38.685242, 32.494030, 33.003029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459976, 32.414242, 33.025154>,  <38.084534, 32.281261, 33.062031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459976, 32.414242, 33.025154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332599, -0.800946, 0.497859,
		0.091672, -0.497956, -0.862343,
		0.938602, 0.332455, -0.092195,
		38.741558, 32.513977, 32.997494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481445, 31.582251, 32.874710>,  <38.084534, 32.281261, 33.062031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481445, 31.582251, 32.874710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730919, 31.830835, 33.064365>,  <38.880604, 31.979986, 33.178158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730919, 31.830835, 33.064365>,  <38.481445, 31.582251, 32.874710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730919, 31.830835, 33.064365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317837, -0.755775, 0.572524,
		0.714145, -0.206372, -0.668885,
		0.623680, 0.621462, 0.474140,
		38.918022, 32.017273, 33.206608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066216, 31.240623, 32.962490>,  <38.481445, 31.582251, 32.874710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066216, 31.240623, 32.962490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088684, 31.515945, 33.251789>,  <39.102165, 31.681139, 33.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088684, 31.515945, 33.251789>,  <39.066216, 31.240623, 32.962490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088684, 31.515945, 33.251789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236657, -0.712923, 0.660101,
		0.969968, 0.134083, -0.202938,
		0.056171, 0.688304, 0.723245,
		39.105534, 31.722437, 33.468761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575584, 31.072941, 33.256149>,  <39.066216, 31.240623, 32.962490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575584, 31.072941, 33.256149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433060, 31.324303, 33.532742>,  <39.347546, 31.475119, 33.698696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433060, 31.324303, 33.532742>,  <39.575584, 31.072941, 33.256149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433060, 31.324303, 33.532742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291068, -0.628582, 0.721224,
		0.887873, 0.458252, 0.041066,
		-0.356316, 0.628402, 0.691484,
		39.326164, 31.512823, 33.740185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869240, 31.692266, 32.957039>,  <39.575584, 31.072941, 33.256149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869240, 31.692266, 32.957039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256435, 31.595051, 32.982105>,  <40.488754, 31.536722, 32.997147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256435, 31.595051, 32.982105>,  <39.869240, 31.692266, 32.957039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256435, 31.595051, 32.982105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093156, 0.116046, -0.988866,
		0.233061, 0.963050, 0.134972,
		0.967990, -0.243039, 0.062668,
		40.546833, 31.522139, 33.000904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209492, 32.165638, 32.626389>,  <39.869240, 31.692266, 32.957039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209492, 32.165638, 32.626389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486488, 31.877865, 32.605000>,  <40.652687, 31.705200, 32.592167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486488, 31.877865, 32.605000>,  <40.209492, 32.165638, 32.626389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486488, 31.877865, 32.605000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095800, 0.165175, -0.981600,
		0.715033, 0.674631, 0.183305,
		0.692496, -0.719437, -0.053476,
		40.694237, 31.662033, 32.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857075, 32.423229, 32.262211>,  <40.209492, 32.165638, 32.626389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857075, 32.423229, 32.262211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846939, 32.025066, 32.225281>,  <40.840858, 31.786169, 32.203121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846939, 32.025066, 32.225281>,  <40.857075, 32.423229, 32.262211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846939, 32.025066, 32.225281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233807, 0.083896, -0.968657,
		0.971953, -0.046127, 0.230607,
		-0.025335, -0.995406, -0.092328,
		40.839340, 31.726444, 32.197582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379593, 32.251896, 31.831274>,  <40.857075, 32.423229, 32.262211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379593, 32.251896, 31.831274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140057, 31.931572, 31.827486>,  <40.996334, 31.739376, 31.825212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140057, 31.931572, 31.827486>,  <41.379593, 32.251896, 31.831274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140057, 31.931572, 31.827486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026151, -0.007735, -0.999628,
		0.800443, -0.598863, 0.025574,
		-0.598838, -0.800814, -0.009469,
		40.960403, 31.691328, 31.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634773, 31.884851, 31.296646>,  <41.379593, 32.251896, 31.831274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634773, 31.884851, 31.296646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288486, 31.690762, 31.345787>,  <41.080715, 31.574308, 31.375273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288486, 31.690762, 31.345787>,  <41.634773, 31.884851, 31.296646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288486, 31.690762, 31.345787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138200, -0.004187, -0.990395,
		0.481077, -0.874381, -0.063433,
		-0.865717, -0.485223, 0.122854,
		41.028770, 31.545195, 31.382643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632668, 31.308638, 30.889305>,  <41.634773, 31.884851, 31.296646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632668, 31.308638, 30.889305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250313, 31.402147, 30.960442>,  <41.020901, 31.458252, 31.003124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250313, 31.402147, 30.960442>,  <41.632668, 31.308638, 30.889305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250313, 31.402147, 30.960442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174671, 0.034378, -0.984026,
		-0.236154, -0.971683, 0.007972,
		-0.955888, 0.233774, 0.177843,
		40.963547, 31.472279, 31.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288319, 30.859253, 30.469950>,  <41.632668, 31.308638, 30.889305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288319, 30.859253, 30.469950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062523, 31.179024, 30.552191>,  <40.927048, 31.370886, 30.601536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062523, 31.179024, 30.552191>,  <41.288319, 30.859253, 30.469950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062523, 31.179024, 30.552191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151403, 0.144580, -0.977841,
		-0.811439, -0.583106, 0.039423,
		-0.564486, 0.799427, 0.205602,
		40.893177, 31.418852, 30.613871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798611, 30.768370, 29.959084>,  <41.288319, 30.859253, 30.469950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798611, 30.768370, 29.959084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815353, 31.141329, 30.102682>,  <40.825397, 31.365105, 30.188841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815353, 31.141329, 30.102682>,  <40.798611, 30.768370, 29.959084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815353, 31.141329, 30.102682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212571, 0.359395, -0.908652,
		-0.976249, -0.038280, 0.213244,
		0.041855, 0.932400, 0.358997,
		40.827911, 31.421049, 30.210381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195007, 31.067614, 29.720661>,  <40.798611, 30.768370, 29.959084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195007, 31.067614, 29.720661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423862, 31.377275, 29.828991>,  <40.561176, 31.563072, 29.893990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423862, 31.377275, 29.828991>,  <40.195007, 31.067614, 29.720661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423862, 31.377275, 29.828991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247326, 0.477693, -0.842994,
		-0.781978, 0.415326, 0.464774,
		0.572137, 0.774154, 0.270824,
		40.595505, 31.609522, 29.910238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886806, 31.613703, 29.463873>,  <40.195007, 31.067614, 29.720661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886806, 31.613703, 29.463873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251301, 31.771246, 29.512085>,  <40.469997, 31.865772, 29.541012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251301, 31.771246, 29.512085>,  <39.886806, 31.613703, 29.463873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251301, 31.771246, 29.512085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085765, 0.467648, -0.879744,
		-0.402860, 0.791316, 0.459917,
		0.911234, 0.393858, 0.120529,
		40.524670, 31.889404, 29.548244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859272, 32.303158, 29.119772>,  <39.886806, 31.613703, 29.463873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859272, 32.303158, 29.119772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244507, 32.210537, 29.174679>,  <40.475647, 32.154964, 29.207623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244507, 32.210537, 29.174679>,  <39.859272, 32.303158, 29.119772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244507, 32.210537, 29.174679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214946, 0.354568, -0.909989,
		0.162041, 0.905905, 0.391253,
		0.963089, -0.231553, 0.137266,
		40.533432, 32.141071, 29.215858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194729, 32.814659, 28.939791>,  <39.859272, 32.303158, 29.119772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194729, 32.814659, 28.939791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480568, 32.536644, 28.908087>,  <40.652069, 32.369835, 28.889065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480568, 32.536644, 28.908087>,  <40.194729, 32.814659, 28.939791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480568, 32.536644, 28.908087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289773, 0.397231, -0.870769,
		0.636700, 0.599278, 0.485261,
		0.714594, -0.695035, -0.079262,
		40.694946, 32.328133, 28.884308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906307, 33.227440, 28.787220>,  <40.194729, 32.814659, 28.939791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906307, 33.227440, 28.787220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900833, 32.842274, 28.679436>,  <40.897549, 32.611176, 28.614765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900833, 32.842274, 28.679436>,  <40.906307, 33.227440, 28.787220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900833, 32.842274, 28.679436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228608, 0.259335, -0.938341,
		0.973422, -0.074440, 0.216581,
		-0.013683, -0.962914, -0.269460,
		40.896729, 32.553398, 28.598598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485481, 33.184467, 28.436918>,  <40.906307, 33.227440, 28.787220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485481, 33.184467, 28.436918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307831, 32.850033, 28.308104>,  <41.201241, 32.649372, 28.230814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307831, 32.850033, 28.308104>,  <41.485481, 33.184467, 28.436918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307831, 32.850033, 28.308104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109549, 0.306061, -0.945688,
		0.889241, -0.455286, -0.044338,
		-0.444128, -0.836087, -0.322038,
		41.174591, 32.599205, 28.211493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885555, 32.865360, 27.918140>,  <41.485481, 33.184467, 28.436918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885555, 32.865360, 27.918140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504517, 32.750298, 27.878513>,  <41.275894, 32.681259, 27.854736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504517, 32.750298, 27.878513>,  <41.885555, 32.865360, 27.918140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504517, 32.750298, 27.878513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050444, 0.470452, -0.880983,
		0.300029, -0.834223, -0.462661,
		-0.952595, -0.287659, -0.099067,
		41.218739, 32.663998, 27.848793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791771, 32.976612, 27.214485>,  <41.885555, 32.865360, 27.918140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791771, 32.976612, 27.214485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424358, 32.864761, 27.326273>,  <41.203911, 32.797653, 27.393345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424358, 32.864761, 27.326273>,  <41.791771, 32.976612, 27.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424358, 32.864761, 27.326273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367699, 0.344595, -0.863743,
		0.145220, -0.896139, -0.419340,
		-0.918536, -0.279624, 0.279468,
		41.148796, 32.780876, 27.410112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553795, 32.669910, 26.612835>,  <41.791771, 32.976612, 27.214485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553795, 32.669910, 26.612835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223206, 32.768173, 26.815454>,  <41.024853, 32.827129, 26.937027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223206, 32.768173, 26.815454>,  <41.553795, 32.669910, 26.612835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223206, 32.768173, 26.815454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463900, 0.212608, -0.859996,
		-0.318959, -0.945754, -0.061756,
		-0.826475, 0.245655, 0.506549,
		40.975262, 32.841869, 26.967419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953957, 32.230301, 26.307240>,  <41.553795, 32.669910, 26.612835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953957, 32.230301, 26.307240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853020, 32.578552, 26.476151>,  <40.792458, 32.787502, 26.577497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853020, 32.578552, 26.476151>,  <40.953957, 32.230301, 26.307240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853020, 32.578552, 26.476151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438217, 0.286261, -0.852068,
		-0.862721, -0.400066, 0.309290,
		-0.252346, 0.870633, 0.422279,
		40.777317, 32.839741, 26.602835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231983, 32.298161, 26.230597>,  <40.953957, 32.230301, 26.307240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231983, 32.298161, 26.230597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317013, 32.668568, 26.355375>,  <40.368031, 32.890812, 26.430243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317013, 32.668568, 26.355375>,  <40.231983, 32.298161, 26.230597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317013, 32.668568, 26.355375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692259, 0.368028, -0.620751,
		-0.689629, -0.083991, 0.719275,
		0.212576, 0.926013, 0.311947,
		40.380787, 32.946373, 26.448959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550575, 32.559517, 26.381260>,  <40.231983, 32.298161, 26.230597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550575, 32.559517, 26.381260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810688, 32.850506, 26.293690>,  <39.966755, 33.025097, 26.241148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810688, 32.850506, 26.293690>,  <39.550575, 32.559517, 26.381260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810688, 32.850506, 26.293690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572726, 0.280109, -0.770404,
		-0.499121, 0.626362, 0.598789,
		0.650279, 0.727467, -0.218925,
		40.005772, 33.068745, 26.228012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198612, 33.103699, 26.210697>,  <39.550575, 32.559517, 26.381260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198612, 33.103699, 26.210697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553711, 33.192596, 26.049446>,  <39.766769, 33.245937, 25.952696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553711, 33.192596, 26.049446>,  <39.198612, 33.103699, 26.210697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553711, 33.192596, 26.049446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459066, 0.362467, -0.811095,
		-0.034144, 0.905110, 0.423805,
		0.887746, 0.222249, -0.403129,
		39.820034, 33.259270, 25.928507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326164, 33.886986, 26.019934>,  <39.198612, 33.103699, 26.210697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326164, 33.886986, 26.019934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553848, 33.668442, 25.774176>,  <39.690460, 33.537315, 25.626720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553848, 33.668442, 25.774176>,  <39.326164, 33.886986, 26.019934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553848, 33.668442, 25.774176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450965, 0.417362, -0.788948,
		0.687479, 0.726150, -0.008824,
		0.569212, -0.546365, -0.614396,
		39.724613, 33.504532, 25.589857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342415, 34.291245, 25.524160>,  <39.326164, 33.886986, 26.019934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342415, 34.291245, 25.524160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489082, 33.963676, 25.347563>,  <39.577084, 33.767136, 25.241604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489082, 33.963676, 25.347563>,  <39.342415, 34.291245, 25.524160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489082, 33.963676, 25.347563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375313, 0.304015, -0.875623,
		0.851289, 0.486763, -0.195879,
		0.366671, -0.818924, -0.441493,
		39.599083, 33.717999, 25.215115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806023, 34.396267, 24.789539>,  <39.342415, 34.291245, 25.524160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806023, 34.396267, 24.789539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679573, 34.017590, 24.764748>,  <39.603703, 33.790382, 24.749872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679573, 34.017590, 24.764748>,  <39.806023, 34.396267, 24.789539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679573, 34.017590, 24.764748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292305, 0.159342, -0.942957,
		0.902566, -0.279972, -0.327094,
		-0.316122, -0.946692, -0.061980,
		39.584736, 33.733582, 24.746153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052330, 34.114937, 24.071230>,  <39.806023, 34.396267, 24.789539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052330, 34.114937, 24.071230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771687, 33.855347, 24.188927>,  <39.603302, 33.699593, 24.259544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771687, 33.855347, 24.188927>,  <40.052330, 34.114937, 24.071230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771687, 33.855347, 24.188927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379958, -0.008604, -0.924964,
		0.602814, -0.760757, -0.240548,
		-0.701604, -0.648979, 0.294242,
		39.561207, 33.660652, 24.277199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106758, 33.648636, 23.584082>,  <40.052330, 34.114937, 24.071230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106758, 33.648636, 23.584082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744720, 33.615566, 23.750921>,  <39.527500, 33.595722, 23.851025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744720, 33.615566, 23.750921>,  <40.106758, 33.648636, 23.584082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744720, 33.615566, 23.750921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417029, -0.018965, -0.908695,
		0.083040, -0.996396, -0.017314,
		-0.905092, -0.082678, 0.417101,
		39.473194, 33.590763, 23.876051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872295, 33.129284, 23.110598>,  <40.106758, 33.648636, 23.584082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872295, 33.129284, 23.110598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569992, 33.307507, 23.302563>,  <39.388611, 33.414440, 23.417742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569992, 33.307507, 23.302563>,  <39.872295, 33.129284, 23.110598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569992, 33.307507, 23.302563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609912, -0.212112, -0.763555,
		-0.238420, -0.869759, 0.432060,
		-0.755753, 0.445565, 0.479905,
		39.343266, 33.441174, 23.446537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465702, 32.646572, 23.122381>,  <39.872295, 33.129284, 23.110598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465702, 32.646572, 23.122381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236061, 32.970577, 23.170193>,  <39.098278, 33.164982, 23.198879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236061, 32.970577, 23.170193>,  <39.465702, 32.646572, 23.122381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236061, 32.970577, 23.170193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605589, -0.321817, -0.727802,
		-0.551063, -0.490217, 0.675290,
		-0.574101, 0.810013, 0.119529,
		39.063831, 33.213581, 23.206051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806801, 32.450901, 23.188826>,  <39.465702, 32.646572, 23.122381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806801, 32.450901, 23.188826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811802, 32.817230, 23.028275>,  <38.814800, 33.037029, 22.931944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811802, 32.817230, 23.028275>,  <38.806801, 32.450901, 23.188826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811802, 32.817230, 23.028275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559489, -0.326287, -0.761911,
		-0.828743, 0.234090, 0.508318,
		0.012498, 0.915827, -0.401378,
		38.815552, 33.091980, 22.907862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136246, 32.427784, 22.783340>,  <38.806801, 32.450901, 23.188826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136246, 32.427784, 22.783340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322029, 32.756310, 22.650841>,  <38.433498, 32.953423, 22.571341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322029, 32.756310, 22.650841>,  <38.136246, 32.427784, 22.783340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322029, 32.756310, 22.650841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332685, -0.184833, -0.924747,
		-0.820731, 0.539709, 0.187390,
		0.464459, 0.821310, -0.331251,
		38.461369, 33.002701, 22.551466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655258, 32.839130, 22.553301>,  <38.136246, 32.427784, 22.783340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655258, 32.839130, 22.553301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992153, 32.968464, 22.380751>,  <38.194290, 33.046062, 22.277220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992153, 32.968464, 22.380751>,  <37.655258, 32.839130, 22.553301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992153, 32.968464, 22.380751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381301, -0.208376, -0.900660,
		-0.381102, 0.923057, -0.052216,
		0.842242, 0.323333, -0.431375,
		38.244827, 33.065464, 22.251339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428661, 33.334274, 22.119583>,  <37.655258, 32.839130, 22.553301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428661, 33.334274, 22.119583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779575, 33.209068, 21.974039>,  <37.990124, 33.133945, 21.886713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779575, 33.209068, 21.974039>,  <37.428661, 33.334274, 22.119583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779575, 33.209068, 21.974039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402603, -0.067182, -0.912906,
		0.261310, 0.947369, -0.184959,
		0.877284, -0.313016, -0.363858,
		38.042759, 33.115162, 21.864882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398640, 33.582279, 21.461637>,  <37.428661, 33.334274, 22.119583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398640, 33.582279, 21.461637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698666, 33.317986, 21.450094>,  <37.878681, 33.159409, 21.443169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698666, 33.317986, 21.450094>,  <37.398640, 33.582279, 21.461637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698666, 33.317986, 21.450094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173574, -0.154557, -0.972617,
		0.638180, 0.734536, -0.230614,
		0.750065, -0.660733, -0.028861,
		37.923687, 33.119766, 21.441437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726871, 33.830948, 20.846157>,  <37.398640, 33.582279, 21.461637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726871, 33.830948, 20.846157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844463, 33.457397, 20.927601>,  <37.915020, 33.233269, 20.976467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844463, 33.457397, 20.927601>,  <37.726871, 33.830948, 20.846157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844463, 33.457397, 20.927601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230020, -0.275886, -0.933262,
		0.927721, 0.227526, -0.295914,
		0.293980, -0.933873, 0.203610,
		37.932659, 33.177235, 20.988684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030132, 33.566055, 20.241169>,  <37.726871, 33.830948, 20.846157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030132, 33.566055, 20.241169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964333, 33.226078, 20.441383>,  <37.924854, 33.022091, 20.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964333, 33.226078, 20.441383>,  <38.030132, 33.566055, 20.241169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964333, 33.226078, 20.441383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535154, -0.349368, -0.769124,
		0.828583, -0.394384, -0.397380,
		-0.164499, -0.849943, 0.500537,
		37.914982, 32.971096, 20.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066021, 33.127037, 19.699375>,  <38.030132, 33.566055, 20.241169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066021, 33.127037, 19.699375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918072, 32.909035, 20.000351>,  <37.829304, 32.778233, 20.180937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918072, 32.909035, 20.000351>,  <38.066021, 33.127037, 19.699375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918072, 32.909035, 20.000351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600289, -0.477946, -0.641265,
		0.709118, -0.688866, -0.150383,
		-0.369870, -0.545005, 0.752439,
		37.807110, 32.745533, 20.226082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963036, 32.411705, 19.424799>,  <38.066021, 33.127037, 19.699375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963036, 32.411705, 19.424799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701862, 32.472565, 19.721590>,  <37.545158, 32.509079, 19.899666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701862, 32.472565, 19.721590>,  <37.963036, 32.411705, 19.424799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701862, 32.472565, 19.721590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717618, -0.437639, -0.541752,
		0.242295, -0.886185, 0.394930,
		-0.652930, 0.152145, 0.741980,
		37.505985, 32.518208, 19.944183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587189, 31.774969, 19.416517>,  <37.963036, 32.411705, 19.424799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587189, 31.774969, 19.416517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373596, 32.073036, 19.576313>,  <37.245441, 32.251877, 19.672190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373596, 32.073036, 19.576313>,  <37.587189, 31.774969, 19.416517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373596, 32.073036, 19.576313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772459, -0.237860, -0.588838,
		-0.343761, -0.623015, 0.702624,
		-0.533981, 0.745168, 0.399486,
		37.213402, 32.296585, 19.696159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890316, 31.436365, 19.226322>,  <37.587189, 31.774969, 19.416517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890316, 31.436365, 19.226322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920189, 31.045662, 19.145960>,  <36.938110, 30.811239, 19.097742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920189, 31.045662, 19.145960>,  <36.890316, 31.436365, 19.226322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920189, 31.045662, 19.145960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559299, -0.125768, 0.819370,
		-0.825595, -0.173556, 0.536909,
		0.074680, -0.976760, -0.200904,
		36.942593, 30.752634, 19.085690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017246, 31.140863, 19.926231>,  <36.890316, 31.436365, 19.226322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017246, 31.140863, 19.926231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094810, 30.844189, 19.669388>,  <37.141350, 30.666183, 19.515282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094810, 30.844189, 19.669388>,  <37.017246, 31.140863, 19.926231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094810, 30.844189, 19.669388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729797, -0.328344, 0.599656,
		-0.655587, -0.584887, 0.477610,
		0.193911, -0.741685, -0.642107,
		37.152985, 30.621683, 19.476755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888428, 30.527237, 20.281801>,  <37.017246, 31.140863, 19.926231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888428, 30.527237, 20.281801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173523, 30.447868, 20.012690>,  <37.344582, 30.400248, 19.851223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173523, 30.447868, 20.012690>,  <36.888428, 30.527237, 20.281801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173523, 30.447868, 20.012690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679216, -0.044225, 0.732605,
		-0.175117, -0.979119, 0.103249,
		0.712741, -0.198420, -0.672778,
		37.387344, 30.388342, 19.810856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176300, 29.933523, 20.485312>,  <36.888428, 30.527237, 20.281801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176300, 29.933523, 20.485312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 30.096945, 20.249393>,  <37.622112, 30.194998, 20.107841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454933, 30.096945, 20.249393>,  <37.176300, 29.933523, 20.485312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454933, 30.096945, 20.249393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713272, -0.305423, 0.630840,
		0.077595, -0.860116, -0.504163,
		0.696579, 0.408556, -0.589797,
		37.663906, 30.219511, 20.072454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724380, 29.473902, 20.433193>,  <37.176300, 29.933523, 20.485312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724380, 29.473902, 20.433193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919277, 29.811132, 20.342142>,  <38.036217, 30.013472, 20.287512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919277, 29.811132, 20.342142>,  <37.724380, 29.473902, 20.433193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919277, 29.811132, 20.342142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718181, -0.238567, 0.653684,
		0.496801, -0.481982, -0.721722,
		0.487243, 0.843077, -0.227630,
		38.065449, 30.064056, 20.273853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477104, 29.302568, 20.486706>,  <37.724380, 29.473902, 20.433193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477104, 29.302568, 20.486706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446293, 29.701336, 20.492596>,  <38.427807, 29.940598, 20.496130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446293, 29.701336, 20.492596>,  <38.477104, 29.302568, 20.486706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446293, 29.701336, 20.492596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653545, 0.039334, 0.755865,
		0.752958, 0.067848, -0.654562,
		-0.077030, 0.996920, 0.014724,
		38.423183, 30.000412, 20.497013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179867, 29.532114, 20.545904>,  <38.477104, 29.302568, 20.486706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179867, 29.532114, 20.545904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962849, 29.851458, 20.650410>,  <38.832638, 30.043064, 20.713114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962849, 29.851458, 20.650410>,  <39.179867, 29.532114, 20.545904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962849, 29.851458, 20.650410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483441, 0.042404, 0.874349,
		0.686967, 0.600684, -0.408967,
		-0.542550, 0.798361, 0.261265,
		38.800083, 30.090965, 20.728788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595638, 30.295700, 20.616060>,  <39.179867, 29.532114, 20.545904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595638, 30.295700, 20.616060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262901, 30.303408, 20.837931>,  <39.063259, 30.308031, 20.971052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262901, 30.303408, 20.837931>,  <39.595638, 30.295700, 20.616060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262901, 30.303408, 20.837931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549291, 0.171666, 0.817808,
		-0.079462, 0.984967, -0.153382,
		-0.831844, 0.019267, 0.554674,
		39.013348, 30.309187, 21.004333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643265, 30.957846, 20.996016>,  <39.595638, 30.295700, 20.616060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643265, 30.957846, 20.996016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406574, 30.696871, 21.185408>,  <39.264561, 30.540287, 21.299044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406574, 30.696871, 21.185408>,  <39.643265, 30.957846, 20.996016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406574, 30.696871, 21.185408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572424, 0.073499, 0.816657,
		-0.567617, 0.754271, 0.329978,
		-0.591728, -0.652436, 0.473482,
		39.229057, 30.501141, 21.327452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586765, 31.247910, 21.756533>,  <39.643265, 30.957846, 20.996016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586765, 31.247910, 21.756533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426407, 30.884293, 21.802000>,  <39.330193, 30.666122, 21.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426407, 30.884293, 21.802000>,  <39.586765, 31.247910, 21.756533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426407, 30.884293, 21.802000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531825, -0.129904, 0.836831,
		-0.745950, 0.395937, 0.535531,
		-0.400900, -0.909043, 0.113667,
		39.306137, 30.611580, 21.836100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334995, 31.263485, 22.408184>,  <39.586765, 31.247910, 21.756533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334995, 31.263485, 22.408184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377663, 30.876408, 22.316805>,  <39.403263, 30.644161, 22.261978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377663, 30.876408, 22.316805>,  <39.334995, 31.263485, 22.408184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377663, 30.876408, 22.316805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536474, -0.137431, 0.832651,
		-0.837148, -0.211375, 0.504484,
		0.106670, -0.967695, -0.228447,
		39.409664, 30.586100, 22.248270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199547, 30.930883, 23.062525>,  <39.334995, 31.263485, 22.408184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199547, 30.930883, 23.062525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395000, 30.669388, 22.831402>,  <39.512272, 30.512489, 22.692728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395000, 30.669388, 22.831402>,  <39.199547, 30.930883, 23.062525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395000, 30.669388, 22.831402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516529, -0.316972, 0.795441,
		-0.703161, -0.687132, 0.182793,
		0.488633, -0.653742, -0.577806,
		39.541592, 30.473265, 22.658060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271149, 30.422604, 23.501770>,  <39.199547, 30.930883, 23.062525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271149, 30.422604, 23.501770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543575, 30.334501, 23.222446>,  <39.707031, 30.281641, 23.054853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543575, 30.334501, 23.222446>,  <39.271149, 30.422604, 23.501770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543575, 30.334501, 23.222446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666511, -0.208376, 0.715781,
		-0.303165, -0.952926, 0.004885,
		0.681068, -0.220256, -0.698308,
		39.747894, 30.268425, 23.012955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723034, 29.742159, 23.815891>,  <39.271149, 30.422604, 23.501770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723034, 29.742159, 23.815891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957130, 29.930563, 23.551878>,  <40.097588, 30.043606, 23.393471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957130, 29.930563, 23.551878>,  <39.723034, 29.742159, 23.815891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957130, 29.930563, 23.551878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770516, -0.069479, 0.633622,
		0.252584, -0.879388, -0.403582,
		0.585240, 0.471009, -0.660034,
		40.132702, 30.071865, 23.353868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408585, 29.338428, 23.774279>,  <39.723034, 29.742159, 23.815891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408585, 29.338428, 23.774279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453976, 29.719172, 23.660374>,  <40.481209, 29.947617, 23.592030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453976, 29.719172, 23.660374>,  <40.408585, 29.338428, 23.774279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453976, 29.719172, 23.660374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650874, 0.145329, 0.745146,
		0.750657, -0.269902, -0.603048,
		0.113476, 0.951857, -0.284764,
		40.488018, 30.004728, 23.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069817, 29.382698, 23.668007>,  <40.408585, 29.338428, 23.774279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069817, 29.382698, 23.668007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955479, 29.764925, 23.696804>,  <40.886875, 29.994261, 23.714083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955479, 29.764925, 23.696804>,  <41.069817, 29.382698, 23.668007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955479, 29.764925, 23.696804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665477, 0.143887, 0.732418,
		0.689516, 0.257269, -0.677038,
		-0.285845, 0.955568, 0.071994,
		40.869724, 30.051596, 23.718403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663174, 29.835178, 23.646650>,  <41.069817, 29.382698, 23.668007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663174, 29.835178, 23.646650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381451, 30.066956, 23.810698>,  <41.212418, 30.206022, 23.909126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381451, 30.066956, 23.810698>,  <41.663174, 29.835178, 23.646650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381451, 30.066956, 23.810698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635489, 0.257145, 0.728032,
		0.316393, 0.773384, -0.549339,
		-0.704307, 0.579443, 0.410118,
		41.170158, 30.240789, 23.933733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025909, 30.475307, 23.865171>,  <41.663174, 29.835178, 23.646650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025909, 30.475307, 23.865171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683464, 30.438379, 24.068563>,  <41.477997, 30.416224, 24.190599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683464, 30.438379, 24.068563>,  <42.025909, 30.475307, 23.865171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683464, 30.438379, 24.068563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453487, 0.337664, 0.824822,
		-0.247843, 0.936728, -0.247212,
		-0.856109, -0.092319, 0.508482,
		41.426632, 30.410685, 24.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039852, 31.039749, 24.375313>,  <42.025909, 30.475307, 23.865171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039852, 31.039749, 24.375313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763725, 30.777304, 24.497284>,  <41.598049, 30.619837, 24.570467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763725, 30.777304, 24.497284>,  <42.039852, 31.039749, 24.375313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763725, 30.777304, 24.497284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218710, 0.212504, 0.952370,
		-0.689660, 0.724126, -0.003196,
		-0.690315, -0.656113, 0.304929,
		41.556629, 30.580469, 24.588762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652420, 31.422428, 25.027773>,  <42.039852, 31.039749, 24.375313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652420, 31.422428, 25.027773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596355, 31.031246, 25.089682>,  <41.562717, 30.796535, 25.126827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596355, 31.031246, 25.089682>,  <41.652420, 31.422428, 25.027773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596355, 31.031246, 25.089682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230183, 0.119851, 0.965739,
		-0.963001, 0.170984, 0.208310,
		-0.140160, -0.977957, 0.154774,
		41.554306, 30.737860, 25.136114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222748, 31.378231, 25.596853>,  <41.652420, 31.422428, 25.027773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222748, 31.378231, 25.596853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384113, 31.012280, 25.590437>,  <41.480930, 30.792709, 25.586586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384113, 31.012280, 25.590437>,  <41.222748, 31.378231, 25.596853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384113, 31.012280, 25.590437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189976, 0.066592, 0.979528,
		-0.895081, -0.398199, 0.200669,
		0.403410, -0.914879, -0.016043,
		41.505135, 30.737816, 25.585625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867783, 31.085945, 26.194054>,  <41.222748, 31.378231, 25.596853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867783, 31.085945, 26.194054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187645, 30.859829, 26.113068>,  <41.379562, 30.724159, 26.064476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187645, 30.859829, 26.113068>,  <40.867783, 31.085945, 26.194054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187645, 30.859829, 26.113068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103933, -0.201792, 0.973898,
		-0.591393, -0.799828, -0.102612,
		0.799658, -0.565291, -0.202467,
		41.427544, 30.690241, 26.052328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698372, 30.565056, 26.616901>,  <40.867783, 31.085945, 26.194054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698372, 30.565056, 26.616901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082497, 30.518507, 26.515501>,  <41.312969, 30.490578, 26.454660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082497, 30.518507, 26.515501>,  <40.698372, 30.565056, 26.616901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082497, 30.518507, 26.515501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187790, -0.402279, 0.896051,
		-0.206254, -0.908091, -0.364458,
		0.960309, -0.116372, -0.253502,
		41.370590, 30.483595, 26.439451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941906, 29.807205, 26.687445>,  <40.698372, 30.565056, 26.616901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941906, 29.807205, 26.687445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256847, 30.049610, 26.732758>,  <41.445812, 30.195053, 26.759945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256847, 30.049610, 26.732758>,  <40.941906, 29.807205, 26.687445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256847, 30.049610, 26.732758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169655, -0.389632, 0.905210,
		0.592705, -0.693497, -0.409589,
		0.787349, 0.606011, 0.113281,
		41.493053, 30.231413, 26.766743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488258, 29.361128, 26.987938>,  <40.941906, 29.807205, 26.687445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488258, 29.361128, 26.987938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597851, 29.739643, 27.056616>,  <41.663605, 29.966751, 27.097822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597851, 29.739643, 27.056616>,  <41.488258, 29.361128, 26.987938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597851, 29.739643, 27.056616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332132, -0.260640, 0.906507,
		0.902565, -0.191338, -0.385701,
		0.273978, 0.946286, 0.171695,
		41.680046, 30.023529, 27.108124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194870, 29.274086, 27.218300>,  <41.488258, 29.361128, 26.987938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194870, 29.274086, 27.218300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085541, 29.638548, 27.341650>,  <42.019943, 29.857225, 27.415661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085541, 29.638548, 27.341650>,  <42.194870, 29.274086, 27.218300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085541, 29.638548, 27.341650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284318, -0.229737, 0.930798,
		0.918945, 0.342081, -0.196266,
		-0.273319, 0.911154, 0.308376,
		42.003544, 29.911894, 27.434162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839275, 29.562462, 27.465893>,  <42.194870, 29.274086, 27.218300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839275, 29.562462, 27.465893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569294, 29.802752, 27.637272>,  <42.407307, 29.946924, 27.740099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569294, 29.802752, 27.637272>,  <42.839275, 29.562462, 27.465893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569294, 29.802752, 27.637272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447258, -0.128741, 0.885091,
		0.586854, 0.789023, -0.181784,
		-0.674954, 0.600723, 0.428449,
		42.366806, 29.982969, 27.765806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244286, 30.007128, 27.864422>,  <42.839275, 29.562462, 27.465893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244286, 30.007128, 27.864422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869606, 29.994774, 28.003929>,  <42.644798, 29.987362, 28.087633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869606, 29.994774, 28.003929>,  <43.244286, 30.007128, 27.864422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869606, 29.994774, 28.003929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348111, 0.024814, 0.937125,
		-0.037598, 0.999215, -0.012491,
		-0.936699, -0.030885, 0.348770,
		42.588596, 29.985508, 28.108561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264828, 30.498137, 28.458851>,  <43.244286, 30.007128, 27.864422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264828, 30.498137, 28.458851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928356, 30.289816, 28.517067>,  <42.726471, 30.164824, 28.551996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928356, 30.289816, 28.517067>,  <43.264828, 30.498137, 28.458851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928356, 30.289816, 28.517067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227753, -0.097108, 0.968865,
		-0.490452, 0.848137, 0.200299,
		-0.841181, -0.520801, 0.145539,
		42.676003, 30.133575, 28.560728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930000, 30.818058, 29.065252>,  <43.264828, 30.498137, 28.458851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930000, 30.818058, 29.065252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796810, 30.442930, 29.026014>,  <42.716896, 30.217854, 29.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796810, 30.442930, 29.026014>,  <42.930000, 30.818058, 29.065252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796810, 30.442930, 29.026014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204391, -0.173341, 0.963420,
		-0.920516, 0.300748, 0.249400,
		-0.332977, -0.937819, -0.098093,
		42.696918, 30.161585, 28.996586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764317, 30.676426, 29.625109>,  <42.930000, 30.818058, 29.065252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764317, 30.676426, 29.625109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754047, 30.295830, 29.502464>,  <42.747887, 30.067472, 29.428877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754047, 30.295830, 29.502464>,  <42.764317, 30.676426, 29.625109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754047, 30.295830, 29.502464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083963, -0.307682, 0.947777,
		-0.996138, -0.001413, 0.087789,
		-0.025671, -0.951488, -0.306613,
		42.746346, 30.010384, 29.410480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299751, 30.334627, 30.114643>,  <42.764317, 30.676426, 29.625109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299751, 30.334627, 30.114643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495693, 30.045288, 29.919989>,  <42.613258, 29.871685, 29.803196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495693, 30.045288, 29.919989>,  <42.299751, 30.334627, 30.114643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495693, 30.045288, 29.919989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007710, -0.554576, 0.832097,
		-0.871773, -0.411354, -0.266082,
		0.489850, -0.723348, -0.486636,
		42.642647, 29.828283, 29.773998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843338, 29.665249, 30.074776>,  <42.299751, 30.334627, 30.114643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843338, 29.665249, 30.074776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236813, 29.598368, 30.048244>,  <42.472897, 29.558239, 30.032326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236813, 29.598368, 30.048244>,  <41.843338, 29.665249, 30.074776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236813, 29.598368, 30.048244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037199, -0.549850, 0.834435,
		-0.175990, -0.818357, -0.547101,
		0.983689, -0.167204, -0.066326,
		42.531918, 29.548206, 30.028347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891289, 29.023140, 30.350388>,  <41.843338, 29.665249, 30.074776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891289, 29.023140, 30.350388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285141, 29.092993, 30.349457>,  <42.521454, 29.134905, 30.348898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285141, 29.092993, 30.349457>,  <41.891289, 29.023140, 30.350388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285141, 29.092993, 30.349457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089111, -0.490879, 0.866659,
		0.150205, -0.853546, -0.498896,
		0.984631, 0.174633, -0.002328,
		42.580532, 29.145382, 30.348759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184734, 28.367632, 30.483202>,  <41.891289, 29.023140, 30.350388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184734, 28.367632, 30.483202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447784, 28.651859, 30.583305>,  <42.605614, 28.822395, 30.643368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447784, 28.651859, 30.583305>,  <42.184734, 28.367632, 30.483202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447784, 28.651859, 30.583305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079636, -0.395903, 0.914833,
		0.749128, -0.581683, -0.316941,
		0.657621, 0.710567, 0.250259,
		42.645069, 28.865030, 30.658382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615856, 28.077658, 30.938259>,  <42.184734, 28.367632, 30.483202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615856, 28.077658, 30.938259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711807, 28.462599, 30.989393>,  <42.769379, 28.693563, 31.020073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711807, 28.462599, 30.989393>,  <42.615856, 28.077658, 30.938259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711807, 28.462599, 30.989393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256191, -0.189762, 0.947817,
		0.936390, -0.194607, -0.292064,
		0.239875, 0.962350, 0.127835,
		42.783772, 28.751305, 31.027744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302837, 28.069721, 31.231262>,  <42.615856, 28.077658, 30.938259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302837, 28.069721, 31.231262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097130, 28.401121, 31.319914>,  <42.973705, 28.599960, 31.373104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097130, 28.401121, 31.319914>,  <43.302837, 28.069721, 31.231262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097130, 28.401121, 31.319914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178782, -0.149180, 0.972513,
		0.838789, 0.539755, -0.071402,
		-0.514267, 0.828498, 0.221629,
		42.942848, 28.649672, 31.386402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766289, 28.409042, 31.685989>,  <43.302837, 28.069721, 31.231262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766289, 28.409042, 31.685989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396881, 28.551531, 31.742872>,  <43.175236, 28.637024, 31.777002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396881, 28.551531, 31.742872>,  <43.766289, 28.409042, 31.685989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396881, 28.551531, 31.742872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114575, -0.097622, 0.988606,
		0.366045, 0.929288, 0.049342,
		-0.923517, 0.356221, 0.142208,
		43.119827, 28.658398, 31.785534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861183, 28.875792, 32.259861>,  <43.766289, 28.409042, 31.685989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861183, 28.875792, 32.259861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477283, 28.768831, 32.225483>,  <43.246944, 28.704655, 32.204857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477283, 28.768831, 32.225483>,  <43.861183, 28.875792, 32.259861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477283, 28.768831, 32.225483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024622, -0.224706, 0.974115,
		-0.279789, 0.937019, 0.209076,
		-0.959746, -0.267399, -0.085942,
		43.189362, 28.688612, 32.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626102, 28.982307, 32.853500>,  <43.861183, 28.875792, 32.259861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626102, 28.982307, 32.853500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326717, 28.749836, 32.725727>,  <43.147087, 28.610353, 32.649063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326717, 28.749836, 32.725727>,  <43.626102, 28.982307, 32.853500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326717, 28.749836, 32.725727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031034, -0.450442, 0.892266,
		-0.662451, 0.677741, 0.319102,
		-0.748462, -0.581179, -0.319429,
		43.102180, 28.575481, 32.629898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223534, 28.986120, 33.474136>,  <43.626102, 28.982307, 32.853500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223534, 28.986120, 33.474136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126747, 28.692183, 33.220695>,  <43.068676, 28.515820, 33.068630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126747, 28.692183, 33.220695>,  <43.223534, 28.986120, 33.474136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126747, 28.692183, 33.220695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342647, -0.546224, 0.764351,
		-0.907771, 0.402047, -0.119626,
		-0.241963, -0.734845, -0.633606,
		43.054157, 28.471729, 33.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475578, 28.802216, 33.622841>,  <43.223534, 28.986120, 33.474136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475578, 28.802216, 33.622841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734200, 28.527966, 33.489044>,  <42.889374, 28.363415, 33.408768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734200, 28.527966, 33.489044>,  <42.475578, 28.802216, 33.622841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734200, 28.527966, 33.489044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055901, -0.479868, 0.875558,
		-0.760818, -0.547397, -0.348588,
		0.646553, -0.685626, -0.334492,
		42.928165, 28.322277, 33.388695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183155, 29.598896, 33.532864>,  <42.475578, 28.802216, 33.622841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183155, 29.598896, 33.532864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246685, 29.980864, 33.432541>,  <42.284805, 30.210043, 33.372345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246685, 29.980864, 33.432541>,  <42.183155, 29.598896, 33.532864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246685, 29.980864, 33.432541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718138, 0.062594, 0.693080,
		0.677534, -0.290196, -0.675821,
		0.158827, 0.954918, -0.250810,
		42.294334, 30.267340, 33.357296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979630, 29.776840, 33.348820>,  <42.183155, 29.598896, 33.532864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979630, 29.776840, 33.348820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767948, 30.068830, 33.521828>,  <42.640938, 30.244024, 33.625633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767948, 30.068830, 33.521828>,  <42.979630, 29.776840, 33.348820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767948, 30.068830, 33.521828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607760, -0.029599, 0.793569,
		0.592088, 0.682832, -0.427986,
		-0.529206, 0.729976, 0.432523,
		42.609188, 30.287823, 33.651585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488815, 30.234549, 33.716965>,  <42.979630, 29.776840, 33.348820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488815, 30.234549, 33.716965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130981, 30.258602, 33.894096>,  <42.916279, 30.273035, 34.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130981, 30.258602, 33.894096>,  <43.488815, 30.234549, 33.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130981, 30.258602, 33.894096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412320, -0.271104, 0.869767,
		0.172357, 0.960670, 0.217731,
		-0.894587, 0.060136, 0.442830,
		42.862606, 30.276644, 34.026947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428116, 30.672329, 34.341824>,  <43.488815, 30.234549, 33.716965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428116, 30.672329, 34.341824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178425, 30.361855, 34.377323>,  <43.028610, 30.175570, 34.398624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178425, 30.361855, 34.377323>,  <43.428116, 30.672329, 34.341824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178425, 30.361855, 34.377323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430852, -0.247267, 0.867886,
		-0.651696, 0.579995, 0.488772,
		-0.624227, -0.776186, 0.088749,
		42.991158, 30.128998, 34.403950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933052, 30.772242, 34.919491>,  <43.428116, 30.672329, 34.341824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933052, 30.772242, 34.919491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073986, 30.408409, 34.831383>,  <43.158546, 30.190109, 34.778519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073986, 30.408409, 34.831383>,  <42.933052, 30.772242, 34.919491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073986, 30.408409, 34.831383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405216, -0.063889, 0.911986,
		-0.843600, -0.410580, 0.346068,
		0.352334, -0.909583, -0.220270,
		43.179688, 30.135534, 34.765301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765675, 30.504404, 35.482918>,  <42.933052, 30.772242, 34.919491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765675, 30.504404, 35.482918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055862, 30.295383, 35.303749>,  <43.229977, 30.169971, 35.196247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055862, 30.295383, 35.303749>,  <42.765675, 30.504404, 35.482918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055862, 30.295383, 35.303749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489697, -0.065406, 0.869436,
		-0.483621, -0.850096, 0.208441,
		0.725471, -0.522550, -0.447922,
		43.273502, 30.138618, 35.169373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903194, 29.886213, 35.975594>,  <42.765675, 30.504404, 35.482918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903194, 29.886213, 35.975594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216568, 29.963531, 35.739334>,  <43.404594, 30.009922, 35.597580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216568, 29.963531, 35.739334>,  <42.903194, 29.886213, 35.975594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216568, 29.963531, 35.739334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609487, -0.053238, 0.791007,
		0.121455, -0.979695, -0.159521,
		0.783438, 0.193298, -0.590645,
		43.451599, 30.021521, 35.562141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983486, 29.472075, 36.590332>,  <42.903194, 29.886213, 35.975594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983486, 29.472075, 36.590332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066219, 29.318291, 36.950199>,  <43.115860, 29.226021, 37.166119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066219, 29.318291, 36.950199>,  <42.983486, 29.472075, 36.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066219, 29.318291, 36.950199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821671, 0.430918, 0.373050,
		-0.531108, -0.816394, -0.226771,
		0.206836, -0.384461, 0.899671,
		43.128269, 29.202953, 37.220100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477676, 29.183046, 36.831375>,  <42.983486, 29.472075, 36.590332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477676, 29.183046, 36.831375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680309, 29.302485, 37.154907>,  <42.801891, 29.374147, 37.349026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680309, 29.302485, 37.154907>,  <42.477676, 29.183046, 36.831375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680309, 29.302485, 37.154907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771510, 0.575780, 0.270647,
		-0.384897, -0.761129, 0.522051,
		0.506584, 0.298596, 0.808834,
		42.832283, 29.392063, 37.397556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084007, 29.106571, 37.492325>,  <42.477676, 29.183046, 36.831375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084007, 29.106571, 37.492325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349102, 29.397644, 37.563049>,  <42.508160, 29.572289, 37.605484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349102, 29.397644, 37.563049>,  <42.084007, 29.106571, 37.492325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349102, 29.397644, 37.563049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746196, 0.621842, 0.237705,
		0.063027, -0.289468, 0.955110,
		0.662736, 0.727681, 0.176807,
		42.547924, 29.615948, 37.616093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650566, 29.429626, 37.860981>,  <42.084007, 29.106571, 37.492325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650566, 29.429626, 37.860981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945705, 29.682154, 37.765465>,  <42.122787, 29.833670, 37.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945705, 29.682154, 37.765465>,  <41.650566, 29.429626, 37.860981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945705, 29.682154, 37.765465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624362, 0.772790, 0.113880,
		0.256431, 0.065067, 0.964370,
		0.737845, 0.631318, -0.238792,
		42.167061, 29.871550, 37.693829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761948, 29.967400, 38.451897>,  <41.650566, 29.429626, 37.860981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761948, 29.967400, 38.451897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819820, 30.074083, 38.070755>,  <41.854546, 30.138094, 37.842072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819820, 30.074083, 38.070755>,  <41.761948, 29.967400, 38.451897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819820, 30.074083, 38.070755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587364, 0.798117, 0.134208,
		0.796284, 0.540256, 0.272131,
		0.144685, 0.266708, -0.952855,
		41.863228, 30.154097, 37.784897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261116, 30.631042, 38.338066>,  <41.761948, 29.967400, 38.451897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261116, 30.631042, 38.338066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958282, 30.567411, 38.084602>,  <41.776585, 30.529232, 37.932526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958282, 30.567411, 38.084602>,  <42.261116, 30.631042, 38.338066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958282, 30.567411, 38.084602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399310, 0.880326, 0.256083,
		0.517088, 0.446901, -0.730000,
		-0.757081, -0.159079, -0.633658,
		41.731159, 30.519688, 37.894505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113300, 31.275326, 38.068893>,  <42.261116, 30.631042, 38.338066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113300, 31.275326, 38.068893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785439, 31.046188, 38.067394>,  <41.588722, 30.908707, 38.066494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785439, 31.046188, 38.067394>,  <42.113300, 31.275326, 38.068893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785439, 31.046188, 38.067394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499777, 0.711886, 0.493397,
		-0.279971, 0.406288, -0.869796,
		-0.819658, -0.572841, -0.003746,
		41.539539, 30.874336, 38.066269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634777, 31.634731, 37.602966>,  <42.113300, 31.275326, 38.068893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634777, 31.634731, 37.602966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469322, 31.444448, 37.913479>,  <41.370049, 31.330278, 38.099785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469322, 31.444448, 37.913479>,  <41.634777, 31.634731, 37.602966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469322, 31.444448, 37.913479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753393, 0.657569, 0.001522,
		-0.511181, -0.584214, -0.630386,
		-0.413633, -0.475707, 0.776280,
		41.345234, 31.301737, 38.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995071, 31.552336, 37.488304>,  <41.634777, 31.634731, 37.602966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995071, 31.552336, 37.488304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053009, 31.584661, 37.882763>,  <41.087772, 31.604057, 38.119438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053009, 31.584661, 37.882763>,  <40.995071, 31.552336, 37.488304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053009, 31.584661, 37.882763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688336, 0.724190, 0.041752,
		-0.710785, -0.684849, 0.160521,
		0.144842, 0.080816, 0.986149,
		41.096462, 31.608906, 38.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299435, 31.856190, 37.623173>,  <40.995071, 31.552336, 37.488304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299435, 31.856190, 37.623173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551998, 31.890636, 37.931435>,  <40.703537, 31.911304, 38.116394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551998, 31.890636, 37.931435>,  <40.299435, 31.856190, 37.623173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551998, 31.890636, 37.931435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237445, 0.967549, 0.086424,
		-0.738205, -0.237557, 0.631363,
		0.631405, 0.086115, 0.770656,
		40.741421, 31.916471, 38.162632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471317, 32.468567, 38.047169>,  <40.299435, 31.856190, 37.623173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471317, 32.468567, 38.047169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761238, 32.586517, 37.798103>,  <40.935192, 32.657288, 37.648663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761238, 32.586517, 37.798103>,  <40.471317, 32.468567, 38.047169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761238, 32.586517, 37.798103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686635, 0.383322, -0.617735,
		0.056525, 0.875278, 0.480305,
		0.724801, 0.294877, -0.622664,
		40.978680, 32.674980, 37.611305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526749, 33.263763, 37.875160>,  <40.471317, 32.468567, 38.047169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526749, 33.263763, 37.875160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672012, 33.042912, 37.574959>,  <40.759171, 32.910400, 37.394836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672012, 33.042912, 37.574959>,  <40.526749, 33.263763, 37.875160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672012, 33.042912, 37.574959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720537, 0.344260, -0.601923,
		0.590712, 0.759363, -0.272811,
		0.363160, -0.552134, -0.750508,
		40.780960, 32.877270, 37.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698853, 33.779343, 37.170567>,  <40.526749, 33.263763, 37.875160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698853, 33.779343, 37.170567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669426, 33.410923, 37.017590>,  <40.651772, 33.189873, 36.925804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669426, 33.410923, 37.017590>,  <40.698853, 33.779343, 37.170567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669426, 33.410923, 37.017590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656019, 0.333526, -0.677052,
		0.751150, 0.201083, -0.628760,
		-0.073564, -0.921046, -0.382442,
		40.647358, 33.134609, 36.902859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909176, 33.823345, 36.471973>,  <40.698853, 33.779343, 37.170567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909176, 33.823345, 36.471973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679279, 33.500473, 36.525829>,  <40.541340, 33.306747, 36.558144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679279, 33.500473, 36.525829>,  <40.909176, 33.823345, 36.471973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679279, 33.500473, 36.525829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621230, 0.323267, -0.713843,
		0.532680, -0.493913, -0.687242,
		-0.574739, -0.807185, 0.134636,
		40.506859, 33.258316, 36.566219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857803, 33.650173, 35.679653>,  <40.909176, 33.823345, 36.471973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857803, 33.650173, 35.679653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532562, 33.522243, 35.874207>,  <40.337418, 33.445484, 35.990940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532562, 33.522243, 35.874207>,  <40.857803, 33.650173, 35.679653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532562, 33.522243, 35.874207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556435, 0.181595, -0.810804,
		0.170971, -0.929919, -0.325606,
		-0.813111, -0.319802, 0.486392,
		40.288631, 33.426296, 36.020123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366714, 33.371700, 35.155304>,  <40.857803, 33.650173, 35.679653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366714, 33.371700, 35.155304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135860, 33.378712, 35.481888>,  <39.997349, 33.382919, 35.677837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135860, 33.378712, 35.481888>,  <40.366714, 33.371700, 35.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135860, 33.378712, 35.481888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812672, 0.086256, -0.576303,
		-0.080527, -0.996119, -0.035536,
		-0.577131, 0.017529, 0.816463,
		39.962723, 33.383968, 35.726826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801476, 32.936447, 35.044449>,  <40.366714, 33.371700, 35.155304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801476, 32.936447, 35.044449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681347, 33.183632, 35.335087>,  <39.609272, 33.331944, 35.509468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681347, 33.183632, 35.335087>,  <39.801476, 32.936447, 35.044449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681347, 33.183632, 35.335087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879925, 0.114529, -0.461102,
		-0.368158, -0.777824, 0.509362,
		-0.300320, 0.617959, 0.726591,
		39.591251, 33.369019, 35.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141418, 32.655041, 35.201374>,  <39.801476, 32.936447, 35.044449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141418, 32.655041, 35.201374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149162, 33.041821, 35.303062>,  <39.153809, 33.273888, 35.364075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149162, 33.041821, 35.303062>,  <39.141418, 32.655041, 35.201374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149162, 33.041821, 35.303062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898161, 0.128528, -0.420461,
		-0.439240, -0.220190, 0.870967,
		0.019362, 0.966952, 0.254221,
		39.154972, 33.331905, 35.379330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535164, 32.839607, 35.600124>,  <39.141418, 32.655041, 35.201374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535164, 32.839607, 35.600124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683434, 33.174599, 35.439510>,  <38.772396, 33.375595, 35.343143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683434, 33.174599, 35.439510>,  <38.535164, 32.839607, 35.600124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683434, 33.174599, 35.439510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834945, 0.111124, -0.538998,
		-0.406780, 0.535049, 0.740441,
		0.370671, 0.837480, -0.401533,
		38.794636, 33.425842, 35.319050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047722, 33.425236, 35.759193>,  <38.535164, 32.839607, 35.600124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047722, 33.425236, 35.759193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244862, 33.484154, 35.416172>,  <38.363144, 33.519505, 35.210358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244862, 33.484154, 35.416172>,  <38.047722, 33.425236, 35.759193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244862, 33.484154, 35.416172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862774, 0.210481, -0.459694,
		0.112790, 0.966438, 0.230814,
		0.492848, 0.147292, -0.857558,
		38.392715, 33.528339, 35.158905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807114, 34.015522, 35.397797>,  <38.047722, 33.425236, 35.759193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807114, 34.015522, 35.397797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941444, 33.737770, 35.143219>,  <38.022041, 33.571117, 34.990471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941444, 33.737770, 35.143219>,  <37.807114, 34.015522, 35.397797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941444, 33.737770, 35.143219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898253, -0.032728, -0.438259,
		0.283488, 0.718865, -0.634718,
		0.335822, -0.694378, -0.636445,
		38.042191, 33.529457, 34.952286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901276, 34.757984, 35.499645>,  <37.807114, 34.015522, 35.397797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901276, 34.757984, 35.499645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124462, 34.563435, 35.230686>,  <38.258373, 34.446705, 35.069309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124462, 34.563435, 35.230686>,  <37.901276, 34.757984, 35.499645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124462, 34.563435, 35.230686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431230, 0.522335, -0.735668,
		0.709025, 0.700434, 0.081706,
		0.557965, -0.486372, -0.672396,
		38.291851, 34.417522, 35.028969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089382, 35.251217, 35.054642>,  <37.901276, 34.757984, 35.499645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089382, 35.251217, 35.054642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133316, 34.903313, 34.862202>,  <38.159676, 34.694572, 34.746738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133316, 34.903313, 34.862202>,  <38.089382, 35.251217, 35.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133316, 34.903313, 34.862202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554035, 0.348286, -0.756136,
		0.825216, 0.349597, -0.443622,
		0.109836, -0.869758, -0.481100,
		38.166267, 34.642384, 34.717873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084511, 35.465755, 34.383358>,  <38.089382, 35.251217, 35.054642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084511, 35.465755, 34.383358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016529, 35.072212, 34.360947>,  <37.975739, 34.836086, 34.347500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016529, 35.072212, 34.360947>,  <38.084511, 35.465755, 34.383358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016529, 35.072212, 34.360947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561637, 0.143428, -0.814857,
		0.809740, -0.107021, -0.576947,
		-0.169957, -0.983857, -0.056032,
		37.965542, 34.777054, 34.344135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464302, 35.245510, 33.790535>,  <38.084511, 35.465755, 34.383358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464302, 35.245510, 33.790535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168819, 34.984829, 33.859344>,  <37.991531, 34.828419, 33.900631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168819, 34.984829, 33.859344>,  <38.464302, 35.245510, 33.790535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168819, 34.984829, 33.859344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348163, 0.150402, -0.925290,
		0.577146, -0.743408, -0.338004,
		-0.738705, -0.651708, 0.172023,
		37.947208, 34.789318, 33.910950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482632, 36.035439, 34.017979>,  <38.464302, 35.245510, 33.790535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482632, 36.035439, 34.017979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716274, 36.125565, 33.706066>,  <38.856461, 36.179638, 33.518921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716274, 36.125565, 33.706066>,  <38.482632, 36.035439, 34.017979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716274, 36.125565, 33.706066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675430, 0.397847, 0.620896,
		0.450128, -0.889355, 0.080201,
		0.584105, 0.225313, -0.779779,
		38.891506, 36.193157, 33.472134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158512, 35.590385, 34.043495>,  <38.482632, 36.035439, 34.017979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158512, 35.590385, 34.043495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169689, 35.970116, 33.918278>,  <39.176395, 36.197952, 33.843147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169689, 35.970116, 33.918278>,  <39.158512, 35.590385, 34.043495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169689, 35.970116, 33.918278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549857, 0.246938, 0.797922,
		0.834792, -0.194424, -0.515094,
		0.027939, 0.949327, -0.313047,
		39.178070, 36.254913, 33.824364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889149, 35.878002, 33.914753>,  <39.158512, 35.590385, 34.043495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889149, 35.878002, 33.914753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622765, 36.157032, 34.020500>,  <39.462933, 36.324451, 34.083946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622765, 36.157032, 34.020500>,  <39.889149, 35.878002, 33.914753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622765, 36.157032, 34.020500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569687, 0.246771, 0.783939,
		0.481617, 0.672678, -0.561738,
		-0.665959, 0.697574, 0.264367,
		39.422977, 36.366302, 34.099812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520786, 36.261585, 33.914173>,  <39.889149, 35.878002, 33.914753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520786, 36.261585, 33.914173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903786, 36.163837, 33.975471>,  <41.133583, 36.105186, 34.012249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903786, 36.163837, 33.975471>,  <40.520786, 36.261585, 33.914173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903786, 36.163837, 33.975471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259274, 0.961970, -0.085966,
		-0.126408, 0.122044, 0.984442,
		0.957496, -0.244373, 0.153243,
		41.191036, 36.090527, 34.021446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782944, 36.547684, 34.494137>,  <40.520786, 36.261585, 33.914173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782944, 36.547684, 34.494137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067017, 36.505863, 34.215652>,  <41.237461, 36.480770, 34.048561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067017, 36.505863, 34.215652>,  <40.782944, 36.547684, 34.494137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067017, 36.505863, 34.215652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205331, 0.976677, 0.062777,
		0.673409, -0.187537, 0.715088,
		0.710183, -0.104555, -0.696210,
		41.280071, 36.474495, 34.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571312, 36.814453, 34.627033>,  <40.782944, 36.547684, 34.494137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571312, 36.814453, 34.627033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469006, 36.852551, 34.242218>,  <41.407623, 36.875408, 34.011330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469006, 36.852551, 34.242218>,  <41.571312, 36.814453, 34.627033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469006, 36.852551, 34.242218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083144, 0.993615, 0.076269,
		0.963157, -0.060481, -0.262051,
		-0.255765, 0.095247, -0.962036,
		41.392277, 36.881126, 33.953606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115459, 37.226871, 34.225628>,  <41.571312, 36.814453, 34.627033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115459, 37.226871, 34.225628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725109, 37.233467, 34.138554>,  <41.490898, 37.237427, 34.086308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725109, 37.233467, 34.138554>,  <42.115459, 37.226871, 34.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725109, 37.233467, 34.138554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047078, 0.957782, 0.283614,
		0.213175, 0.287021, -0.933903,
		-0.975879, 0.016493, -0.217688,
		41.432346, 37.238415, 34.073246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450073, 36.657467, 33.739517>,  <42.115459, 37.226871, 34.225628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450073, 36.657467, 33.739517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846024, 36.709599, 33.762001>,  <43.083595, 36.740879, 33.775490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846024, 36.709599, 33.762001>,  <42.450073, 36.657467, 33.739517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846024, 36.709599, 33.762001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112984, -0.963229, 0.243772,
		0.085911, -0.234954, -0.968202,
		0.989876, 0.130334, 0.056206,
		43.142986, 36.748699, 33.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758831, 36.085217, 33.343582>,  <42.450073, 36.657467, 33.739517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758831, 36.085217, 33.343582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978127, 36.239017, 33.640659>,  <43.109703, 36.331299, 33.818905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978127, 36.239017, 33.640659>,  <42.758831, 36.085217, 33.343582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978127, 36.239017, 33.640659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109838, -0.913460, 0.391825,
		0.829077, -0.133238, -0.543027,
		0.548239, 0.384499, 0.742694,
		43.142597, 36.354366, 33.863468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197563, 35.582813, 33.458401>,  <42.758831, 36.085217, 33.343582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197563, 35.582813, 33.458401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231850, 35.780064, 33.804691>,  <43.252422, 35.898415, 34.012466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231850, 35.780064, 33.804691>,  <43.197563, 35.582813, 33.458401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231850, 35.780064, 33.804691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137793, -0.866438, 0.479894,
		0.986745, 0.078158, -0.142214,
		0.085712, 0.493129, 0.865724,
		43.257565, 35.928001, 34.064407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925323, 35.634937, 33.754974>,  <43.197563, 35.582813, 33.458401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925323, 35.634937, 33.754974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618210, 35.588860, 34.007084>,  <43.433941, 35.561214, 34.158348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618210, 35.588860, 34.007084>,  <43.925323, 35.634937, 33.754974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618210, 35.588860, 34.007084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264473, -0.952968, 0.148005,
		0.583581, 0.280326, 0.762136,
		-0.767781, -0.115191, 0.630273,
		43.387875, 35.554302, 34.196167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063416, 35.021358, 34.108490>,  <43.925323, 35.634937, 33.754974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063416, 35.021358, 34.108490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685188, 35.077301, 34.226028>,  <43.458252, 35.110867, 34.296551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685188, 35.077301, 34.226028>,  <44.063416, 35.021358, 34.108490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685188, 35.077301, 34.226028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025908, -0.867722, 0.496374,
		0.324401, 0.476967, 0.816864,
		-0.945565, 0.139861, 0.293848,
		43.401520, 35.119259, 34.314182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567364, 34.524216, 34.348431>,  <44.063416, 35.021358, 34.108490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567364, 34.524216, 34.348431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558334, 34.429142, 34.736862>,  <43.552917, 34.372097, 34.969921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558334, 34.429142, 34.736862>,  <43.567364, 34.524216, 34.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558334, 34.429142, 34.736862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431446, 0.878537, 0.205003,
		-0.901856, -0.414340, -0.122383,
		-0.022577, -0.237685, 0.971080,
		43.551559, 34.357838, 35.028187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840103, 34.593559, 34.669102>,  <43.567364, 34.524216, 34.348431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840103, 34.593559, 34.669102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137421, 34.665260, 34.926903>,  <43.315811, 34.708279, 35.081581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137421, 34.665260, 34.926903>,  <42.840103, 34.593559, 34.669102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137421, 34.665260, 34.926903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444661, 0.852176, 0.275813,
		-0.499789, -0.491595, 0.713124,
		0.743295, 0.179250, 0.644501,
		43.360409, 34.719036, 35.120255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659924, 34.802116, 35.424755>,  <42.840103, 34.593559, 34.669102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659924, 34.802116, 35.424755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003468, 34.971970, 35.310181>,  <43.209595, 35.073883, 35.241436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003468, 34.971970, 35.310181>,  <42.659924, 34.802116, 35.424755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003468, 34.971970, 35.310181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484322, 0.855257, -0.184304,
		0.166713, 0.297018, 0.940206,
		0.858859, 0.424636, -0.286435,
		43.261124, 35.099361, 35.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523445, 35.464870, 35.161507>,  <42.659924, 34.802116, 35.424755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523445, 35.464870, 35.161507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912849, 35.468334, 35.070118>,  <43.146492, 35.470413, 35.015285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912849, 35.468334, 35.070118>,  <42.523445, 35.464870, 35.161507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912849, 35.468334, 35.070118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093427, 0.927118, -0.362937,
		0.208677, 0.374669, 0.903370,
		0.973512, 0.008662, -0.228473,
		43.204903, 35.470932, 35.001575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968094, 36.038532, 35.471077>,  <42.523445, 35.464870, 35.161507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968094, 36.038532, 35.471077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110306, 35.919781, 35.116573>,  <43.195633, 35.848530, 34.903870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110306, 35.919781, 35.116573>,  <42.968094, 36.038532, 35.471077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110306, 35.919781, 35.116573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055433, 0.953242, -0.297080,
		0.933020, 0.056492, 0.355362,
		0.355529, -0.296880, -0.886263,
		43.216965, 35.830715, 34.850693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399834, 36.584480, 35.254761>,  <42.968094, 36.038532, 35.471077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399834, 36.584480, 35.254761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372318, 36.390507, 34.906025>,  <43.355808, 36.274120, 34.696785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372318, 36.390507, 34.906025>,  <43.399834, 36.584480, 35.254761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372318, 36.390507, 34.906025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088009, 0.867551, -0.489498,
		0.993742, -0.110403, -0.017000,
		-0.068790, -0.484938, -0.871839,
		43.351681, 36.245026, 34.644474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921150, 36.745590, 34.841419>,  <43.399834, 36.584480, 35.254761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921150, 36.745590, 34.841419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653614, 36.646278, 34.561131>,  <43.493092, 36.586693, 34.392956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653614, 36.646278, 34.561131>,  <43.921150, 36.745590, 34.841419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653614, 36.646278, 34.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021597, 0.935697, -0.352144,
		0.743092, -0.250661, -0.620470,
		-0.668840, -0.248276, -0.700723,
		43.452961, 36.571796, 34.350914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263569, 37.022278, 34.239567>,  <43.921150, 36.745590, 34.841419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263569, 37.022278, 34.239567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452923, 37.374615, 34.241467>,  <44.566536, 37.586018, 34.242607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452923, 37.374615, 34.241467>,  <44.263569, 37.022278, 34.239567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452923, 37.374615, 34.241467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868200, -0.465664, -0.171427,
		-0.148789, 0.085273, -0.985186,
		0.473383, 0.880844, 0.004749,
		44.594936, 37.638866, 34.242889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677254, 37.060375, 33.658920>,  <44.263569, 37.022278, 34.239567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677254, 37.060375, 33.658920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842564, 37.330791, 33.902946>,  <44.941750, 37.493042, 34.049362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842564, 37.330791, 33.902946>,  <44.677254, 37.060375, 33.658920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842564, 37.330791, 33.902946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896404, -0.419896, -0.141943,
		0.160204, 0.605525, -0.779535,
		0.413273, 0.676038, 0.610064,
		44.966545, 37.533604, 34.085964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071186, 37.579704, 33.264008>,  <44.677254, 37.060375, 33.658920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071186, 37.579704, 33.264008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184700, 37.460579, 33.628593>,  <45.252808, 37.389103, 33.847347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184700, 37.460579, 33.628593>,  <45.071186, 37.579704, 33.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184700, 37.460579, 33.628593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775412, -0.487915, -0.400844,
		0.564097, 0.820515, 0.092471,
		0.283780, -0.297817, 0.911468,
		45.269833, 37.371235, 33.902035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844189, 37.669224, 33.236412>,  <45.071186, 37.579704, 33.264008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844189, 37.669224, 33.236412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742054, 37.398956, 33.513039>,  <45.680775, 37.236794, 33.679016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742054, 37.398956, 33.513039>,  <45.844189, 37.669224, 33.236412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742054, 37.398956, 33.513039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825435, -0.524792, -0.207967,
		0.503448, 0.517745, 0.691722,
		-0.255336, -0.675672, 0.691571,
		45.665455, 37.196255, 33.720509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384159, 37.550240, 33.773682>,  <45.844189, 37.669224, 33.236412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384159, 37.550240, 33.773682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175034, 37.213200, 33.721996>,  <46.049557, 37.010975, 33.690987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175034, 37.213200, 33.721996>,  <46.384159, 37.550240, 33.773682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175034, 37.213200, 33.721996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850531, -0.505455, -0.145299,
		0.057120, -0.185860, 0.980915,
		-0.522813, -0.842598, -0.129209,
		46.018188, 36.960419, 33.683235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748047, 37.037941, 34.137596>,  <46.384159, 37.550240, 33.773682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748047, 37.037941, 34.137596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554043, 36.848137, 33.843765>,  <46.437641, 36.734253, 33.667465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554043, 36.848137, 33.843765>,  <46.748047, 37.037941, 34.137596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554043, 36.848137, 33.843765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823034, -0.531611, -0.200014,
		-0.295601, -0.701591, 0.648376,
		-0.485011, -0.474511, -0.734577,
		46.408539, 36.705784, 33.623390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606419, 36.297726, 34.125656>,  <46.748047, 37.037941, 34.137596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606419, 36.297726, 34.125656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702396, 36.437473, 33.763359>,  <46.759983, 36.521324, 33.545982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702396, 36.437473, 33.763359>,  <46.606419, 36.297726, 34.125656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702396, 36.437473, 33.763359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771865, -0.634510, -0.040274,
		-0.588772, -0.689447, -0.421913,
		0.239941, 0.349372, -0.905742,
		46.774380, 36.542286, 33.491638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600555, 35.763756, 33.502438>,  <46.606419, 36.297726, 34.125656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600555, 35.763756, 33.502438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873135, 36.052711, 33.455479>,  <47.036682, 36.226086, 33.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873135, 36.052711, 33.455479>,  <46.600555, 35.763756, 33.502438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873135, 36.052711, 33.455479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731865, -0.672889, 0.107678,
		-0.001208, -0.159294, -0.987230,
		0.681449, 0.722389, -0.117395,
		47.077568, 36.269428, 33.420261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142200, 35.292374, 33.610806>,  <46.600555, 35.763756, 33.502438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142200, 35.292374, 33.610806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924660, 35.474056, 33.893059>,  <45.794136, 35.583065, 34.062412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924660, 35.474056, 33.893059>,  <46.142200, 35.292374, 33.610806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924660, 35.474056, 33.893059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802777, -0.036608, -0.595155,
		-0.244492, -0.890143, 0.384537,
		-0.543850, 0.454208, 0.705636,
		45.761505, 35.610317, 34.104752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540009, 34.849464, 33.919796>,  <46.142200, 35.292374, 33.610806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540009, 34.849464, 33.919796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482792, 35.244942, 33.937801>,  <45.448463, 35.482227, 33.948605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482792, 35.244942, 33.937801>,  <45.540009, 34.849464, 33.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482792, 35.244942, 33.937801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840337, -0.097298, -0.533261,
		-0.522851, -0.114109, 0.844752,
		-0.143042, 0.988692, 0.045018,
		45.439880, 35.541550, 33.951305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158585, 34.362667, 34.214172>,  <45.540009, 34.849464, 33.919796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.158585, 34.362667, 34.214172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873005, 34.583275, 34.386734>,  <45.701656, 34.715637, 34.490269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873005, 34.583275, 34.386734>,  <46.158585, 34.362667, 34.214172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873005, 34.583275, 34.386734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566298, -0.092456, -0.818998,
		-0.411805, -0.829025, 0.378331,
		-0.713949, 0.551516, 0.431402,
		45.658821, 34.748730, 34.516155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338600, 34.450222, 34.836185>,  <46.158585, 34.362667, 34.214172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338600, 34.450222, 34.836185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516121, 34.724754, 35.066662>,  <46.622631, 34.889473, 35.204948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516121, 34.724754, 35.066662>,  <46.338600, 34.450222, 34.836185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516121, 34.724754, 35.066662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771890, -0.619403, 0.143266,
		0.455223, 0.381176, -0.804660,
		0.443799, 0.686327, 0.576192,
		46.649261, 34.930653, 35.239521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012970, 34.526695, 34.509808>,  <46.338600, 34.450222, 34.836185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012970, 34.526695, 34.509808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019081, 34.631561, 34.895767>,  <47.022747, 34.694481, 35.127342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019081, 34.631561, 34.895767>,  <47.012970, 34.526695, 34.509808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019081, 34.631561, 34.895767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843253, -0.521941, 0.128461,
		0.537300, 0.811695, -0.229042,
		0.015276, 0.262162, 0.964903,
		47.023663, 34.710209, 35.185238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.586143, 34.945133, 34.664913>,  <47.012970, 34.526695, 34.509808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.586143, 34.945133, 34.664913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504932, 34.757645, 35.008793>,  <47.456203, 34.645153, 35.215118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504932, 34.757645, 35.008793>,  <47.586143, 34.945133, 34.664913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504932, 34.757645, 35.008793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903768, -0.427570, -0.019682,
		0.376806, 0.772970, 0.510426,
		-0.203030, -0.468723, 0.859697,
		47.444023, 34.617027, 35.266701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.522396, 28.091280, 25.724041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196983, 28.129795, 25.953440>,  <36.001736, 28.152905, 26.091078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196983, 28.129795, 25.953440>,  <36.522396, 28.091280, 25.724041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196983, 28.129795, 25.953440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533612, -0.268384, 0.802015,
		0.231143, 0.958488, 0.166957,
		-0.813530, 0.096290, 0.573495,
		35.952923, 28.158682, 26.125488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771481, 28.406988, 26.323454>,  <36.522396, 28.091280, 25.724041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771481, 28.406988, 26.323454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423901, 28.242666, 26.433844>,  <36.215351, 28.144073, 26.500076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423901, 28.242666, 26.433844>,  <36.771481, 28.406988, 26.323454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423901, 28.242666, 26.433844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390712, -0.227198, 0.892034,
		-0.303751, 0.882962, 0.357930,
		-0.868953, -0.410804, 0.275972,
		36.163216, 28.119425, 26.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556549, 28.834707, 26.838148>,  <36.771481, 28.406988, 26.323454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556549, 28.834707, 26.838148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380993, 28.479702, 26.894289>,  <36.275661, 28.266699, 26.927975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380993, 28.479702, 26.894289>,  <36.556549, 28.834707, 26.838148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380993, 28.479702, 26.894289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345561, -0.022527, 0.938126,
		-0.829437, 0.460232, 0.316577,
		-0.438887, -0.887513, 0.140353,
		36.249329, 28.213448, 26.936396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279705, 28.943647, 27.498678>,  <36.556549, 28.834707, 26.838148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279705, 28.943647, 27.498678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251801, 28.547651, 27.449596>,  <36.235058, 28.310055, 27.420147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251801, 28.547651, 27.449596>,  <36.279705, 28.943647, 27.498678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251801, 28.547651, 27.449596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387451, -0.140240, 0.911161,
		-0.919247, 0.016023, 0.393355,
		-0.069764, -0.989988, -0.122707,
		36.230873, 28.250654, 27.412785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036552, 28.750105, 28.111113>,  <36.279705, 28.943647, 27.498678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036552, 28.750105, 28.111113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195015, 28.413872, 27.963339>,  <36.290092, 28.212132, 27.874674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195015, 28.413872, 27.963339>,  <36.036552, 28.750105, 28.111113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195015, 28.413872, 27.963339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426437, -0.187888, 0.884788,
		-0.813148, -0.508057, 0.284021,
		0.396159, -0.840581, -0.369435,
		36.313862, 28.161697, 27.852509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034271, 28.381510, 28.663008>,  <36.036552, 28.750105, 28.111113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034271, 28.381510, 28.663008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284077, 28.176699, 28.427109>,  <36.433960, 28.053812, 28.285568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284077, 28.176699, 28.427109>,  <36.034271, 28.381510, 28.663008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284077, 28.176699, 28.427109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582367, -0.197856, 0.788481,
		-0.520410, -0.835871, 0.174624,
		0.624518, -0.512028, -0.589750,
		36.471432, 28.023090, 28.250183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087429, 27.657377, 28.895664>,  <36.034271, 28.381510, 28.663008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087429, 27.657377, 28.895664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419346, 27.754368, 28.694605>,  <36.618496, 27.812563, 28.573969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419346, 27.754368, 28.694605>,  <36.087429, 27.657377, 28.895664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419346, 27.754368, 28.694605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555519, -0.272742, 0.785500,
		0.053372, -0.931030, -0.361019,
		0.829790, 0.242476, -0.502648,
		36.668282, 27.827110, 28.543810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547947, 27.089977, 28.999247>,  <36.087429, 27.657377, 28.895664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547947, 27.089977, 28.999247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795307, 27.375586, 28.867945>,  <36.943726, 27.546949, 28.789164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795307, 27.375586, 28.867945>,  <36.547947, 27.089977, 28.999247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795307, 27.375586, 28.867945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676626, -0.271328, 0.684513,
		0.399691, -0.645413, -0.650915,
		0.618405, 0.714020, -0.328256,
		36.980827, 27.589792, 28.769468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248451, 26.746824, 28.915739>,  <36.547947, 27.089977, 28.999247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248451, 26.746824, 28.915739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318714, 27.140018, 28.937225>,  <37.360870, 27.375935, 28.950117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318714, 27.140018, 28.937225>,  <37.248451, 26.746824, 28.915739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318714, 27.140018, 28.937225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804126, -0.174743, 0.568195,
		0.567913, -0.056615, -0.821139,
		0.175657, 0.982985, 0.053714,
		37.371410, 27.434914, 28.953339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990910, 26.886658, 28.809053>,  <37.248451, 26.746824, 28.915739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990910, 26.886658, 28.809053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861755, 27.193691, 29.030525>,  <37.784264, 27.377911, 29.163408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861755, 27.193691, 29.030525>,  <37.990910, 26.886658, 28.809053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861755, 27.193691, 29.030525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787888, -0.106134, 0.606603,
		0.524382, 0.632103, -0.570500,
		-0.322886, 0.767582, 0.553681,
		37.764889, 27.423965, 29.196630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619701, 27.082357, 29.025122>,  <37.990910, 26.886658, 28.809053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619701, 27.082357, 29.025122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347095, 27.280787, 29.240326>,  <38.183533, 27.399843, 29.369448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347095, 27.280787, 29.240326>,  <38.619701, 27.082357, 29.025122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347095, 27.280787, 29.240326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567168, -0.106543, 0.816682,
		0.462455, 0.861719, -0.208746,
		-0.681510, 0.496073, 0.538011,
		38.142643, 27.429609, 29.401730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094574, 27.527382, 29.448805>,  <38.619701, 27.082357, 29.025122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094574, 27.527382, 29.448805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726089, 27.488838, 29.599581>,  <38.504997, 27.465712, 29.690046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726089, 27.488838, 29.599581>,  <39.094574, 27.527382, 29.448805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726089, 27.488838, 29.599581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388860, -0.259243, 0.884071,
		0.012532, 0.960993, 0.276288,
		-0.921212, -0.096358, 0.376941,
		38.449726, 27.459930, 29.712664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042439, 28.063612, 29.908293>,  <39.094574, 27.527382, 29.448805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042439, 28.063612, 29.908293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785973, 27.775248, 30.013506>,  <38.632092, 27.602228, 30.076633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785973, 27.775248, 30.013506>,  <39.042439, 28.063612, 29.908293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785973, 27.775248, 30.013506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430687, -0.054356, 0.900863,
		-0.635146, 0.690891, 0.345339,
		-0.641169, -0.720913, 0.263033,
		38.593620, 27.558973, 30.092417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927647, 28.205557, 30.575811>,  <39.042439, 28.063612, 29.908293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927647, 28.205557, 30.575811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788414, 27.831276, 30.552832>,  <38.704872, 27.606709, 30.539043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788414, 27.831276, 30.552832>,  <38.927647, 28.205557, 30.575811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788414, 27.831276, 30.552832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253174, -0.152833, 0.955272,
		-0.902629, 0.317972, 0.290094,
		-0.348086, -0.935701, -0.057449,
		38.683987, 27.550566, 30.535597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598541, 28.037247, 31.191532>,  <38.927647, 28.205557, 30.575811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598541, 28.037247, 31.191532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689194, 27.681652, 31.032366>,  <38.743584, 27.468294, 30.936865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689194, 27.681652, 31.032366>,  <38.598541, 28.037247, 31.191532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689194, 27.681652, 31.032366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326839, -0.315445, 0.890882,
		-0.917506, -0.331954, 0.219067,
		0.226628, -0.888989, -0.397918,
		38.757183, 27.414955, 30.912991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194443, 27.641954, 31.545364>,  <38.598541, 28.037247, 31.191532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194443, 27.641954, 31.545364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475296, 27.390450, 31.411697>,  <38.643806, 27.239546, 31.331497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475296, 27.390450, 31.411697>,  <38.194443, 27.641954, 31.545364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475296, 27.390450, 31.411697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312049, -0.150125, 0.938130,
		-0.640029, -0.762967, 0.090798,
		0.702131, -0.628764, -0.334168,
		38.685936, 27.201820, 31.311447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180843, 27.064236, 32.048435>,  <38.194443, 27.641954, 31.545364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180843, 27.064236, 32.048435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524109, 27.118521, 31.850389>,  <38.730068, 27.151091, 31.731564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.524109, 27.118521, 31.850389>,  <38.180843, 27.064236, 32.048435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524109, 27.118521, 31.850389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513056, -0.192824, 0.836417,
		0.018042, -0.971803, -0.235102,
		0.858166, 0.135711, -0.495110,
		38.781559, 27.159233, 31.701857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431187, 26.478420, 32.262028>,  <38.180843, 27.064236, 32.048435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431187, 26.478420, 32.262028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.723408, 26.731785, 32.159981>,  <38.898739, 26.883802, 32.098751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.723408, 26.731785, 32.159981>,  <38.431187, 26.478420, 32.262028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723408, 26.731785, 32.159981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453847, -0.171241, 0.874471,
		0.510213, -0.754631, -0.412571,
		0.730552, 0.633411, -0.255118,
		38.942574, 26.921808, 32.083447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005684, 26.174606, 32.469131>,  <38.431187, 26.478420, 32.262028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005684, 26.174606, 32.469131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110317, 26.559084, 32.434078>,  <39.173100, 26.789770, 32.413048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110317, 26.559084, 32.434078>,  <39.005684, 26.174606, 32.469131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110317, 26.559084, 32.434078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532806, -0.068104, 0.843493,
		0.804792, -0.267336, -0.529945,
		0.261588, 0.961194, -0.087629,
		39.188793, 26.847443, 32.407791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685993, 26.286409, 32.848515>,  <39.005684, 26.174606, 32.469131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685993, 26.286409, 32.848515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560829, 26.664469, 32.811020>,  <39.485733, 26.891304, 32.788525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560829, 26.664469, 32.811020>,  <39.685993, 26.286409, 32.848515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560829, 26.664469, 32.811020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363891, 0.210457, 0.907354,
		0.877310, 0.249809, -0.409784,
		-0.312907, 0.945147, -0.093733,
		39.466957, 26.948013, 32.782902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202621, 26.779512, 33.004814>,  <39.685993, 26.286409, 32.848515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202621, 26.779512, 33.004814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868874, 26.997917, 33.034996>,  <39.668625, 27.128960, 33.053104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868874, 26.997917, 33.034996>,  <40.202621, 26.779512, 33.004814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868874, 26.997917, 33.034996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306288, 0.345470, 0.887039,
		0.458266, 0.763232, -0.455488,
		-0.834374, 0.546010, 0.075451,
		39.618561, 27.161720, 33.057632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855286, 26.600681, 32.911602>,  <40.202621, 26.779512, 33.004814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855286, 26.600681, 32.911602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.237389, 26.695408, 32.840717>,  <41.466652, 26.752245, 32.798187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.237389, 26.695408, 32.840717>,  <40.855286, 26.600681, 32.911602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237389, 26.695408, 32.840717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109046, -0.274945, -0.955256,
		-0.274945, 0.931838, -0.236819,
		0.955256, 0.236819, -0.177207,
		41.523964, 26.766453, 32.787556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809677, 27.133928, 32.349407>,  <40.855286, 26.600681, 32.911602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809677, 27.133928, 32.349407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173153, 26.966938, 32.349201>,  <41.391239, 26.866743, 32.349079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173153, 26.966938, 32.349201>,  <40.809677, 27.133928, 32.349407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173153, 26.966938, 32.349201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000451, 0.000252, -1.000000,
		0.417478, 0.908687, 0.000041,
		0.908687, -0.417478, -0.000515,
		41.445759, 26.841694, 32.349049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191845, 27.593840, 31.951355>,  <40.809677, 27.133928, 32.349407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191845, 27.593840, 31.951355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.383560, 27.242788, 31.948381>,  <41.498589, 27.032158, 31.946598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.383560, 27.242788, 31.948381>,  <41.191845, 27.593840, 31.951355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383560, 27.242788, 31.948381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187070, -0.093879, -0.977850,
		0.857490, 0.470061, -0.209173,
		0.479286, -0.877627, -0.007434,
		41.527348, 26.979500, 31.946152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676117, 27.739452, 31.462900>,  <41.191845, 27.593840, 31.951355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676117, 27.739452, 31.462900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.643154, 27.342268, 31.496933>,  <41.623379, 27.103958, 31.517353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.643154, 27.342268, 31.496933>,  <41.676117, 27.739452, 31.462900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643154, 27.342268, 31.496933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068149, -0.079560, -0.994498,
		0.994266, -0.087748, -0.061113,
		-0.082404, -0.992960, 0.085084,
		41.618435, 27.044380, 31.522457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107765, 27.481415, 30.977123>,  <41.676117, 27.739452, 31.462900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107765, 27.481415, 30.977123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.832073, 27.199759, 31.045414>,  <41.666656, 27.030766, 31.086388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.832073, 27.199759, 31.045414>,  <42.107765, 27.481415, 30.977123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832073, 27.199759, 31.045414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161480, -0.080419, -0.983594,
		0.706318, -0.705492, -0.058278,
		-0.689231, -0.704141, 0.170725,
		41.625305, 26.988516, 31.096632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313030, 26.956474, 30.636644>,  <42.107765, 27.481415, 30.977123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313030, 26.956474, 30.636644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.927120, 26.878315, 30.707104>,  <41.695576, 26.831419, 30.749380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.927120, 26.878315, 30.707104>,  <42.313030, 26.956474, 30.636644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927120, 26.878315, 30.707104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131093, -0.223449, -0.965860,
		0.228090, -0.954929, 0.189962,
		-0.964774, -0.195401, 0.176151,
		41.637688, 26.819695, 30.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172020, 26.273443, 30.247545>,  <42.313030, 26.956474, 30.636644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172020, 26.273443, 30.247545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.830421, 26.474241, 30.302223>,  <41.625462, 26.594721, 30.335030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.830421, 26.474241, 30.302223>,  <42.172020, 26.273443, 30.247545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830421, 26.474241, 30.302223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113990, 0.075821, -0.990584,
		-0.507634, -0.861540, -0.007529,
		-0.853999, 0.501996, 0.136697,
		41.574223, 26.624840, 30.343233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665337, 25.980167, 29.775396>,  <42.172020, 26.273443, 30.247545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665337, 25.980167, 29.775396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.502182, 26.336140, 29.857029>,  <41.404289, 26.549723, 29.906010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.502182, 26.336140, 29.857029>,  <41.665337, 25.980167, 29.775396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502182, 26.336140, 29.857029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416257, 0.017690, -0.909075,
		-0.812626, -0.455748, 0.363225,
		-0.407883, 0.889933, 0.204083,
		41.379818, 26.603119, 29.918255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065666, 25.910847, 29.473520>,  <41.665337, 25.980167, 29.775396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065666, 25.910847, 29.473520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.057423, 26.302771, 29.553072>,  <41.052479, 26.537924, 29.600803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.057423, 26.302771, 29.553072>,  <41.065666, 25.910847, 29.473520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057423, 26.302771, 29.553072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485359, 0.164105, -0.858776,
		-0.874072, -0.114224, 0.472177,
		-0.020606, 0.979807, 0.198879,
		41.051239, 26.596712, 29.612736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376667, 26.028673, 29.375921>,  <41.065666, 25.910847, 29.473520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376667, 26.028673, 29.375921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.604855, 26.355291, 29.340549>,  <40.741768, 26.551262, 29.319326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.604855, 26.355291, 29.340549>,  <40.376667, 26.028673, 29.375921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604855, 26.355291, 29.340549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510918, 0.268506, -0.816619,
		-0.643063, 0.511035, 0.570362,
		0.570467, 0.816546, -0.088431,
		40.775993, 26.600256, 29.314020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007233, 26.647148, 29.531492>,  <40.376667, 26.028673, 29.375921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007233, 26.647148, 29.531492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299156, 26.762987, 29.283779>,  <40.474312, 26.832491, 29.135151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299156, 26.762987, 29.283779>,  <40.007233, 26.647148, 29.531492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299156, 26.762987, 29.283779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678914, 0.200558, -0.706295,
		-0.080339, 0.935900, 0.342981,
		0.729809, 0.289598, -0.619283,
		40.518101, 26.849867, 29.097994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732880, 27.218279, 29.300146>,  <40.007233, 26.647148, 29.531492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732880, 27.218279, 29.300146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014828, 27.103653, 29.040596>,  <40.183998, 27.034878, 28.884867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014828, 27.103653, 29.040596>,  <39.732880, 27.218279, 29.300146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014828, 27.103653, 29.040596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630414, 0.166265, -0.758244,
		0.325170, 0.943524, -0.063458,
		0.704870, -0.286564, -0.648875,
		40.226288, 27.017683, 28.845934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615856, 27.657959, 28.761774>,  <39.732880, 27.218279, 29.300146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615856, 27.657959, 28.761774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846329, 27.386545, 28.579523>,  <39.984612, 27.223696, 28.470173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846329, 27.386545, 28.579523>,  <39.615856, 27.657959, 28.761774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846329, 27.386545, 28.579523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511496, 0.135445, -0.848543,
		0.637480, 0.721972, -0.269028,
		0.576186, -0.678537, -0.455629,
		40.019184, 27.182983, 28.442835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998081, 27.955233, 28.151829>,  <39.615856, 27.657959, 28.761774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998081, 27.955233, 28.151829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.958862, 27.560310, 28.101845>,  <39.935329, 27.323357, 28.071854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.958862, 27.560310, 28.101845>,  <39.998081, 27.955233, 28.151829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958862, 27.560310, 28.101845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442166, 0.155710, -0.883314,
		0.891558, -0.031354, -0.451820,
		-0.098048, -0.987305, -0.124961,
		39.929447, 27.264118, 28.064356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198200, 27.902142, 27.489569>,  <39.998081, 27.955233, 28.151829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198200, 27.902142, 27.489569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.034241, 27.540657, 27.539038>,  <39.935867, 27.323767, 27.568718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.034241, 27.540657, 27.539038>,  <40.198200, 27.902142, 27.489569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034241, 27.540657, 27.539038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431038, 0.072421, -0.899423,
		0.803861, -0.421976, -0.419218,
		-0.409895, -0.903710, 0.123671,
		39.911274, 27.269545, 27.576139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389408, 27.461355, 26.918804>,  <40.198200, 27.902142, 27.489569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389408, 27.461355, 26.918804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041111, 27.334131, 27.068819>,  <39.832134, 27.257797, 27.158827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041111, 27.334131, 27.068819>,  <40.389408, 27.461355, 26.918804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041111, 27.334131, 27.068819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378853, -0.052322, -0.923977,
		0.313501, -0.946626, -0.074939,
		-0.870740, -0.318058, 0.375035,
		39.779888, 27.238714, 27.181330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191246, 27.065506, 26.437222>,  <40.389408, 27.461355, 26.918804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191246, 27.065506, 26.437222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848915, 27.136051, 26.631727>,  <39.643517, 27.178379, 26.748430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848915, 27.136051, 26.631727>,  <40.191246, 27.065506, 26.437222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848915, 27.136051, 26.631727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469203, 0.131012, -0.873318,
		-0.217729, -0.975567, -0.029373,
		-0.855829, 0.176365, 0.486264,
		39.592167, 27.188961, 26.777607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680237, 26.656101, 26.134977>,  <40.191246, 27.065506, 26.437222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680237, 26.656101, 26.134977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452854, 26.919155, 26.332714>,  <39.316425, 27.076986, 26.451355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452854, 26.919155, 26.332714>,  <39.680237, 26.656101, 26.134977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452854, 26.919155, 26.332714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476865, 0.226256, -0.849357,
		-0.670413, -0.718559, 0.184985,
		-0.568460, 0.657633, 0.494341,
		39.282318, 27.116446, 26.481016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058514, 26.515491, 25.946722>,  <39.680237, 26.656101, 26.134977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058514, 26.515491, 25.946722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987488, 26.886358, 26.078682>,  <38.944874, 27.108879, 26.157858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987488, 26.886358, 26.078682>,  <39.058514, 26.515491, 25.946722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987488, 26.886358, 26.078682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563539, 0.179026, -0.806458,
		-0.806781, -0.329107, 0.490707,
		-0.177561, 0.927167, 0.329899,
		38.934219, 27.164509, 26.177652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.328716, 26.736824, 25.747400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491512, 27.094149, 25.823669>,  <38.589188, 27.308544, 25.869431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.491512, 27.094149, 25.823669>,  <38.328716, 26.736824, 25.747400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491512, 27.094149, 25.823669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569061, 0.411249, -0.712070,
		-0.714515, 0.181297, 0.675722,
		0.406986, 0.893312, 0.190674,
		38.613609, 27.362143, 25.880871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780540, 27.162766, 25.778887>,  <38.328716, 26.736824, 25.747400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780540, 27.162766, 25.778887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100216, 27.385241, 25.687716>,  <38.292023, 27.518724, 25.633013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100216, 27.385241, 25.687716>,  <37.780540, 27.162766, 25.778887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100216, 27.385241, 25.687716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504852, 0.415319, -0.756727,
		-0.326218, 0.719839, 0.612711,
		0.799191, 0.556186, -0.227927,
		38.339973, 27.552097, 25.619337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481068, 27.717690, 25.616701>,  <37.780540, 27.162766, 25.778887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481068, 27.717690, 25.616701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848610, 27.751797, 25.462593>,  <38.069134, 27.772261, 25.370129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848610, 27.751797, 25.462593>,  <37.481068, 27.717690, 25.616701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848610, 27.751797, 25.462593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388779, 0.362618, -0.846971,
		0.067484, 0.928029, 0.366344,
		0.918856, 0.085270, -0.385269,
		38.124268, 27.777378, 25.347012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551525, 28.411846, 25.299398>,  <37.481068, 27.717690, 25.616701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551525, 28.411846, 25.299398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784328, 28.152981, 25.102446>,  <37.924011, 27.997662, 24.984274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784328, 28.152981, 25.102446>,  <37.551525, 28.411846, 25.299398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784328, 28.152981, 25.102446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370632, 0.327839, -0.868996,
		0.723805, 0.688258, -0.049053,
		0.582012, -0.647164, -0.492382,
		37.958931, 27.958832, 24.954731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825485, 28.880688, 24.793060>,  <37.551525, 28.411846, 25.299398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825485, 28.880688, 24.793060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859745, 28.497215, 24.684551>,  <37.880302, 28.267132, 24.619446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859745, 28.497215, 24.684551>,  <37.825485, 28.880688, 24.793060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859745, 28.497215, 24.684551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353273, 0.225362, -0.907970,
		0.931591, 0.173605, -0.319374,
		0.085653, -0.958683, -0.271275,
		37.885441, 28.209610, 24.603168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083916, 28.978739, 24.134254>,  <37.825485, 28.880688, 24.793060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083916, 28.978739, 24.134254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932014, 28.608719, 24.130756>,  <37.840874, 28.386707, 24.128658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932014, 28.608719, 24.130756>,  <38.083916, 28.978739, 24.134254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932014, 28.608719, 24.130756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451216, 0.193470, -0.871191,
		0.807585, -0.326889, -0.490867,
		-0.379751, -0.925048, -0.008746,
		37.818089, 28.331205, 24.128132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135777, 28.734159, 23.546164>,  <38.083916, 28.978739, 24.134254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135777, 28.734159, 23.546164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838352, 28.518202, 23.703960>,  <37.659897, 28.388628, 23.798639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838352, 28.518202, 23.703960>,  <38.135777, 28.734159, 23.546164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838352, 28.518202, 23.703960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530407, 0.116989, -0.839632,
		0.407162, -0.833562, -0.373354,
		-0.743564, -0.539896, 0.394494,
		37.615284, 28.356234, 23.822309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963196, 28.423880, 22.937786>,  <38.135777, 28.734159, 23.546164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963196, 28.423880, 22.937786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670990, 28.367195, 23.205000>,  <37.495667, 28.333185, 23.365328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670990, 28.367195, 23.205000>,  <37.963196, 28.423880, 22.937786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670990, 28.367195, 23.205000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679214, 0.049257, -0.732286,
		0.070881, -0.988679, -0.132247,
		-0.730510, -0.141729, 0.668033,
		37.451836, 28.324682, 23.405411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440784, 27.887840, 22.677471>,  <37.963196, 28.423880, 22.937786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440784, 27.887840, 22.677471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237694, 28.083082, 22.961433>,  <37.115837, 28.200228, 23.131811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237694, 28.083082, 22.961433>,  <37.440784, 27.887840, 22.677471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237694, 28.083082, 22.961433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742789, 0.169423, -0.647735,
		-0.436436, -0.856184, 0.276537,
		-0.507728, 0.488103, 0.709906,
		37.085377, 28.229513, 23.174406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783478, 27.536877, 22.679358>,  <37.440784, 27.887840, 22.677471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783478, 27.536877, 22.679358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786095, 27.920225, 22.793535>,  <36.787666, 28.150234, 22.862041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786095, 27.920225, 22.793535>,  <36.783478, 27.536877, 22.679358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786095, 27.920225, 22.793535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682736, 0.212846, -0.698976,
		-0.730636, -0.190308, 0.655709,
		0.006544, 0.958373, 0.285443,
		36.788059, 28.207737, 22.879168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138599, 27.723011, 22.492060>,  <36.783478, 27.536877, 22.679358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138599, 27.723011, 22.492060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301659, 28.083403, 22.551466>,  <36.399494, 28.299637, 22.587111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301659, 28.083403, 22.551466>,  <36.138599, 27.723011, 22.492060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301659, 28.083403, 22.551466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497673, 0.355583, -0.791127,
		-0.765600, 0.248589, 0.593347,
		0.407649, 0.900980, 0.148518,
		36.423954, 28.353697, 22.596022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651321, 28.135925, 22.354813>,  <36.138599, 27.723011, 22.492060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651321, 28.135925, 22.354813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954479, 28.396408, 22.339172>,  <36.136372, 28.552698, 22.329788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954479, 28.396408, 22.339172>,  <35.651321, 28.135925, 22.354813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954479, 28.396408, 22.339172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380146, 0.392125, -0.837691,
		-0.530177, 0.649744, 0.544742,
		0.757892, 0.651207, -0.039102,
		36.181847, 28.591770, 22.327442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330368, 28.802389, 22.175997>,  <35.651321, 28.135925, 22.354813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330368, 28.802389, 22.175997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713264, 28.802906, 22.060278>,  <35.943001, 28.803217, 21.990847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713264, 28.802906, 22.060278>,  <35.330368, 28.802389, 22.175997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713264, 28.802906, 22.060278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267342, 0.386105, -0.882865,
		0.110558, 0.922454, 0.369940,
		0.957238, 0.001293, -0.289297,
		36.000435, 28.803293, 21.973488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406502, 29.506380, 21.963900>,  <35.330368, 28.802389, 22.175997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406502, 29.506380, 21.963900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710136, 29.293335, 21.814175>,  <35.892319, 29.165508, 21.724340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710136, 29.293335, 21.814175>,  <35.406502, 29.506380, 21.963900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710136, 29.293335, 21.814175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175376, 0.386421, -0.905496,
		0.626919, 0.752997, 0.199921,
		0.759089, -0.532611, -0.374312,
		35.937862, 29.133553, 21.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813217, 29.954420, 21.462593>,  <35.406502, 29.506380, 21.963900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813217, 29.954420, 21.462593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895660, 29.578289, 21.354294>,  <35.945126, 29.352610, 21.289314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895660, 29.578289, 21.354294>,  <35.813217, 29.954420, 21.462593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895660, 29.578289, 21.354294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225429, 0.223620, -0.948249,
		0.952209, 0.256473, -0.165888,
		0.206104, -0.940327, -0.270750,
		35.957493, 29.296190, 21.273069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231251, 30.016474, 20.888468>,  <35.813217, 29.954420, 21.462593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231251, 30.016474, 20.888468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080208, 29.646908, 20.863836>,  <35.989582, 29.425169, 20.849056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080208, 29.646908, 20.863836>,  <36.231251, 30.016474, 20.888468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080208, 29.646908, 20.863836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152927, 0.127817, -0.979937,
		0.913249, -0.360616, -0.189557,
		-0.377610, -0.923915, -0.061581,
		35.966927, 29.369734, 20.845362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478107, 29.656889, 20.276011>,  <36.231251, 30.016474, 20.888468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478107, 29.656889, 20.276011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155678, 29.431007, 20.346849>,  <35.962219, 29.295479, 20.389353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155678, 29.431007, 20.346849>,  <36.478107, 29.656889, 20.276011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155678, 29.431007, 20.346849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251951, 0.056666, -0.966080,
		0.535512, -0.823347, -0.187954,
		-0.806070, -0.564702, 0.177097,
		35.913857, 29.261597, 20.399979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379894, 29.347366, 19.668867>,  <36.478107, 29.656889, 20.276011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379894, 29.347366, 19.668867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049995, 29.201323, 19.841606>,  <35.852058, 29.113697, 19.945250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049995, 29.201323, 19.841606>,  <36.379894, 29.347366, 19.668867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049995, 29.201323, 19.841606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460298, -0.010200, -0.887706,
		0.328514, -0.930909, -0.159646,
		-0.824745, -0.365108, 0.431846,
		35.802570, 29.091789, 19.971161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161316, 28.749897, 19.281733>,  <36.379894, 29.347366, 19.668867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161316, 28.749897, 19.281733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841480, 28.883669, 19.481260>,  <35.649578, 28.963932, 19.600977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841480, 28.883669, 19.481260>,  <36.161316, 28.749897, 19.281733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841480, 28.883669, 19.481260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507216, 0.068660, -0.859079,
		-0.321549, -0.939917, 0.114728,
		-0.799586, 0.334428, 0.498819,
		35.601604, 28.983997, 19.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496464, 28.279926, 19.159420>,  <36.161316, 28.749897, 19.281733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496464, 28.279926, 19.159420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433002, 28.666552, 19.240004>,  <35.394928, 28.898527, 19.288353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433002, 28.666552, 19.240004>,  <35.496464, 28.279926, 19.159420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433002, 28.666552, 19.240004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487796, 0.100668, -0.867134,
		-0.858420, -0.235842, 0.455515,
		-0.158651, 0.966563, 0.201459,
		35.385406, 28.956520, 19.300442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941071, 28.438889, 18.712790>,  <35.496464, 28.279926, 19.159420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941071, 28.438889, 18.712790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059933, 28.814039, 18.784441>,  <35.131248, 29.039129, 18.827433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059933, 28.814039, 18.784441>,  <34.941071, 28.438889, 18.712790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059933, 28.814039, 18.784441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334436, 0.277953, -0.900497,
		-0.894344, 0.207680, 0.396255,
		0.297155, 0.937876, 0.179130,
		35.149078, 29.095402, 18.838181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383743, 28.872576, 18.689322>,  <34.941071, 28.438889, 18.712790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383743, 28.872576, 18.689322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688690, 29.120596, 18.615211>,  <34.871658, 29.269409, 18.570745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688690, 29.120596, 18.615211>,  <34.383743, 28.872576, 18.689322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688690, 29.120596, 18.615211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485646, 0.358951, -0.797059,
		-0.427713, 0.697632, 0.574779,
		0.762371, 0.620052, -0.185274,
		34.917400, 29.306612, 18.559629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060673, 29.580864, 18.618736>,  <34.383743, 28.872576, 18.689322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060673, 29.580864, 18.618736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412586, 29.578564, 18.428600>,  <34.623734, 29.577183, 18.314520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412586, 29.578564, 18.428600>,  <34.060673, 29.580864, 18.618736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412586, 29.578564, 18.428600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422827, 0.447505, -0.788008,
		0.217250, 0.894263, 0.391275,
		0.879784, -0.005753, -0.475339,
		34.676521, 29.576838, 18.285999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435471, 30.077065, 18.820126>,  <34.060673, 29.580864, 18.618736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435471, 30.077065, 18.820126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265450, 30.424597, 18.921686>,  <33.163437, 30.633116, 18.982622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265450, 30.424597, 18.921686>,  <33.435471, 30.077065, 18.820126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265450, 30.424597, 18.921686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275138, -0.143218, 0.950677,
		0.862339, 0.473947, -0.178173,
		-0.425053, 0.868828, 0.253903,
		33.137932, 30.685246, 18.997858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969311, 30.564411, 19.118845>,  <33.435471, 30.077065, 18.820126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969311, 30.564411, 19.118845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597157, 30.613928, 19.256859>,  <33.373863, 30.643637, 19.339668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597157, 30.613928, 19.256859>,  <33.969311, 30.564411, 19.118845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597157, 30.613928, 19.256859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335631, -0.090807, 0.937606,
		0.147398, 0.988145, 0.042938,
		-0.930390, 0.123790, 0.345037,
		33.318039, 30.651066, 19.360371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035244, 31.097790, 19.692026>,  <33.969311, 30.564411, 19.118845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035244, 31.097790, 19.692026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672924, 30.949194, 19.773535>,  <33.455532, 30.860037, 19.822439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672924, 30.949194, 19.773535>,  <34.035244, 31.097790, 19.692026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672924, 30.949194, 19.773535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262067, -0.113300, 0.958376,
		-0.332940, 0.921498, 0.199982,
		-0.905799, -0.371490, 0.203772,
		33.401184, 30.837748, 19.834667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915039, 31.402327, 20.341135>,  <34.035244, 31.097790, 19.692026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915039, 31.402327, 20.341135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651226, 31.104473, 20.300070>,  <33.492939, 30.925760, 20.275431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651226, 31.104473, 20.300070>,  <33.915039, 31.402327, 20.341135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651226, 31.104473, 20.300070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113367, -0.233555, 0.965712,
		-0.743081, 0.625276, 0.238453,
		-0.659529, -0.744635, -0.102665,
		33.453369, 30.881083, 20.269270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395672, 31.574320, 20.684509>,  <33.915039, 31.402327, 20.341135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395672, 31.574320, 20.684509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391933, 31.175018, 20.661179>,  <33.389690, 30.935438, 20.647181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391933, 31.175018, 20.661179>,  <33.395672, 31.574320, 20.684509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391933, 31.175018, 20.661179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123422, -0.059035, 0.990597,
		-0.992310, 0.002060, 0.123758,
		-0.009347, -0.998254, -0.058327,
		33.389130, 30.875542, 20.643681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980335, 31.375490, 21.191336>,  <33.395672, 31.574320, 20.684509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980335, 31.375490, 21.191336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155666, 31.027260, 21.101927>,  <33.260864, 30.818321, 21.048281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155666, 31.027260, 21.101927>,  <32.980335, 31.375490, 21.191336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155666, 31.027260, 21.101927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113310, -0.193179, 0.974599,
		-0.891642, -0.452525, 0.013968,
		0.438332, -0.870576, -0.223522,
		33.287167, 30.766087, 21.034870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575394, 30.841349, 21.544857>,  <32.980335, 31.375490, 21.191336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575394, 30.841349, 21.544857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939384, 30.701841, 21.455139>,  <33.157780, 30.618137, 21.401308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939384, 30.701841, 21.455139>,  <32.575394, 30.841349, 21.544857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939384, 30.701841, 21.455139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118179, -0.300342, 0.946482,
		-0.397469, -0.887780, -0.232086,
		0.909973, -0.348770, -0.224294,
		33.212376, 30.597212, 21.387852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606361, 30.234842, 21.912363>,  <32.575394, 30.841349, 21.544857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606361, 30.234842, 21.912363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988873, 30.311987, 21.824415>,  <33.218380, 30.358273, 21.771646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988873, 30.311987, 21.824415>,  <32.606361, 30.234842, 21.912363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988873, 30.311987, 21.824415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278783, -0.373814, 0.884615,
		0.088418, -0.907231, -0.411236,
		0.956276, 0.192861, -0.219868,
		33.275757, 30.369844, 21.758455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003304, 29.620111, 21.993855>,  <32.606361, 30.234842, 21.912363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003304, 29.620111, 21.993855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232185, 29.946053, 22.030952>,  <33.369514, 30.141617, 22.053211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232185, 29.946053, 22.030952>,  <33.003304, 29.620111, 21.993855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232185, 29.946053, 22.030952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237784, -0.273069, 0.932143,
		0.784883, -0.511323, -0.350010,
		0.572203, 0.814851, 0.092743,
		33.403847, 30.190508, 22.058775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706978, 29.320690, 22.081818>,  <33.003304, 29.620111, 21.993855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706978, 29.320690, 22.081818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731319, 29.696592, 22.216375>,  <33.745926, 29.922132, 22.297110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731319, 29.696592, 22.216375>,  <33.706978, 29.320690, 22.081818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731319, 29.696592, 22.216375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451898, -0.326440, 0.830196,
		0.889992, 0.101490, -0.444539,
		0.060859, 0.939753, 0.336392,
		33.749577, 29.978518, 22.317293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474396, 29.459782, 22.140369>,  <33.706978, 29.320690, 22.081818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474396, 29.459782, 22.140369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277508, 29.719233, 22.372578>,  <34.159374, 29.874903, 22.511902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277508, 29.719233, 22.372578>,  <34.474396, 29.459782, 22.140369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277508, 29.719233, 22.372578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539273, -0.296282, 0.788290,
		0.683305, 0.701069, -0.203952,
		-0.492218, 0.648629, 0.580519,
		34.129841, 29.913820, 22.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998379, 29.783524, 22.516220>,  <34.474396, 29.459782, 22.140369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998379, 29.783524, 22.516220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653614, 29.832163, 22.713125>,  <34.446754, 29.861347, 22.831268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.653614, 29.832163, 22.713125>,  <34.998379, 29.783524, 22.516220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653614, 29.832163, 22.713125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432559, -0.330232, 0.838952,
		0.264577, 0.936034, 0.232032,
		-0.861912, 0.121600, 0.492261,
		34.395039, 29.868643, 22.860804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233570, 30.079376, 23.133287>,  <34.998379, 29.783524, 22.516220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233570, 30.079376, 23.133287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869896, 29.934422, 23.215321>,  <34.651691, 29.847448, 23.264542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869896, 29.934422, 23.215321>,  <35.233570, 30.079376, 23.133287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869896, 29.934422, 23.215321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337038, -0.351241, 0.873519,
		-0.244517, 0.863311, 0.441481,
		-0.909185, -0.362386, 0.205084,
		34.597141, 29.825706, 23.276846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125694, 30.289410, 23.795670>,  <35.233570, 30.079376, 23.133287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125694, 30.289410, 23.795670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866665, 29.990017, 23.738516>,  <34.711246, 29.810381, 23.704224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866665, 29.990017, 23.738516>,  <35.125694, 30.289410, 23.795670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866665, 29.990017, 23.738516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340788, -0.452192, 0.824249,
		-0.681548, 0.485072, 0.547903,
		-0.647577, -0.748484, -0.142884,
		34.672390, 29.765472, 23.695650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756195, 30.181595, 24.444880>,  <35.125694, 30.289410, 23.795670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756195, 30.181595, 24.444880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728642, 29.841652, 24.235884>,  <34.712109, 29.637686, 24.110485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728642, 29.841652, 24.235884>,  <34.756195, 30.181595, 24.444880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728642, 29.841652, 24.235884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013007, -0.524456, 0.851339,
		-0.997540, 0.051852, 0.047183,
		-0.068889, -0.849857, -0.522491,
		34.707973, 29.586695, 24.079136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401802, 29.744530, 24.844738>,  <34.756195, 30.181595, 24.444880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401802, 29.744530, 24.844738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554836, 29.474623, 24.592289>,  <34.646656, 29.312679, 24.440821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554836, 29.474623, 24.592289>,  <34.401802, 29.744530, 24.844738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554836, 29.474623, 24.592289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164522, -0.622419, 0.765197,
		-0.909152, -0.396589, -0.127117,
		0.382589, -0.674768, -0.631121,
		34.669613, 29.272192, 24.402952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134083, 29.102991, 25.012274>,  <34.401802, 29.744530, 24.844738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134083, 29.102991, 25.012274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456779, 28.996452, 24.801287>,  <34.650398, 28.932529, 24.674694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456779, 28.996452, 24.801287>,  <34.134083, 29.102991, 25.012274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456779, 28.996452, 24.801287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263689, -0.636566, 0.724743,
		-0.528803, -0.723769, -0.443313,
		0.806744, -0.266349, -0.527467,
		34.698803, 28.916548, 24.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247787, 28.369286, 25.126476>,  <34.134083, 29.102991, 25.012274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247787, 28.369286, 25.126476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605972, 28.497879, 25.003317>,  <34.820881, 28.575035, 24.929420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605972, 28.497879, 25.003317>,  <34.247787, 28.369286, 25.126476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605972, 28.497879, 25.003317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435541, -0.489847, 0.755218,
		0.091968, -0.810369, -0.578657,
		0.895459, 0.321485, -0.307899,
		34.874611, 28.594324, 24.910948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609135, 27.770355, 25.160477>,  <34.247787, 28.369286, 25.126476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609135, 27.770355, 25.160477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845558, 28.092373, 25.180719>,  <34.987411, 28.285583, 25.192865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845558, 28.092373, 25.180719>,  <34.609135, 27.770355, 25.160477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845558, 28.092373, 25.180719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537675, -0.439968, 0.719259,
		0.601299, -0.397913, -0.692896,
		0.591055, 0.805043, 0.050605,
		35.022873, 28.333885, 25.195900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292370, 27.472076, 25.246801>,  <34.609135, 27.770355, 25.160477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292370, 27.472076, 25.246801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311783, 27.851107, 25.373135>,  <35.323429, 28.078524, 25.448935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311783, 27.851107, 25.373135>,  <35.292370, 27.472076, 25.246801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311783, 27.851107, 25.373135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504722, -0.296128, 0.810903,
		0.861917, 0.120054, -0.492633,
		0.048530, 0.947574, 0.315831,
		35.326344, 28.135378, 25.467884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009579, 27.631798, 25.363838>,  <35.292370, 27.472076, 25.246801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009579, 27.631798, 25.363838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805840, 27.880310, 25.602024>,  <35.683598, 28.029417, 25.744936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805840, 27.880310, 25.602024>,  <36.009579, 27.631798, 25.363838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805840, 27.880310, 25.602024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564972, -0.280529, 0.775957,
		0.649131, 0.731652, -0.208119,
		-0.509347, 0.621280, 0.595464,
		35.653034, 28.066694, 25.780663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.644806, 26.120533, 27.998259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450001, 26.440979, 28.137415>,  <40.333118, 26.633247, 28.220909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450001, 26.440979, 28.137415>,  <40.644806, 26.120533, 27.998259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450001, 26.440979, 28.137415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779625, 0.219203, 0.586630,
		0.393700, 0.556923, -0.731326,
		-0.487017, 0.801116, 0.347891,
		40.303894, 26.681314, 28.241781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140285, 26.630529, 28.029314>,  <40.644806, 26.120533, 27.998259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140285, 26.630529, 28.029314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.859238, 26.745081, 28.289869>,  <40.690609, 26.813812, 28.446203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.859238, 26.745081, 28.289869>,  <41.140285, 26.630529, 28.029314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859238, 26.745081, 28.289869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711419, 0.301125, 0.634986,
		-0.014304, 0.909567, -0.415311,
		-0.702623, 0.286377, 0.651390,
		40.648449, 26.830994, 28.485287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491150, 27.215902, 28.328646>,  <41.140285, 26.630529, 28.029314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491150, 27.215902, 28.328646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182903, 27.118748, 28.564325>,  <40.997955, 27.060455, 28.705734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182903, 27.118748, 28.564325>,  <41.491150, 27.215902, 28.328646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182903, 27.118748, 28.564325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535703, 0.253924, 0.805323,
		-0.345214, 0.936231, -0.065562,
		-0.770616, -0.242887, 0.589200,
		40.951717, 27.045881, 28.741085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389061, 27.716408, 28.920986>,  <41.491150, 27.215902, 28.328646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389061, 27.716408, 28.920986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227627, 27.371889, 29.044462>,  <41.130768, 27.165178, 29.118547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227627, 27.371889, 29.044462>,  <41.389061, 27.716408, 28.920986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227627, 27.371889, 29.044462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314918, 0.186005, 0.930714,
		-0.859040, 0.472830, 0.196170,
		-0.403581, -0.861298, 0.308688,
		41.106552, 27.113501, 29.137068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214817, 27.914791, 29.634674>,  <41.389061, 27.716408, 28.920986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214817, 27.914791, 29.634674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175488, 27.516748, 29.630848>,  <41.151890, 27.277922, 29.628553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175488, 27.516748, 29.630848>,  <41.214817, 27.914791, 29.634674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175488, 27.516748, 29.630848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047817, -0.014324, 0.998753,
		-0.994005, 0.097749, 0.048992,
		-0.098329, -0.995108, -0.009564,
		41.145988, 27.218216, 29.627979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755333, 27.726793, 30.196518>,  <41.214817, 27.914791, 29.634674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755333, 27.726793, 30.196518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.937752, 27.379967, 30.116306>,  <41.047203, 27.171871, 30.068178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.937752, 27.379967, 30.116306>,  <40.755333, 27.726793, 30.196518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937752, 27.379967, 30.116306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136513, -0.154505, 0.978515,
		-0.879422, -0.473626, 0.047904,
		0.456049, -0.867068, -0.200531,
		41.074566, 27.119846, 30.056147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437950, 27.182257, 30.620073>,  <40.755333, 27.726793, 30.196518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437950, 27.182257, 30.620073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784599, 27.007507, 30.523651>,  <40.992588, 26.902657, 30.465797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784599, 27.007507, 30.523651>,  <40.437950, 27.182257, 30.620073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784599, 27.007507, 30.523651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188009, -0.161594, 0.968783,
		-0.462191, -0.884888, -0.057904,
		0.866621, -0.436876, -0.241054,
		41.044586, 26.876444, 30.451334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400288, 26.537342, 31.013433>,  <40.437950, 27.182257, 30.620073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400288, 26.537342, 31.013433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781731, 26.610168, 30.917536>,  <41.010597, 26.653864, 30.859997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781731, 26.610168, 30.917536>,  <40.400288, 26.537342, 31.013433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781731, 26.610168, 30.917536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252662, -0.051065, 0.966206,
		0.163670, -0.981960, -0.094698,
		0.953611, 0.182065, -0.239746,
		41.067814, 26.664787, 30.845612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780632, 26.080322, 31.393560>,  <40.400288, 26.537342, 31.013433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780632, 26.080322, 31.393560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058086, 26.349791, 31.291548>,  <41.224560, 26.511473, 31.230341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058086, 26.349791, 31.291548>,  <40.780632, 26.080322, 31.393560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058086, 26.349791, 31.291548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310111, 0.040282, 0.949847,
		0.650159, -0.737931, -0.180973,
		0.693631, 0.673673, -0.255031,
		41.266174, 26.551893, 31.215038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352173, 25.776506, 31.686842>,  <40.780632, 26.080322, 31.393560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352173, 25.776506, 31.686842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.428299, 26.161043, 31.607244>,  <41.473976, 26.391766, 31.559486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.428299, 26.161043, 31.607244>,  <41.352173, 25.776506, 31.686842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428299, 26.161043, 31.607244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397860, 0.109782, 0.910854,
		0.897490, -0.252521, -0.361587,
		0.190314, 0.961343, -0.198996,
		41.485394, 26.449446, 31.547546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145859, 25.832394, 31.820108>,  <41.352173, 25.776506, 31.686842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145859, 25.832394, 31.820108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949516, 26.177389, 31.869383>,  <41.831711, 26.384386, 31.898947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949516, 26.177389, 31.869383>,  <42.145859, 25.832394, 31.820108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949516, 26.177389, 31.869383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298656, 0.033747, 0.953764,
		0.818453, 0.504951, -0.274152,
		-0.490856, 0.862488, 0.123186,
		41.802258, 26.436136, 31.906340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538700, 26.134918, 32.341396>,  <42.145859, 25.832394, 31.820108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538700, 26.134918, 32.341396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213268, 26.367455, 32.345917>,  <42.018009, 26.506977, 32.348629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213268, 26.367455, 32.345917>,  <42.538700, 26.134918, 32.341396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213268, 26.367455, 32.345917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241355, 0.319972, 0.916169,
		0.528992, 0.748105, -0.400633,
		-0.813582, 0.581341, 0.011297,
		41.969193, 26.541857, 32.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763180, 26.834551, 32.513870>,  <42.538700, 26.134918, 32.341396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763180, 26.834551, 32.513870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376301, 26.820868, 32.614555>,  <42.144173, 26.812658, 32.674969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376301, 26.820868, 32.614555>,  <42.763180, 26.834551, 32.513870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376301, 26.820868, 32.614555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241383, 0.184986, 0.952636,
		-0.079150, 0.982146, -0.170661,
		-0.967197, -0.034206, 0.251715,
		42.086143, 26.810606, 32.690071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787399, 27.408661, 32.090080>,  <42.763180, 26.834551, 32.513870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787399, 27.408661, 32.090080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787094, 27.681459, 32.382622>,  <42.786911, 27.845139, 32.558147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787094, 27.681459, 32.382622>,  <42.787399, 27.408661, 32.090080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787094, 27.681459, 32.382622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009068, 0.731330, -0.681964,
		-0.999959, 0.006109, -0.006745,
		-0.000767, 0.681996, 0.731355,
		42.786865, 27.886059, 32.602028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355034, 27.866070, 31.889328>,  <42.787399, 27.408661, 32.090080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355034, 27.866070, 31.889328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564636, 28.061407, 32.168453>,  <42.690395, 28.178610, 32.335930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564636, 28.061407, 32.168453>,  <42.355034, 27.866070, 31.889328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564636, 28.061407, 32.168453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116197, 0.852631, -0.509430,
		-0.843752, 0.185860, 0.503526,
		0.524004, 0.488341, 0.697813,
		42.721836, 28.207909, 32.377796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962700, 28.419144, 32.137859>,  <42.355034, 27.866070, 31.889328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962700, 28.419144, 32.137859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.355980, 28.492033, 32.133625>,  <42.591949, 28.535767, 32.131084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.355980, 28.492033, 32.133625>,  <41.962700, 28.419144, 32.137859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355980, 28.492033, 32.133625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150110, 0.774208, -0.614873,
		-0.103848, 0.606132, 0.788555,
		0.983200, 0.182224, -0.010586,
		42.650940, 28.546700, 32.130447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945911, 29.127565, 32.013504>,  <41.962700, 28.419144, 32.137859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945911, 29.127565, 32.013504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313370, 28.989836, 31.936008>,  <42.533844, 28.907198, 31.889511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313370, 28.989836, 31.936008>,  <41.945911, 29.127565, 32.013504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313370, 28.989836, 31.936008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046371, 0.580947, -0.812619,
		0.392353, 0.737525, 0.549650,
		0.918645, -0.344322, -0.193737,
		42.588963, 28.886539, 31.877888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370087, 29.708420, 31.826736>,  <41.945911, 29.127565, 32.013504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370087, 29.708420, 31.826736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.550274, 29.381529, 31.682947>,  <42.658386, 29.185394, 31.596674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.550274, 29.381529, 31.682947>,  <42.370087, 29.708420, 31.826736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550274, 29.381529, 31.682947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239909, 0.498632, -0.832953,
		0.859954, 0.288980, 0.420678,
		0.450470, -0.817225, -0.359471,
		42.685413, 29.136362, 31.575106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894775, 29.957529, 31.411787>,  <42.370087, 29.708420, 31.826736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894775, 29.957529, 31.411787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850723, 29.583467, 31.277111>,  <42.824291, 29.359032, 31.196306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.850723, 29.583467, 31.277111>,  <42.894775, 29.957529, 31.411787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850723, 29.583467, 31.277111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258154, 0.300210, -0.918276,
		0.959806, -0.188049, 0.208350,
		-0.110132, -0.935153, -0.336689,
		42.817684, 29.302921, 31.176104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453575, 29.796486, 30.979425>,  <42.894775, 29.957529, 31.411787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453575, 29.796486, 30.979425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200317, 29.496832, 30.901531>,  <43.048363, 29.317039, 30.854794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200317, 29.496832, 30.901531>,  <43.453575, 29.796486, 30.979425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200317, 29.496832, 30.901531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278410, 0.014340, -0.960355,
		0.722229, -0.662261, 0.199488,
		-0.633145, -0.749136, -0.194737,
		43.010372, 29.272091, 30.843109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794582, 29.474436, 30.507790>,  <43.453575, 29.796486, 30.979425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794582, 29.474436, 30.507790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406059, 29.391642, 30.460941>,  <43.172947, 29.341965, 30.432833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406059, 29.391642, 30.460941>,  <43.794582, 29.474436, 30.507790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406059, 29.391642, 30.460941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116862, 0.013526, -0.993056,
		0.207132, -0.978251, 0.011051,
		-0.971308, -0.206985, -0.117122,
		43.114666, 29.329546, 30.425804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780998, 29.171915, 29.907215>,  <43.794582, 29.474436, 30.507790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780998, 29.171915, 29.907215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402817, 29.291248, 29.959555>,  <43.175907, 29.362848, 29.990959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402817, 29.291248, 29.959555>,  <43.780998, 29.171915, 29.907215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402817, 29.291248, 29.959555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066048, 0.217778, -0.973761,
		-0.319001, -0.929285, -0.186194,
		-0.945450, 0.298333, 0.130849,
		43.119183, 29.380749, 29.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551666, 29.025402, 29.194906>,  <43.780998, 29.171915, 29.907215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551666, 29.025402, 29.194906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276031, 29.272449, 29.346542>,  <43.110649, 29.420677, 29.437525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276031, 29.272449, 29.346542>,  <43.551666, 29.025402, 29.194906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276031, 29.272449, 29.346542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294507, 0.239301, -0.925203,
		-0.662138, -0.749189, 0.016993,
		-0.689086, 0.617617, 0.379092,
		43.069305, 29.457735, 29.460270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884594, 28.878904, 28.803032>,  <43.551666, 29.025402, 29.194906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884594, 28.878904, 28.803032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831364, 29.220577, 29.004095>,  <42.799427, 29.425581, 29.124733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831364, 29.220577, 29.004095>,  <42.884594, 28.878904, 28.803032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831364, 29.220577, 29.004095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509736, 0.375963, -0.773835,
		-0.849977, -0.359197, 0.385378,
		-0.133072, 0.854183, 0.502656,
		42.791443, 29.476831, 29.154892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229385, 28.947992, 28.882730>,  <42.884594, 28.878904, 28.803032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229385, 28.947992, 28.882730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346615, 29.329407, 28.910667>,  <42.416954, 29.558254, 28.927429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346615, 29.329407, 28.910667>,  <42.229385, 28.947992, 28.882730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346615, 29.329407, 28.910667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519270, 0.220090, -0.825784,
		-0.802785, 0.205751, 0.559645,
		0.293078, 0.953534, 0.069844,
		42.434540, 29.615467, 28.931622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626366, 29.352692, 28.669880>,  <42.229385, 28.947992, 28.882730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626366, 29.352692, 28.669880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.936794, 29.603802, 28.645857>,  <42.123051, 29.754467, 28.631443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.936794, 29.603802, 28.645857>,  <41.626366, 29.352692, 28.669880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936794, 29.603802, 28.645857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344439, 0.342173, -0.874231,
		-0.528269, 0.699155, 0.481782,
		0.776076, 0.627774, -0.060057,
		42.169617, 29.792133, 28.627840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347801, 30.039585, 28.628048>,  <41.626366, 29.352692, 28.669880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347801, 30.039585, 28.628048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714874, 30.019396, 28.470406>,  <41.935116, 30.007282, 28.375820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714874, 30.019396, 28.470406>,  <41.347801, 30.039585, 28.628048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714874, 30.019396, 28.470406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339887, 0.413977, -0.844452,
		0.205772, 0.908887, 0.362743,
		0.917679, -0.050473, -0.394104,
		41.990177, 30.004253, 28.352175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421307, 30.670895, 28.339428>,  <41.347801, 30.039585, 28.628048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421307, 30.670895, 28.339428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684544, 30.435671, 28.151342>,  <41.842487, 30.294537, 28.038492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.684544, 30.435671, 28.151342>,  <41.421307, 30.670895, 28.339428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684544, 30.435671, 28.151342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236334, 0.431612, -0.870550,
		0.714885, 0.684030, 0.145061,
		0.658092, -0.588061, -0.470212,
		41.881969, 30.259253, 28.010279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554951, 31.367184, 28.851847>,  <41.421307, 30.670895, 28.339428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554951, 31.367184, 28.851847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289238, 31.666004, 28.861956>,  <41.129810, 31.845297, 28.868021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289238, 31.666004, 28.861956>,  <41.554951, 31.367184, 28.851847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289238, 31.666004, 28.861956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072872, -0.098372, 0.992478,
		0.743920, 0.657445, 0.119786,
		-0.664284, 0.747053, 0.025272,
		41.089954, 31.890120, 28.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764545, 31.716805, 29.422512>,  <41.554951, 31.367184, 28.851847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764545, 31.716805, 29.422512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386372, 31.825996, 29.351372>,  <41.159466, 31.891512, 29.308687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386372, 31.825996, 29.351372>,  <41.764545, 31.716805, 29.422512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386372, 31.825996, 29.351372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201564, -0.061197, 0.977562,
		0.255972, 0.960071, 0.112881,
		-0.945436, 0.272981, -0.177851,
		41.102741, 31.907890, 29.298016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754864, 32.282791, 29.756754>,  <41.764545, 31.716805, 29.422512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754864, 32.282791, 29.756754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376312, 32.170395, 29.692995>,  <41.149181, 32.102959, 29.654739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376312, 32.170395, 29.692995>,  <41.754864, 32.282791, 29.756754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376312, 32.170395, 29.692995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120614, -0.150399, 0.981240,
		-0.299693, 0.947853, 0.108443,
		-0.946381, -0.280991, -0.159398,
		41.092400, 32.086098, 29.645176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377960, 32.599434, 30.290844>,  <41.754864, 32.282791, 29.756754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377960, 32.599434, 30.290844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136345, 32.311234, 30.154606>,  <40.991375, 32.138313, 30.072863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136345, 32.311234, 30.154606>,  <41.377960, 32.599434, 30.290844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136345, 32.311234, 30.154606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190557, -0.284401, 0.939577,
		-0.773835, 0.632447, 0.034494,
		-0.604043, -0.720504, -0.340597,
		40.955132, 32.095081, 30.052427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558952, 32.686848, 30.592291>,  <41.377960, 32.599434, 30.290844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558952, 32.686848, 30.592291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.646862, 32.312126, 30.483404>,  <40.699608, 32.087296, 30.418072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.646862, 32.312126, 30.483404>,  <40.558952, 32.686848, 30.592291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646862, 32.312126, 30.483404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369224, -0.338158, 0.865634,
		-0.902979, -0.089739, -0.420209,
		0.219778, -0.936801, -0.272216,
		40.712795, 32.031086, 30.401739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024654, 32.351688, 30.912594>,  <40.558952, 32.686848, 30.592291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024654, 32.351688, 30.912594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.275120, 32.059410, 30.803778>,  <40.425400, 31.884043, 30.738487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.275120, 32.059410, 30.803778>,  <40.024654, 32.351688, 30.912594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275120, 32.059410, 30.803778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078827, -0.406446, 0.910268,
		-0.775697, -0.548532, -0.312100,
		0.626163, -0.730694, -0.272040,
		40.462971, 31.840202, 30.722166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748524, 31.805309, 31.222225>,  <40.024654, 32.351688, 30.912594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748524, 31.805309, 31.222225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135094, 31.713299, 31.176418>,  <40.367035, 31.658092, 31.148933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135094, 31.713299, 31.176418>,  <39.748524, 31.805309, 31.222225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135094, 31.713299, 31.176418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036705, -0.317511, 0.947544,
		-0.254319, -0.919932, -0.298407,
		0.966424, -0.230025, -0.114516,
		40.425022, 31.644291, 31.142063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847321, 31.002863, 31.444355>,  <39.748524, 31.805309, 31.222225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847321, 31.002863, 31.444355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190826, 31.205616, 31.474251>,  <40.396931, 31.327269, 31.492188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190826, 31.205616, 31.474251>,  <39.847321, 31.002863, 31.444355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190826, 31.205616, 31.474251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216599, -0.491351, 0.843599,
		0.464328, -0.708268, -0.531747,
		0.858769, 0.506883, 0.074738,
		40.448456, 31.357681, 31.496672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211449, 30.609022, 31.856770>,  <39.847321, 31.002863, 31.444355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211449, 30.609022, 31.856770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447632, 30.931631, 31.844862>,  <40.589340, 31.125196, 31.837717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447632, 30.931631, 31.844862>,  <40.211449, 30.609022, 31.856770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447632, 30.931631, 31.844862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337154, -0.212983, 0.917041,
		0.733274, -0.551508, -0.397679,
		0.590455, 0.806521, -0.029768,
		40.624767, 31.173588, 31.835932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853825, 30.355042, 32.214165>,  <40.211449, 30.609022, 31.856770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853825, 30.355042, 32.214165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838905, 30.754692, 32.221718>,  <40.829952, 30.994482, 32.226250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838905, 30.754692, 32.221718>,  <40.853825, 30.355042, 32.214165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838905, 30.754692, 32.221718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255894, -0.008714, 0.966666,
		0.965985, 0.040890, -0.255345,
		-0.037302, 0.999126, 0.018881,
		40.827713, 31.054430, 32.227383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450489, 30.655107, 32.577358>,  <40.853825, 30.355042, 32.214165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450489, 30.655107, 32.577358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.234310, 30.991623, 32.582363>,  <41.104603, 31.193531, 32.585365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.234310, 30.991623, 32.582363>,  <41.450489, 30.655107, 32.577358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234310, 30.991623, 32.582363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033784, -0.036562, 0.998760,
		0.840702, 0.539350, 0.048181,
		-0.540443, 0.841287, 0.012516,
		41.072178, 31.244009, 32.586117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832329, 31.048347, 33.099033>,  <41.450489, 30.655107, 32.577358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832329, 31.048347, 33.099033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453693, 31.170851, 33.058678>,  <41.226513, 31.244352, 33.034466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453693, 31.170851, 33.058678>,  <41.832329, 31.048347, 33.099033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453693, 31.170851, 33.058678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053856, 0.158323, 0.985917,
		0.317919, 0.938690, -0.133373,
		-0.946587, 0.306259, -0.100888,
		41.169716, 31.262728, 33.028412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.942692, 33.410313, 25.332197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588696, 33.389664, 25.517292>,  <40.376297, 33.377274, 25.628349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588696, 33.389664, 25.517292>,  <40.942692, 33.410313, 25.332197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588696, 33.389664, 25.517292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465045, -0.049158, 0.883921,
		-0.022883, 0.997456, 0.067512,
		-0.884991, -0.051623, 0.462737,
		40.323196, 33.374176, 25.656113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897305, 33.962551, 25.970261>,  <40.942692, 33.410313, 25.332197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897305, 33.962551, 25.970261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615902, 33.687176, 26.040848>,  <40.447060, 33.521950, 26.083200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615902, 33.687176, 26.040848>,  <40.897305, 33.962551, 25.970261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615902, 33.687176, 26.040848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267210, -0.026141, 0.963284,
		-0.658544, 0.724828, 0.202347,
		-0.703505, -0.688434, 0.176466,
		40.404850, 33.480644, 26.093788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466572, 34.196220, 26.618248>,  <40.897305, 33.962551, 25.970261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466572, 34.196220, 26.618248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466347, 33.797997, 26.580608>,  <40.466213, 33.559063, 26.558023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466347, 33.797997, 26.580608>,  <40.466572, 34.196220, 26.618248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466347, 33.797997, 26.580608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401897, -0.086390, 0.911601,
		-0.915685, -0.037310, 0.400162,
		-0.000558, -0.995563, -0.094101,
		40.466179, 33.499329, 26.552378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335316, 33.962254, 27.246277>,  <40.466572, 34.196220, 26.618248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335316, 33.962254, 27.246277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431259, 33.618908, 27.064871>,  <40.488823, 33.412899, 26.956026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431259, 33.618908, 27.064871>,  <40.335316, 33.962254, 27.246277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431259, 33.618908, 27.064871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350343, -0.359141, 0.865030,
		-0.905389, -0.366368, 0.214581,
		0.239855, -0.858366, -0.453517,
		40.503216, 33.361397, 26.928816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955894, 33.348248, 27.542387>,  <40.335316, 33.962254, 27.246277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955894, 33.348248, 27.542387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270287, 33.178650, 27.362406>,  <40.458923, 33.076889, 27.254417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270287, 33.178650, 27.362406>,  <39.955894, 33.348248, 27.542387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270287, 33.178650, 27.362406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157507, -0.566449, 0.808905,
		-0.597848, -0.706656, -0.378437,
		0.785983, -0.423996, -0.449954,
		40.506081, 33.051453, 27.227419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863617, 32.648518, 27.532778>,  <39.955894, 33.348248, 27.542387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863617, 32.648518, 27.532778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261955, 32.678101, 27.511518>,  <40.500957, 32.695850, 27.498762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261955, 32.678101, 27.511518>,  <39.863617, 32.648518, 27.532778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261955, 32.678101, 27.511518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088790, -0.658498, 0.747326,
		0.020272, -0.748939, -0.662328,
		0.995844, 0.073958, -0.053149,
		40.560707, 32.700287, 27.495573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109993, 32.030064, 27.592342>,  <39.863617, 32.648518, 27.532778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109993, 32.030064, 27.592342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443935, 32.235176, 27.672409>,  <40.644302, 32.358246, 27.720449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443935, 32.235176, 27.672409>,  <40.109993, 32.030064, 27.592342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443935, 32.235176, 27.672409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123241, -0.528513, 0.839932,
		0.536495, -0.676554, -0.504428,
		0.834857, 0.512785, 0.200165,
		40.694393, 32.389011, 27.732458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619160, 31.464230, 27.712044>,  <40.109993, 32.030064, 27.592342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619160, 31.464230, 27.712044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756275, 31.802477, 27.875717>,  <40.838543, 32.005424, 27.973921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756275, 31.802477, 27.875717>,  <40.619160, 31.464230, 27.712044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756275, 31.802477, 27.875717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305777, -0.512288, 0.802534,
		0.888255, -0.149979, -0.434176,
		0.342787, 0.845617, 0.409182,
		40.859112, 32.056160, 27.998472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993797, 31.281876, 28.201601>,  <40.619160, 31.464230, 27.712044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993797, 31.281876, 28.201601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963013, 31.664558, 28.313877>,  <40.944542, 31.894169, 28.381243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963013, 31.664558, 28.313877>,  <40.993797, 31.281876, 28.201601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963013, 31.664558, 28.313877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058726, -0.276685, 0.959164,
		0.995303, 0.090307, -0.034889,
		-0.076966, 0.956708, 0.280689,
		40.939922, 31.951571, 28.398085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673325, 31.077009, 27.807264>,  <40.993797, 31.281876, 28.201601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673325, 31.077009, 27.807264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794216, 30.715580, 27.685801>,  <41.866753, 30.498722, 27.612923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794216, 30.715580, 27.685801>,  <41.673325, 31.077009, 27.807264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794216, 30.715580, 27.685801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051802, 0.302517, -0.951735,
		0.951826, 0.303373, 0.044622,
		0.302230, -0.903575, -0.303659,
		41.884884, 30.444508, 27.594704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199055, 31.192564, 27.237360>,  <41.673325, 31.077009, 27.807264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199055, 31.192564, 27.237360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071999, 30.816088, 27.191286>,  <41.995766, 30.590202, 27.163643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071999, 30.816088, 27.191286>,  <42.199055, 31.192564, 27.237360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071999, 30.816088, 27.191286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270697, 0.026410, -0.962302,
		0.908751, -0.336846, 0.246388,
		-0.317641, -0.941189, -0.115184,
		41.976707, 30.533731, 27.156731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646584, 30.826189, 26.722563>,  <42.199055, 31.192564, 27.237360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646584, 30.826189, 26.722563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298298, 30.630898, 26.746174>,  <42.089325, 30.513721, 26.760340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298298, 30.630898, 26.746174>,  <42.646584, 30.826189, 26.722563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298298, 30.630898, 26.746174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108600, 0.073826, -0.991340,
		0.479645, -0.869586, -0.117304,
		-0.870716, -0.488231, 0.059027,
		42.037083, 30.484428, 26.763882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679859, 30.252846, 26.241379>,  <42.646584, 30.826189, 26.722563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679859, 30.252846, 26.241379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290886, 30.329380, 26.294691>,  <42.057503, 30.375301, 26.326677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290886, 30.329380, 26.294691>,  <42.679859, 30.252846, 26.241379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290886, 30.329380, 26.294691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134998, 0.004086, -0.990838,
		-0.190130, -0.981516, 0.021857,
		-0.972433, 0.191338, 0.133279,
		41.999157, 30.386782, 26.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385410, 29.840153, 25.709801>,  <42.679859, 30.252846, 26.241379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385410, 29.840153, 25.709801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079090, 30.062647, 25.838888>,  <41.895298, 30.196144, 25.916340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079090, 30.062647, 25.838888>,  <42.385410, 29.840153, 25.709801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079090, 30.062647, 25.838888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349140, 0.061805, -0.935030,
		-0.540042, -0.828723, 0.146873,
		-0.765804, 0.556235, 0.322718,
		41.849350, 30.229517, 25.935703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871910, 29.539122, 25.411835>,  <42.385410, 29.840153, 25.709801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871910, 29.539122, 25.411835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740868, 29.906998, 25.498409>,  <41.662243, 30.127724, 25.550354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740868, 29.906998, 25.498409>,  <41.871910, 29.539122, 25.411835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740868, 29.906998, 25.498409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524367, 0.013575, -0.851384,
		-0.785947, -0.392412, 0.477808,
		-0.327607, 0.919690, 0.216437,
		41.642586, 30.182905, 25.563341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130802, 29.571192, 25.295519>,  <41.871910, 29.539122, 25.411835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130802, 29.571192, 25.295519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262962, 29.945683, 25.247662>,  <41.342258, 30.170376, 25.218946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262962, 29.945683, 25.247662>,  <41.130802, 29.571192, 25.295519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262962, 29.945683, 25.247662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538945, 0.083078, -0.838234,
		-0.774836, 0.341437, 0.532024,
		0.330403, 0.936226, -0.119644,
		41.362083, 30.226551, 25.211769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577396, 29.937143, 25.069254>,  <41.130802, 29.571192, 25.295519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577396, 29.937143, 25.069254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880722, 30.150492, 24.919338>,  <41.062717, 30.278502, 24.829388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880722, 30.150492, 24.919338>,  <40.577396, 29.937143, 25.069254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880722, 30.150492, 24.919338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441903, -0.002075, -0.897060,
		-0.479244, 0.845879, 0.234125,
		0.758319, 0.533371, -0.374791,
		41.108219, 30.310503, 24.806902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271030, 30.477140, 24.833668>,  <40.577396, 29.937143, 25.069254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271030, 30.477140, 24.833668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616596, 30.436665, 24.636322>,  <40.823936, 30.412378, 24.517916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616596, 30.436665, 24.636322>,  <40.271030, 30.477140, 24.833668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616596, 30.436665, 24.636322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495734, 0.001954, -0.868472,
		0.088846, 0.994865, -0.048477,
		0.863918, -0.101192, -0.493362,
		40.875771, 30.406307, 24.488314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221554, 30.998098, 24.369066>,  <40.271030, 30.477140, 24.833668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221554, 30.998098, 24.369066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501942, 30.740364, 24.246775>,  <40.670174, 30.585724, 24.173399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501942, 30.740364, 24.246775>,  <40.221554, 30.998098, 24.369066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501942, 30.740364, 24.246775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260052, 0.168245, -0.950824,
		0.664087, 0.746006, -0.049626,
		0.700972, -0.644335, -0.305730,
		40.712234, 30.547064, 24.155056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532860, 31.299252, 23.846392>,  <40.221554, 30.998098, 24.369066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532860, 31.299252, 23.846392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620625, 30.911310, 23.803989>,  <40.673283, 30.678545, 23.778549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620625, 30.911310, 23.803989>,  <40.532860, 31.299252, 23.846392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620625, 30.911310, 23.803989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428226, 0.001890, -0.903670,
		0.876630, 0.243672, -0.414903,
		0.219415, -0.969856, -0.106004,
		40.686451, 30.620354, 23.772188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830894, 31.168604, 23.150434>,  <40.532860, 31.299252, 23.846392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830894, 31.168604, 23.150434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716190, 30.810581, 23.287048>,  <40.647369, 30.595768, 23.369017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716190, 30.810581, 23.287048>,  <40.830894, 31.168604, 23.150434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716190, 30.810581, 23.287048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556012, -0.134823, -0.820167,
		0.780141, -0.425089, -0.458999,
		-0.286760, -0.895055, 0.341535,
		40.630161, 30.542065, 23.389509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857815, 30.740278, 22.517050>,  <40.830894, 31.168604, 23.150434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857815, 30.740278, 22.517050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637596, 30.536860, 22.781858>,  <40.505463, 30.414808, 22.940742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637596, 30.536860, 22.781858>,  <40.857815, 30.740278, 22.517050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637596, 30.536860, 22.781858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644515, -0.245071, -0.724251,
		0.530560, -0.825420, -0.192843,
		-0.550551, -0.508549, 0.662021,
		40.472431, 30.384295, 22.980465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676239, 30.122507, 22.122332>,  <40.857815, 30.740278, 22.517050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676239, 30.122507, 22.122332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398563, 30.145548, 22.409325>,  <40.231956, 30.159372, 22.581520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398563, 30.145548, 22.409325>,  <40.676239, 30.122507, 22.122332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398563, 30.145548, 22.409325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708225, -0.232632, -0.666558,
		0.128516, -0.970858, 0.202284,
		-0.694191, 0.057599, 0.717483,
		40.190308, 30.162828, 22.624569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.466251, 30.790325, 26.185308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847061, 30.912205, 26.173954>,  <34.075546, 30.985332, 26.167141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847061, 30.912205, 26.173954>,  <33.466251, 30.790325, 26.185308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847061, 30.912205, 26.173954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191276, -0.520081, 0.832424,
		0.238877, -0.797918, -0.553412,
		0.952025, 0.304701, -0.028387,
		34.132668, 31.003614, 26.165438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815571, 30.214087, 26.401806>,  <33.466251, 30.790325, 26.185308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815571, 30.214087, 26.401806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.110279, 30.484133, 26.416721>,  <34.287102, 30.646160, 26.425671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.110279, 30.484133, 26.416721>,  <33.815571, 30.214087, 26.401806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110279, 30.484133, 26.416721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431448, -0.511879, 0.742854,
		0.520602, -0.531222, -0.668414,
		0.736768, 0.675117, 0.037291,
		34.331310, 30.686668, 26.427908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498154, 29.863766, 26.473179>,  <33.815571, 30.214087, 26.401806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498154, 29.863766, 26.473179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568687, 30.241232, 26.585182>,  <34.611008, 30.467710, 26.652384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.568687, 30.241232, 26.585182>,  <34.498154, 29.863766, 26.473179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568687, 30.241232, 26.585182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495595, -0.330894, 0.803053,
		0.850466, -0.002834, -0.526022,
		0.176333, 0.943664, 0.280010,
		34.621586, 30.524330, 26.669186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212246, 29.910820, 26.625610>,  <34.498154, 29.863766, 26.473179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212246, 29.910820, 26.625610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045441, 30.212313, 26.828783>,  <34.945358, 30.393208, 26.950687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045441, 30.212313, 26.828783>,  <35.212246, 29.910820, 26.625610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045441, 30.212313, 26.828783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532382, -0.250380, 0.808628,
		0.736663, 0.607619, -0.296862,
		-0.417009, 0.753730, 0.507931,
		34.920338, 30.438433, 26.981163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719479, 30.450695, 26.835857>,  <35.212246, 29.910820, 26.625610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719479, 30.450695, 26.835857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424957, 30.496511, 27.102613>,  <35.248245, 30.524002, 27.262667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424957, 30.496511, 27.102613>,  <35.719479, 30.450695, 26.835857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424957, 30.496511, 27.102613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652194, -0.142469, 0.744543,
		0.180292, 0.983149, 0.030197,
		-0.736300, 0.114541, 0.666891,
		35.204067, 30.530874, 27.302681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027676, 30.729523, 27.361639>,  <35.719479, 30.450695, 26.835857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027676, 30.729523, 27.361639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673294, 30.635670, 27.521660>,  <35.460667, 30.579357, 27.617672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673294, 30.635670, 27.521660>,  <36.027676, 30.729523, 27.361639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673294, 30.635670, 27.521660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413859, -0.010656, 0.910279,
		-0.209318, 0.972026, 0.106545,
		-0.885950, -0.234632, 0.400051,
		35.407509, 30.565281, 27.641676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953163, 31.214418, 27.924549>,  <36.027676, 30.729523, 27.361639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953163, 31.214418, 27.924549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704353, 30.910212, 27.999067>,  <35.555069, 30.727688, 28.043777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704353, 30.910212, 27.999067>,  <35.953163, 31.214418, 27.924549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704353, 30.910212, 27.999067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296192, -0.008298, 0.955092,
		-0.724817, 0.649266, 0.230420,
		-0.622021, -0.760516, 0.186293,
		35.517746, 30.682056, 28.054955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810284, 31.295269, 28.560413>,  <35.953163, 31.214418, 27.924549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810284, 31.295269, 28.560413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.696293, 30.913229, 28.527977>,  <35.627899, 30.684006, 28.508514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.696293, 30.913229, 28.527977>,  <35.810284, 31.295269, 28.560413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696293, 30.913229, 28.527977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311184, -0.172202, 0.934618,
		-0.906617, 0.241108, 0.346285,
		-0.284975, -0.955099, -0.081092,
		35.610802, 30.626699, 28.503649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432446, 31.132633, 29.207361>,  <35.810284, 31.295269, 28.560413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432446, 31.132633, 29.207361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554222, 30.781675, 29.059042>,  <35.627289, 30.571100, 28.970051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554222, 30.781675, 29.059042>,  <35.432446, 31.132633, 29.207361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554222, 30.781675, 29.059042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349348, -0.259299, 0.900400,
		-0.886154, -0.403659, 0.227574,
		0.304445, -0.877396, -0.370796,
		35.645557, 30.518457, 28.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233978, 30.790180, 29.709934>,  <35.432446, 31.132633, 29.207361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233978, 30.790180, 29.709934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459862, 30.542982, 29.491144>,  <35.595394, 30.394663, 29.359871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459862, 30.542982, 29.491144>,  <35.233978, 30.790180, 29.709934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459862, 30.542982, 29.491144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387106, -0.386985, 0.836893,
		-0.728868, -0.684341, 0.020695,
		0.564712, -0.617996, -0.546974,
		35.629276, 30.357584, 29.327051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174049, 30.114695, 30.002054>,  <35.233978, 30.790180, 29.709934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174049, 30.114695, 30.002054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533318, 30.096678, 29.827118>,  <35.748878, 30.085869, 29.722157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533318, 30.096678, 29.827118>,  <35.174049, 30.114695, 30.002054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533318, 30.096678, 29.827118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378721, -0.425977, 0.821653,
		-0.223302, -0.903612, -0.365542,
		0.898169, -0.045039, -0.437338,
		35.802769, 30.083166, 29.695917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448624, 29.343069, 29.908710>,  <35.174049, 30.114695, 30.002054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448624, 29.343069, 29.908710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775940, 29.571489, 29.882490>,  <35.972332, 29.708542, 29.866758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775940, 29.571489, 29.882490>,  <35.448624, 29.343069, 29.908710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775940, 29.571489, 29.882490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437194, -0.544296, 0.715963,
		0.373174, -0.614526, -0.695053,
		0.818293, 0.571052, -0.065550,
		36.021427, 29.742805, 29.862825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963909, 28.817657, 29.856049>,  <35.448624, 29.343069, 29.908710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963909, 28.817657, 29.856049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151333, 29.156157, 29.957493>,  <36.263786, 29.359255, 30.018360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151333, 29.156157, 29.957493>,  <35.963909, 28.817657, 29.856049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151333, 29.156157, 29.957493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490690, -0.488020, 0.721845,
		0.734626, -0.213784, -0.643911,
		0.468560, 0.846247, 0.253610,
		36.291901, 29.410030, 30.033575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699829, 28.652349, 30.110825>,  <35.963909, 28.817657, 29.856049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699829, 28.652349, 30.110825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.632298, 29.008711, 30.279486>,  <36.591778, 29.222528, 30.380682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.632298, 29.008711, 30.279486>,  <36.699829, 28.652349, 30.110825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632298, 29.008711, 30.279486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344272, -0.347548, 0.872174,
		0.923566, 0.292409, -0.248037,
		-0.168827, 0.890903, 0.421651,
		36.581650, 29.275982, 30.405981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360737, 28.494164, 29.730019>,  <36.699829, 28.652349, 30.110825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360737, 28.494164, 29.730019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524231, 28.173691, 29.555183>,  <37.622326, 27.981407, 29.450283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524231, 28.173691, 29.555183>,  <37.360737, 28.494164, 29.730019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524231, 28.173691, 29.555183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467427, 0.227568, -0.854240,
		0.783867, 0.553465, -0.281478,
		0.408736, -0.801180, -0.437087,
		37.646851, 27.933336, 29.424057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588654, 28.663017, 29.071695>,  <37.360737, 28.494164, 29.730019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588654, 28.663017, 29.071695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546238, 28.266684, 29.038210>,  <37.520790, 28.028883, 29.018120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546238, 28.266684, 29.038210>,  <37.588654, 28.663017, 29.071695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546238, 28.266684, 29.038210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446715, 0.122680, -0.886225,
		0.888370, -0.056577, -0.455629,
		-0.106036, -0.990832, -0.083712,
		37.514427, 27.969435, 29.013096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796158, 28.502743, 28.400608>,  <37.588654, 28.663017, 29.071695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796158, 28.502743, 28.400608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551674, 28.210957, 28.523447>,  <37.404984, 28.035885, 28.597151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551674, 28.210957, 28.523447>,  <37.796158, 28.502743, 28.400608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551674, 28.210957, 28.523447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470867, 0.023262, -0.881897,
		0.636169, -0.683623, -0.357698,
		-0.611206, -0.729464, 0.307097,
		37.368313, 27.992117, 28.615576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675587, 28.168695, 27.840612>,  <37.796158, 28.502743, 28.400608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675587, 28.168695, 27.840612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366795, 28.045349, 28.062950>,  <37.181519, 27.971342, 28.196352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366795, 28.045349, 28.062950>,  <37.675587, 28.168695, 27.840612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366795, 28.045349, 28.062950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593315, 0.035765, -0.804176,
		0.228100, -0.950596, -0.210568,
		-0.771977, -0.308365, 0.555844,
		37.135201, 27.952839, 28.229704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416515, 27.473263, 27.565655>,  <37.675587, 28.168695, 27.840612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416515, 27.473263, 27.565655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118137, 27.654198, 27.761185>,  <36.939110, 27.762758, 27.878504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118137, 27.654198, 27.761185>,  <37.416515, 27.473263, 27.565655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118137, 27.654198, 27.761185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558773, -0.025680, -0.828923,
		-0.362402, -0.891476, 0.271912,
		-0.745948, 0.452340, 0.488826,
		36.894352, 27.789900, 27.907833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809532, 27.072374, 27.266680>,  <37.416515, 27.473263, 27.565655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809532, 27.072374, 27.266680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662506, 27.396364, 27.449472>,  <36.574291, 27.590759, 27.559149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662506, 27.396364, 27.449472>,  <36.809532, 27.072374, 27.266680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662506, 27.396364, 27.449472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723323, 0.059873, -0.687909,
		-0.584552, -0.583397, 0.563867,
		-0.367564, 0.809977, 0.456984,
		36.552238, 27.639357, 27.586567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125862, 26.931007, 27.215347>,  <36.809532, 27.072374, 27.266680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125862, 26.931007, 27.215347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177429, 27.325338, 27.258284>,  <36.208370, 27.561937, 27.284046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.177429, 27.325338, 27.258284>,  <36.125862, 26.931007, 27.215347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177429, 27.325338, 27.258284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640879, 0.165426, -0.749605,
		-0.756740, 0.027842, 0.653123,
		0.128914, 0.985829, 0.107341,
		36.216103, 27.621088, 27.290485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498711, 27.188160, 27.115578>,  <36.125862, 26.931007, 27.215347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498711, 27.188160, 27.115578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.740562, 27.504406, 27.076897>,  <35.885674, 27.694155, 27.053688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.740562, 27.504406, 27.076897>,  <35.498711, 27.188160, 27.115578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740562, 27.504406, 27.076897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567207, 0.342147, -0.749140,
		-0.559196, 0.507800, 0.655315,
		0.604628, 0.790616, -0.096700,
		35.921951, 27.741590, 27.047886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000370, 27.685917, 26.915070>,  <35.498711, 27.188160, 27.115578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000370, 27.685917, 26.915070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360256, 27.816906, 26.799641>,  <35.576187, 27.895498, 26.730383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360256, 27.816906, 26.799641>,  <35.000370, 27.685917, 26.915070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360256, 27.816906, 26.799641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406800, 0.389498, -0.826320,
		-0.158198, 0.860845, 0.483653,
		0.899715, 0.327472, -0.288574,
		35.630169, 27.915148, 26.713068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860821, 28.327841, 26.794933>,  <35.000370, 27.685917, 26.915070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860821, 28.327841, 26.794933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198479, 28.247477, 26.596113>,  <35.401073, 28.199259, 26.476820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198479, 28.247477, 26.596113>,  <34.860821, 28.327841, 26.794933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198479, 28.247477, 26.596113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379865, 0.430100, -0.818973,
		0.378322, 0.880141, 0.286747,
		0.844142, -0.200910, -0.497052,
		35.451721, 28.187204, 26.446999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021713, 28.987108, 26.497440>,  <34.860821, 28.327841, 26.794933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021713, 28.987108, 26.497440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205345, 28.707121, 26.278610>,  <35.315525, 28.539129, 26.147312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205345, 28.707121, 26.278610>,  <35.021713, 28.987108, 26.497440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205345, 28.707121, 26.278610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394910, 0.390828, -0.831445,
		0.795795, 0.597747, -0.097002,
		0.459082, -0.699966, -0.547074,
		35.343071, 28.497131, 26.114489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502872, 29.337067, 26.010782>,  <35.021713, 28.987108, 26.497440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502872, 29.337067, 26.010782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416950, 28.989780, 25.831869>,  <35.365395, 28.781408, 25.724522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416950, 28.989780, 25.831869>,  <35.502872, 29.337067, 26.010782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416950, 28.989780, 25.831869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072235, 0.470841, -0.879256,
		0.973981, -0.156563, -0.163856,
		-0.214809, -0.868215, -0.447281,
		35.352509, 28.729317, 25.697685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823135, 29.290041, 25.259691>,  <35.502872, 29.337067, 26.010782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823135, 29.290041, 25.259691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.536003, 29.011560, 25.261848>,  <35.363724, 28.844473, 25.263144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.536003, 29.011560, 25.261848>,  <35.823135, 29.290041, 25.259691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536003, 29.011560, 25.261848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187528, 0.185882, -0.964511,
		0.670489, -0.693364, -0.263988,
		-0.717828, -0.696199, 0.005393,
		35.320656, 28.802700, 25.263466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089733, 28.921000, 24.677578>,  <35.823135, 29.290041, 25.259691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089733, 28.921000, 24.677578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701004, 28.844019, 24.732019>,  <35.467766, 28.797831, 24.764685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701004, 28.844019, 24.732019>,  <36.089733, 28.921000, 24.677578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701004, 28.844019, 24.732019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168702, 0.164622, -0.971823,
		0.164622, -0.967400, -0.192450,
		0.971823, 0.192450, -0.136102,
		35.409458, 28.786283, 24.772850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564152, 28.380463, 24.354691>,  <36.089733, 28.921000, 24.677578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564152, 28.380463, 24.354691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836452, 28.328421, 24.066345>,  <36.999832, 28.297195, 23.893337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.836452, 28.328421, 24.066345>,  <36.564152, 28.380463, 24.354691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836452, 28.328421, 24.066345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594384, -0.477037, 0.647413,
		-0.428111, -0.869200, -0.247413,
		0.680756, -0.130106, -0.720863,
		37.040680, 28.289389, 23.850086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782314, 27.598801, 24.415516>,  <36.564152, 28.380463, 24.354691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782314, 27.598801, 24.415516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055202, 27.811548, 24.214838>,  <37.218933, 27.939196, 24.094431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055202, 27.811548, 24.214838>,  <36.782314, 27.598801, 24.415516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055202, 27.811548, 24.214838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721287, -0.377257, 0.580880,
		0.119684, -0.758152, -0.641001,
		0.682217, 0.531867, -0.501694,
		37.259869, 27.971107, 24.064329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323570, 27.163864, 24.217031>,  <36.782314, 27.598801, 24.415516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323570, 27.163864, 24.217031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.493984, 27.522356, 24.167604>,  <37.596233, 27.737452, 24.137949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.493984, 27.522356, 24.167604>,  <37.323570, 27.163864, 24.217031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493984, 27.522356, 24.167604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758305, -0.279254, 0.589059,
		0.493425, -0.344660, -0.798587,
		0.426034, 0.896229, -0.123567,
		37.621796, 27.791225, 24.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086575, 26.970598, 24.189356>,  <37.323570, 27.163864, 24.217031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086575, 26.970598, 24.189356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011662, 27.347092, 24.301785>,  <37.966713, 27.572989, 24.369242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011662, 27.347092, 24.301785>,  <38.086575, 26.970598, 24.189356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011662, 27.347092, 24.301785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585043, -0.122972, 0.801625,
		0.789081, 0.314571, -0.527633,
		-0.187284, 0.941235, 0.281073,
		37.955475, 27.629461, 24.386106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771294, 27.251192, 24.279289>,  <38.086575, 26.970598, 24.189356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771294, 27.251192, 24.279289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.512989, 27.474474, 24.487675>,  <38.358006, 27.608444, 24.612705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.512989, 27.474474, 24.487675>,  <38.771294, 27.251192, 24.279289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512989, 27.474474, 24.487675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615203, -0.023741, 0.788011,
		0.452241, 0.829362, -0.328079,
		-0.645758, 0.558207, 0.520963,
		38.319263, 27.641935, 24.643963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239143, 27.755650, 24.700209>,  <38.771294, 27.251192, 24.279289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239143, 27.755650, 24.700209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899296, 27.769335, 24.910723>,  <38.695389, 27.777546, 25.037031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899296, 27.769335, 24.910723>,  <39.239143, 27.755650, 24.700209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899296, 27.769335, 24.910723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522597, -0.079698, 0.848847,
		0.070985, 0.996232, 0.049834,
		-0.849620, 0.034213, 0.526285,
		38.644409, 27.779598, 25.068607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441654, 28.168362, 25.288403>,  <39.239143, 27.755650, 24.700209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441654, 28.168362, 25.288403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101002, 27.997986, 25.410585>,  <38.896610, 27.895760, 25.483894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101002, 27.997986, 25.410585>,  <39.441654, 28.168362, 25.288403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101002, 27.997986, 25.410585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471400, -0.367639, 0.801638,
		-0.229152, 0.826690, 0.513880,
		-0.851629, -0.425940, 0.305456,
		38.845512, 27.870203, 25.502222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459145, 28.360933, 25.982023>,  <39.441654, 28.168362, 25.288403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459145, 28.360933, 25.982023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174004, 28.081579, 25.956404>,  <39.002918, 27.913967, 25.941032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174004, 28.081579, 25.956404>,  <39.459145, 28.360933, 25.982023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174004, 28.081579, 25.956404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349937, -0.433350, 0.830513,
		-0.607776, 0.569616, 0.553304,
		-0.712848, -0.698387, -0.064050,
		38.960148, 27.872063, 25.937189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863182, 28.367405, 26.484221>,  <39.459145, 28.360933, 25.982023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863182, 28.367405, 26.484221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.918736, 27.984474, 26.382837>,  <38.952068, 27.754717, 26.322008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.918736, 27.984474, 26.382837>,  <38.863182, 28.367405, 26.484221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918736, 27.984474, 26.382837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119525, -0.237863, 0.963916,
		-0.983070, -0.164163, 0.081389,
		0.138880, -0.957325, -0.253457,
		38.960400, 27.697277, 26.306801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644661, 28.023149, 27.071394>,  <38.863182, 28.367405, 26.484221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644661, 28.023149, 27.071394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852882, 27.739555, 26.881084>,  <38.977814, 27.569399, 26.766899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852882, 27.739555, 26.881084>,  <38.644661, 28.023149, 27.071394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852882, 27.739555, 26.881084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297066, -0.372024, 0.879403,
		-0.800485, -0.599113, 0.016957,
		0.520553, -0.708987, -0.475776,
		39.009048, 27.526859, 26.738352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506390, 27.424898, 27.456923>,  <38.644661, 28.023149, 27.071394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506390, 27.424898, 27.456923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836422, 27.346266, 27.245037>,  <39.034443, 27.299086, 27.117907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836422, 27.346266, 27.245037>,  <38.506390, 27.424898, 27.456923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836422, 27.346266, 27.245037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424843, -0.402218, 0.811005,
		-0.372484, -0.894192, -0.248349,
		0.825084, -0.196577, -0.529711,
		39.083946, 27.287291, 27.086123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646530, 26.734692, 27.648661>,  <38.506390, 27.424898, 27.456923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646530, 26.734692, 27.648661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984074, 26.887177, 27.497620>,  <39.186600, 26.978668, 27.406994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984074, 26.887177, 27.497620>,  <38.646530, 26.734692, 27.648661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984074, 26.887177, 27.497620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476192, -0.207739, 0.854450,
		0.247285, -0.900844, -0.356833,
		0.843855, 0.381214, -0.377604,
		39.237228, 27.001541, 27.384338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204887, 26.192156, 27.807316>,  <38.646530, 26.734692, 27.648661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204887, 26.192156, 27.807316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441589, 26.504057, 27.725531>,  <39.583611, 26.691198, 27.676460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441589, 26.504057, 27.725531>,  <39.204887, 26.192156, 27.807316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441589, 26.504057, 27.725531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557365, -0.212533, 0.802605,
		0.582379, -0.588909, -0.560376,
		0.591759, 0.779754, -0.204463,
		39.619118, 26.737984, 27.664192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903923, 25.995588, 28.016560>,  <39.204887, 26.192156, 27.807316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903923, 25.995588, 28.016560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.932426, 26.392893, 27.980005>,  <39.949528, 26.631275, 27.958073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.932426, 26.392893, 27.980005>,  <39.903923, 25.995588, 28.016560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932426, 26.392893, 27.980005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650575, 0.023166, 0.759089,
		0.756091, -0.113546, -0.644541,
		0.071260, 0.993263, -0.091386,
		39.953804, 26.690872, 27.952589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.210232, 29.601801, 21.912905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.003506, 29.833319, 22.165220>,  <39.879471, 29.972229, 22.316610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.003506, 29.833319, 22.165220>,  <40.210232, 29.601801, 21.912905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003506, 29.833319, 22.165220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802216, -0.070156, -0.592897,
		-0.298913, -0.812449, 0.500578,
		-0.516817, 0.578796, 0.630789,
		39.848461, 30.006958, 22.354458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531940, 29.294243, 22.117542>,  <40.210232, 29.601801, 21.912905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531940, 29.294243, 22.117542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508865, 29.692591, 22.145596>,  <39.495022, 29.931599, 22.162428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508865, 29.692591, 22.145596>,  <39.531940, 29.294243, 22.117542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508865, 29.692591, 22.145596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758768, 0.001919, -0.651358,
		-0.648802, -0.090790, 0.755522,
		-0.057687, 0.995868, 0.070134,
		39.491558, 29.991352, 22.166636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868687, 29.416155, 21.989454>,  <39.531940, 29.294243, 22.117542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868687, 29.416155, 21.989454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024574, 29.777489, 21.917784>,  <39.118107, 29.994289, 21.874781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024574, 29.777489, 21.917784>,  <38.868687, 29.416155, 21.989454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024574, 29.777489, 21.917784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650375, 0.132219, -0.748017,
		-0.652019, 0.408052, 0.639035,
		0.389722, 0.903334, -0.179178,
		39.141491, 30.048489, 21.864031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248409, 29.774670, 21.833914>,  <38.868687, 29.416155, 21.989454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248409, 29.774670, 21.833914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547905, 30.005474, 21.703411>,  <38.727604, 30.143957, 21.625109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547905, 30.005474, 21.703411>,  <38.248409, 29.774670, 21.833914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547905, 30.005474, 21.703411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531661, 0.228812, -0.815464,
		-0.395879, 0.784032, 0.478095,
		0.748744, 0.577009, -0.326257,
		38.772530, 30.178577, 21.605534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896885, 30.272635, 21.479963>,  <38.248409, 29.774670, 21.833914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896885, 30.272635, 21.479963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277683, 30.328611, 21.371059>,  <38.506161, 30.362198, 21.305717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277683, 30.328611, 21.371059>,  <37.896885, 30.272635, 21.479963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277683, 30.328611, 21.371059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305388, 0.372818, -0.876210,
		-0.021115, 0.917291, 0.397656,
		0.951994, 0.139940, -0.272258,
		38.563282, 30.370594, 21.289383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963577, 30.934767, 21.234684>,  <37.896885, 30.272635, 21.479963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963577, 30.934767, 21.234684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224899, 30.688560, 21.058352>,  <38.381691, 30.540836, 20.952551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224899, 30.688560, 21.058352>,  <37.963577, 30.934767, 21.234684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224899, 30.688560, 21.058352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437269, 0.168571, -0.883391,
		0.618052, 0.769887, -0.159017,
		0.653306, -0.615514, -0.440833,
		38.420891, 30.503906, 20.926102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264889, 31.280413, 20.549923>,  <37.963577, 30.934767, 21.234684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264889, 31.280413, 20.549923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.325531, 30.886209, 20.519476>,  <38.361916, 30.649689, 20.501207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.325531, 30.886209, 20.519476>,  <38.264889, 31.280413, 20.549923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325531, 30.886209, 20.519476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333264, 0.021535, -0.942588,
		0.930566, 0.168265, -0.325169,
		0.151603, -0.985507, -0.076116,
		38.371014, 30.590557, 20.496641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581745, 31.204584, 19.898298>,  <38.264889, 31.280413, 20.549923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581745, 31.204584, 19.898298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.428936, 30.851994, 20.009336>,  <38.337250, 30.640438, 20.075958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.428936, 30.851994, 20.009336>,  <38.581745, 31.204584, 19.898298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428936, 30.851994, 20.009336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538286, -0.031925, -0.842157,
		0.751205, -0.471145, -0.462291,
		-0.382019, -0.881477, 0.277593,
		38.314331, 30.587551, 20.092615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561745, 30.876961, 19.320425>,  <38.581745, 31.204584, 19.898298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561745, 30.876961, 19.320425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306713, 30.673155, 19.551556>,  <38.153694, 30.550871, 19.690235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306713, 30.673155, 19.551556>,  <38.561745, 30.876961, 19.320425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306713, 30.673155, 19.551556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659757, -0.026128, -0.751024,
		0.397755, -0.860066, -0.319497,
		-0.637582, -0.509514, 0.577827,
		38.115437, 30.520300, 19.724903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395302, 30.344814, 18.951094>,  <38.561745, 30.876961, 19.320425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395302, 30.344814, 18.951094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096031, 30.404945, 19.209593>,  <37.916470, 30.441025, 19.364693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096031, 30.404945, 19.209593>,  <38.395302, 30.344814, 18.951094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096031, 30.404945, 19.209593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640229, 0.092135, -0.762639,
		-0.174189, -0.984333, 0.027312,
		-0.748174, 0.150329, 0.646248,
		37.871578, 30.450045, 19.403467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915138, 29.972513, 18.765659>,  <38.395302, 30.344814, 18.951094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915138, 29.972513, 18.765659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.706913, 30.228674, 18.991545>,  <37.581978, 30.382370, 19.127077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.706913, 30.228674, 18.991545>,  <37.915138, 29.972513, 18.765659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706913, 30.228674, 18.991545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580545, 0.219509, -0.784082,
		-0.626086, -0.736004, 0.257514,
		-0.520561, 0.640401, 0.564715,
		37.550743, 30.420794, 19.160959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182598, 29.869482, 18.972178>,  <37.915138, 29.972513, 18.765659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182598, 29.869482, 18.972178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233852, 30.266174, 18.974991>,  <37.264606, 30.504190, 18.976679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233852, 30.266174, 18.974991>,  <37.182598, 29.869482, 18.972178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233852, 30.266174, 18.974991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790701, 0.106440, -0.602879,
		-0.598642, 0.071691, 0.797802,
		0.128139, 0.991732, 0.007034,
		37.272293, 30.563694, 18.977100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469780, 29.724707, 18.715197>,  <37.182598, 29.869482, 18.972178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469780, 29.724707, 18.715197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606289, 29.968388, 19.001528>,  <36.688194, 30.114595, 19.173326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.606289, 29.968388, 19.001528>,  <36.469780, 29.724707, 18.715197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606289, 29.968388, 19.001528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931275, -0.115821, -0.345417,
		-0.127520, 0.784512, -0.606860,
		0.341271, 0.609202, 0.715827,
		36.708672, 30.151148, 19.216276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040596, 29.583378, 18.133911>,  <36.469780, 29.724707, 18.715197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040596, 29.583378, 18.133911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649277, 29.663155, 18.156380>,  <35.414486, 29.711021, 18.169861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649277, 29.663155, 18.156380>,  <36.040596, 29.583378, 18.133911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649277, 29.663155, 18.156380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063216, 0.029130, 0.997575,
		0.197322, 0.979477, -0.041106,
		-0.978298, 0.199442, 0.056171,
		35.355785, 29.722988, 18.173231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840378, 30.203478, 18.515078>,  <36.040596, 29.583378, 18.133911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840378, 30.203478, 18.515078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.546413, 29.933580, 18.542301>,  <35.370037, 29.771643, 18.558636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.546413, 29.933580, 18.542301>,  <35.840378, 30.203478, 18.515078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546413, 29.933580, 18.542301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128586, -0.040103, 0.990887,
		-0.665865, 0.736962, 0.116234,
		-0.734908, -0.674743, 0.068060,
		35.325943, 29.731157, 18.562719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464367, 30.325811, 19.184401>,  <35.840378, 30.203478, 18.515078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464367, 30.325811, 19.184401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350773, 29.953659, 19.091667>,  <35.282616, 29.730368, 19.036028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350773, 29.953659, 19.091667>,  <35.464367, 30.325811, 19.184401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350773, 29.953659, 19.091667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170235, -0.286868, 0.942723,
		-0.943596, 0.228251, 0.239849,
		-0.283983, -0.930381, -0.231831,
		35.265579, 29.674545, 19.022118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988468, 30.146351, 19.572620>,  <35.464367, 30.325811, 19.184401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988468, 30.146351, 19.572620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117569, 29.778872, 19.481558>,  <35.195030, 29.558384, 19.426920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117569, 29.778872, 19.481558>,  <34.988468, 30.146351, 19.572620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117569, 29.778872, 19.481558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194090, -0.171176, 0.965934,
		-0.926370, -0.355942, 0.123063,
		0.322751, -0.918697, -0.227657,
		35.214394, 29.503262, 19.413261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718407, 29.756969, 20.181959>,  <34.988468, 30.146351, 19.572620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718407, 29.756969, 20.181959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970516, 29.500895, 20.006271>,  <35.121784, 29.347250, 19.900858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970516, 29.500895, 20.006271>,  <34.718407, 29.756969, 20.181959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970516, 29.500895, 20.006271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291271, -0.329427, 0.898131,
		-0.719662, -0.694002, -0.021163,
		0.630277, -0.640186, -0.439219,
		35.159599, 29.308838, 19.874506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604694, 29.029783, 20.432240>,  <34.718407, 29.756969, 20.181959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604694, 29.029783, 20.432240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981712, 29.069794, 20.304735>,  <35.207924, 29.093800, 20.228233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981712, 29.069794, 20.304735>,  <34.604694, 29.029783, 20.432240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981712, 29.069794, 20.304735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333204, -0.350755, 0.875183,
		-0.024264, -0.931110, -0.363932,
		0.942542, 0.100028, -0.318761,
		35.264477, 29.099802, 20.209106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900040, 28.498980, 20.742577>,  <34.604694, 29.029783, 20.432240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900040, 28.498980, 20.742577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181808, 28.761066, 20.633417>,  <35.350872, 28.918320, 20.567921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181808, 28.761066, 20.633417>,  <34.900040, 28.498980, 20.742577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181808, 28.761066, 20.633417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552989, -0.265596, 0.789723,
		0.444960, -0.707211, -0.549421,
		0.704425, 0.655219, -0.272900,
		35.393135, 28.957632, 20.551548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544605, 28.123140, 20.723276>,  <34.900040, 28.498980, 20.742577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544605, 28.123140, 20.723276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652195, 28.504835, 20.775562>,  <35.716751, 28.733852, 20.806934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652195, 28.504835, 20.775562>,  <35.544605, 28.123140, 20.723276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652195, 28.504835, 20.775562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659658, -0.281405, 0.696895,
		0.701786, -0.101220, -0.705160,
		0.268976, 0.954235, 0.130716,
		35.732887, 28.791105, 20.814777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190266, 28.109316, 20.834526>,  <35.544605, 28.123140, 20.723276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190266, 28.109316, 20.834526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112518, 28.473951, 20.979427>,  <36.065868, 28.692732, 21.066368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112518, 28.473951, 20.979427>,  <36.190266, 28.109316, 20.834526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112518, 28.473951, 20.979427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512081, -0.220685, 0.830103,
		0.836656, 0.346850, -0.423912,
		-0.194370, 0.911588, 0.362253,
		36.054207, 28.747427, 21.088102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802395, 28.313290, 21.223490>,  <36.190266, 28.109316, 20.834526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802395, 28.313290, 21.223490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553860, 28.598055, 21.354404>,  <36.404739, 28.768915, 21.432953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553860, 28.598055, 21.354404>,  <36.802395, 28.313290, 21.223490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553860, 28.598055, 21.354404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500811, 0.039590, 0.864650,
		0.602600, 0.701149, -0.381134,
		-0.621338, 0.711914, 0.327287,
		36.367458, 28.811628, 21.452591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217442, 28.789454, 21.602724>,  <36.802395, 28.313290, 21.223490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217442, 28.789454, 21.602724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836708, 28.772343, 21.724165>,  <36.608269, 28.762075, 21.797029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836708, 28.772343, 21.724165>,  <37.217442, 28.789454, 21.602724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836708, 28.772343, 21.724165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305623, -0.211475, 0.928371,
		0.024491, 0.976447, 0.214363,
		-0.951838, -0.042777, 0.303604,
		36.551155, 28.759510, 21.815247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236336, 29.310661, 22.094532>,  <37.217442, 28.789454, 21.602724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236336, 29.310661, 22.094532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910686, 29.087345, 22.158417>,  <36.715298, 28.953356, 22.196747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910686, 29.087345, 22.158417>,  <37.236336, 29.310661, 22.094532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910686, 29.087345, 22.158417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319954, -0.201758, 0.925701,
		-0.484589, 0.804738, 0.342884,
		-0.814127, -0.558292, 0.159710,
		36.666447, 28.919857, 22.206329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912647, 29.522234, 22.805990>,  <37.236336, 29.310661, 22.094532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912647, 29.522234, 22.805990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.747314, 29.162863, 22.746691>,  <36.648113, 28.947239, 22.711111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.747314, 29.162863, 22.746691>,  <36.912647, 29.522234, 22.805990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747314, 29.162863, 22.746691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362239, -0.311605, 0.878456,
		-0.835426, 0.309396, 0.454244,
		-0.413336, -0.898430, -0.148248,
		36.623314, 28.893333, 22.702217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547264, 29.423895, 23.373732>,  <36.912647, 29.522234, 22.805990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547264, 29.423895, 23.373732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619801, 29.064518, 23.213774>,  <36.663322, 28.848892, 23.117800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619801, 29.064518, 23.213774>,  <36.547264, 29.423895, 23.373732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619801, 29.064518, 23.213774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342316, -0.323536, 0.882125,
		-0.921919, -0.296858, 0.248880,
		0.181344, -0.898443, -0.399893,
		36.674206, 28.794985, 23.093805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513695, 29.061934, 23.978727>,  <36.547264, 29.423895, 23.373732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513695, 29.061934, 23.978727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699036, 28.809984, 23.729389>,  <36.810242, 28.658813, 23.579786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699036, 28.809984, 23.729389>,  <36.513695, 29.061934, 23.978727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699036, 28.809984, 23.729389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594854, -0.300308, 0.745630,
		-0.656849, -0.716291, 0.235535,
		0.463355, -0.629875, -0.623346,
		36.838043, 28.621021, 23.542385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855679, 28.709036, 23.977512>,  <36.513695, 29.061934, 23.978727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855679, 28.709036, 23.977512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.517632, 28.768183, 24.182999>,  <35.314804, 28.803671, 24.306290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.517632, 28.768183, 24.182999>,  <35.855679, 28.709036, 23.977512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517632, 28.768183, 24.182999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439337, 0.355360, -0.825047,
		-0.304551, -0.922960, -0.235359,
		-0.845122, 0.147867, 0.513716,
		35.264095, 28.812542, 24.337114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237869, 28.500038, 23.550261>,  <35.855679, 28.709036, 23.977512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237869, 28.500038, 23.550261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082672, 28.760809, 23.810862>,  <34.989555, 28.917271, 23.967222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082672, 28.760809, 23.810862>,  <35.237869, 28.500038, 23.550261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082672, 28.760809, 23.810862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635469, 0.322773, -0.701425,
		-0.667564, -0.686156, 0.289045,
		-0.387991, 0.651926, 0.651503,
		34.966274, 28.956387, 24.006313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570179, 28.473501, 23.445471>,  <35.237869, 28.500038, 23.550261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570179, 28.473501, 23.445471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602192, 28.823654, 23.636177>,  <34.621399, 29.033745, 23.750601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602192, 28.823654, 23.636177>,  <34.570179, 28.473501, 23.445471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602192, 28.823654, 23.636177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536258, 0.440995, -0.719689,
		-0.840252, -0.198071, 0.504723,
		0.080030, 0.875381, 0.476764,
		34.626202, 29.086269, 23.779205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908535, 28.796999, 23.613308>,  <34.570179, 28.473501, 23.445471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908535, 28.796999, 23.613308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174309, 29.095846, 23.605942>,  <34.333775, 29.275154, 23.601522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174309, 29.095846, 23.605942>,  <33.908535, 28.796999, 23.613308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174309, 29.095846, 23.605942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563549, 0.484698, -0.668939,
		-0.490851, 0.454846, 0.743089,
		0.664438, 0.747116, -0.018413,
		34.373642, 29.319981, 23.600418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438511, 29.246679, 23.472294>,  <33.908535, 28.796999, 23.613308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438511, 29.246679, 23.472294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795212, 29.418114, 23.414202>,  <34.009232, 29.520975, 23.379347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795212, 29.418114, 23.414202>,  <33.438511, 29.246679, 23.472294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795212, 29.418114, 23.414202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412368, 0.637466, -0.650838,
		-0.186362, 0.640274, 0.745197,
		0.891752, 0.428587, -0.145229,
		34.062737, 29.546690, 23.370632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273151, 30.024712, 23.507193>,  <33.438511, 29.246679, 23.472294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273151, 30.024712, 23.507193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622620, 29.978487, 23.318151>,  <33.832298, 29.950752, 23.204727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622620, 29.978487, 23.318151>,  <33.273151, 30.024712, 23.507193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622620, 29.978487, 23.318151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286643, 0.662629, -0.691924,
		0.393117, 0.739979, 0.545793,
		0.873667, -0.115559, -0.472601,
		33.884720, 29.943819, 23.176371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575588, 30.752817, 23.406254>,  <33.273151, 30.024712, 23.507193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575588, 30.752817, 23.406254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.707844, 30.495926, 23.129641>,  <33.787197, 30.341791, 22.963673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.707844, 30.495926, 23.129641>,  <33.575588, 30.752817, 23.406254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707844, 30.495926, 23.129641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223193, 0.658748, -0.718496,
		0.916985, 0.391909, 0.074468,
		0.330641, -0.642229, -0.691533,
		33.807037, 30.303257, 22.922180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141533, 31.442726, 23.494438>,  <33.575588, 30.752817, 23.406254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141533, 31.442726, 23.494438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967468, 31.769497, 23.645842>,  <33.863029, 31.965559, 23.736683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967468, 31.769497, 23.645842>,  <34.141533, 31.442726, 23.494438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967468, 31.769497, 23.645842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276577, -0.278785, 0.919665,
		0.856821, 0.504886, -0.104627,
		-0.435158, 0.816926, 0.378509,
		33.836922, 32.014576, 23.759394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658279, 31.813303, 23.948330>,  <34.141533, 31.442726, 23.494438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658279, 31.813303, 23.948330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302528, 31.960104, 24.057373>,  <34.089077, 32.048183, 24.122799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302528, 31.960104, 24.057373>,  <34.658279, 31.813303, 23.948330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302528, 31.960104, 24.057373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257871, -0.089659, 0.962010,
		0.377503, 0.925889, -0.014898,
		-0.889379, 0.367003, 0.272606,
		34.035713, 32.070206, 24.139154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835701, 32.126377, 24.514082>,  <34.658279, 31.813303, 23.948330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835701, 32.126377, 24.514082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437164, 32.093399, 24.523096>,  <34.198044, 32.073612, 24.528505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437164, 32.093399, 24.523096>,  <34.835701, 32.126377, 24.514082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437164, 32.093399, 24.523096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039926, -0.215810, 0.975619,
		-0.075569, 0.972949, 0.218312,
		-0.996341, -0.082443, 0.022538,
		34.138264, 32.068665, 24.529858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691765, 32.526340, 25.045568>,  <34.835701, 32.126377, 24.514082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691765, 32.526340, 25.045568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384384, 32.279442, 24.978052>,  <34.199955, 32.131302, 24.937542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384384, 32.279442, 24.978052>,  <34.691765, 32.526340, 25.045568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384384, 32.279442, 24.978052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080031, -0.169002, 0.982361,
		-0.634886, 0.768403, 0.080471,
		-0.768449, -0.617247, -0.168793,
		34.153851, 32.094269, 24.927414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084206, 32.598640, 25.492018>,  <34.691765, 32.526340, 25.045568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084206, 32.598640, 25.492018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073223, 32.215038, 25.379202>,  <34.066635, 31.984877, 25.311512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073223, 32.215038, 25.379202>,  <34.084206, 32.598640, 25.492018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073223, 32.215038, 25.379202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077813, -0.283341, 0.955857,
		-0.996590, 0.004299, 0.082403,
		-0.027457, -0.959010, -0.282040,
		34.064987, 31.927336, 25.294590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731606, 32.218594, 26.102551>,  <34.084206, 32.598640, 25.492018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731606, 32.218594, 26.102551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885223, 31.936634, 25.864014>,  <33.977394, 31.767458, 25.720892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885223, 31.936634, 25.864014>,  <33.731606, 32.218594, 26.102551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885223, 31.936634, 25.864014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220296, -0.557263, 0.800580,
		-0.896650, -0.438828, -0.058725,
		0.384042, -0.704903, -0.596342,
		34.000435, 31.725163, 25.685112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404408, 31.545736, 26.275389>,  <33.731606, 32.218594, 26.102551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404408, 31.545736, 26.275389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750206, 31.436264, 26.106752>,  <33.957687, 31.370581, 26.005571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750206, 31.436264, 26.106752>,  <33.404408, 31.545736, 26.275389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750206, 31.436264, 26.106752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116262, -0.707137, 0.697453,
		-0.489003, -0.651963, -0.579501,
		0.864500, -0.273683, -0.421590,
		34.009556, 31.354158, 25.980276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.814171, 33.262947, 20.223949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774841, 32.865196, 20.208256>,  <36.751244, 32.626545, 20.198839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774841, 32.865196, 20.208256>,  <36.814171, 33.262947, 20.223949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774841, 32.865196, 20.208256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803956, -0.102605, 0.585770,
		-0.586504, 0.026051, 0.809527,
		-0.098321, -0.994381, -0.039235,
		36.745346, 32.566883, 20.196486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648426, 32.831654, 20.903275>,  <36.814171, 33.262947, 20.223949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648426, 32.831654, 20.903275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.893993, 32.690548, 20.620810>,  <37.041332, 32.605885, 20.451330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.893993, 32.690548, 20.620810>,  <36.648426, 32.831654, 20.903275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893993, 32.690548, 20.620810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765005, 0.045339, 0.642427,
		-0.194608, -0.934614, 0.297700,
		0.613918, -0.352763, -0.706161,
		37.078171, 32.584721, 20.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004166, 32.355938, 21.175869>,  <36.648426, 32.831654, 20.903275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004166, 32.355938, 21.175869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252472, 32.480083, 20.887892>,  <37.401455, 32.554569, 20.715105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252472, 32.480083, 20.887892>,  <37.004166, 32.355938, 21.175869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252472, 32.480083, 20.887892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774184, -0.097862, 0.625349,
		0.123630, -0.945567, -0.301028,
		0.620769, 0.310363, -0.719944,
		37.438702, 32.573193, 20.671909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521507, 31.909580, 21.186934>,  <37.004166, 32.355938, 21.175869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521507, 31.909580, 21.186934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634117, 32.253387, 21.016298>,  <37.701683, 32.459671, 20.913918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634117, 32.253387, 21.016298>,  <37.521507, 31.909580, 21.186934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634117, 32.253387, 21.016298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696693, 0.122610, 0.706814,
		0.659822, -0.496185, -0.564301,
		0.281522, 0.859516, -0.426589,
		37.718575, 32.511242, 20.888321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203674, 31.964472, 21.323353>,  <37.521507, 31.909580, 21.186934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203674, 31.964472, 21.323353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102364, 32.339100, 21.226456>,  <38.041576, 32.563877, 21.168318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102364, 32.339100, 21.226456>,  <38.203674, 31.964472, 21.323353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102364, 32.339100, 21.226456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664737, 0.350421, 0.659796,
		0.702834, 0.006085, -0.711328,
		-0.253279, 0.936573, -0.242243,
		38.026379, 32.620071, 21.153782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894363, 32.262535, 21.279026>,  <38.203674, 31.964472, 21.323353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894363, 32.262535, 21.279026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598949, 32.528027, 21.326401>,  <38.421700, 32.687321, 21.354826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598949, 32.528027, 21.326401>,  <38.894363, 32.262535, 21.279026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598949, 32.528027, 21.326401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561863, 0.508803, 0.652250,
		0.372655, 0.548257, -0.748694,
		-0.738538, 0.663728, 0.118437,
		38.377388, 32.727146, 21.361933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304829, 32.951965, 21.414793>,  <38.894363, 32.262535, 21.279026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304829, 32.951965, 21.414793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926735, 32.991371, 21.539263>,  <38.699879, 33.015015, 21.613945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926735, 32.991371, 21.539263>,  <39.304829, 32.951965, 21.414793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926735, 32.991371, 21.539263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326240, 0.314913, 0.891290,
		-0.010185, 0.943993, -0.329807,
		-0.945232, 0.098519, 0.311176,
		38.643166, 33.020927, 21.632616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311340, 33.632385, 21.634489>,  <39.304829, 32.951965, 21.414793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311340, 33.632385, 21.634489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009361, 33.444958, 21.818007>,  <38.828175, 33.332500, 21.928118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009361, 33.444958, 21.818007>,  <39.311340, 33.632385, 21.634489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009361, 33.444958, 21.818007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344003, 0.312659, 0.885385,
		-0.558312, 0.826248, -0.074852,
		-0.754950, -0.468571, 0.458793,
		38.782875, 33.304386, 21.955645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241390, 33.994675, 22.222431>,  <39.311340, 33.632385, 21.634489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241390, 33.994675, 22.222431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006218, 33.683041, 22.309481>,  <38.865112, 33.496059, 22.361710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006218, 33.683041, 22.309481>,  <39.241390, 33.994675, 22.222431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006218, 33.683041, 22.309481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216811, 0.107417, 0.970286,
		-0.779313, 0.617646, 0.105760,
		-0.587933, -0.779086, 0.217624,
		38.829838, 33.449314, 22.374767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658230, 34.296635, 22.615013>,  <39.241390, 33.994675, 22.222431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658230, 34.296635, 22.615013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700478, 33.907280, 22.696358>,  <38.725826, 33.673668, 22.745165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700478, 33.907280, 22.696358>,  <38.658230, 34.296635, 22.615013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700478, 33.907280, 22.696358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288971, 0.225725, 0.930346,
		-0.951494, -0.039496, 0.305122,
		0.105619, -0.973390, 0.203363,
		38.732162, 33.615261, 22.757366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349525, 34.347626, 23.256762>,  <38.658230, 34.296635, 22.615013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349525, 34.347626, 23.256762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564468, 34.011089, 23.233437>,  <38.693436, 33.809170, 23.219442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564468, 34.011089, 23.233437>,  <38.349525, 34.347626, 23.256762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564468, 34.011089, 23.233437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334266, 0.148996, 0.930627,
		-0.774282, -0.519570, 0.361294,
		0.537357, -0.841336, -0.058310,
		38.725677, 33.758690, 23.215944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285889, 34.127975, 23.923737>,  <38.349525, 34.347626, 23.256762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285889, 34.127975, 23.923737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587692, 33.898621, 23.796028>,  <38.768776, 33.761005, 23.719404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587692, 33.898621, 23.796028>,  <38.285889, 34.127975, 23.923737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587692, 33.898621, 23.796028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408799, 0.030048, 0.912130,
		-0.513414, -0.818730, 0.257073,
		0.754513, -0.573392, -0.319269,
		38.814045, 33.726604, 23.700247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695168, 33.792271, 24.297119>,  <38.285889, 34.127975, 23.923737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695168, 33.792271, 24.297119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.475262, 34.097153, 24.433825>,  <37.343319, 34.280083, 24.515848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.475262, 34.097153, 24.433825>,  <37.695168, 33.792271, 24.297119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475262, 34.097153, 24.433825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561100, -0.033870, -0.827054,
		-0.618809, -0.646449, 0.446294,
		-0.549765, 0.762205, 0.341764,
		37.310333, 34.325813, 24.536354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962288, 33.575199, 24.296473>,  <37.695168, 33.792271, 24.297119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962288, 33.575199, 24.296473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.961960, 33.974731, 24.277105>,  <36.961761, 34.214451, 24.265484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.961960, 33.974731, 24.277105>,  <36.962288, 33.575199, 24.296473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961960, 33.974731, 24.277105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471870, -0.043078, -0.880615,
		-0.881668, 0.022121, 0.471352,
		-0.000824, 0.998827, -0.048419,
		36.961712, 34.274380, 24.262579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281380, 33.738781, 24.009518>,  <36.962288, 33.575199, 24.296473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281380, 33.738781, 24.009518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454082, 34.098122, 23.977133>,  <36.557705, 34.313725, 23.957703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454082, 34.098122, 23.977133>,  <36.281380, 33.738781, 24.009518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454082, 34.098122, 23.977133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596892, 0.217265, -0.772345,
		-0.676247, 0.381787, 0.630023,
		0.431753, 0.898351, -0.080961,
		36.583607, 34.367626, 23.952845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743839, 34.220867, 23.775255>,  <36.281380, 33.738781, 24.009518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743839, 34.220867, 23.775255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.097679, 34.371330, 23.664993>,  <36.309982, 34.461609, 23.598837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.097679, 34.371330, 23.664993>,  <35.743839, 34.220867, 23.775255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097679, 34.371330, 23.664993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397345, 0.298529, -0.867754,
		-0.244118, 0.877148, 0.413543,
		0.884604, 0.376153, -0.275654,
		36.363060, 34.484177, 23.582296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654884, 34.641300, 23.225006>,  <35.743839, 34.220867, 23.775255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654884, 34.641300, 23.225006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050404, 34.664402, 23.169962>,  <36.287716, 34.678265, 23.136934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050404, 34.664402, 23.169962>,  <35.654884, 34.641300, 23.225006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050404, 34.664402, 23.169962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148262, 0.274662, -0.950042,
		-0.017076, 0.959805, 0.280150,
		0.988801, 0.057759, -0.137612,
		36.347042, 34.681728, 23.128679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794941, 35.258446, 22.782265>,  <35.654884, 34.641300, 23.225006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794941, 35.258446, 22.782265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115215, 35.022770, 22.738869>,  <36.307381, 34.881367, 22.712831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115215, 35.022770, 22.738869>,  <35.794941, 35.258446, 22.782265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115215, 35.022770, 22.738869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113784, 0.028235, -0.993104,
		0.588185, 0.807505, -0.044433,
		0.800682, -0.589185, -0.108488,
		36.355419, 34.846016, 22.706322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223473, 35.543873, 22.430740>,  <35.794941, 35.258446, 22.782265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223473, 35.543873, 22.430740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.295666, 35.155045, 22.370729>,  <36.338982, 34.921749, 22.334723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.295666, 35.155045, 22.370729>,  <36.223473, 35.543873, 22.430740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295666, 35.155045, 22.370729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089869, 0.135598, -0.986680,
		0.979464, 0.191560, -0.062886,
		0.180481, -0.972069, -0.150029,
		36.349812, 34.863422, 22.325722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568481, 35.509762, 21.780115>,  <36.223473, 35.543873, 22.430740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568481, 35.509762, 21.780115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.436596, 35.137138, 21.841419>,  <36.357464, 34.913563, 21.878201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.436596, 35.137138, 21.841419>,  <36.568481, 35.509762, 21.780115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436596, 35.137138, 21.841419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301469, -0.049947, -0.952167,
		0.894653, -0.360148, -0.264367,
		-0.329717, -0.931557, 0.153258,
		36.337681, 34.857670, 21.887396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710274, 35.191044, 21.133194>,  <36.568481, 35.509762, 21.780115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710274, 35.191044, 21.133194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434063, 34.952259, 21.296564>,  <36.268337, 34.808987, 21.394587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434063, 34.952259, 21.296564>,  <36.710274, 35.191044, 21.133194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434063, 34.952259, 21.296564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480982, -0.042755, -0.875687,
		0.540216, -0.801128, -0.257606,
		-0.690523, -0.596964, 0.408425,
		36.226906, 34.773170, 21.419092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652405, 34.501324, 20.741899>,  <36.710274, 35.191044, 21.133194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652405, 34.501324, 20.741899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.306347, 34.556438, 20.934786>,  <36.098713, 34.589508, 21.050518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.306347, 34.556438, 20.934786>,  <36.652405, 34.501324, 20.741899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306347, 34.556438, 20.934786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499466, -0.149855, -0.853274,
		-0.045305, -0.979060, 0.198465,
		-0.865148, 0.137784, 0.482218,
		36.046803, 34.597775, 21.079451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229450, 33.932846, 20.523445>,  <36.652405, 34.501324, 20.741899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229450, 33.932846, 20.523445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.998569, 34.222477, 20.674467>,  <35.860043, 34.396255, 20.765081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.998569, 34.222477, 20.674467>,  <36.229450, 33.932846, 20.523445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998569, 34.222477, 20.674467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741818, -0.271644, -0.613120,
		-0.341387, -0.633970, 0.693929,
		-0.577201, 0.724080, 0.377554,
		35.825409, 34.439701, 20.787735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594452, 33.595722, 20.461164>,  <36.229450, 33.932846, 20.523445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594452, 33.595722, 20.461164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.528156, 33.984653, 20.527021>,  <35.488380, 34.218014, 20.566536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.528156, 33.984653, 20.527021>,  <35.594452, 33.595722, 20.461164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528156, 33.984653, 20.527021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927215, -0.096785, -0.361809,
		-0.335862, -0.212624, 0.917599,
		-0.165739, 0.972329, 0.164641,
		35.478436, 34.276352, 20.576414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845890, 33.747189, 20.690493>,  <35.594452, 33.595722, 20.461164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845890, 33.747189, 20.690493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952354, 34.107422, 20.553026>,  <35.016232, 34.323563, 20.470547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.952354, 34.107422, 20.553026>,  <34.845890, 33.747189, 20.690493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952354, 34.107422, 20.553026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833260, 0.035725, -0.551726,
		-0.484598, 0.433211, 0.759929,
		0.266162, 0.900584, -0.343665,
		35.032204, 34.377598, 20.449926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267971, 34.171211, 20.634121>,  <34.845890, 33.747189, 20.690493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267971, 34.171211, 20.634121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.524761, 34.361179, 20.393349>,  <34.678833, 34.475159, 20.248886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.524761, 34.361179, 20.393349>,  <34.267971, 34.171211, 20.634121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524761, 34.361179, 20.393349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744700, 0.199397, -0.636917,
		-0.182462, 0.857141, 0.481681,
		0.641973, 0.474921, -0.601931,
		34.717354, 34.503654, 20.212770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346802, 34.284218, 21.388800>,  <34.267971, 34.171211, 20.634121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346802, 34.284218, 21.388800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.083057, 33.987305, 21.341026>,  <33.924812, 33.809158, 21.312363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.083057, 33.987305, 21.341026>,  <34.346802, 34.284218, 21.388800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083057, 33.987305, 21.341026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145649, -0.281958, 0.948307,
		-0.737587, 0.607878, 0.294024,
		-0.659357, -0.742283, -0.119432,
		33.885250, 33.764618, 21.305197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913990, 34.343758, 21.997948>,  <34.346802, 34.284218, 21.388800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913990, 34.343758, 21.997948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.851883, 33.968952, 21.872797>,  <33.814617, 33.744068, 21.797707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.851883, 33.968952, 21.872797>,  <33.913990, 34.343758, 21.997948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851883, 33.968952, 21.872797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070201, -0.326382, 0.942627,
		-0.985375, 0.124397, 0.116457,
		-0.155270, -0.937016, -0.312876,
		33.805302, 33.687847, 21.778934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394112, 34.107880, 22.431770>,  <33.913990, 34.343758, 21.997948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394112, 34.107880, 22.431770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.543533, 33.766594, 22.286175>,  <33.633186, 33.561825, 22.198816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.543533, 33.766594, 22.286175>,  <33.394112, 34.107880, 22.431770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543533, 33.766594, 22.286175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015105, -0.386749, 0.922061,
		-0.927487, -0.349934, -0.131583,
		0.373550, -0.853212, -0.363990,
		33.655598, 33.510632, 22.176977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014126, 33.609951, 22.759029>,  <33.394112, 34.107880, 22.431770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014126, 33.609951, 22.759029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.324947, 33.391296, 22.634207>,  <33.511440, 33.260105, 22.559313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.324947, 33.391296, 22.634207>,  <33.014126, 33.609951, 22.759029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324947, 33.391296, 22.634207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061115, -0.558954, 0.826944,
		-0.626461, -0.623508, -0.467744,
		0.777053, -0.546634, -0.312057,
		33.558064, 33.227306, 22.540590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784271, 32.854191, 22.775900>,  <33.014126, 33.609951, 22.759029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784271, 32.854191, 22.775900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.182396, 32.890568, 22.789047>,  <33.421272, 32.912395, 22.796936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.182396, 32.890568, 22.789047>,  <32.784271, 32.854191, 22.775900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182396, 32.890568, 22.789047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024302, -0.564249, 0.825247,
		0.093596, -0.820581, -0.563815,
		0.995313, 0.090942, 0.032870,
		33.480991, 32.917850, 22.798908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883823, 32.154953, 22.890236>,  <32.784271, 32.854191, 22.775900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883823, 32.154953, 22.890236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204193, 32.365456, 23.004482>,  <33.396416, 32.491756, 23.073030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204193, 32.365456, 23.004482>,  <32.883823, 32.154953, 22.890236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204193, 32.365456, 23.004482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090399, -0.577816, 0.811146,
		0.591905, -0.623845, -0.510359,
		0.800923, 0.526257, 0.285617,
		33.444469, 32.523331, 23.090168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380966, 31.618177, 23.050457>,  <32.883823, 32.154953, 22.890236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380966, 31.618177, 23.050457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512440, 31.948462, 23.233833>,  <33.591324, 32.146633, 23.343859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512440, 31.948462, 23.233833>,  <33.380966, 31.618177, 23.050457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512440, 31.948462, 23.233833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019291, -0.491178, 0.870846,
		0.944242, -0.277391, -0.177372,
		0.328686, 0.825711, 0.458440,
		33.611046, 32.196175, 23.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965694, 31.215361, 22.780022>,  <33.380966, 31.618177, 23.050457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965694, 31.215361, 22.780022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881363, 30.849640, 22.641684>,  <33.830765, 30.630207, 22.558681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881363, 30.849640, 22.641684>,  <33.965694, 31.215361, 22.780022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881363, 30.849640, 22.641684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162783, 0.381693, -0.909842,
		0.963875, -0.135520, -0.229303,
		-0.210825, -0.914300, -0.345844,
		33.818115, 30.575350, 22.537930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283367, 31.191830, 22.112774>,  <33.965694, 31.215361, 22.780022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283367, 31.191830, 22.112774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.026573, 30.885235, 22.105265>,  <33.872498, 30.701279, 22.100760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.026573, 30.885235, 22.105265>,  <34.283367, 31.191830, 22.112774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026573, 30.885235, 22.105265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202193, 0.192867, -0.960167,
		0.739574, -0.612620, -0.278797,
		-0.641988, -0.766485, -0.018772,
		33.833977, 30.655289, 22.099632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533264, 30.714346, 21.638199>,  <34.283367, 31.191830, 22.112774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533264, 30.714346, 21.638199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143063, 30.626413, 21.641447>,  <33.908943, 30.573654, 21.643396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143063, 30.626413, 21.641447>,  <34.533264, 30.714346, 21.638199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143063, 30.626413, 21.641447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024478, -0.145154, -0.989106,
		0.218614, -0.964679, 0.146980,
		-0.975504, -0.219830, 0.008120,
		33.850410, 30.560465, 21.643883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420326, 30.070526, 21.125725>,  <34.533264, 30.714346, 21.638199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420326, 30.070526, 21.125725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.053165, 30.206903, 21.206926>,  <33.832867, 30.288731, 21.255648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.053165, 30.206903, 21.206926>,  <34.420326, 30.070526, 21.125725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053165, 30.206903, 21.206926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278655, -0.189637, -0.941482,
		-0.282499, -0.920757, 0.269075,
		-0.917903, 0.340948, 0.203002,
		33.777794, 30.309187, 21.267828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904324, 29.667551, 20.744238>,  <34.420326, 30.070526, 21.125725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904324, 29.667551, 20.744238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.702271, 30.000479, 20.835531>,  <33.581039, 30.200235, 20.890306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.702271, 30.000479, 20.835531>,  <33.904324, 29.667551, 20.744238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702271, 30.000479, 20.835531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453404, -0.030908, -0.890769,
		-0.734349, -0.553436, 0.392989,
		-0.505130, 0.832318, 0.228233,
		33.550732, 30.250174, 20.904001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293217, 29.591829, 20.453806>,  <33.904324, 29.667551, 20.744238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293217, 29.591829, 20.453806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.310059, 29.984667, 20.527254>,  <33.320164, 30.220369, 20.571323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.310059, 29.984667, 20.527254>,  <33.293217, 29.591829, 20.453806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310059, 29.984667, 20.527254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342278, 0.186842, -0.920834,
		-0.938655, -0.024073, 0.344017,
		0.042109, 0.982095, 0.183620,
		33.322693, 30.279295, 20.582340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665401, 29.828127, 20.163740>,  <33.293217, 29.591829, 20.453806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665401, 29.828127, 20.163740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.897137, 30.152277, 20.198751>,  <33.036179, 30.346767, 20.219759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.897137, 30.152277, 20.198751>,  <32.665401, 29.828127, 20.163740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897137, 30.152277, 20.198751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301224, 0.312647, -0.900842,
		-0.757384, 0.495527, 0.425232,
		0.579339, 0.810374, 0.087530,
		33.070938, 30.395390, 20.225010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194649, 30.416672, 20.173841>,  <32.665401, 29.828127, 20.163740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194649, 30.416672, 20.173841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.564274, 30.502359, 20.047213>,  <32.786049, 30.553772, 19.971235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.564274, 30.502359, 20.047213>,  <32.194649, 30.416672, 20.173841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564274, 30.502359, 20.047213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374442, 0.340880, -0.862319,
		-0.076811, 0.915375, 0.395207,
		0.924063, 0.214218, -0.316571,
		32.841492, 30.566626, 19.952242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101250, 30.994223, 19.747005>,  <32.194649, 30.416672, 20.173841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101250, 30.994223, 19.747005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.462711, 30.867943, 19.631256>,  <32.679588, 30.792175, 19.561806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.462711, 30.867943, 19.631256>,  <32.101250, 30.994223, 19.747005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462711, 30.867943, 19.631256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228727, 0.215475, -0.949344,
		0.362059, 0.924070, 0.122507,
		0.903658, -0.315698, -0.289374,
		32.733810, 30.773233, 19.544443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.785168, 27.293436, 33.625072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089897, 27.540636, 33.547409>,  <39.272736, 27.688955, 33.500809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089897, 27.540636, 33.547409>,  <38.785168, 27.293436, 33.625072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089897, 27.540636, 33.547409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042025, -0.251951, -0.966827,
		-0.646418, 0.744713, -0.165971,
		0.761825, 0.617999, -0.194162,
		39.318443, 27.726036, 33.489159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618431, 27.826845, 33.106247>,  <38.785168, 27.293436, 33.625072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618431, 27.826845, 33.106247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.998718, 27.705467, 33.080784>,  <39.226891, 27.632641, 33.065506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.998718, 27.705467, 33.080784>,  <38.618431, 27.826845, 33.106247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998718, 27.705467, 33.080784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119360, -0.168704, -0.978413,
		0.286155, 0.937795, -0.196610,
		0.950720, -0.303445, -0.063660,
		39.283936, 27.614433, 33.061687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148602, 28.203438, 32.626198>,  <38.618431, 27.826845, 33.106247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148602, 28.203438, 32.626198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.230339, 27.814417, 32.670712>,  <39.279381, 27.581005, 32.697418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.230339, 27.814417, 32.670712>,  <39.148602, 28.203438, 32.626198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230339, 27.814417, 32.670712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166224, -0.146506, -0.975144,
		0.964683, 0.180768, -0.191599,
		0.204345, -0.972553, 0.111284,
		39.291641, 27.522652, 32.704098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671619, 28.045727, 32.157120>,  <39.148602, 28.203438, 32.626198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671619, 28.045727, 32.157120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531353, 27.678457, 32.230869>,  <39.447193, 27.458096, 32.275120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531353, 27.678457, 32.230869>,  <39.671619, 28.045727, 32.157120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531353, 27.678457, 32.230869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337461, -0.059769, -0.939440,
		0.873588, -0.391646, -0.288889,
		-0.350662, -0.918173, 0.184379,
		39.426155, 27.403006, 32.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909771, 27.708855, 31.604967>,  <39.671619, 28.045727, 32.157120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909771, 27.708855, 31.604967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.633705, 27.460247, 31.753229>,  <39.468067, 27.311083, 31.842186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.633705, 27.460247, 31.753229>,  <39.909771, 27.708855, 31.604967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633705, 27.460247, 31.753229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382412, -0.121596, -0.915956,
		0.614356, -0.773903, -0.153756,
		-0.690165, -0.621521, 0.370653,
		39.426655, 27.273790, 31.864426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949547, 27.177570, 31.167141>,  <39.909771, 27.708855, 31.604967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949547, 27.177570, 31.167141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580593, 27.160328, 31.320684>,  <39.359222, 27.149982, 31.412811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580593, 27.160328, 31.320684>,  <39.949547, 27.177570, 31.167141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580593, 27.160328, 31.320684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382698, -0.032901, -0.923287,
		0.052436, -0.998528, 0.013848,
		-0.922384, -0.043114, 0.383860,
		39.303879, 27.147396, 31.435843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735146, 26.744858, 30.721395>,  <39.949547, 27.177570, 31.167141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735146, 26.744858, 30.721395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405369, 26.880314, 30.902777>,  <39.207504, 26.961588, 31.011604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405369, 26.880314, 30.902777>,  <39.735146, 26.744858, 30.721395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405369, 26.880314, 30.902777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504591, -0.076996, -0.859919,
		-0.256291, -0.937759, 0.234355,
		-0.824441, 0.338643, 0.453451,
		39.158035, 26.981907, 31.038813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058430, 26.211397, 30.553043>,  <39.735146, 26.744858, 30.721395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058430, 26.211397, 30.553043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.964748, 26.588634, 30.647463>,  <38.908539, 26.814978, 30.704115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.964748, 26.588634, 30.647463>,  <39.058430, 26.211397, 30.553043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964748, 26.588634, 30.647463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579380, 0.059573, -0.812877,
		-0.780683, -0.327142, 0.532458,
		-0.234206, 0.943095, 0.236047,
		38.894485, 26.871563, 30.718277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369797, 26.268200, 30.288073>,  <39.058430, 26.211397, 30.553043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369797, 26.268200, 30.288073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444851, 26.648994, 30.384834>,  <38.489883, 26.877470, 30.442892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444851, 26.648994, 30.384834>,  <38.369797, 26.268200, 30.288073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444851, 26.648994, 30.384834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726771, 0.300229, -0.617792,
		-0.660756, -0.059893, 0.748207,
		0.187631, 0.951985, 0.241907,
		38.501141, 26.934589, 30.457407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734238, 26.647667, 30.383173>,  <38.369797, 26.268200, 30.288073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734238, 26.647667, 30.383173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005123, 26.930332, 30.301189>,  <38.167656, 27.099932, 30.251999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005123, 26.930332, 30.301189>,  <37.734238, 26.647667, 30.383173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005123, 26.930332, 30.301189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641799, 0.431104, -0.634226,
		-0.359824, 0.561051, 0.745485,
		0.677215, 0.706662, -0.204960,
		38.208286, 27.142330, 30.239702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316631, 27.247608, 30.382318>,  <37.734238, 26.647667, 30.383173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316631, 27.247608, 30.382318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654377, 27.307196, 30.176462>,  <37.857025, 27.342949, 30.052948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654377, 27.307196, 30.176462>,  <37.316631, 27.247608, 30.382318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654377, 27.307196, 30.176462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517713, 0.474131, -0.712161,
		0.137917, 0.867760, 0.477464,
		0.844365, 0.148971, -0.514641,
		37.907688, 27.351887, 30.022070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259556, 27.995510, 30.229628>,  <37.316631, 27.247608, 30.382318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259556, 27.995510, 30.229628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528744, 27.847620, 29.973373>,  <37.690258, 27.758886, 29.819620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528744, 27.847620, 29.973373>,  <37.259556, 27.995510, 30.229628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528744, 27.847620, 29.973373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470474, 0.454366, -0.756443,
		0.570760, 0.810465, 0.131829,
		0.672969, -0.369725, -0.640637,
		37.730633, 27.736702, 29.781183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232105, 28.689211, 30.589046>,  <37.259556, 27.995510, 30.229628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232105, 28.689211, 30.589046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964676, 28.969723, 30.688019>,  <36.804218, 29.138029, 30.747402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964676, 28.969723, 30.688019>,  <37.232105, 28.689211, 30.589046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964676, 28.969723, 30.688019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420399, 0.081965, 0.903629,
		0.613415, 0.708160, -0.349617,
		-0.668570, 0.701279, 0.247431,
		36.764107, 29.180107, 30.762249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645977, 29.205301, 31.001442>,  <37.232105, 28.689211, 30.589046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645977, 29.205301, 31.001442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259136, 29.259697, 31.087435>,  <37.027031, 29.292334, 31.139030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259136, 29.259697, 31.087435>,  <37.645977, 29.205301, 31.001442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259136, 29.259697, 31.087435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236853, 0.173084, 0.956003,
		0.092794, 0.975474, -0.199599,
		-0.967104, 0.135987, 0.214983,
		36.969006, 29.300493, 31.151930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507847, 29.807959, 31.406908>,  <37.645977, 29.205301, 31.001442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507847, 29.807959, 31.406908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175621, 29.611183, 31.511343>,  <36.976288, 29.493118, 31.574005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.175621, 29.611183, 31.511343>,  <37.507847, 29.807959, 31.406908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175621, 29.611183, 31.511343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158358, 0.240848, 0.957557,
		-0.533941, 0.836654, -0.122136,
		-0.830560, -0.491937, 0.261089,
		36.926453, 29.463602, 31.589670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150658, 30.245041, 31.905315>,  <37.507847, 29.807959, 31.406908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150658, 30.245041, 31.905315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994263, 29.878119, 31.935452>,  <36.900425, 29.657965, 31.953533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994263, 29.878119, 31.935452>,  <37.150658, 30.245041, 31.905315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994263, 29.878119, 31.935452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162726, 0.011674, 0.986602,
		-0.905895, 0.398012, 0.144705,
		-0.390990, -0.917306, 0.075342,
		36.876965, 29.602926, 31.958054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693001, 30.317150, 32.410446>,  <37.150658, 30.245041, 31.905315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693001, 30.317150, 32.410446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793503, 29.930031, 32.404282>,  <36.853806, 29.697760, 32.400581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793503, 29.930031, 32.404282>,  <36.693001, 30.317150, 32.410446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793503, 29.930031, 32.404282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173585, 0.029390, 0.984380,
		-0.952229, -0.250004, 0.175380,
		0.251254, -0.967799, -0.015411,
		36.868877, 29.639690, 32.399658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458714, 30.090927, 33.005474>,  <36.693001, 30.317150, 32.410446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458714, 30.090927, 33.005474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689106, 29.775263, 32.920177>,  <36.827339, 29.585863, 32.868999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689106, 29.775263, 32.920177>,  <36.458714, 30.090927, 33.005474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689106, 29.775263, 32.920177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355609, 0.006997, 0.934608,
		-0.736065, -0.614145, 0.284663,
		0.575977, -0.789162, -0.213246,
		36.861900, 29.538515, 32.856205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416786, 29.529259, 33.512199>,  <36.458714, 30.090927, 33.005474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416786, 29.529259, 33.512199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778244, 29.463974, 33.353817>,  <36.995121, 29.424803, 33.258789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778244, 29.463974, 33.353817>,  <36.416786, 29.529259, 33.512199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778244, 29.463974, 33.353817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413882, 0.095133, 0.905346,
		-0.110097, -0.981993, 0.153519,
		0.903648, -0.163214, -0.395956,
		37.049339, 29.415010, 33.235031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754841, 29.009745, 33.920170>,  <36.416786, 29.529259, 33.512199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754841, 29.009745, 33.920170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054691, 29.190104, 33.726364>,  <37.234600, 29.298319, 33.610081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054691, 29.190104, 33.726364>,  <36.754841, 29.009745, 33.920170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054691, 29.190104, 33.726364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510751, 0.071488, 0.856751,
		0.420946, -0.889707, -0.176709,
		0.749625, 0.450900, -0.484512,
		37.279579, 29.325373, 33.581009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336201, 28.763283, 34.212505>,  <36.754841, 29.009745, 33.920170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336201, 28.763283, 34.212505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453926, 29.107254, 34.045696>,  <37.524563, 29.313637, 33.945610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453926, 29.107254, 34.045696>,  <37.336201, 28.763283, 34.212505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453926, 29.107254, 34.045696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515599, 0.224533, 0.826888,
		0.804698, -0.458379, -0.377294,
		0.294313, 0.859927, -0.417021,
		37.542221, 29.365232, 33.920589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050137, 28.862324, 34.304718>,  <37.336201, 28.763283, 34.212505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050137, 28.862324, 34.304718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.913414, 29.232868, 34.241440>,  <37.831383, 29.455194, 34.203472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.913414, 29.232868, 34.241440>,  <38.050137, 28.862324, 34.304718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913414, 29.232868, 34.241440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505589, 0.323157, 0.799969,
		0.792181, 0.193453, -0.578814,
		-0.341804, 0.926362, -0.158191,
		37.810871, 29.510777, 34.193981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604771, 29.173346, 34.392918>,  <38.050137, 28.862324, 34.304718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604771, 29.173346, 34.392918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326946, 29.459787, 34.420551>,  <38.160252, 29.631653, 34.437134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326946, 29.459787, 34.420551>,  <38.604771, 29.173346, 34.392918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326946, 29.459787, 34.420551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596964, 0.520072, 0.610867,
		0.401515, 0.465530, -0.788713,
		-0.694564, 0.716106, 0.069088,
		38.118576, 29.674620, 34.441277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052921, 29.645563, 34.419930>,  <38.604771, 29.173346, 34.392918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052921, 29.645563, 34.419930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711823, 29.815439, 34.541561>,  <38.507164, 29.917364, 34.614540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711823, 29.815439, 34.541561>,  <39.052921, 29.645563, 34.419930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711823, 29.815439, 34.541561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521973, 0.671413, 0.526070,
		0.019253, 0.607325, -0.794220,
		-0.852745, 0.424690, 0.304080,
		38.455997, 29.942846, 34.632786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049259, 30.403341, 34.187405>,  <39.052921, 29.645563, 34.419930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049259, 30.403341, 34.187405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803730, 30.355682, 34.499565>,  <38.656410, 30.327087, 34.686859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803730, 30.355682, 34.499565>,  <39.049259, 30.403341, 34.187405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803730, 30.355682, 34.499565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544872, 0.651390, 0.528020,
		-0.571256, 0.749330, -0.334920,
		-0.613825, -0.119146, 0.780399,
		38.619583, 30.319939, 34.733685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736591, 31.127989, 34.481937>,  <39.049259, 30.403341, 34.187405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736591, 31.127989, 34.481937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690426, 30.872211, 34.785988>,  <38.662727, 30.718746, 34.968418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690426, 30.872211, 34.785988>,  <38.736591, 31.127989, 34.481937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690426, 30.872211, 34.785988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404335, 0.668729, 0.623950,
		-0.907299, 0.379361, 0.181365,
		-0.115418, -0.639442, 0.760127,
		38.655800, 30.680378, 35.014027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811756, 31.553898, 35.099277>,  <38.736591, 31.127989, 34.481937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811756, 31.553898, 35.099277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788437, 31.778135, 35.429691>,  <38.774445, 31.912678, 35.627941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788437, 31.778135, 35.429691>,  <38.811756, 31.553898, 35.099277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788437, 31.778135, 35.429691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635332, 0.617413, -0.463847,
		-0.770036, -0.551847, 0.320173,
		-0.058294, 0.560595, 0.826036,
		38.770950, 31.946314, 35.677502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208336, 31.837187, 35.107540>,  <38.811756, 31.553898, 35.099277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208336, 31.837187, 35.107540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.375992, 32.074535, 35.382416>,  <38.476585, 32.216946, 35.547340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.375992, 32.074535, 35.382416>,  <38.208336, 31.837187, 35.107540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375992, 32.074535, 35.382416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603160, 0.747704, -0.277735,
		-0.678615, -0.298075, 0.671292,
		0.419141, 0.593372, 0.687190,
		38.501736, 32.252548, 35.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799770, 32.209854, 34.699646>,  <38.208336, 31.837187, 35.107540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799770, 32.209854, 34.699646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.951885, 31.991953, 34.400681>,  <39.043152, 31.861212, 34.221302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.951885, 31.991953, 34.400681>,  <38.799770, 32.209854, 34.699646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951885, 31.991953, 34.400681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008146, 0.806121, -0.591694,
		0.924834, 0.231101, 0.302118,
		0.380285, -0.544757, -0.747411,
		39.065971, 31.828526, 34.176456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107750, 32.687103, 34.337513>,  <38.799770, 32.209854, 34.699646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107750, 32.687103, 34.337513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115196, 32.392418, 34.067135>,  <39.119663, 32.215607, 33.904907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115196, 32.392418, 34.067135>,  <39.107750, 32.687103, 34.337513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115196, 32.392418, 34.067135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008883, 0.675914, -0.736927,
		0.999787, 0.019721, 0.006037,
		0.018613, -0.736717, -0.675945,
		39.120781, 32.171402, 33.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714626, 32.847580, 33.791222>,  <39.107750, 32.687103, 34.337513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714626, 32.847580, 33.791222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443340, 32.603676, 33.627163>,  <39.280571, 32.457333, 33.528728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443340, 32.603676, 33.627163>,  <39.714626, 32.847580, 33.791222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443340, 32.603676, 33.627163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036831, 0.585627, -0.809743,
		0.733943, -0.534071, -0.419638,
		-0.678212, -0.609761, -0.410146,
		39.239876, 32.420746, 33.504120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013599, 32.895962, 33.047638>,  <39.714626, 32.847580, 33.791222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013599, 32.895962, 33.047638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632088, 32.778568, 33.021816>,  <39.403179, 32.708134, 33.006325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632088, 32.778568, 33.021816>,  <40.013599, 32.895962, 33.047638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632088, 32.778568, 33.021816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084314, 0.467554, -0.879934,
		0.288422, -0.833825, -0.470690,
		-0.953784, -0.293478, -0.064549,
		39.345951, 32.690525, 33.002453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866726, 32.708710, 32.330849>,  <40.013599, 32.895962, 33.047638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866726, 32.708710, 32.330849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503128, 32.760937, 32.489182>,  <39.284969, 32.792274, 32.584183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503128, 32.760937, 32.489182>,  <39.866726, 32.708710, 32.330849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503128, 32.760937, 32.489182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311852, 0.417052, -0.853707,
		-0.276551, -0.899455, -0.338379,
		-0.908992, 0.130570, 0.395833,
		39.230431, 32.800106, 32.607933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546707, 32.566299, 31.809126>,  <39.866726, 32.708710, 32.330849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546707, 32.566299, 31.809126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267441, 32.745861, 32.032215>,  <39.099880, 32.853600, 32.166069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267441, 32.745861, 32.032215>,  <39.546707, 32.566299, 31.809126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267441, 32.745861, 32.032215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432247, 0.356707, -0.828204,
		-0.570730, -0.819294, -0.055000,
		-0.698161, 0.448907, 0.557721,
		39.057991, 32.880531, 32.199532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846893, 32.355358, 31.596031>,  <39.546707, 32.566299, 31.809126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846893, 32.355358, 31.596031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776520, 32.706230, 31.774738>,  <38.734295, 32.916756, 31.881962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.776520, 32.706230, 31.774738>,  <38.846893, 32.355358, 31.596031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776520, 32.706230, 31.774738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431706, 0.339123, -0.835838,
		-0.884691, -0.339922, 0.319022,
		-0.175932, 0.877182, 0.446766,
		38.723740, 32.969383, 31.908768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102669, 32.598415, 31.419727>,  <38.846893, 32.355358, 31.596031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102669, 32.598415, 31.419727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305553, 32.923454, 31.534565>,  <38.427284, 33.118477, 31.603468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305553, 32.923454, 31.534565>,  <38.102669, 32.598415, 31.419727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305553, 32.923454, 31.534565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427654, 0.526534, -0.734762,
		-0.748228, 0.249905, 0.614575,
		0.507215, 0.812594, 0.287094,
		38.457718, 33.167233, 31.620693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652748, 33.109081, 31.422714>,  <38.102669, 32.598415, 31.419727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652748, 33.109081, 31.422714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009319, 33.282555, 31.370152>,  <38.223263, 33.386639, 31.338614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009319, 33.282555, 31.370152>,  <37.652748, 33.109081, 31.422714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009319, 33.282555, 31.370152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350653, 0.476466, -0.806240,
		-0.287046, 0.764784, 0.576810,
		0.891430, 0.433688, -0.131406,
		38.276749, 33.412663, 31.330730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526192, 33.763935, 31.174854>,  <37.652748, 33.109081, 31.422714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526192, 33.763935, 31.174854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920128, 33.778481, 31.107016>,  <38.156490, 33.787209, 31.066313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920128, 33.778481, 31.107016>,  <37.526192, 33.763935, 31.174854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920128, 33.778481, 31.107016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149979, 0.669726, -0.727305,
		0.087135, 0.741717, 0.665029,
		0.984842, 0.036366, -0.169598,
		38.215580, 33.789391, 31.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747616, 34.454956, 31.015558>,  <37.526192, 33.763935, 31.174854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747616, 34.454956, 31.015558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027134, 34.210629, 30.866653>,  <38.194847, 34.064030, 30.777311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027134, 34.210629, 30.866653>,  <37.747616, 34.454956, 31.015558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027134, 34.210629, 30.866653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003995, 0.523738, -0.851870,
		0.715308, 0.593798, 0.368427,
		0.698798, -0.610822, -0.372262,
		38.236774, 34.027382, 30.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216446, 34.915371, 30.750507>,  <37.747616, 34.454956, 31.015558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216446, 34.915371, 30.750507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278355, 34.560081, 30.577484>,  <38.315502, 34.346909, 30.473669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278355, 34.560081, 30.577484>,  <38.216446, 34.915371, 30.750507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278355, 34.560081, 30.577484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027300, 0.441514, -0.896839,
		0.987572, 0.127000, 0.092584,
		0.154776, -0.888221, -0.432559,
		38.324787, 34.293613, 30.447716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732155, 35.076706, 30.293646>,  <38.216446, 34.915371, 30.750507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732155, 35.076706, 30.293646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564323, 34.733608, 30.174828>,  <38.463623, 34.527752, 30.103537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564323, 34.733608, 30.174828>,  <38.732155, 35.076706, 30.293646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564323, 34.733608, 30.174828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058543, 0.352132, -0.934118,
		0.905830, -0.374545, -0.197961,
		-0.419577, -0.857741, -0.297044,
		38.438450, 34.476288, 30.085714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129536, 34.853909, 29.610716>,  <38.732155, 35.076706, 30.293646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129536, 34.853909, 29.610716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.778858, 34.661770, 29.621151>,  <38.568451, 34.546486, 29.627413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.778858, 34.661770, 29.621151>,  <39.129536, 34.853909, 29.610716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778858, 34.661770, 29.621151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195292, 0.305822, -0.931845,
		0.439629, -0.822034, -0.361919,
		-0.876691, -0.480346, 0.026088,
		38.515850, 34.517666, 29.628977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124607, 34.445259, 29.007885>,  <39.129536, 34.853909, 29.610716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124607, 34.445259, 29.007885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.745346, 34.506859, 29.119089>,  <38.517788, 34.543819, 29.185812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.745346, 34.506859, 29.119089>,  <39.124607, 34.445259, 29.007885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745346, 34.506859, 29.119089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273920, 0.047606, -0.960574,
		-0.161159, -0.986924, -0.002955,
		-0.948154, 0.153995, 0.278010,
		38.460899, 34.553059, 29.202492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822922, 34.211380, 28.484360>,  <39.124607, 34.445259, 29.007885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822922, 34.211380, 28.484360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.498806, 34.377808, 28.649437>,  <38.304337, 34.477665, 28.748484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.498806, 34.377808, 28.649437>,  <38.822922, 34.211380, 28.484360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498806, 34.377808, 28.649437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435204, 0.044388, -0.899237,
		-0.392466, -0.908248, 0.145110,
		-0.810289, 0.416072, 0.412694,
		38.255718, 34.502628, 28.773245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196365, 33.787380, 28.431320>,  <38.822922, 34.211380, 28.484360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196365, 33.787380, 28.431320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102848, 34.175995, 28.446568>,  <38.046738, 34.409164, 28.455715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102848, 34.175995, 28.446568>,  <38.196365, 33.787380, 28.431320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102848, 34.175995, 28.446568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459910, -0.075965, -0.884710,
		-0.856634, -0.224371, 0.464581,
		-0.233795, 0.971538, 0.038116,
		38.032711, 34.467457, 28.458002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487186, 33.733768, 28.187740>,  <38.196365, 33.787380, 28.431320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487186, 33.733768, 28.187740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608509, 34.114803, 28.178110>,  <37.681301, 34.343426, 28.172331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608509, 34.114803, 28.178110>,  <37.487186, 33.733768, 28.187740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608509, 34.114803, 28.178110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279607, 0.064815, -0.957924,
		-0.910949, 0.297273, 0.286009,
		0.303303, 0.952590, -0.024077,
		37.699501, 34.400581, 28.170887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933243, 34.156734, 27.872347>,  <37.487186, 33.733768, 28.187740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933243, 34.156734, 27.872347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272022, 34.366543, 27.837570>,  <37.475288, 34.492428, 27.816704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272022, 34.366543, 27.837570>,  <36.933243, 34.156734, 27.872347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272022, 34.366543, 27.837570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106139, 0.006574, -0.994330,
		-0.520973, 0.851374, 0.061240,
		0.846949, 0.524518, -0.086939,
		37.526108, 34.523899, 27.811489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720585, 34.490902, 27.304079>,  <36.933243, 34.156734, 27.872347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720585, 34.490902, 27.304079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114326, 34.561222, 27.308783>,  <37.350571, 34.603413, 27.311605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114326, 34.561222, 27.308783>,  <36.720585, 34.490902, 27.304079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114326, 34.561222, 27.308783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002771, 0.082178, -0.996614,
		-0.176172, 0.980990, 0.081379,
		0.984356, 0.175801, 0.011759,
		37.409634, 34.613964, 27.312311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852039, 35.099312, 27.049536>,  <36.720585, 34.490902, 27.304079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852039, 35.099312, 27.049536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221478, 34.950569, 27.012251>,  <37.443142, 34.861324, 26.989880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221478, 34.950569, 27.012251>,  <36.852039, 35.099312, 27.049536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221478, 34.950569, 27.012251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090720, 0.024228, -0.995582,
		0.372475, 0.927973, -0.011358,
		0.923598, -0.371859, -0.093210,
		37.498558, 34.839012, 26.984287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196632, 35.515011, 26.659466>,  <36.852039, 35.099312, 27.049536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196632, 35.515011, 26.659466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399223, 35.171787, 26.625492>,  <37.520779, 34.965851, 26.605108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.399223, 35.171787, 26.625492>,  <37.196632, 35.515011, 26.659466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399223, 35.171787, 26.625492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038259, 0.076040, -0.996370,
		0.861405, 0.507886, 0.005684,
		0.506475, -0.858061, -0.084932,
		37.551167, 34.914368, 26.600012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613106, 35.677258, 26.199448>,  <37.196632, 35.515011, 26.659466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613106, 35.677258, 26.199448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610535, 35.277374, 26.190165>,  <37.608994, 35.037445, 26.184595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610535, 35.277374, 26.190165>,  <37.613106, 35.677258, 26.199448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610535, 35.277374, 26.190165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038403, 0.023440, -0.998988,
		0.999242, -0.005527, -0.038542,
		-0.006425, -0.999710, -0.023210,
		37.608608, 34.977463, 26.183201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013237, 35.528736, 25.580606>,  <37.613106, 35.677258, 26.199448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013237, 35.528736, 25.580606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802090, 35.203197, 25.677769>,  <37.675400, 35.007874, 25.736065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802090, 35.203197, 25.677769>,  <38.013237, 35.528736, 25.580606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802090, 35.203197, 25.677769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170516, -0.178622, -0.969030,
		0.832034, -0.552938, -0.044486,
		-0.527867, -0.813851, 0.242905,
		37.643730, 34.959042, 25.750641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269520, 34.930317, 25.201788>,  <38.013237, 35.528736, 25.580606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269520, 34.930317, 25.201788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909107, 34.785275, 25.296993>,  <37.692860, 34.698250, 25.354116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909107, 34.785275, 25.296993>,  <38.269520, 34.930317, 25.201788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909107, 34.785275, 25.296993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140770, -0.274573, -0.951206,
		0.410268, -0.890575, 0.196356,
		-0.901035, -0.362609, 0.238015,
		37.638798, 34.676491, 25.368397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278683, 34.342659, 24.772911>,  <38.269520, 34.930317, 25.201788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278683, 34.342659, 24.772911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899601, 34.422550, 24.872482>,  <37.672153, 34.470486, 24.932224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899601, 34.422550, 24.872482>,  <38.278683, 34.342659, 24.772911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899601, 34.422550, 24.872482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280869, -0.151560, -0.947704,
		-0.151560, -0.968058, 0.199732,
		0.947704, -0.199732, -0.248927,
		37.615292, 34.482471, 24.947161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383980, 33.741112, 24.545277>,  <38.278683, 34.342659, 24.772911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383980, 33.741112, 24.545277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703506, 33.681557, 24.312132>,  <38.895222, 33.645824, 24.172245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703506, 33.681557, 24.312132>,  <38.383980, 33.741112, 24.545277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703506, 33.681557, 24.312132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563336, -0.154808, 0.811595,
		-0.211074, -0.976660, -0.039785,
		0.798811, -0.148895, -0.582864,
		38.943150, 33.636890, 24.137272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556969, 33.010181, 24.704206>,  <38.383980, 33.741112, 24.545277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556969, 33.010181, 24.704206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879326, 33.211086, 24.578815>,  <39.072742, 33.331627, 24.503582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879326, 33.211086, 24.578815>,  <38.556969, 33.010181, 24.704206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879326, 33.211086, 24.578815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500717, -0.295655, 0.813555,
		0.315936, -0.812602, -0.489757,
		0.805896, 0.502261, -0.313475,
		39.121094, 33.361763, 24.484774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121613, 32.546066, 24.665216>,  <38.556969, 33.010181, 24.704206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121613, 32.546066, 24.665216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.233677, 32.924770, 24.728645>,  <39.300915, 33.151993, 24.766703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.233677, 32.924770, 24.728645>,  <39.121613, 32.546066, 24.665216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233677, 32.924770, 24.728645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601898, -0.301937, 0.739291,
		0.747814, -0.111678, -0.654448,
		0.280165, 0.946764, 0.158574,
		39.317726, 33.208801, 24.776218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824631, 32.550446, 24.663015>,  <39.121613, 32.546066, 24.665216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824631, 32.550446, 24.663015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.729065, 32.893127, 24.845875>,  <39.671726, 33.098736, 24.955591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.729065, 32.893127, 24.845875>,  <39.824631, 32.550446, 24.663015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729065, 32.893127, 24.845875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585935, -0.248232, 0.771402,
		0.774339, 0.452157, -0.442665,
		-0.238911, 0.856700, 0.457150,
		39.657391, 33.150139, 24.983021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454708, 32.834515, 24.799383>,  <39.824631, 32.550446, 24.663015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454708, 32.834515, 24.799383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.217319, 33.024769, 25.059095>,  <40.074886, 33.138920, 25.214922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.217319, 33.024769, 25.059095>,  <40.454708, 32.834515, 24.799383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217319, 33.024769, 25.059095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583918, -0.300756, 0.754047,
		0.553927, 0.826629, -0.099243,
		-0.593469, 0.475636, 0.649280,
		40.039280, 33.167461, 25.253880>
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
