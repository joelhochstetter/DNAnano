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
	<3.158713, 4.922251, -0.887848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.548279, 5.012909, -0.892307>,  <3.782018, 5.067304, -0.894983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.548279, 5.012909, -0.892307>,  <3.158713, 4.922251, -0.887848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.548279, 5.012909, -0.892307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087958, -0.331763, 0.939253,
		0.209178, -0.915732, -0.343044,
		0.973914, 0.226644, -0.011148,
		3.840453, 5.080902, -0.895652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.369081, 4.410477, -0.627243>,  <3.158713, 4.922251, -0.887848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.369081, 4.410477, -0.627243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.667183, 4.670155, -0.566395>,  <3.846044, 4.825961, -0.529886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.667183, 4.670155, -0.566395>,  <3.369081, 4.410477, -0.627243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.667183, 4.670155, -0.566395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166623, -0.402226, 0.900251,
		0.645624, -0.645571, -0.407932,
		0.745256, 0.649194, 0.152120,
		3.890760, 4.864913, -0.520759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.905418, 4.104289, -0.319529>,  <3.369081, 4.410477, -0.627243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.905418, 4.104289, -0.319529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.925325, 4.485672, -0.200573>,  <3.937270, 4.714502, -0.129199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.925325, 4.485672, -0.200573>,  <3.905418, 4.104289, -0.319529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.925325, 4.485672, -0.200573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261441, -0.299814, 0.917475,
		0.963935, 0.032090, -0.264194,
		0.049768, 0.953458, 0.297391,
		3.940256, 4.771709, -0.111356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.516953, 4.252460, 0.110705>,  <3.905418, 4.104289, -0.319529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.516953, 4.252460, 0.110705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.213205, 4.496166, 0.202053>,  <4.030956, 4.642390, 0.256862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.213205, 4.496166, 0.202053>,  <4.516953, 4.252460, 0.110705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.213205, 4.496166, 0.202053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165121, -0.159042, 0.973366,
		0.629358, 0.776854, 0.020169,
		-0.759371, 0.609265, 0.228369,
		3.985394, 4.678946, 0.270564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.701780, 4.678202, 0.626210>,  <4.516953, 4.252460, 0.110705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.701780, 4.678202, 0.626210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.303427, 4.698009, 0.656582>,  <4.064415, 4.709894, 0.674805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.303427, 4.698009, 0.656582>,  <4.701780, 4.678202, 0.626210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.303427, 4.698009, 0.656582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071742, -0.081475, 0.994090,
		0.055414, 0.995445, 0.077587,
		-0.995883, 0.049520, 0.075930,
		4.004662, 4.712865, 0.679361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.584132, 5.174719, 1.081147>,  <4.701780, 4.678202, 0.626210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.584132, 5.174719, 1.081147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245665, 4.962143, 1.097012>,  <4.042584, 4.834598, 1.106531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.245665, 4.962143, 1.097012>,  <4.584132, 5.174719, 1.081147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.245665, 4.962143, 1.097012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062132, -0.024462, 0.997768,
		-0.529283, 0.846743, 0.053719,
		-0.846167, -0.531439, 0.039662,
		3.991814, 4.802711, 1.108910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.115335, 5.463021, 1.643980>,  <4.584132, 5.174719, 1.081147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.115335, 5.463021, 1.643980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.003172, 5.084625, 1.578896>,  <3.935874, 4.857588, 1.539845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.003172, 5.084625, 1.578896>,  <4.115335, 5.463021, 1.643980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.003172, 5.084625, 1.578896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174150, -0.116560, 0.977796,
		-0.943951, 0.302517, -0.132060,
		-0.280407, -0.945990, -0.162710,
		3.919050, 4.800828, 1.530082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.494791, 5.497683, 1.869131>,  <4.115335, 5.463021, 1.643980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.494791, 5.497683, 1.869131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.617931, 5.117821, 1.892387>,  <3.691816, 4.889903, 1.906341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.617931, 5.117821, 1.892387>,  <3.494791, 5.497683, 1.869131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.617931, 5.117821, 1.892387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242060, -0.019077, 0.970074,
		-0.920127, -0.312712, -0.235747,
		0.307851, -0.949656, 0.058141,
		3.710287, 4.832924, 1.909830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.611989, 4.792830, 3.007926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.750622, 4.417641, 3.011646>,  <3.833802, 4.192527, 3.013878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.750622, 4.417641, 3.011646>,  <3.611989, 4.792830, 3.007926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.750622, 4.417641, 3.011646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014626, -0.004510, -0.999883,
		0.937905, 0.346678, 0.012155,
		0.346583, -0.937973, 0.009301,
		3.854597, 4.136249, 3.014436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.422718, 4.487574, 2.767913>,  <3.611989, 4.792830, 3.007926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.422718, 4.487574, 2.767913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.069069, 4.314857, 2.696491>,  <3.856879, 4.211227, 2.653638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.069069, 4.314857, 2.696491>,  <4.422718, 4.487574, 2.767913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.069069, 4.314857, 2.696491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110661, 0.177765, -0.977831,
		0.453960, -0.884282, -0.109383,
		-0.884123, -0.431792, -0.178554,
		3.803832, 4.185320, 2.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.337853, 3.916663, 2.284890>,  <4.422718, 4.487574, 2.767913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.337853, 3.916663, 2.284890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.968632, 4.068905, 2.262569>,  <3.747099, 4.160250, 2.249177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.968632, 4.068905, 2.262569>,  <4.337853, 3.916663, 2.284890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968632, 4.068905, 2.262569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097975, 0.092336, -0.990896,
		-0.371986, -0.920117, -0.122521,
		-0.923053, 0.380604, -0.055801,
		3.691716, 4.183086, 2.245829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.937598, 3.500127, 1.786677>,  <4.337853, 3.916663, 2.284890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.937598, 3.500127, 1.786677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.808846, 3.877201, 1.821861>,  <3.731594, 4.103446, 1.842972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.808846, 3.877201, 1.821861>,  <3.937598, 3.500127, 1.786677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.808846, 3.877201, 1.821861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033290, 0.104117, -0.994008,
		-0.946195, -0.317023, -0.064895,
		-0.321881, 0.942686, 0.087961,
		3.712281, 4.160007, 1.848250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.426103, 3.637943, 1.282771>,  <3.937598, 3.500127, 1.786677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.426103, 3.637943, 1.282771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.570866, 4.003216, 1.357735>,  <3.657723, 4.222380, 1.402713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.570866, 4.003216, 1.357735>,  <3.426103, 3.637943, 1.282771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.570866, 4.003216, 1.357735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167765, 0.261556, -0.950496,
		-0.916994, 0.312550, 0.247859,
		0.361906, 0.913182, 0.187410,
		3.679438, 4.277170, 1.413958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.895537, 4.096522, 1.026320>,  <3.426103, 3.637943, 1.282771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.895537, 4.096522, 1.026320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235874, 4.306396, 1.037430>,  <3.440076, 4.432321, 1.044096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235874, 4.306396, 1.037430>,  <2.895537, 4.096522, 1.026320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.235874, 4.306396, 1.037430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157216, 0.304673, -0.939392,
		-0.501348, 0.794908, 0.341718,
		0.850843, 0.524686, 0.027774,
		3.491127, 4.463802, 1.045762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756985, 4.640416, 0.596475>,  <2.895537, 4.096522, 1.026320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756985, 4.640416, 0.596475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.151817, 4.687168, 0.640312>,  <3.388717, 4.715219, 0.666615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.151817, 4.687168, 0.640312>,  <2.756985, 4.640416, 0.596475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.151817, 4.687168, 0.640312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055751, 0.390704, -0.918827,
		-0.150212, 0.913066, 0.379140,
		0.987081, 0.116882, 0.109593,
		3.447942, 4.722233, 0.673190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.033009, 5.406836, 0.501212>,  <2.756985, 4.640416, 0.596475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.033009, 5.406836, 0.501212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.310215, 5.131775, 0.414619>,  <3.476539, 4.966738, 0.362664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.310215, 5.131775, 0.414619>,  <3.033009, 5.406836, 0.501212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.310215, 5.131775, 0.414619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165634, 0.444124, -0.880522,
		0.701638, 0.574358, 0.421684,
		0.693015, -0.687653, -0.216481,
		3.518120, 4.925479, 0.349675>
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
