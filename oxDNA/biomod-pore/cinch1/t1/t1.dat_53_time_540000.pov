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
	<42.870564, 31.818867, 22.856194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992985, 32.165821, 23.013153>,  <43.066437, 32.373993, 23.107328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992985, 32.165821, 23.013153>,  <42.870564, 31.818867, 22.856194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992985, 32.165821, 23.013153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846564, -0.059406, -0.528962,
		-0.435503, 0.494078, -0.752479,
		0.306050, 0.867386, 0.392397,
		43.084801, 32.426037, 23.130873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328724, 31.172842, 22.750738>,  <42.870564, 31.818867, 22.856194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328724, 31.172842, 22.750738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963070, 31.012314, 22.773716>,  <42.743679, 30.915997, 22.787502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963070, 31.012314, 22.773716>,  <43.328724, 31.172842, 22.750738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963070, 31.012314, 22.773716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399527, -0.867734, 0.295662,
		-0.068808, 0.293225, 0.953564,
		-0.914135, -0.401319, 0.057444,
		42.688828, 30.891918, 22.790949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214775, 30.766962, 23.351425>,  <43.328724, 31.172842, 22.750738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214775, 30.766962, 23.351425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979599, 30.614243, 23.066174>,  <42.838493, 30.522612, 22.895023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979599, 30.614243, 23.066174>,  <43.214775, 30.766962, 23.351425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979599, 30.614243, 23.066174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307270, -0.920933, 0.239724,
		-0.748269, -0.078178, 0.658773,
		-0.587945, -0.381799, -0.713127,
		42.803215, 30.499702, 22.852236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844360, 30.231606, 23.628345>,  <43.214775, 30.766962, 23.351425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844360, 30.231606, 23.628345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814629, 30.159855, 23.235958>,  <42.796787, 30.116804, 23.000526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814629, 30.159855, 23.235958>,  <42.844360, 30.231606, 23.628345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814629, 30.159855, 23.235958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007909, -0.983552, 0.180449,
		-0.997202, 0.021172, 0.071692,
		-0.074333, -0.179377, -0.980968,
		42.792328, 30.106041, 22.941668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281223, 29.688274, 23.485306>,  <42.844360, 30.231606, 23.628345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281223, 29.688274, 23.485306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934990, 29.489079, 23.506359>,  <41.727249, 29.369560, 23.518991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934990, 29.489079, 23.506359>,  <42.281223, 29.688274, 23.485306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934990, 29.489079, 23.506359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461383, -0.752239, 0.470384,
		-0.194654, 0.431441, 0.880891,
		-0.865584, -0.497991, 0.052633,
		41.675316, 29.339682, 23.522148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684109, 29.894863, 23.437349>,  <42.281223, 29.688274, 23.485306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684109, 29.894863, 23.437349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289951, 29.870686, 23.501041>,  <41.053459, 29.856178, 23.539257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289951, 29.870686, 23.501041>,  <41.684109, 29.894863, 23.437349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289951, 29.870686, 23.501041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164222, -0.089283, 0.982374,
		-0.045163, 0.994170, 0.097905,
		-0.985389, -0.060445, 0.159232,
		40.994335, 29.852552, 23.548811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594593, 30.344755, 23.878855>,  <41.684109, 29.894863, 23.437349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594593, 30.344755, 23.878855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244144, 30.157238, 23.923817>,  <41.033875, 30.044727, 23.950794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244144, 30.157238, 23.923817>,  <41.594593, 30.344755, 23.878855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244144, 30.157238, 23.923817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110148, 0.032336, 0.993389,
		-0.469330, 0.882715, 0.023306,
		-0.876126, -0.468795, 0.112406,
		40.981308, 30.016600, 23.957539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277077, 30.628874, 24.454634>,  <41.594593, 30.344755, 23.878855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277077, 30.628874, 24.454634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107395, 30.269592, 24.408535>,  <41.005585, 30.054024, 24.380875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107395, 30.269592, 24.408535>,  <41.277077, 30.628874, 24.454634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107395, 30.269592, 24.408535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146627, -0.193715, 0.970039,
		-0.893616, 0.394597, 0.213875,
		-0.424206, -0.898202, -0.115248,
		40.980133, 30.000132, 24.373960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754223, 30.585312, 24.927652>,  <41.277077, 30.628874, 24.454634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754223, 30.585312, 24.927652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835781, 30.202953, 24.843094>,  <40.884716, 29.973537, 24.792358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835781, 30.202953, 24.843094>,  <40.754223, 30.585312, 24.927652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835781, 30.202953, 24.843094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113732, -0.191344, 0.974911,
		-0.972364, -0.222822, 0.069702,
		0.203895, -0.955896, -0.211398,
		40.896950, 29.916185, 24.779675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497093, 30.196589, 25.565226>,  <40.754223, 30.585312, 24.927652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497093, 30.196589, 25.565226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705780, 29.902870, 25.391502>,  <40.830990, 29.726639, 25.287268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705780, 29.902870, 25.391502>,  <40.497093, 30.196589, 25.565226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705780, 29.902870, 25.391502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298592, -0.319715, 0.899236,
		-0.799159, -0.598826, 0.052454,
		0.521716, -0.734295, -0.434308,
		40.862293, 29.682581, 25.261209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250679, 29.613379, 25.896027>,  <40.497093, 30.196589, 25.565226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250679, 29.613379, 25.896027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619106, 29.543987, 25.756580>,  <40.840164, 29.502352, 25.672913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619106, 29.543987, 25.756580>,  <40.250679, 29.613379, 25.896027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619106, 29.543987, 25.756580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296567, -0.267638, 0.916743,
		-0.252333, -0.947775, -0.195067,
		0.921073, -0.173474, -0.348613,
		40.895428, 29.491943, 25.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497807, 29.052233, 26.297382>,  <40.250679, 29.613379, 25.896027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497807, 29.052233, 26.297382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834755, 29.214993, 26.156052>,  <41.036926, 29.312649, 26.071253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834755, 29.214993, 26.156052>,  <40.497807, 29.052233, 26.297382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834755, 29.214993, 26.156052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451311, -0.174378, 0.875163,
		0.294490, -0.896675, -0.330529,
		0.842374, 0.406898, -0.353327,
		41.087467, 29.337061, 26.050053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941032, 28.574522, 26.460005>,  <40.497807, 29.052233, 26.297382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941032, 28.574522, 26.460005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131374, 28.922737, 26.409847>,  <41.245579, 29.131666, 26.379753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131374, 28.922737, 26.409847>,  <40.941032, 28.574522, 26.460005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131374, 28.922737, 26.409847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433180, -0.107892, 0.894826,
		0.765453, -0.480125, -0.428442,
		0.475854, 0.870540, -0.125394,
		41.274132, 29.183899, 26.372229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469131, 28.447660, 26.850321>,  <40.941032, 28.574522, 26.460005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469131, 28.447660, 26.850321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496513, 28.841347, 26.785038>,  <41.512943, 29.077559, 26.745869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496513, 28.841347, 26.785038>,  <41.469131, 28.447660, 26.850321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496513, 28.841347, 26.785038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326215, 0.132516, 0.935961,
		0.942814, -0.117309, -0.311994,
		0.068452, 0.984215, -0.163206,
		41.517048, 29.136612, 26.736076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161797, 28.605629, 27.157124>,  <41.469131, 28.447660, 26.850321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161797, 28.605629, 27.157124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923817, 28.926399, 27.135403>,  <41.781029, 29.118862, 27.122370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923817, 28.926399, 27.135403>,  <42.161797, 28.605629, 27.157124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923817, 28.926399, 27.135403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101647, 0.142085, 0.984622,
		0.797308, 0.580283, -0.166047,
		-0.594952, 0.801925, -0.054301,
		41.745331, 29.166977, 27.119112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532043, 29.164783, 27.436304>,  <42.161797, 28.605629, 27.157124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532043, 29.164783, 27.436304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140015, 29.235531, 27.472466>,  <41.904797, 29.277979, 27.494162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140015, 29.235531, 27.472466>,  <42.532043, 29.164783, 27.436304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140015, 29.235531, 27.472466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135416, 0.261971, 0.955528,
		0.145320, 0.948730, -0.280702,
		-0.980074, 0.176869, 0.090403,
		41.845993, 29.288591, 27.499586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611130, 29.756662, 27.882603>,  <42.532043, 29.164783, 27.436304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611130, 29.756662, 27.882603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221504, 29.666168, 27.881153>,  <41.987728, 29.611872, 27.880283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221504, 29.666168, 27.881153>,  <42.611130, 29.756662, 27.882603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221504, 29.666168, 27.881153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100014, 0.416142, 0.903783,
		-0.202960, 0.880706, -0.427976,
		-0.974066, -0.226235, -0.003623,
		41.929283, 29.598297, 27.880066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280735, 30.396696, 28.107769>,  <42.611130, 29.756662, 27.882603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280735, 30.396696, 28.107769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059731, 30.070267, 28.175602>,  <41.927128, 29.874409, 28.216301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059731, 30.070267, 28.175602>,  <42.280735, 30.396696, 28.107769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059731, 30.070267, 28.175602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123262, 0.281218, 0.951695,
		-0.824341, 0.504919, -0.255967,
		-0.552511, -0.816072, 0.169583,
		41.893978, 29.825445, 28.226477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757095, 30.662348, 28.294950>,  <42.280735, 30.396696, 28.107769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757095, 30.662348, 28.294950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736214, 30.300808, 28.464813>,  <41.723686, 30.083885, 28.566730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736214, 30.300808, 28.464813>,  <41.757095, 30.662348, 28.294950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736214, 30.300808, 28.464813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095613, 0.427807, 0.898799,
		-0.994049, 0.006315, -0.108751,
		-0.052201, -0.903848, 0.424657,
		41.720554, 30.029654, 28.592211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292786, 30.730579, 28.807005>,  <41.757095, 30.662348, 28.294950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292786, 30.730579, 28.807005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451862, 30.386524, 28.934757>,  <41.547310, 30.180090, 29.011408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451862, 30.386524, 28.934757>,  <41.292786, 30.730579, 28.807005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451862, 30.386524, 28.934757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091431, 0.309205, 0.946590,
		-0.912953, -0.405651, 0.044324,
		0.397691, -0.860139, 0.319379,
		41.571171, 30.128483, 29.030571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794060, 30.403955, 29.389442>,  <41.292786, 30.730579, 28.807005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794060, 30.403955, 29.389442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166233, 30.266541, 29.440468>,  <41.389538, 30.184092, 29.471083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166233, 30.266541, 29.440468>,  <40.794060, 30.403955, 29.389442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166233, 30.266541, 29.440468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043373, 0.242413, 0.969203,
		-0.363880, -0.907314, 0.210649,
		0.930435, -0.343537, 0.127562,
		41.445362, 30.163479, 29.478737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762993, 30.221386, 30.007895>,  <40.794060, 30.403955, 29.389442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762993, 30.221386, 30.007895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159615, 30.212776, 29.956734>,  <41.397587, 30.207611, 29.926037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159615, 30.212776, 29.956734>,  <40.762993, 30.221386, 30.007895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159615, 30.212776, 29.956734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128700, 0.041051, 0.990833,
		-0.016077, -0.998925, 0.043474,
		0.991553, -0.021524, -0.127902,
		41.457081, 30.206320, 29.918364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070812, 29.727564, 30.504335>,  <40.762993, 30.221386, 30.007895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070812, 29.727564, 30.504335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330410, 30.017094, 30.410629>,  <41.486168, 30.190811, 30.354406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330410, 30.017094, 30.410629>,  <41.070812, 29.727564, 30.504335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330410, 30.017094, 30.410629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116356, 0.209865, 0.970782,
		0.751841, -0.657292, 0.051980,
		0.648997, 0.723826, -0.234265,
		41.525108, 30.234241, 30.340349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381184, 29.683155, 31.122454>,  <41.070812, 29.727564, 30.504335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381184, 29.683155, 31.122454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478054, 30.013371, 30.918556>,  <41.536175, 30.211500, 30.796217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478054, 30.013371, 30.918556>,  <41.381184, 29.683155, 31.122454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478054, 30.013371, 30.918556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034074, 0.517824, 0.854808,
		0.969635, -0.224380, 0.097273,
		0.242172, 0.825537, -0.509746,
		41.550705, 30.261032, 30.765633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888462, 29.917959, 31.526237>,  <41.381184, 29.683155, 31.122454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888462, 29.917959, 31.526237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785988, 30.232994, 31.302067>,  <41.724503, 30.422014, 31.167564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785988, 30.232994, 31.302067>,  <41.888462, 29.917959, 31.526237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785988, 30.232994, 31.302067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030476, 0.586067, 0.809689,
		0.966147, 0.190351, -0.174145,
		-0.256186, 0.787586, -0.560426,
		41.709133, 30.469271, 31.133940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423431, 30.277836, 31.401663>,  <41.888462, 29.917959, 31.526237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423431, 30.277836, 31.401663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107189, 30.521976, 31.382050>,  <41.917442, 30.668461, 31.370281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107189, 30.521976, 31.382050>,  <42.423431, 30.277836, 31.401663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107189, 30.521976, 31.382050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142451, 0.261217, 0.954711,
		0.595520, 0.747819, -0.293466,
		-0.790610, 0.610354, -0.049033,
		41.870007, 30.705082, 31.367340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491631, 30.993971, 31.704599>,  <42.423431, 30.277836, 31.401663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491631, 30.993971, 31.704599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103374, 30.899830, 31.724461>,  <41.870422, 30.843346, 31.736378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103374, 30.899830, 31.724461>,  <42.491631, 30.993971, 31.704599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103374, 30.899830, 31.724461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028304, 0.093235, 0.995242,
		-0.238863, 0.967428, -0.083836,
		-0.970641, -0.235353, 0.049653,
		41.812183, 30.829224, 31.739357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116302, 31.484985, 31.999146>,  <42.491631, 30.993971, 31.704599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116302, 31.484985, 31.999146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914494, 31.150188, 32.083904>,  <41.793407, 30.949310, 32.134762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914494, 31.150188, 32.083904>,  <42.116302, 31.484985, 31.999146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914494, 31.150188, 32.083904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093030, 0.191297, 0.977114,
		-0.858371, 0.512691, -0.018649,
		-0.504525, -0.836991, 0.211899,
		41.763138, 30.899092, 32.147472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518406, 31.658169, 32.416740>,  <42.116302, 31.484985, 31.999146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518406, 31.658169, 32.416740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639416, 31.283577, 32.487717>,  <41.712021, 31.058823, 32.530300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639416, 31.283577, 32.487717>,  <41.518406, 31.658169, 32.416740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639416, 31.283577, 32.487717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094429, 0.155796, 0.983265,
		-0.948451, -0.314220, -0.041298,
		0.302528, -0.936479, 0.177436,
		41.730175, 31.002634, 32.540947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055294, 31.349092, 32.901260>,  <41.518406, 31.658169, 32.416740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055294, 31.349092, 32.901260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419231, 31.183926, 32.917694>,  <41.637592, 31.084826, 32.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419231, 31.183926, 32.917694>,  <41.055294, 31.349092, 32.901260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419231, 31.183926, 32.917694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009074, 0.118786, 0.992878,
		-0.414858, -0.902988, 0.111823,
		0.909841, -0.412918, 0.041086,
		41.692184, 31.060051, 32.930019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836689, 31.755915, 32.216709>,  <41.055294, 31.349092, 32.901260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836689, 31.755915, 32.216709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148323, 31.521317, 32.128120>,  <41.335304, 31.380558, 32.074966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148323, 31.521317, 32.128120>,  <40.836689, 31.755915, 32.216709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148323, 31.521317, 32.128120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229549, -0.061872, 0.971329,
		-0.583383, -0.807586, 0.086426,
		0.779083, -0.586496, -0.221475,
		41.382050, 31.345367, 32.061676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330486, 32.063873, 32.668564>,  <40.836689, 31.755915, 32.216709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330486, 32.063873, 32.668564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537453, 32.406055, 32.677349>,  <40.661633, 32.611362, 32.682621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537453, 32.406055, 32.677349>,  <40.330486, 32.063873, 32.668564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537453, 32.406055, 32.677349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738596, 0.459406, -0.493378,
		-0.432152, 0.239057, 0.869538,
		0.517416, 0.855452, 0.021967,
		40.692677, 32.662689, 32.683941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825123, 32.622272, 32.496754>,  <40.330486, 32.063873, 32.668564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825123, 32.622272, 32.496754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192062, 32.781044, 32.484638>,  <40.412228, 32.876305, 32.477367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192062, 32.781044, 32.484638>,  <39.825123, 32.622272, 32.496754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192062, 32.781044, 32.484638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317019, 0.682420, -0.658637,
		-0.240760, 0.613803, 0.751851,
		0.917351, 0.396925, -0.030289,
		40.467266, 32.900120, 32.475552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726677, 33.272163, 32.554279>,  <39.825123, 32.622272, 32.496754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726677, 33.272163, 32.554279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067307, 33.200096, 32.357361>,  <40.271683, 33.156857, 32.239208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067307, 33.200096, 32.357361>,  <39.726677, 33.272163, 32.554279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067307, 33.200096, 32.357361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320193, 0.564806, -0.760573,
		0.415089, 0.805315, 0.423284,
		0.851574, -0.180173, -0.492301,
		40.322777, 33.146046, 32.209671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168766, 33.887764, 32.351093>,  <39.726677, 33.272163, 32.554279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168766, 33.887764, 32.351093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236210, 33.589184, 32.093601>,  <40.276676, 33.410034, 31.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236210, 33.589184, 32.093601>,  <40.168766, 33.887764, 32.351093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236210, 33.589184, 32.093601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313015, 0.578723, -0.753062,
		0.934661, 0.328472, -0.136069,
		0.168614, -0.746449, -0.643726,
		40.286793, 33.365250, 31.900484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076523, 34.139523, 31.675745>,  <40.168766, 33.887764, 32.351093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076523, 34.139523, 31.675745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114330, 33.753910, 31.576378>,  <40.137016, 33.522541, 31.516758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114330, 33.753910, 31.576378>,  <40.076523, 34.139523, 31.675745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114330, 33.753910, 31.576378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262196, 0.216618, -0.940388,
		0.960374, 0.154020, -0.232290,
		0.094521, -0.964030, -0.248418,
		40.142685, 33.464703, 31.501852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215790, 34.260307, 30.960844>,  <40.076523, 34.139523, 31.675745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215790, 34.260307, 30.960844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156929, 33.865604, 30.988167>,  <40.121613, 33.628784, 31.004560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156929, 33.865604, 30.988167>,  <40.215790, 34.260307, 30.960844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156929, 33.865604, 30.988167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199398, -0.038048, -0.979180,
		0.968807, -0.157706, -0.191158,
		-0.147149, -0.986753, 0.068307,
		40.112785, 33.569580, 31.008659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079353, 34.060898, 30.314072>,  <40.215790, 34.260307, 30.960844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079353, 34.060898, 30.314072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059685, 33.696129, 30.477032>,  <40.047882, 33.477268, 30.574808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059685, 33.696129, 30.477032>,  <40.079353, 34.060898, 30.314072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059685, 33.696129, 30.477032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201122, -0.390498, -0.898366,
		0.978331, -0.126112, -0.164206,
		-0.049172, -0.911925, 0.407401,
		40.044933, 33.422550, 30.599253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449913, 33.658909, 29.878384>,  <40.079353, 34.060898, 30.314072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449913, 33.658909, 29.878384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207535, 33.402580, 30.066929>,  <40.062107, 33.248783, 30.180056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207535, 33.402580, 30.066929>,  <40.449913, 33.658909, 29.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207535, 33.402580, 30.066929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181768, -0.465325, -0.866276,
		0.774462, -0.610594, 0.165481,
		-0.605945, -0.640818, 0.471363,
		40.025753, 33.210335, 30.208338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592369, 33.046467, 29.579971>,  <40.449913, 33.658909, 29.878384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592369, 33.046467, 29.579971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248714, 32.944199, 29.757294>,  <40.042522, 32.882839, 29.863688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248714, 32.944199, 29.757294>,  <40.592369, 33.046467, 29.579971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248714, 32.944199, 29.757294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229765, -0.581324, -0.780558,
		0.457267, -0.772461, 0.440693,
		-0.859136, -0.255668, 0.443305,
		39.990974, 32.867496, 29.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550014, 32.339306, 29.489437>,  <40.592369, 33.046467, 29.579971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550014, 32.339306, 29.489437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174408, 32.455906, 29.562412>,  <39.949043, 32.525864, 29.606197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174408, 32.455906, 29.562412>,  <40.550014, 32.339306, 29.489437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174408, 32.455906, 29.562412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326778, -0.591152, -0.737398,
		-0.107100, -0.752044, 0.650354,
		-0.939013, 0.291496, 0.182439,
		39.892704, 32.543354, 29.617144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168613, 31.679180, 29.378958>,  <40.550014, 32.339306, 29.489437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168613, 31.679180, 29.378958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930645, 31.994892, 29.318157>,  <39.787865, 32.184319, 29.281677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930645, 31.994892, 29.318157>,  <40.168613, 31.679180, 29.378958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930645, 31.994892, 29.318157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255152, -0.364769, -0.895456,
		-0.762211, -0.493943, 0.418395,
		-0.594922, 0.789281, -0.152000,
		39.752167, 32.231678, 29.272556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451794, 31.321356, 29.341274>,  <40.168613, 31.679180, 29.378958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451794, 31.321356, 29.341274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396450, 31.678768, 29.170414>,  <39.363243, 31.893215, 29.067898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396450, 31.678768, 29.170414>,  <39.451794, 31.321356, 29.341274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396450, 31.678768, 29.170414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513118, -0.433573, -0.740759,
		-0.847093, 0.116683, 0.518478,
		-0.138364, 0.893532, -0.427149,
		39.354942, 31.946827, 29.042269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761410, 31.351408, 29.190289>,  <39.451794, 31.321356, 29.341274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761410, 31.351408, 29.190289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929424, 31.623783, 28.950325>,  <39.030235, 31.787209, 28.806347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929424, 31.623783, 28.950325>,  <38.761410, 31.351408, 29.190289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929424, 31.623783, 28.950325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580312, -0.306698, -0.754437,
		-0.697715, 0.665028, 0.266330,
		0.420039, 0.680936, -0.599911,
		39.055435, 31.828064, 28.770351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226471, 31.448944, 28.610266>,  <38.761410, 31.351408, 29.190289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226471, 31.448944, 28.610266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542530, 31.653118, 28.474545>,  <38.732166, 31.775623, 28.393112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542530, 31.653118, 28.474545>,  <38.226471, 31.448944, 28.610266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542530, 31.653118, 28.474545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304348, -0.153768, -0.940068,
		-0.532017, 0.846057, 0.033851,
		0.790146, 0.510434, -0.339303,
		38.779575, 31.806248, 28.372753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928528, 31.884304, 28.097574>,  <38.226471, 31.448944, 28.610266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928528, 31.884304, 28.097574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318279, 31.831749, 28.024563>,  <38.552132, 31.800217, 27.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318279, 31.831749, 28.024563>,  <37.928528, 31.884304, 28.097574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318279, 31.831749, 28.024563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213475, -0.284943, -0.934471,
		0.070766, 0.949497, -0.305691,
		0.974382, -0.131386, -0.182529,
		38.610596, 31.792334, 27.969805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963203, 32.168823, 27.445324>,  <37.928528, 31.884304, 28.097574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963203, 32.168823, 27.445324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302509, 31.957981, 27.465714>,  <38.506092, 31.831474, 27.477947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302509, 31.957981, 27.465714>,  <37.963203, 32.168823, 27.445324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302509, 31.957981, 27.465714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055129, -0.183627, -0.981449,
		0.526690, 0.829721, -0.184824,
		0.848268, -0.527109, 0.050972,
		38.556988, 31.799849, 27.481005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361351, 32.312531, 26.770432>,  <37.963203, 32.168823, 27.445324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361351, 32.312531, 26.770432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508278, 31.967968, 26.910751>,  <38.596436, 31.761230, 26.994944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508278, 31.967968, 26.910751>,  <38.361351, 32.312531, 26.770432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508278, 31.967968, 26.910751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118901, -0.417558, -0.900837,
		0.922463, 0.289185, -0.255799,
		0.367320, -0.861404, 0.350797,
		38.618473, 31.709547, 27.015991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819973, 32.175678, 26.345221>,  <38.361351, 32.312531, 26.770432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819973, 32.175678, 26.345221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695885, 31.833607, 26.511322>,  <38.621429, 31.628365, 26.610983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695885, 31.833607, 26.511322>,  <38.819973, 32.175678, 26.345221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695885, 31.833607, 26.511322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049525, -0.421675, -0.905394,
		0.949372, -0.301441, 0.088462,
		-0.310225, -0.855175, 0.415255,
		38.602818, 31.577055, 26.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152103, 31.616581, 25.969780>,  <38.819973, 32.175678, 26.345221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152103, 31.616581, 25.969780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862198, 31.423000, 26.165947>,  <38.688255, 31.306852, 26.283648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862198, 31.423000, 26.165947>,  <39.152103, 31.616581, 25.969780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862198, 31.423000, 26.165947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172021, -0.562142, -0.808954,
		0.667177, -0.670663, 0.324171,
		-0.724765, -0.483950, 0.490416,
		38.644768, 31.277815, 26.313072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213127, 30.929289, 25.817940>,  <39.152103, 31.616581, 25.969780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213127, 30.929289, 25.817940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839649, 30.935829, 25.961021>,  <38.615562, 30.939753, 26.046871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839649, 30.935829, 25.961021>,  <39.213127, 30.929289, 25.817940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839649, 30.935829, 25.961021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290203, -0.619758, -0.729165,
		0.209768, -0.784623, 0.583408,
		-0.933691, 0.016351, 0.357705,
		38.559544, 30.940735, 26.068333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982372, 30.225731, 25.761551>,  <39.213127, 30.929289, 25.817940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982372, 30.225731, 25.761551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657856, 30.459133, 25.776154>,  <38.463146, 30.599174, 25.784916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657856, 30.459133, 25.776154>,  <38.982372, 30.225731, 25.761551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657856, 30.459133, 25.776154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307981, -0.373464, -0.875027,
		-0.496950, -0.721142, 0.482696,
		-0.811288, 0.583506, 0.036505,
		38.414471, 30.634184, 25.787106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436176, 29.727421, 25.724474>,  <38.982372, 30.225731, 25.761551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436176, 29.727421, 25.724474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305199, 30.076714, 25.580112>,  <38.226612, 30.286289, 25.493496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305199, 30.076714, 25.580112>,  <38.436176, 29.727421, 25.724474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305199, 30.076714, 25.580112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322591, -0.462325, -0.825949,
		-0.888098, -0.154024, 0.433079,
		-0.327439, 0.873231, -0.360903,
		38.206966, 30.338682, 25.471842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782585, 29.629288, 25.423298>,  <38.436176, 29.727421, 25.724474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782585, 29.629288, 25.423298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921352, 29.955875, 25.238678>,  <38.004612, 30.151829, 25.127907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921352, 29.955875, 25.238678>,  <37.782585, 29.629288, 25.423298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921352, 29.955875, 25.238678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317672, -0.360732, -0.876902,
		-0.882459, 0.450831, 0.134226,
		0.346915, 0.816470, -0.461548,
		38.025429, 30.200817, 25.100214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501328, 29.614737, 24.874941>,  <37.782585, 29.629288, 25.423298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501328, 29.614737, 24.874941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759491, 29.890514, 24.743420>,  <37.914391, 30.055981, 24.664507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759491, 29.890514, 24.743420>,  <37.501328, 29.614737, 24.874941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759491, 29.890514, 24.743420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121021, -0.332730, -0.935225,
		-0.754188, 0.643395, -0.131310,
		0.645410, 0.689444, -0.328805,
		37.953114, 30.097347, 24.644777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191128, 30.178757, 24.427147>,  <37.501328, 29.614737, 24.874941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191128, 30.178757, 24.427147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578358, 30.164982, 24.327827>,  <37.810696, 30.156717, 24.268236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578358, 30.164982, 24.327827>,  <37.191128, 30.178757, 24.427147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578358, 30.164982, 24.327827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250667, -0.125794, -0.959866,
		0.001821, 0.991459, -0.130410,
		0.968072, -0.034437, -0.248297,
		37.868778, 30.154652, 24.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214916, 30.484894, 23.854074>,  <37.191128, 30.178757, 24.427147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214916, 30.484894, 23.854074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564220, 30.290089, 23.860329>,  <37.773804, 30.173206, 23.864080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564220, 30.290089, 23.860329>,  <37.214916, 30.484894, 23.854074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564220, 30.290089, 23.860329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028152, -0.082462, -0.996196,
		0.486448, 0.869494, -0.085721,
		0.873256, -0.487011, 0.015636,
		37.826199, 30.143986, 23.865019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642334, 30.847210, 23.344862>,  <37.214916, 30.484894, 23.854074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642334, 30.847210, 23.344862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831387, 30.495190, 23.363346>,  <37.944817, 30.283978, 23.374437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831387, 30.495190, 23.363346>,  <37.642334, 30.847210, 23.344862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831387, 30.495190, 23.363346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185297, 0.047974, -0.981511,
		0.861561, 0.472452, 0.185745,
		0.472628, -0.880050, 0.046211,
		37.973175, 30.231174, 23.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020050, 31.317532, 23.190077>,  <37.642334, 30.847210, 23.344862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020050, 31.317532, 23.190077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881744, 31.675079, 23.304230>,  <36.798763, 31.889608, 23.372723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881744, 31.675079, 23.304230>,  <37.020050, 31.317532, 23.190077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881744, 31.675079, 23.304230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934526, -0.355382, -0.019121,
		0.084329, -0.273310, 0.958223,
		-0.345761, 0.893871, 0.285384,
		36.778015, 31.943241, 23.389845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582554, 31.340324, 23.802057>,  <37.020050, 31.317532, 23.190077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582554, 31.340324, 23.802057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466957, 31.651909, 23.579453>,  <36.397598, 31.838860, 23.445890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466957, 31.651909, 23.579453>,  <36.582554, 31.340324, 23.802057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466957, 31.651909, 23.579453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948452, -0.311958, 0.055864,
		-0.130092, 0.543968, 0.828960,
		-0.288989, 0.778961, -0.556511,
		36.380260, 31.885597, 23.412498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178368, 31.971655, 24.169191>,  <36.582554, 31.340324, 23.802057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178368, 31.971655, 24.169191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061047, 31.924545, 23.789696>,  <35.990654, 31.896280, 23.561998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061047, 31.924545, 23.789696>,  <36.178368, 31.971655, 24.169191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061047, 31.924545, 23.789696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870790, -0.376682, 0.315967,
		-0.394585, 0.918825, 0.007929,
		-0.293305, -0.117772, -0.948737,
		35.973057, 31.889214, 23.505075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506367, 32.362606, 24.141762>,  <36.178368, 31.971655, 24.169191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506367, 32.362606, 24.141762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563007, 32.051434, 23.896885>,  <35.596992, 31.864731, 23.749960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563007, 32.051434, 23.896885>,  <35.506367, 32.362606, 24.141762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563007, 32.051434, 23.896885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861103, -0.401854, 0.311472,
		-0.488314, 0.483055, -0.726779,
		0.141600, -0.777927, -0.612191,
		35.605488, 31.818056, 23.713228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889580, 32.312622, 23.744421>,  <35.506367, 32.362606, 24.141762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889580, 32.312622, 23.744421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065914, 31.954498, 23.769978>,  <35.171715, 31.739624, 23.785311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065914, 31.954498, 23.769978>,  <34.889580, 32.312622, 23.744421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065914, 31.954498, 23.769978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886284, -0.422922, 0.188781,
		-0.141997, -0.139846, -0.979939,
		0.440837, -0.895310, 0.063890,
		35.198166, 31.685905, 23.789145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375237, 31.829855, 23.478516>,  <34.889580, 32.312622, 23.744421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375237, 31.829855, 23.478516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595325, 31.657887, 23.764851>,  <34.727379, 31.554707, 23.936651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595325, 31.657887, 23.764851>,  <34.375237, 31.829855, 23.478516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595325, 31.657887, 23.764851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796645, -0.527162, 0.295731,
		0.250223, -0.732987, -0.632549,
		0.550222, -0.429919, 0.715839,
		34.760391, 31.528912, 23.979603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261509, 31.044270, 23.404398>,  <34.375237, 31.829855, 23.478516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261509, 31.044270, 23.404398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374714, 31.148945, 23.773487>,  <34.442638, 31.211750, 23.994942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374714, 31.148945, 23.773487>,  <34.261509, 31.044270, 23.404398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374714, 31.148945, 23.773487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687760, -0.615177, 0.385414,
		0.668497, -0.743691, 0.005873,
		0.283016, 0.261688, 0.922725,
		34.459618, 31.227451, 24.050304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516991, 30.492701, 23.683130>,  <34.261509, 31.044270, 23.404398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516991, 30.492701, 23.683130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408001, 30.722622, 23.991768>,  <34.342606, 30.860575, 24.176950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408001, 30.722622, 23.991768>,  <34.516991, 30.492701, 23.683130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408001, 30.722622, 23.991768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545293, -0.752967, 0.368368,
		0.792724, -0.320373, 0.518604,
		-0.272477, 0.574806, 0.771593,
		34.326260, 30.895063, 24.223246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551388, 30.045742, 24.324327>,  <34.516991, 30.492701, 23.683130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551388, 30.045742, 24.324327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326099, 30.367195, 24.401230>,  <34.190926, 30.560066, 24.447371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326099, 30.367195, 24.401230>,  <34.551388, 30.045742, 24.324327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326099, 30.367195, 24.401230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656188, -0.576396, 0.487016,
		0.502196, 0.148142, 0.851970,
		-0.563219, 0.803631, 0.192255,
		34.157135, 30.608284, 24.458906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489174, 29.989037, 24.969244>,  <34.551388, 30.045742, 24.324327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489174, 29.989037, 24.969244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177433, 30.219910, 24.871693>,  <33.990391, 30.358433, 24.813162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177433, 30.219910, 24.871693>,  <34.489174, 29.989037, 24.969244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177433, 30.219910, 24.871693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626343, -0.728554, 0.277316,
		-0.017615, 0.368877, 0.929312,
		-0.779349, 0.577182, -0.243877,
		33.943630, 30.393064, 24.798529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017132, 29.832317, 25.439283>,  <34.489174, 29.989037, 24.969244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017132, 29.832317, 25.439283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791630, 30.020329, 25.167622>,  <33.656330, 30.133135, 25.004623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791630, 30.020329, 25.167622>,  <34.017132, 29.832317, 25.439283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791630, 30.020329, 25.167622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778422, -0.577253, 0.246653,
		-0.276111, 0.667723, 0.691309,
		-0.563756, 0.470027, -0.679156,
		33.622501, 30.161337, 24.963875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452946, 30.104202, 25.743492>,  <34.017132, 29.832317, 25.439283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452946, 30.104202, 25.743492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335384, 30.032513, 25.367939>,  <33.264847, 29.989498, 25.142607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335384, 30.032513, 25.367939>,  <33.452946, 30.104202, 25.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335384, 30.032513, 25.367939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822332, -0.453287, 0.343950,
		-0.487226, 0.873161, -0.014157,
		-0.293906, -0.179223, -0.938881,
		33.247211, 29.978746, 25.086275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763252, 30.024307, 25.838848>,  <33.452946, 30.104202, 25.743492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763252, 30.024307, 25.838848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809937, 29.929890, 25.452965>,  <32.837948, 29.873240, 25.221436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809937, 29.929890, 25.452965>,  <32.763252, 30.024307, 25.838848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809937, 29.929890, 25.452965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687123, -0.720542, 0.093171,
		-0.717105, 0.651998, -0.246291,
		0.116716, -0.236046, -0.964707,
		32.844952, 29.859076, 25.163553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064301, 30.067019, 25.474575>,  <32.763252, 30.024307, 25.838848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064301, 30.067019, 25.474575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310410, 29.804760, 25.299500>,  <32.458073, 29.647406, 25.194454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310410, 29.804760, 25.299500>,  <32.064301, 30.067019, 25.474575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310410, 29.804760, 25.299500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642237, -0.738865, 0.203987,
		-0.457137, 0.155594, -0.875681,
		0.615270, -0.655644, -0.437690,
		32.494991, 29.608067, 25.168192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663763, 29.617039, 25.206381>,  <32.064301, 30.067019, 25.474575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663763, 29.617039, 25.206381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006916, 29.413738, 25.236629>,  <32.212807, 29.291758, 25.254780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006916, 29.413738, 25.236629>,  <31.663763, 29.617039, 25.206381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006916, 29.413738, 25.236629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454791, -0.682516, 0.572133,
		-0.239174, -0.525215, -0.816667,
		0.857882, -0.508253, 0.075623,
		32.264282, 29.261263, 25.259315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533617, 28.911049, 25.006207>,  <31.663763, 29.617039, 25.206381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533617, 28.911049, 25.006207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864496, 28.882607, 25.229164>,  <32.063023, 28.865541, 25.362940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864496, 28.882607, 25.229164>,  <31.533617, 28.911049, 25.006207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864496, 28.882607, 25.229164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477650, -0.611460, 0.630846,
		0.295968, -0.788074, -0.539761,
		0.827196, -0.071107, 0.557396,
		32.112656, 28.861275, 25.396383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684509, 28.208050, 24.883167>,  <31.533617, 28.911049, 25.006207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684509, 28.208050, 24.883167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916124, 28.306061, 25.194210>,  <32.055092, 28.364868, 25.380836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916124, 28.306061, 25.194210>,  <31.684509, 28.208050, 24.883167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916124, 28.306061, 25.194210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387343, -0.756581, 0.526831,
		0.717412, -0.606257, -0.343180,
		0.579038, 0.245027, 0.777609,
		32.089836, 28.379568, 25.427492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918880, 27.600489, 25.233410>,  <31.684509, 28.208050, 24.883167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918880, 27.600489, 25.233410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957903, 27.870121, 25.526283>,  <31.981318, 28.031900, 25.702007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957903, 27.870121, 25.526283>,  <31.918880, 27.600489, 25.233410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957903, 27.870121, 25.526283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165948, -0.714378, 0.679798,
		0.981297, -0.187824, 0.042170,
		0.097557, 0.674082, 0.732186,
		31.987169, 28.072346, 25.745939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369549, 27.296539, 25.696833>,  <31.918880, 27.600489, 25.233410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369549, 27.296539, 25.696833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216595, 27.579876, 25.934162>,  <32.124821, 27.749878, 26.076561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216595, 27.579876, 25.934162>,  <32.369549, 27.296539, 25.696833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216595, 27.579876, 25.934162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036588, -0.630015, 0.775721,
		0.923277, 0.318334, 0.214993,
		-0.382387, 0.708340, 0.593325,
		32.101879, 27.792377, 26.112160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790943, 27.595169, 26.164738>,  <32.369549, 27.296539, 25.696833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790943, 27.595169, 26.164738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437813, 27.661018, 26.340698>,  <32.225933, 27.700527, 26.446276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437813, 27.661018, 26.340698>,  <32.790943, 27.595169, 26.164738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437813, 27.661018, 26.340698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265127, -0.598443, 0.756025,
		0.387715, 0.784070, 0.484676,
		-0.882828, 0.164622, 0.439903,
		32.172966, 27.710405, 26.472670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886982, 27.634275, 26.978558>,  <32.790943, 27.595169, 26.164738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886982, 27.634275, 26.978558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492302, 27.579506, 26.943512>,  <32.255493, 27.546644, 26.922485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492302, 27.579506, 26.943512>,  <32.886982, 27.634275, 26.978558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492302, 27.579506, 26.943512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035711, -0.708385, 0.704922,
		-0.158585, 0.692418, 0.703853,
		-0.986699, -0.136925, -0.087612,
		32.196293, 27.538427, 26.917229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630550, 27.506580, 27.696833>,  <32.886982, 27.634275, 26.978558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630550, 27.506580, 27.696833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335724, 27.382576, 27.456627>,  <32.158829, 27.308172, 27.312504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335724, 27.382576, 27.456627>,  <32.630550, 27.506580, 27.696833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335724, 27.382576, 27.456627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313446, -0.630408, 0.710167,
		-0.598731, 0.711672, 0.367483,
		-0.737071, -0.310012, -0.600516,
		32.114601, 27.289572, 27.276472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998243, 27.574930, 28.070951>,  <32.630550, 27.506580, 27.696833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998243, 27.574930, 28.070951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955252, 27.302311, 27.781418>,  <31.929457, 27.138739, 27.607697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955252, 27.302311, 27.781418>,  <31.998243, 27.574930, 28.070951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955252, 27.302311, 27.781418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264683, -0.682164, 0.681613,
		-0.958327, 0.264847, -0.107076,
		-0.107480, -0.681549, -0.723836,
		31.923008, 27.097847, 27.564266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356672, 27.270254, 28.339296>,  <31.998243, 27.574930, 28.070951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356672, 27.270254, 28.339296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540663, 27.017162, 28.090115>,  <31.651058, 26.865307, 27.940605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540663, 27.017162, 28.090115>,  <31.356672, 27.270254, 28.339296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540663, 27.017162, 28.090115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181975, -0.753865, 0.631326,
		-0.869083, -0.177034, -0.461903,
		0.459978, -0.632730, -0.622955,
		31.678656, 26.827343, 27.903229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943531, 26.617504, 28.400076>,  <31.356672, 27.270254, 28.339296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943531, 26.617504, 28.400076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312593, 26.524998, 28.276646>,  <31.534031, 26.469494, 28.202587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312593, 26.524998, 28.276646>,  <30.943531, 26.617504, 28.400076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312593, 26.524998, 28.276646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023574, -0.764879, 0.643742,
		-0.384898, -0.601228, -0.700270,
		0.922658, -0.231267, -0.308574,
		31.589392, 26.455618, 28.184072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854679, 25.983173, 28.522915>,  <30.943531, 26.617504, 28.400076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854679, 25.983173, 28.522915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245424, 26.042099, 28.460903>,  <31.479872, 26.077456, 28.423697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245424, 26.042099, 28.460903>,  <30.854679, 25.983173, 28.522915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245424, 26.042099, 28.460903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213265, -0.725119, 0.654768,
		-0.015957, -0.672682, -0.739760,
		0.976864, 0.147316, -0.155030,
		31.538483, 26.086294, 28.414394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143553, 25.312191, 28.161089>,  <30.854679, 25.983173, 28.522915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143553, 25.312191, 28.161089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426308, 25.513943, 28.359447>,  <31.595961, 25.634995, 28.478462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426308, 25.513943, 28.359447>,  <31.143553, 25.312191, 28.161089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426308, 25.513943, 28.359447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189578, -0.810534, 0.554162,
		0.681447, -0.297720, -0.668575,
		0.706887, 0.504379, 0.495895,
		31.638374, 25.665257, 28.508217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743328, 24.785814, 28.149902>,  <31.143553, 25.312191, 28.161089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743328, 24.785814, 28.149902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812738, 25.048630, 28.443348>,  <31.854383, 25.206318, 28.619415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812738, 25.048630, 28.443348>,  <31.743328, 24.785814, 28.149902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812738, 25.048630, 28.443348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003018, -0.745267, 0.666759,
		0.984825, -0.113485, -0.131305,
		0.173524, 0.657037, 0.733616,
		31.864796, 25.245741, 28.663433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274033, 24.550104, 28.455544>,  <31.743328, 24.785814, 28.149902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274033, 24.550104, 28.455544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115047, 24.789265, 28.733978>,  <32.019657, 24.932762, 28.901039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115047, 24.789265, 28.733978>,  <32.274033, 24.550104, 28.455544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115047, 24.789265, 28.733978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075426, -0.734724, 0.674160,
		0.914514, 0.320455, 0.246928,
		-0.397462, 0.597904, 0.696086,
		31.995810, 24.968636, 28.942804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777058, 24.465740, 28.936188>,  <32.274033, 24.550104, 28.455544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777058, 24.465740, 28.936188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458942, 24.610874, 29.130451>,  <32.268074, 24.697954, 29.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458942, 24.610874, 29.130451>,  <32.777058, 24.465740, 28.936188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458942, 24.610874, 29.130451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166049, -0.640100, 0.750133,
		0.583046, 0.677216, 0.448816,
		-0.795289, 0.362836, 0.485659,
		32.220356, 24.719725, 29.276150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974308, 24.530048, 29.642744>,  <32.777058, 24.465740, 28.936188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974308, 24.530048, 29.642744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574684, 24.547329, 29.641010>,  <32.334911, 24.557697, 29.639969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574684, 24.547329, 29.641010>,  <32.974308, 24.530048, 29.642744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574684, 24.547329, 29.641010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032331, -0.673531, 0.738452,
		0.028983, 0.737896, 0.674292,
		-0.999057, 0.043203, -0.004336,
		32.274967, 24.560289, 29.639709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749287, 24.774429, 30.341236>,  <32.974308, 24.530048, 29.642744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749287, 24.774429, 30.341236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476765, 24.548286, 30.155251>,  <32.313251, 24.412601, 30.043659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476765, 24.548286, 30.155251>,  <32.749287, 24.774429, 30.341236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476765, 24.548286, 30.155251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016679, -0.647026, 0.762285,
		-0.731807, 0.511595, 0.450253,
		-0.681307, -0.565356, -0.464965,
		32.272373, 24.378679, 30.015760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313709, 24.503275, 30.880791>,  <32.749287, 24.774429, 30.341236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313709, 24.503275, 30.880791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228054, 24.268082, 30.568787>,  <32.176662, 24.126965, 30.381584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228054, 24.268082, 30.568787>,  <32.313709, 24.503275, 30.880791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228054, 24.268082, 30.568787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254359, -0.737422, 0.625708,
		-0.943105, 0.332391, 0.008351,
		-0.214138, -0.587984, -0.780012,
		32.163811, 24.091686, 30.334784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646856, 24.256607, 30.963184>,  <32.313709, 24.503275, 30.880791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646856, 24.256607, 30.963184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831480, 23.998459, 30.719723>,  <31.942255, 23.843571, 30.573647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831480, 23.998459, 30.719723>,  <31.646856, 24.256607, 30.963184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831480, 23.998459, 30.719723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231422, -0.749949, 0.619693,
		-0.856391, -0.145170, -0.495500,
		0.461561, -0.645369, -0.608654,
		31.969948, 23.804848, 30.537127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148155, 23.763638, 30.581287>,  <31.646856, 24.256607, 30.963184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148155, 23.763638, 30.581287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516329, 23.643410, 30.681255>,  <31.737232, 23.571274, 30.741236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516329, 23.643410, 30.681255>,  <31.148155, 23.763638, 30.581287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516329, 23.643410, 30.681255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386761, -0.793007, 0.470698,
		0.056711, -0.529905, -0.846159,
		0.920435, -0.300567, 0.249919,
		31.792459, 23.553240, 30.756231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174715, 23.058668, 30.470381>,  <31.148155, 23.763638, 30.581287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174715, 23.058668, 30.470381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458218, 23.133278, 30.742519>,  <31.628319, 23.178043, 30.905802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458218, 23.133278, 30.742519>,  <31.174715, 23.058668, 30.470381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458218, 23.133278, 30.742519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351921, -0.742356, 0.570140,
		0.611403, -0.643520, -0.460510,
		0.708758, 0.186522, 0.680346,
		31.670845, 23.189234, 30.946623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278625, 22.412483, 30.862082>,  <31.174715, 23.058668, 30.470381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278625, 22.412483, 30.862082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472961, 22.659672, 31.109329>,  <31.589563, 22.807985, 31.257677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472961, 22.659672, 31.109329>,  <31.278625, 22.412483, 30.862082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472961, 22.659672, 31.109329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312931, -0.537330, 0.783167,
		0.816108, -0.573923, -0.067675,
		0.485841, 0.617972, 0.618118,
		31.618713, 22.845064, 31.294764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638214, 21.988811, 31.311317>,  <31.278625, 22.412483, 30.862082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638214, 21.988811, 31.311317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643553, 22.334423, 31.512623>,  <31.646755, 22.541790, 31.633406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643553, 22.334423, 31.512623>,  <31.638214, 21.988811, 31.311317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643553, 22.334423, 31.512623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322586, -0.472675, 0.820071,
		0.946446, -0.173291, 0.272415,
		0.013347, 0.864030, 0.503263,
		31.647556, 22.593632, 31.663601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026726, 21.824165, 31.966095>,  <31.638214, 21.988811, 31.311317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026726, 21.824165, 31.966095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774851, 22.133682, 31.993614>,  <31.623726, 22.319393, 32.010128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774851, 22.133682, 31.993614>,  <32.026726, 21.824165, 31.966095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774851, 22.133682, 31.993614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301991, -0.325421, 0.896048,
		0.715746, 0.543455, 0.438594,
		-0.629689, 0.773794, 0.068800,
		31.585943, 22.365820, 32.014256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192989, 22.110727, 32.497860>,  <32.026726, 21.824165, 31.966095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192989, 22.110727, 32.497860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814672, 22.230289, 32.447060>,  <31.587683, 22.302027, 32.416580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814672, 22.230289, 32.447060>,  <32.192989, 22.110727, 32.497860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814672, 22.230289, 32.447060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208576, -0.259313, 0.943002,
		0.248935, 0.918375, 0.307601,
		-0.945794, 0.298905, -0.126999,
		31.530933, 22.319962, 32.408958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939148, 22.590128, 33.146801>,  <32.192989, 22.110727, 32.497860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939148, 22.590128, 33.146801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622671, 22.432007, 32.960144>,  <31.432785, 22.337133, 32.848152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622671, 22.432007, 32.960144>,  <31.939148, 22.590128, 33.146801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622671, 22.432007, 32.960144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395883, -0.250540, 0.883463,
		-0.466146, 0.883723, 0.041732,
		-0.791192, -0.395302, -0.466639,
		31.385313, 22.313416, 32.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515026, 22.508373, 33.689789>,  <31.939148, 22.590128, 33.146801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515026, 22.508373, 33.689789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313917, 22.268135, 33.441109>,  <31.193253, 22.123993, 33.291901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313917, 22.268135, 33.441109>,  <31.515026, 22.508373, 33.689789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313917, 22.268135, 33.441109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584987, -0.293096, 0.756231,
		-0.636405, 0.743896, -0.203979,
		-0.502772, -0.600594, -0.621697,
		31.163086, 22.087957, 33.254601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818733, 22.610527, 33.844273>,  <31.515026, 22.508373, 33.689789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818733, 22.610527, 33.844273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797016, 22.273201, 33.630402>,  <30.783985, 22.070807, 33.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797016, 22.273201, 33.630402>,  <30.818733, 22.610527, 33.844273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797016, 22.273201, 33.630402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766789, -0.307776, 0.563301,
		-0.639599, 0.440565, -0.629934,
		-0.054292, -0.843313, -0.534673,
		30.780729, 22.020206, 33.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198671, 22.588039, 33.754532>,  <30.818733, 22.610527, 33.844273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198671, 22.588039, 33.754532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318596, 22.216202, 33.668770>,  <30.390551, 21.993099, 33.617313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318596, 22.216202, 33.668770>,  <30.198671, 22.588039, 33.754532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318596, 22.216202, 33.668770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804109, -0.367172, 0.467539,
		-0.513344, 0.032229, -0.857578,
		0.299810, -0.929595, -0.214401,
		30.408539, 21.937323, 33.604450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700197, 22.268875, 33.362316>,  <30.198671, 22.588039, 33.754532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700197, 22.268875, 33.362316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903503, 21.982929, 33.554413>,  <30.025488, 21.811361, 33.669670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903503, 21.982929, 33.554413>,  <29.700197, 22.268875, 33.362316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903503, 21.982929, 33.554413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853207, -0.342184, 0.393635,
		-0.117064, -0.609819, -0.783848,
		0.508266, -0.714865, 0.480244,
		30.055983, 21.768469, 33.698486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291090, 21.711884, 33.346630>,  <29.700197, 22.268875, 33.362316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291090, 21.711884, 33.346630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544004, 21.573776, 33.624046>,  <29.695753, 21.490911, 33.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544004, 21.573776, 33.624046>,  <29.291090, 21.711884, 33.346630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544004, 21.573776, 33.624046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708170, -0.620606, 0.336665,
		0.314179, -0.704017, -0.636909,
		0.632287, -0.345267, 0.693545,
		29.733690, 21.470196, 33.832111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189177, 20.973162, 33.315723>,  <29.291090, 21.711884, 33.346630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189177, 20.973162, 33.315723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354321, 21.039188, 33.674007>,  <29.453407, 21.078804, 33.888977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354321, 21.039188, 33.674007>,  <29.189177, 20.973162, 33.315723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354321, 21.039188, 33.674007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640831, -0.646185, 0.414464,
		0.647210, -0.745116, -0.161004,
		0.412862, 0.165068, 0.895710,
		29.478180, 21.088709, 33.942722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290476, 20.275198, 33.738037>,  <29.189177, 20.973162, 33.315723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290476, 20.275198, 33.738037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331448, 20.553535, 34.022377>,  <29.356030, 20.720539, 34.192982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331448, 20.553535, 34.022377>,  <29.290476, 20.275198, 33.738037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331448, 20.553535, 34.022377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587768, -0.534183, 0.607600,
		0.802519, -0.480051, 0.354280,
		0.102428, 0.695845, 0.710850,
		29.362177, 20.762289, 34.235634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578777, 20.033422, 34.442841>,  <29.290476, 20.275198, 33.738037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578777, 20.033422, 34.442841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357292, 20.363125, 34.490170>,  <29.224401, 20.560947, 34.518566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357292, 20.363125, 34.490170>,  <29.578777, 20.033422, 34.442841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357292, 20.363125, 34.490170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533002, -0.460000, 0.710147,
		0.639774, 0.330150, 0.694039,
		-0.553713, 0.824257, 0.118325,
		29.191177, 20.610403, 34.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566681, 20.247814, 35.120045>,  <29.578777, 20.033422, 34.442841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566681, 20.247814, 35.120045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222897, 20.339970, 34.937508>,  <29.016626, 20.395264, 34.827984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222897, 20.339970, 34.937508>,  <29.566681, 20.247814, 35.120045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222897, 20.339970, 34.937508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507243, -0.495250, 0.705288,
		-0.063513, 0.837644, 0.542512,
		-0.859459, 0.230390, -0.456344,
		28.965059, 20.409086, 34.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926083, 20.438734, 35.357712>,  <29.566681, 20.247814, 35.120045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926083, 20.438734, 35.357712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787258, 20.686794, 35.639126>,  <28.703964, 20.835630, 35.807976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787258, 20.686794, 35.639126>,  <28.926083, 20.438734, 35.357712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787258, 20.686794, 35.639126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769754, -0.240172, 0.591435,
		0.535749, 0.746813, -0.394010,
		-0.347061, 0.620152, 0.703534,
		28.683140, 20.872839, 35.850185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580364, 20.884752, 35.595528>,  <28.926083, 20.438734, 35.357712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580364, 20.884752, 35.595528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316887, 20.773796, 35.875294>,  <29.158800, 20.707222, 36.043152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316887, 20.773796, 35.875294>,  <29.580364, 20.884752, 35.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316887, 20.773796, 35.875294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749969, -0.316905, 0.580619,
		0.060590, 0.906988, 0.416776,
		-0.658693, -0.277389, 0.699413,
		29.119280, 20.690578, 36.085117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846775, 21.115017, 36.204422>,  <29.580364, 20.884752, 35.595528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846775, 21.115017, 36.204422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664858, 20.759537, 36.227646>,  <29.555708, 20.546247, 36.241581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664858, 20.759537, 36.227646>,  <29.846775, 21.115017, 36.204422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664858, 20.759537, 36.227646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878989, -0.437421, 0.189846,
		-0.143321, 0.137372, 0.980096,
		-0.454794, -0.888702, 0.058057,
		29.528419, 20.492926, 36.245064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073133, 20.705610, 36.778229>,  <29.846775, 21.115017, 36.204422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073133, 20.705610, 36.778229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952728, 20.449368, 36.495667>,  <29.880486, 20.295622, 36.326130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952728, 20.449368, 36.495667>,  <30.073133, 20.705610, 36.778229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952728, 20.449368, 36.495667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716922, -0.640482, 0.275329,
		-0.628819, -0.423562, 0.652060,
		-0.301014, -0.640608, -0.706408,
		29.862425, 20.257185, 36.283745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973646, 20.068266, 37.088932>,  <30.073133, 20.705610, 36.778229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973646, 20.068266, 37.088932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109665, 20.059219, 36.712875>,  <30.191277, 20.053791, 36.487244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109665, 20.059219, 36.712875>,  <29.973646, 20.068266, 37.088932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109665, 20.059219, 36.712875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803634, -0.512219, 0.302993,
		-0.488408, -0.858557, -0.156004,
		0.340045, -0.022614, -0.940137,
		30.211678, 20.052435, 36.430836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844360, 19.865854, 37.850212>,  <29.973646, 20.068266, 37.088932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844360, 19.865854, 37.850212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465372, 19.783775, 37.948353>,  <29.237980, 19.734528, 38.007236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465372, 19.783775, 37.948353>,  <29.844360, 19.865854, 37.850212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465372, 19.783775, 37.948353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059249, 0.641214, 0.765071,
		-0.314312, 0.739418, -0.595373,
		-0.947469, -0.205196, 0.245351,
		29.181131, 19.722218, 38.021957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584057, 20.519403, 37.906124>,  <29.844360, 19.865854, 37.850212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584057, 20.519403, 37.906124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377531, 20.242054, 38.107182>,  <29.253614, 20.075645, 38.227818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377531, 20.242054, 38.107182>,  <29.584057, 20.519403, 37.906124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377531, 20.242054, 38.107182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210492, 0.466180, 0.859284,
		-0.830127, 0.549465, -0.094747,
		-0.516315, -0.693372, 0.502646,
		29.222637, 20.034042, 38.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193251, 20.897448, 37.317368>,  <29.584057, 20.519403, 37.906124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193251, 20.897448, 37.317368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211679, 21.184250, 37.595585>,  <29.222736, 21.356331, 37.762516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211679, 21.184250, 37.595585>,  <29.193251, 20.897448, 37.317368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211679, 21.184250, 37.595585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407470, -0.649212, 0.642255,
		0.912056, 0.253824, -0.322068,
		0.046070, 0.717006, 0.695543,
		29.225500, 21.399351, 37.804249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955738, 21.329153, 36.810997>,  <29.193251, 20.897448, 37.317368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955738, 21.329153, 36.810997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896166, 21.302429, 36.416363>,  <28.860422, 21.286394, 36.179581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896166, 21.302429, 36.416363>,  <28.955738, 21.329153, 36.810997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896166, 21.302429, 36.416363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420616, 0.898676, -0.124351,
		0.894931, -0.433494, -0.105739,
		-0.148930, -0.066810, -0.986588,
		28.851488, 21.282387, 36.120388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391853, 21.736135, 36.550892>,  <28.955738, 21.329153, 36.810997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391853, 21.736135, 36.550892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150299, 21.702801, 36.233810>,  <29.005367, 21.682800, 36.043560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150299, 21.702801, 36.233810>,  <29.391853, 21.736135, 36.550892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150299, 21.702801, 36.233810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344257, 0.869707, -0.353690,
		0.718895, -0.486482, -0.496513,
		-0.603885, -0.083338, -0.792703,
		28.969133, 21.677799, 35.995998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765020, 22.007729, 36.050858>,  <29.391853, 21.736135, 36.550892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765020, 22.007729, 36.050858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394499, 22.004742, 35.900173>,  <29.172186, 22.002949, 35.809765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394499, 22.004742, 35.900173>,  <29.765020, 22.007729, 36.050858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394499, 22.004742, 35.900173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150968, 0.908681, -0.389240,
		0.345213, -0.417424, -0.840586,
		-0.926303, -0.007469, -0.376707,
		29.116608, 22.002501, 35.787163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864883, 22.279947, 35.345310>,  <29.765020, 22.007729, 36.050858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864883, 22.279947, 35.345310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487164, 22.351620, 35.455727>,  <29.260532, 22.394623, 35.521976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487164, 22.351620, 35.455727>,  <29.864883, 22.279947, 35.345310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487164, 22.351620, 35.455727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086010, 0.944001, -0.318535,
		-0.317655, -0.277050, -0.906829,
		-0.944297, 0.179181, 0.276037,
		29.203875, 22.405375, 35.538536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691696, 22.805367, 34.780106>,  <29.864883, 22.279947, 35.345310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691696, 22.805367, 34.780106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379652, 22.819881, 35.029942>,  <29.192427, 22.828590, 35.179844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379652, 22.819881, 35.029942>,  <29.691696, 22.805367, 34.780106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379652, 22.819881, 35.029942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025441, 0.995651, -0.089617,
		-0.625127, -0.085801, -0.775793,
		-0.780108, 0.036285, 0.624591,
		29.145620, 22.830767, 35.217319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104374, 22.962706, 34.470741>,  <29.691696, 22.805367, 34.780106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104374, 22.962706, 34.470741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046919, 23.089638, 34.845692>,  <29.012445, 23.165796, 35.070660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046919, 23.089638, 34.845692>,  <29.104374, 22.962706, 34.470741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046919, 23.089638, 34.845692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022086, 0.945932, -0.323611,
		-0.989384, -0.067186, -0.128863,
		-0.143637, 0.317329, 0.937374,
		29.003828, 23.184837, 35.126904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556679, 23.459385, 34.393547>,  <29.104374, 22.962706, 34.470741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556679, 23.459385, 34.393547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707884, 23.547462, 34.753242>,  <28.798607, 23.600309, 34.969059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707884, 23.547462, 34.753242>,  <28.556679, 23.459385, 34.393547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707884, 23.547462, 34.753242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119778, 0.974773, -0.188338,
		-0.918020, -0.036515, 0.394849,
		0.378011, 0.220193, 0.899235,
		28.821287, 23.613520, 35.023014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081488, 23.975010, 34.703629>,  <28.556679, 23.459385, 34.393547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081488, 23.975010, 34.703629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443441, 23.982159, 34.873741>,  <28.660614, 23.986448, 34.975811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443441, 23.982159, 34.873741>,  <28.081488, 23.975010, 34.703629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443441, 23.982159, 34.873741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022876, 0.995632, -0.090514,
		-0.425044, 0.091633, 0.900523,
		0.904884, 0.017872, 0.425283,
		28.714907, 23.987520, 35.001328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951979, 24.238161, 35.298981>,  <28.081488, 23.975010, 34.703629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951979, 24.238161, 35.298981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331722, 24.303505, 35.191628>,  <28.559568, 24.342712, 35.127216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331722, 24.303505, 35.191628>,  <27.951979, 24.238161, 35.298981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331722, 24.303505, 35.191628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183886, 0.981516, -0.053034,
		0.254755, 0.099699, 0.961853,
		0.949361, 0.163361, -0.268379,
		28.616531, 24.352512, 35.111115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193911, 24.875105, 35.689491>,  <27.951979, 24.238161, 35.298981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193911, 24.875105, 35.689491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439962, 24.861217, 35.374428>,  <28.587593, 24.852886, 35.185390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439962, 24.861217, 35.374428>,  <28.193911, 24.875105, 35.689491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439962, 24.861217, 35.374428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048995, 0.995416, -0.082137,
		0.786904, 0.089117, 0.610607,
		0.615128, -0.034717, -0.787663,
		28.624500, 24.850801, 35.138130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374111, 25.463905, 35.668179>,  <28.193911, 24.875105, 35.689491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374111, 25.463905, 35.668179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511864, 25.357227, 35.308117>,  <28.594515, 25.293221, 35.092079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511864, 25.357227, 35.308117>,  <28.374111, 25.463905, 35.668179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511864, 25.357227, 35.308117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032736, 0.961631, -0.272385,
		0.938259, 0.064337, 0.339898,
		0.344380, -0.266695, -0.900153,
		28.615177, 25.277220, 35.038071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883928, 25.895325, 35.542141>,  <28.374111, 25.463905, 35.668179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883928, 25.895325, 35.542141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754572, 25.744747, 35.194874>,  <28.676958, 25.654400, 34.986515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754572, 25.744747, 35.194874>,  <28.883928, 25.895325, 35.542141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754572, 25.744747, 35.194874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176554, 0.877348, -0.446193,
		0.929650, -0.297571, -0.217262,
		-0.323388, -0.376445, -0.868164,
		28.657555, 25.631813, 34.934425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176384, 26.313639, 35.023560>,  <28.883928, 25.895325, 35.542141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176384, 26.313639, 35.023560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915943, 26.113544, 34.795235>,  <28.759680, 25.993488, 34.658237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915943, 26.113544, 34.795235>,  <29.176384, 26.313639, 35.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915943, 26.113544, 34.795235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098184, 0.690240, -0.716888,
		0.752615, -0.522810, -0.400300,
		-0.651099, -0.500238, -0.570816,
		28.720613, 25.963472, 34.623989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539547, 26.198803, 34.446846>,  <29.176384, 26.313639, 35.023560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539547, 26.198803, 34.446846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147453, 26.190208, 34.368179>,  <28.912197, 26.185053, 34.320980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147453, 26.190208, 34.368179>,  <29.539547, 26.198803, 34.446846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147453, 26.190208, 34.368179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163228, 0.473898, -0.865319,
		0.111793, -0.880318, -0.461024,
		-0.980234, -0.021484, -0.196671,
		28.853382, 26.183764, 34.309177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510139, 26.022974, 33.764164>,  <29.539547, 26.198803, 34.446846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510139, 26.022974, 33.764164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155453, 26.183567, 33.855850>,  <28.942640, 26.279922, 33.910862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155453, 26.183567, 33.855850>,  <29.510139, 26.022974, 33.764164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155453, 26.183567, 33.855850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078866, 0.357185, -0.930698,
		-0.455533, -0.843345, -0.285059,
		-0.886719, 0.401482, 0.229220,
		28.889437, 26.304012, 33.924618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037453, 25.827061, 33.254719>,  <29.510139, 26.022974, 33.764164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037453, 25.827061, 33.254719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924713, 26.161121, 33.443645>,  <28.857069, 26.361557, 33.557003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924713, 26.161121, 33.443645>,  <29.037453, 25.827061, 33.254719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924713, 26.161121, 33.443645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097542, 0.464785, -0.880035,
		-0.954487, -0.294109, -0.049537,
		-0.281850, 0.835150, 0.472319,
		28.840158, 26.411667, 33.585342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629154, 26.050568, 32.798965>,  <29.037453, 25.827061, 33.254719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629154, 26.050568, 32.798965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672834, 26.364914, 33.042439>,  <28.699041, 26.553522, 33.188522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672834, 26.364914, 33.042439>,  <28.629154, 26.050568, 32.798965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672834, 26.364914, 33.042439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075449, 0.604023, -0.793387,
		-0.991152, 0.132561, 0.006666,
		0.109199, 0.785865, 0.608681,
		28.705595, 26.600674, 33.225044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370863, 26.656675, 32.457649>,  <28.629154, 26.050568, 32.798965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370863, 26.656675, 32.457649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592567, 26.855331, 32.724827>,  <28.725590, 26.974525, 32.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592567, 26.855331, 32.724827>,  <28.370863, 26.656675, 32.457649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592567, 26.855331, 32.724827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243463, 0.670651, -0.700680,
		-0.795940, 0.550978, 0.250803,
		0.554261, 0.496639, 0.667941,
		28.758846, 27.004322, 32.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359203, 27.341454, 32.237259>,  <28.370863, 26.656675, 32.457649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359203, 27.341454, 32.237259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644756, 27.377361, 32.515053>,  <28.816088, 27.398907, 32.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644756, 27.377361, 32.515053>,  <28.359203, 27.341454, 32.237259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644756, 27.377361, 32.515053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505074, 0.620941, -0.599444,
		-0.485046, 0.778700, 0.397940,
		0.713884, 0.089769, 0.694486,
		28.858921, 27.404291, 32.723400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559639, 28.054148, 32.383400>,  <28.359203, 27.341454, 32.237259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559639, 28.054148, 32.383400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891819, 27.867958, 32.505836>,  <29.091127, 27.756245, 32.579296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891819, 27.867958, 32.505836>,  <28.559639, 28.054148, 32.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891819, 27.867958, 32.505836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557081, 0.690178, -0.461860,
		0.003728, 0.554067, 0.832464,
		0.830450, -0.465472, 0.306087,
		29.140953, 27.728317, 32.597664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970535, 28.545414, 32.728516>,  <28.559639, 28.054148, 32.383400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970535, 28.545414, 32.728516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208830, 28.255695, 32.589668>,  <29.351807, 28.081863, 32.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208830, 28.255695, 32.589668>,  <28.970535, 28.545414, 32.728516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208830, 28.255695, 32.589668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557700, 0.684039, -0.470171,
		0.577986, 0.086511, 0.811448,
		0.595737, -0.724297, -0.347118,
		29.387550, 28.038406, 32.485535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661121, 28.809605, 32.798458>,  <28.970535, 28.545414, 32.728516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661121, 28.809605, 32.798458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677649, 28.525124, 32.517750>,  <29.687565, 28.354435, 32.349323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677649, 28.525124, 32.517750>,  <29.661121, 28.809605, 32.798458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677649, 28.525124, 32.517750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608565, 0.574969, -0.546863,
		0.792427, -0.404478, 0.456571,
		0.041320, -0.711202, -0.701772,
		29.690044, 28.311764, 32.307217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324347, 28.878386, 32.557926>,  <29.661121, 28.809605, 32.798458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324347, 28.878386, 32.557926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121351, 28.671822, 32.282021>,  <29.999554, 28.547882, 32.116478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121351, 28.671822, 32.282021>,  <30.324347, 28.878386, 32.557926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121351, 28.671822, 32.282021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695150, 0.227634, -0.681872,
		0.509140, -0.825531, 0.243462,
		-0.507486, -0.516411, -0.689766,
		29.969105, 28.516899, 32.075092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858530, 28.448605, 32.165310>,  <30.324347, 28.878386, 32.557926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858530, 28.448605, 32.165310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522680, 28.497841, 31.953697>,  <30.321171, 28.527382, 31.826729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522680, 28.497841, 31.953697>,  <30.858530, 28.448605, 32.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522680, 28.497841, 31.953697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541256, 0.271182, -0.795929,
		0.045493, -0.954625, -0.294315,
		-0.839627, 0.123090, -0.529033,
		30.270792, 28.534767, 31.794987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007488, 28.135571, 31.560417>,  <30.858530, 28.448605, 32.165310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007488, 28.135571, 31.560417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686348, 28.359535, 31.478512>,  <30.493664, 28.493914, 31.429369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686348, 28.359535, 31.478512>,  <31.007488, 28.135571, 31.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686348, 28.359535, 31.478512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441052, 0.326724, -0.835897,
		-0.401126, -0.761414, -0.509261,
		-0.802852, 0.559911, -0.204765,
		30.445492, 28.527508, 31.417082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883884, 28.025042, 30.775501>,  <31.007488, 28.135571, 31.560417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883884, 28.025042, 30.775501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715071, 28.362747, 30.907627>,  <30.613783, 28.565371, 30.986902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715071, 28.362747, 30.907627>,  <30.883884, 28.025042, 30.775501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715071, 28.362747, 30.907627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343599, 0.486125, -0.803506,
		-0.838945, -0.225611, -0.495249,
		-0.422032, 0.844264, 0.330312,
		30.588461, 28.616026, 31.006721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922653, 28.443481, 30.277464>,  <30.883884, 28.025042, 30.775501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922653, 28.443481, 30.277464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784122, 28.734722, 30.514080>,  <30.701004, 28.909468, 30.656050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784122, 28.734722, 30.514080>,  <30.922653, 28.443481, 30.277464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784122, 28.734722, 30.514080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347580, 0.685279, -0.639985,
		-0.871347, -0.016035, -0.490405,
		-0.346326, 0.728104, 0.591542,
		30.680225, 28.953154, 30.691544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546295, 28.810440, 29.806179>,  <30.922653, 28.443481, 30.277464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546295, 28.810440, 29.806179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629507, 29.021942, 30.135334>,  <30.679434, 29.148844, 30.332827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629507, 29.021942, 30.135334>,  <30.546295, 28.810440, 29.806179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629507, 29.021942, 30.135334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492750, 0.670085, -0.555142,
		-0.844938, 0.520963, -0.121147,
		0.208029, 0.528756, 0.822886,
		30.691916, 29.180569, 30.382200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171429, 29.505610, 29.749208>,  <30.546295, 28.810440, 29.806179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171429, 29.505610, 29.749208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508165, 29.496143, 29.964890>,  <30.710207, 29.490463, 30.094299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508165, 29.496143, 29.964890>,  <30.171429, 29.505610, 29.749208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508165, 29.496143, 29.964890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422447, 0.650680, -0.630995,
		-0.335915, 0.758983, 0.557768,
		0.841843, -0.023667, 0.539204,
		30.760717, 29.489044, 30.126650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495457, 30.113392, 29.554615>,  <30.171429, 29.505610, 29.749208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495457, 30.113392, 29.554615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806252, 29.956890, 29.751881>,  <30.992729, 29.862989, 29.870239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806252, 29.956890, 29.751881>,  <30.495457, 30.113392, 29.554615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806252, 29.956890, 29.751881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625615, 0.566984, -0.535850,
		-0.069962, 0.724879, 0.685315,
		0.776989, -0.391254, 0.493162,
		31.039349, 29.839514, 29.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987995, 30.796461, 29.757460>,  <30.495457, 30.113392, 29.554615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987995, 30.796461, 29.757460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176180, 30.443699, 29.745415>,  <31.289091, 30.232042, 29.738188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176180, 30.443699, 29.745415>,  <30.987995, 30.796461, 29.757460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176180, 30.443699, 29.745415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766006, 0.425098, -0.482209,
		0.438063, 0.203797, 0.875538,
		0.470463, -0.881906, -0.030110,
		31.317318, 30.179127, 29.736382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609936, 30.993050, 29.705469>,  <30.987995, 30.796461, 29.757460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609936, 30.993050, 29.705469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621944, 30.606209, 29.604424>,  <31.629150, 30.374104, 29.543797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621944, 30.606209, 29.604424>,  <31.609936, 30.993050, 29.705469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621944, 30.606209, 29.604424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692438, 0.202385, -0.692510,
		0.720852, -0.154127, 0.675734,
		0.030024, -0.967101, -0.252614,
		31.630951, 30.316078, 29.528639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324787, 30.762661, 29.819143>,  <31.609936, 30.993050, 29.705469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324787, 30.762661, 29.819143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136578, 30.525032, 29.558167>,  <32.023651, 30.382454, 29.401581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136578, 30.525032, 29.558167>,  <32.324787, 30.762661, 29.819143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136578, 30.525032, 29.558167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629862, 0.291702, -0.719850,
		0.617963, -0.749657, 0.236931,
		-0.470528, -0.594074, -0.652441,
		31.995419, 30.346809, 29.362434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906391, 30.460302, 29.313406>,  <32.324787, 30.762661, 29.819143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906391, 30.460302, 29.313406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552448, 30.437019, 29.128521>,  <32.340084, 30.423050, 29.017590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552448, 30.437019, 29.128521>,  <32.906391, 30.460302, 29.313406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552448, 30.437019, 29.128521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413455, 0.359064, -0.836737,
		0.214668, -0.931496, -0.293654,
		-0.884857, -0.058208, -0.462211,
		32.286991, 30.419556, 28.989857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064510, 30.296619, 28.562752>,  <32.906391, 30.460302, 29.313406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064510, 30.296619, 28.562752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676487, 30.387680, 28.528889>,  <32.443672, 30.442316, 28.508572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676487, 30.387680, 28.528889>,  <33.064510, 30.296619, 28.562752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676487, 30.387680, 28.528889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193954, 0.516267, -0.834176,
		-0.146194, -0.825617, -0.544961,
		-0.970056, 0.227650, -0.084657,
		32.385471, 30.455975, 28.503492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837482, 30.052282, 27.849586>,  <33.064510, 30.296619, 28.562752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837482, 30.052282, 27.849586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564690, 30.325901, 27.953110>,  <32.401016, 30.490072, 28.015224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564690, 30.325901, 27.953110>,  <32.837482, 30.052282, 27.849586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564690, 30.325901, 27.953110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094825, 0.433581, -0.896111,
		-0.725198, -0.586588, -0.360558,
		-0.681980, 0.684048, 0.258808,
		32.360096, 30.531115, 28.030752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468678, 30.089277, 27.261450>,  <32.837482, 30.052282, 27.849586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468678, 30.089277, 27.261450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373726, 30.423790, 27.459148>,  <32.316753, 30.624498, 27.577768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373726, 30.423790, 27.459148>,  <32.468678, 30.089277, 27.261450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373726, 30.423790, 27.459148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165563, 0.536176, -0.827711,
		-0.957204, -0.114653, -0.265735,
		-0.237380, 0.836284, 0.494247,
		32.302513, 30.674675, 27.607422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985231, 30.336481, 26.925264>,  <32.468678, 30.089277, 27.261450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985231, 30.336481, 26.925264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184055, 30.626934, 27.115280>,  <32.303349, 30.801207, 27.229290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184055, 30.626934, 27.115280>,  <31.985231, 30.336481, 26.925264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184055, 30.626934, 27.115280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194208, 0.440474, -0.876508,
		-0.845704, 0.527932, 0.077921,
		0.497059, 0.726134, 0.475039,
		32.333172, 30.844774, 27.257792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804974, 30.883533, 26.478529>,  <31.985231, 30.336481, 26.925264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804974, 30.883533, 26.478529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100914, 31.051865, 26.688492>,  <32.278477, 31.152863, 26.814470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100914, 31.051865, 26.688492>,  <31.804974, 30.883533, 26.478529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100914, 31.051865, 26.688492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119194, 0.685882, -0.717885,
		-0.662130, 0.593692, 0.457289,
		0.739849, 0.420827, 0.524908,
		32.322868, 31.178112, 26.845964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686680, 31.675861, 26.579317>,  <31.804974, 30.883533, 26.478529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686680, 31.675861, 26.579317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074493, 31.577927, 26.582405>,  <32.307182, 31.519165, 26.584259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074493, 31.577927, 26.582405>,  <31.686680, 31.675861, 26.579317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074493, 31.577927, 26.582405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178757, 0.685607, -0.705683,
		0.167484, 0.685564, 0.708485,
		0.969533, -0.244837, 0.007722,
		32.365353, 31.504475, 26.584721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378296, 31.641645, 27.284410>,  <31.686680, 31.675861, 26.579317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378296, 31.641645, 27.284410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043175, 31.734009, 27.086514>,  <30.842102, 31.789427, 26.967775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043175, 31.734009, 27.086514>,  <31.378296, 31.641645, 27.284410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043175, 31.734009, 27.086514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543837, -0.272806, 0.793611,
		0.048284, 0.933947, 0.354135,
		-0.837801, 0.230910, -0.494743,
		30.791834, 31.803282, 26.938091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919512, 31.877499, 27.803267>,  <31.378296, 31.641645, 27.284410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919512, 31.877499, 27.803267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682497, 31.728561, 27.517536>,  <30.540287, 31.639200, 27.346098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682497, 31.728561, 27.517536>,  <30.919512, 31.877499, 27.803267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682497, 31.728561, 27.517536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641946, -0.317426, 0.697958,
		-0.486624, 0.872125, -0.050936,
		-0.592539, -0.372341, -0.714325,
		30.504736, 31.616859, 27.303238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255713, 32.159798, 27.987637>,  <30.919512, 31.877499, 27.803267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255713, 32.159798, 27.987637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174257, 31.862812, 27.732365>,  <30.125385, 31.684620, 27.579201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174257, 31.862812, 27.732365>,  <30.255713, 32.159798, 27.987637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174257, 31.862812, 27.732365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677640, -0.363586, 0.639226,
		-0.706638, 0.562627, -0.429085,
		-0.203637, -0.742466, -0.638182,
		30.113167, 31.640072, 27.540911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496218, 32.102108, 27.858757>,  <30.255713, 32.159798, 27.987637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496218, 32.102108, 27.858757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617931, 31.734776, 27.757496>,  <29.690960, 31.514378, 27.696739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617931, 31.734776, 27.757496>,  <29.496218, 32.102108, 27.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617931, 31.734776, 27.757496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721991, -0.395695, 0.567587,
		-0.621402, 0.010068, -0.783427,
		0.304284, -0.918327, -0.253155,
		29.709217, 31.459278, 27.681549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846296, 31.766457, 27.810637>,  <29.496218, 32.102108, 27.858757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846296, 31.766457, 27.810637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130501, 31.491314, 27.869995>,  <29.301023, 31.326227, 27.905611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130501, 31.491314, 27.869995>,  <28.846296, 31.766457, 27.810637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130501, 31.491314, 27.869995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627276, -0.523549, 0.576560,
		-0.318897, -0.502741, -0.803465,
		0.710513, -0.687858, 0.148399,
		29.343655, 31.284956, 27.914515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569313, 31.188845, 27.587360>,  <28.846296, 31.766457, 27.810637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569313, 31.188845, 27.587360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856039, 31.065201, 27.837360>,  <29.028074, 30.991014, 27.987360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856039, 31.065201, 27.837360>,  <28.569313, 31.188845, 27.587360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856039, 31.065201, 27.837360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632643, -0.665187, 0.396598,
		0.293151, -0.679690, -0.672371,
		0.716816, -0.309108, 0.625002,
		29.071083, 30.972469, 28.024860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452730, 30.500208, 27.704144>,  <28.569313, 31.188845, 27.587360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452730, 30.500208, 27.704144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670332, 30.554016, 28.035435>,  <28.800894, 30.586300, 28.234209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670332, 30.554016, 28.035435>,  <28.452730, 30.500208, 27.704144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670332, 30.554016, 28.035435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711939, -0.448395, 0.540448,
		0.444075, -0.883655, -0.148159,
		0.544004, 0.134519, 0.828230,
		28.833532, 30.594372, 28.283903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542776, 29.845617, 28.116867>,  <28.452730, 30.500208, 27.704144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542776, 29.845617, 28.116867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600859, 30.134846, 28.387001>,  <28.635708, 30.308384, 28.549082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600859, 30.134846, 28.387001>,  <28.542776, 29.845617, 28.116867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600859, 30.134846, 28.387001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620550, -0.465069, 0.631370,
		0.770605, -0.510760, 0.381172,
		0.145207, 0.723073, 0.675337,
		28.644421, 30.351768, 28.589602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580675, 29.573559, 28.724899>,  <28.542776, 29.845617, 28.116867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580675, 29.573559, 28.724899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518456, 29.946793, 28.854614>,  <28.481123, 30.170732, 28.932444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518456, 29.946793, 28.854614>,  <28.580675, 29.573559, 28.724899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518456, 29.946793, 28.854614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496306, -0.357661, 0.791049,
		0.854098, -0.037898, 0.518729,
		-0.155550, 0.933082, 0.324286,
		28.471790, 30.226717, 28.951900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518360, 29.547335, 29.451107>,  <28.580675, 29.573559, 28.724899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518360, 29.547335, 29.451107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357138, 29.908005, 29.388466>,  <28.260405, 30.124407, 29.350882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357138, 29.908005, 29.388466>,  <28.518360, 29.547335, 29.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357138, 29.908005, 29.388466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605356, -0.134339, 0.784537,
		0.686361, 0.411012, 0.599981,
		-0.403055, 0.901677, -0.156603,
		28.236221, 30.178509, 29.341484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435175, 29.828125, 30.145935>,  <28.518360, 29.547335, 29.451107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435175, 29.828125, 30.145935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196968, 30.064568, 29.928329>,  <28.054045, 30.206434, 29.797766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196968, 30.064568, 29.928329>,  <28.435175, 29.828125, 30.145935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196968, 30.064568, 29.928329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714577, -0.080346, 0.694927,
		0.367069, 0.802580, 0.470240,
		-0.595517, 0.591109, -0.544013,
		28.018312, 30.241899, 29.765125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282763, 30.321514, 30.577751>,  <28.435175, 29.828125, 30.145935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282763, 30.321514, 30.577751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998272, 30.301403, 30.297287>,  <27.827578, 30.289337, 30.129009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998272, 30.301403, 30.297287>,  <28.282763, 30.321514, 30.577751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998272, 30.301403, 30.297287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682262, -0.190889, 0.705747,
		-0.169328, 0.980323, 0.101463,
		-0.711229, -0.050278, -0.701160,
		27.784903, 30.286320, 30.086939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748165, 30.742048, 30.809191>,  <28.282763, 30.321514, 30.577751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748165, 30.742048, 30.809191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564953, 30.491226, 30.557156>,  <27.455027, 30.340733, 30.405935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564953, 30.491226, 30.557156>,  <27.748165, 30.742048, 30.809191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564953, 30.491226, 30.557156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670508, -0.221667, 0.708013,
		-0.583634, 0.746769, -0.318916,
		-0.458029, -0.627056, -0.630087,
		27.427544, 30.303110, 30.368130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046911, 30.827684, 30.933144>,  <27.748165, 30.742048, 30.809191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046911, 30.827684, 30.933144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077776, 30.468578, 30.759678>,  <27.096294, 30.253115, 30.655598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077776, 30.468578, 30.759678>,  <27.046911, 30.827684, 30.933144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077776, 30.468578, 30.759678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548248, -0.401505, 0.733634,
		-0.832749, 0.181147, -0.523178,
		0.077163, -0.897764, -0.433666,
		27.100925, 30.199249, 30.629578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441307, 30.491714, 31.133190>,  <27.046911, 30.827684, 30.933144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441307, 30.491714, 31.133190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659672, 30.189453, 30.988434>,  <26.790691, 30.008097, 30.901579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659672, 30.189453, 30.988434>,  <26.441307, 30.491714, 31.133190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659672, 30.189453, 30.988434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465824, -0.632766, 0.618559,
		-0.696410, -0.169100, -0.697437,
		0.545912, -0.755654, -0.361893,
		26.823446, 29.962757, 30.879866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908342, 29.896240, 30.960979>,  <26.441307, 30.491714, 31.133190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908342, 29.896240, 30.960979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263847, 29.718727, 31.006866>,  <26.477150, 29.612219, 31.034399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263847, 29.718727, 31.006866>,  <25.908342, 29.896240, 30.960979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263847, 29.718727, 31.006866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380578, -0.574956, 0.724283,
		-0.255465, -0.687375, -0.679892,
		0.888762, -0.443781, 0.114719,
		26.530476, 29.585592, 31.041283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736336, 29.167364, 30.901545>,  <25.908342, 29.896240, 30.960979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736336, 29.167364, 30.901545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100788, 29.200642, 31.063000>,  <26.319460, 29.220608, 31.159872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100788, 29.200642, 31.063000>,  <25.736336, 29.167364, 30.901545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100788, 29.200642, 31.063000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241398, -0.686072, 0.686317,
		0.334022, -0.722761, -0.605018,
		0.911129, 0.083194, 0.403636,
		26.374126, 29.225599, 31.184092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956551, 28.516296, 31.057213>,  <25.736336, 29.167364, 30.901545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956551, 28.516296, 31.057213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200159, 28.712849, 31.306255>,  <26.346323, 28.830780, 31.455681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200159, 28.712849, 31.306255>,  <25.956551, 28.516296, 31.057213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200159, 28.712849, 31.306255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163068, -0.690636, 0.704579,
		0.776211, -0.530630, -0.340482,
		0.609020, 0.491380, 0.622608,
		26.382866, 28.860262, 31.493038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477905, 28.027651, 31.373001>,  <25.956551, 28.516296, 31.057213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477905, 28.027651, 31.373001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497955, 28.347519, 31.612339>,  <26.509985, 28.539440, 31.755941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497955, 28.347519, 31.612339>,  <26.477905, 28.027651, 31.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497955, 28.347519, 31.612339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087416, -0.593287, 0.800230,
		0.994910, -0.092417, 0.040165,
		0.050126, 0.799668, 0.598346,
		26.512993, 28.587420, 31.791843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942635, 27.891617, 31.834976>,  <26.477905, 28.027651, 31.373001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942635, 27.891617, 31.834976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724768, 28.178253, 32.009254>,  <26.594048, 28.350235, 32.113823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724768, 28.178253, 32.009254>,  <26.942635, 27.891617, 31.834976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724768, 28.178253, 32.009254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065347, -0.554205, 0.829811,
		0.836102, 0.423499, 0.348685,
		-0.544667, 0.716593, 0.435697,
		26.561367, 28.393230, 32.139965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331043, 27.935392, 32.373775>,  <26.942635, 27.891617, 31.834976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331043, 27.935392, 32.373775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966534, 28.088581, 32.434322>,  <26.747828, 28.180494, 32.470650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966534, 28.088581, 32.434322>,  <27.331043, 27.935392, 32.373775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966534, 28.088581, 32.434322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129738, -0.615861, 0.777100,
		0.390830, 0.688512, 0.610904,
		-0.911274, 0.382971, 0.151370,
		26.693151, 28.203472, 32.479733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339941, 28.088705, 33.122452>,  <27.331043, 27.935392, 32.373775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339941, 28.088705, 33.122452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963894, 28.060352, 32.989094>,  <26.738266, 28.043341, 32.909081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963894, 28.060352, 32.989094>,  <27.339941, 28.088705, 33.122452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963894, 28.060352, 32.989094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207575, -0.656769, 0.724960,
		-0.270350, 0.750753, 0.602728,
		-0.940119, -0.070882, -0.333395,
		26.681858, 28.039087, 32.889076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889143, 28.075668, 33.697819>,  <27.339941, 28.088705, 33.122452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889143, 28.075668, 33.697819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676170, 27.906811, 33.404343>,  <26.548386, 27.805496, 33.228256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676170, 27.906811, 33.404343>,  <26.889143, 28.075668, 33.697819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676170, 27.906811, 33.404343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254070, -0.747103, 0.614235,
		-0.807442, 0.513450, 0.290529,
		-0.532434, -0.422145, -0.733695,
		26.516439, 27.780167, 33.184235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271593, 27.961159, 34.005543>,  <26.889143, 28.075668, 33.697819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271593, 27.961159, 34.005543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292997, 27.728748, 33.680691>,  <26.305840, 27.589302, 33.485779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292997, 27.728748, 33.680691>,  <26.271593, 27.961159, 34.005543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292997, 27.728748, 33.680691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419538, -0.751110, 0.509728,
		-0.906159, 0.313440, -0.283955,
		0.053512, -0.581024, -0.812125,
		26.309052, 27.554441, 33.437054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673740, 27.502167, 34.076881>,  <26.271593, 27.961159, 34.005543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673740, 27.502167, 34.076881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895639, 27.314869, 33.801781>,  <26.028780, 27.202490, 33.636723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895639, 27.314869, 33.801781>,  <25.673740, 27.502167, 34.076881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895639, 27.314869, 33.801781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192266, -0.876376, 0.441586,
		-0.809497, -0.112739, -0.576199,
		0.554751, -0.468246, -0.687748,
		26.062065, 27.174395, 33.595455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292509, 26.894224, 33.887718>,  <25.673740, 27.502167, 34.076881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292509, 26.894224, 33.887718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673529, 26.813038, 33.796982>,  <25.902140, 26.764326, 33.742542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673529, 26.813038, 33.796982>,  <25.292509, 26.894224, 33.887718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673529, 26.813038, 33.796982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147964, -0.960014, 0.237657,
		-0.266004, -0.192816, -0.944491,
		0.952548, -0.202968, -0.226838,
		25.959293, 26.752148, 33.728931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249447, 26.271002, 33.651936>,  <25.292509, 26.894224, 33.887718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249447, 26.271002, 33.651936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622053, 26.309597, 33.792202>,  <25.845617, 26.332754, 33.876362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622053, 26.309597, 33.792202>,  <25.249447, 26.271002, 33.651936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622053, 26.309597, 33.792202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021441, -0.977058, 0.211889,
		0.363067, -0.189859, -0.912215,
		0.931516, 0.096489, 0.350667,
		25.901508, 26.338543, 33.897404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504967, 25.540417, 33.577488>,  <25.249447, 26.271002, 33.651936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504967, 25.540417, 33.577488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753859, 25.718056, 33.835358>,  <25.903193, 25.824638, 33.990082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753859, 25.718056, 33.835358>,  <25.504967, 25.540417, 33.577488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753859, 25.718056, 33.835358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254099, -0.893502, 0.370254,
		0.740450, -0.066570, -0.668806,
		0.622228, 0.444098, 0.644678,
		25.940527, 25.851286, 34.028763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059032, 25.091047, 33.581326>,  <25.504967, 25.540417, 33.577488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059032, 25.091047, 33.581326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086739, 25.293095, 33.925430>,  <26.103361, 25.414324, 34.131893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086739, 25.293095, 33.925430>,  <26.059032, 25.091047, 33.581326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086739, 25.293095, 33.925430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215360, -0.849574, 0.481501,
		0.974075, 0.151916, -0.167627,
		0.069264, 0.505119, 0.860266,
		26.107517, 25.444630, 34.183510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595850, 24.772686, 34.008476>,  <26.059032, 25.091047, 33.581326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595850, 24.772686, 34.008476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377005, 24.979622, 34.271694>,  <26.245697, 25.103785, 34.429626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377005, 24.979622, 34.271694>,  <26.595850, 24.772686, 34.008476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377005, 24.979622, 34.271694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143633, -0.716457, 0.682685,
		0.824642, 0.468025, 0.317677,
		-0.547116, 0.517341, 0.658044,
		26.212870, 25.134825, 34.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932808, 24.631269, 34.637993>,  <26.595850, 24.772686, 34.008476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932808, 24.631269, 34.637993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568335, 24.744923, 34.757332>,  <26.349651, 24.813114, 34.828938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568335, 24.744923, 34.757332>,  <26.932808, 24.631269, 34.637993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568335, 24.744923, 34.757332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015397, -0.747125, 0.664505,
		0.411714, 0.600892, 0.685143,
		-0.911183, 0.284135, 0.298350,
		26.294979, 24.830164, 34.846836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942595, 24.837610, 35.390640>,  <26.932808, 24.631269, 34.637993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942595, 24.837610, 35.390640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567650, 24.734905, 35.296471>,  <26.342682, 24.673283, 35.239971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567650, 24.734905, 35.296471>,  <26.942595, 24.837610, 35.390640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567650, 24.734905, 35.296471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065996, -0.794464, 0.603715,
		-0.342046, 0.550363, 0.761646,
		-0.937363, -0.256764, -0.235421,
		26.286442, 24.657875, 35.225845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599392, 24.634003, 36.028984>,  <26.942595, 24.837610, 35.390640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599392, 24.634003, 36.028984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334087, 24.499546, 35.761524>,  <26.174906, 24.418873, 35.601048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334087, 24.499546, 35.761524>,  <26.599392, 24.634003, 36.028984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334087, 24.499546, 35.761524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103203, -0.843839, 0.526579,
		-0.741239, 0.418265, 0.524994,
		-0.663260, -0.336140, -0.668653,
		26.135109, 24.398705, 35.560928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990881, 24.408133, 36.419395>,  <26.599392, 24.634003, 36.028984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990881, 24.408133, 36.419395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002748, 24.217823, 36.067768>,  <26.009869, 24.103638, 35.856792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002748, 24.217823, 36.067768>,  <25.990881, 24.408133, 36.419395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002748, 24.217823, 36.067768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017906, -0.879568, 0.475438,
		-0.999399, 0.001634, -0.034616,
		0.029670, -0.475772, -0.879068,
		26.011650, 24.075092, 35.804047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488354, 24.003870, 36.476933>,  <25.990881, 24.408133, 36.419395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488354, 24.003870, 36.476933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712959, 23.839844, 36.189449>,  <25.847723, 23.741428, 36.016960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712959, 23.839844, 36.189449>,  <25.488354, 24.003870, 36.476933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712959, 23.839844, 36.189449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136109, -0.902510, 0.408596,
		-0.816196, -0.131610, -0.562587,
		0.561515, -0.410067, -0.718711,
		25.881413, 23.716824, 35.973835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186529, 23.456671, 36.248333>,  <25.488354, 24.003870, 36.476933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186529, 23.456671, 36.248333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544151, 23.358551, 36.098400>,  <25.758724, 23.299679, 36.008442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544151, 23.358551, 36.098400>,  <25.186529, 23.456671, 36.248333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544151, 23.358551, 36.098400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142785, -0.949151, 0.280580,
		-0.424595, -0.197334, -0.883617,
		0.894054, -0.245300, -0.374828,
		25.812366, 23.284962, 35.985950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985554, 22.952408, 35.825680>,  <25.186529, 23.456671, 36.248333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985554, 22.952408, 35.825680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372812, 22.908844, 35.915863>,  <25.605167, 22.882706, 35.969971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372812, 22.908844, 35.915863>,  <24.985554, 22.952408, 35.825680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372812, 22.908844, 35.915863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156185, -0.966470, 0.203821,
		0.195697, -0.232541, -0.952695,
		0.968147, -0.108910, 0.225455,
		25.663256, 22.876171, 35.983498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312582, 22.299944, 35.503670>,  <24.985554, 22.952408, 35.825680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312582, 22.299944, 35.503670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514000, 22.388050, 35.837837>,  <25.634850, 22.440914, 36.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514000, 22.388050, 35.837837>,  <25.312582, 22.299944, 35.503670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514000, 22.388050, 35.837837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060133, -0.955675, 0.288217,
		0.861875, -0.195366, -0.467978,
		0.503543, 0.220266, 0.835420,
		25.665062, 22.454130, 36.088463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511345, 21.822325, 34.934448>,  <25.312582, 22.299944, 35.503670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511345, 21.822325, 34.934448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689430, 21.503757, 34.770741>,  <25.796282, 21.312616, 34.672516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689430, 21.503757, 34.770741>,  <25.511345, 21.822325, 34.934448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689430, 21.503757, 34.770741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404353, 0.586630, -0.701686,
		0.798926, 0.146910, 0.583210,
		0.445213, -0.796419, -0.409271,
		25.822994, 21.264832, 34.647961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323030, 21.869381, 35.003593>,  <25.511345, 21.822325, 34.934448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323030, 21.869381, 35.003593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246189, 21.630829, 34.691841>,  <26.200085, 21.487698, 34.504791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246189, 21.630829, 34.691841>,  <26.323030, 21.869381, 35.003593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246189, 21.630829, 34.691841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428548, 0.663470, -0.613315,
		0.882861, -0.451819, 0.128123,
		-0.192102, -0.596378, -0.779378,
		26.188559, 21.451916, 34.458027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861181, 21.898170, 34.609501>,  <26.323030, 21.869381, 35.003593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861181, 21.898170, 34.609501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568581, 21.792336, 34.358135>,  <26.393021, 21.728834, 34.207317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568581, 21.792336, 34.358135>,  <26.861181, 21.898170, 34.609501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568581, 21.792336, 34.358135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422207, 0.547920, -0.722167,
		0.535393, -0.793586, -0.289095,
		-0.731502, -0.264585, -0.628410,
		26.349131, 21.712959, 34.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240171, 21.841423, 33.957684>,  <26.861181, 21.898170, 34.609501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240171, 21.841423, 33.957684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851063, 21.846962, 33.865143>,  <26.617598, 21.850285, 33.809620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851063, 21.846962, 33.865143>,  <27.240171, 21.841423, 33.957684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851063, 21.846962, 33.865143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209918, 0.475704, -0.854190,
		0.098225, -0.879496, -0.465659,
		-0.972772, 0.013848, -0.231348,
		26.559231, 21.851116, 33.795738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164591, 21.567299, 33.320431>,  <27.240171, 21.841423, 33.957684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164591, 21.567299, 33.320431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818193, 21.767139, 33.328934>,  <26.610355, 21.887043, 33.334034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818193, 21.767139, 33.328934>,  <27.164591, 21.567299, 33.320431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818193, 21.767139, 33.328934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208494, 0.399385, -0.892761,
		-0.454514, -0.768694, -0.450029,
		-0.865995, 0.499601, 0.021258,
		26.558395, 21.917019, 33.335312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969557, 21.604700, 32.649811>,  <27.164591, 21.567299, 33.320431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969557, 21.604700, 32.649811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737122, 21.883453, 32.817951>,  <26.597660, 22.050705, 32.918835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737122, 21.883453, 32.817951>,  <26.969557, 21.604700, 32.649811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737122, 21.883453, 32.817951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051933, 0.547197, -0.835391,
		-0.812184, -0.463604, -0.354159,
		-0.581086, 0.696884, 0.420348,
		26.562796, 22.092518, 32.944054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450796, 21.736509, 32.165905>,  <26.969557, 21.604700, 32.649811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450796, 21.736509, 32.165905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489227, 22.065411, 32.390285>,  <26.512285, 22.262751, 32.524914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489227, 22.065411, 32.390285>,  <26.450796, 21.736509, 32.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489227, 22.065411, 32.390285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117883, 0.568993, -0.813849,
		-0.988369, 0.012066, 0.151597,
		0.096077, 0.822253, 0.560953,
		26.518051, 22.312086, 32.558571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830853, 22.191679, 32.110405>,  <26.450796, 21.736509, 32.165905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830853, 22.191679, 32.110405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115047, 22.439354, 32.244160>,  <26.285564, 22.587959, 32.324413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115047, 22.439354, 32.244160>,  <25.830853, 22.191679, 32.110405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115047, 22.439354, 32.244160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129958, 0.582451, -0.802410,
		-0.691605, 0.526647, 0.494293,
		0.710489, 0.619187, 0.334384,
		26.328194, 22.625111, 32.344475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521502, 22.868513, 32.045078>,  <25.830853, 22.191679, 32.110405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521502, 22.868513, 32.045078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913662, 22.937916, 32.082401>,  <26.148958, 22.979557, 32.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913662, 22.937916, 32.082401>,  <25.521502, 22.868513, 32.045078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913662, 22.937916, 32.082401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095917, 0.834101, -0.543208,
		-0.172079, 0.523613, 0.834397,
		0.980402, 0.173507, 0.093308,
		26.207783, 22.989967, 32.110394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526674, 23.622274, 32.127689>,  <25.521502, 22.868513, 32.045078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526674, 23.622274, 32.127689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884335, 23.482388, 32.015839>,  <26.098930, 23.398455, 31.948727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884335, 23.482388, 32.015839>,  <25.526674, 23.622274, 32.127689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884335, 23.482388, 32.015839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129297, 0.799553, -0.586513,
		0.428692, 0.488276, 0.760138,
		0.894150, -0.349718, -0.279629,
		26.152580, 23.377472, 31.931950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963087, 24.181017, 32.238705>,  <25.526674, 23.622274, 32.127689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963087, 24.181017, 32.238705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121780, 23.936440, 31.964848>,  <26.216995, 23.789694, 31.800533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121780, 23.936440, 31.964848>,  <25.963087, 24.181017, 32.238705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121780, 23.936440, 31.964848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043971, 0.757657, -0.651170,
		0.916881, 0.228236, 0.327473,
		0.396732, -0.611444, -0.684646,
		26.240801, 23.753006, 31.759455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646111, 24.427158, 31.977160>,  <25.963087, 24.181017, 32.238705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646111, 24.427158, 31.977160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483082, 24.195370, 31.694855>,  <26.385265, 24.056297, 31.525473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483082, 24.195370, 31.694855>,  <26.646111, 24.427158, 31.977160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483082, 24.195370, 31.694855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075408, 0.748868, -0.658415,
		0.910054, -0.321572, -0.261521,
		-0.407573, -0.579472, -0.705759,
		26.360809, 24.021528, 31.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108372, 24.342028, 31.334236>,  <26.646111, 24.427158, 31.977160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108372, 24.342028, 31.334236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712868, 24.335930, 31.274742>,  <26.475565, 24.332272, 31.239046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712868, 24.335930, 31.274742>,  <27.108372, 24.342028, 31.334236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712868, 24.335930, 31.274742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079716, 0.787852, -0.610684,
		0.126492, -0.615676, -0.777781,
		-0.988759, -0.015245, -0.148736,
		26.416241, 24.331356, 31.230122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075752, 24.562607, 30.652987>,  <27.108372, 24.342028, 31.334236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075752, 24.562607, 30.652987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701065, 24.598202, 30.788422>,  <26.476254, 24.619558, 30.869682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701065, 24.598202, 30.788422>,  <27.075752, 24.562607, 30.652987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701065, 24.598202, 30.788422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138778, 0.793536, -0.592488,
		-0.321407, -0.601982, -0.730969,
		-0.936717, 0.088987, 0.338590,
		26.420050, 24.624897, 30.889999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701069, 24.662743, 30.008280>,  <27.075752, 24.562607, 30.652987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701069, 24.662743, 30.008280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474819, 24.826248, 30.294769>,  <26.339069, 24.924353, 30.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474819, 24.826248, 30.294769>,  <26.701069, 24.662743, 30.008280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474819, 24.826248, 30.294769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123766, 0.816594, -0.563788,
		-0.815322, -0.407537, -0.411294,
		-0.565625, 0.408765, 0.716226,
		26.305132, 24.948877, 30.509638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187332, 25.036186, 29.635899>,  <26.701069, 24.662743, 30.008280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187332, 25.036186, 29.635899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162720, 25.215553, 29.992580>,  <26.147953, 25.323174, 30.206589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162720, 25.215553, 29.992580>,  <26.187332, 25.036186, 29.635899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162720, 25.215553, 29.992580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152281, 0.878719, -0.452397,
		-0.986420, -0.163626, 0.014218,
		-0.061531, 0.448419, 0.891703,
		26.144260, 25.350079, 30.260092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619207, 25.556261, 29.603231>,  <26.187332, 25.036186, 29.635899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619207, 25.556261, 29.603231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850071, 25.678364, 29.906204>,  <25.988590, 25.751625, 30.087988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850071, 25.678364, 29.906204>,  <25.619207, 25.556261, 29.603231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850071, 25.678364, 29.906204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022143, 0.933019, -0.359145,
		-0.816331, 0.190512, 0.545260,
		0.577160, 0.305256, 0.757434,
		26.023218, 25.769941, 30.133434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306221, 26.272648, 29.786139>,  <25.619207, 25.556261, 29.603231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306221, 26.272648, 29.786139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683640, 26.263309, 29.918304>,  <25.910091, 26.257706, 29.997604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683640, 26.263309, 29.918304>,  <25.306221, 26.272648, 29.786139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683640, 26.263309, 29.918304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112387, 0.960907, -0.253036,
		-0.311590, 0.275886, 0.909285,
		0.943547, -0.023348, 0.330415,
		25.966703, 26.256306, 30.017429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393900, 26.915020, 30.277615>,  <25.306221, 26.272648, 29.786139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393900, 26.915020, 30.277615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756870, 26.810558, 30.145931>,  <25.974651, 26.747881, 30.066921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756870, 26.810558, 30.145931>,  <25.393900, 26.915020, 30.277615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756870, 26.810558, 30.145931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173905, 0.946582, -0.271550,
		0.382540, 0.189160, 0.904368,
		0.907425, -0.261153, -0.329210,
		26.029099, 26.732212, 30.047169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819378, 27.476488, 30.412313>,  <25.393900, 26.915020, 30.277615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819378, 27.476488, 30.412313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039957, 27.278400, 30.143787>,  <26.172304, 27.159548, 29.982672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039957, 27.278400, 30.143787>,  <25.819378, 27.476488, 30.412313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039957, 27.278400, 30.143787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373476, 0.866137, -0.332147,
		0.745938, -0.067559, 0.662580,
		0.551446, -0.495219, -0.671316,
		26.205391, 27.129835, 29.942392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536224, 27.742029, 30.424896>,  <25.819378, 27.476488, 30.412313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536224, 27.742029, 30.424896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445347, 27.584179, 30.068771>,  <26.390821, 27.489470, 29.855097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445347, 27.584179, 30.068771>,  <26.536224, 27.742029, 30.424896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445347, 27.584179, 30.068771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194431, 0.877432, -0.438531,
		0.954244, -0.272734, -0.122618,
		-0.227191, -0.394625, -0.890312,
		26.377190, 27.465792, 29.801678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087080, 27.961420, 30.023079>,  <26.536224, 27.742029, 30.424896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087080, 27.961420, 30.023079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799019, 27.854507, 29.766972>,  <26.626183, 27.790359, 29.613308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799019, 27.854507, 29.766972>,  <27.087080, 27.961420, 30.023079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799019, 27.854507, 29.766972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176127, 0.822164, -0.541319,
		0.671087, -0.502601, -0.545008,
		-0.720153, -0.267281, -0.640265,
		26.582973, 27.774323, 29.574892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393549, 28.200819, 29.373587>,  <27.087080, 27.961420, 30.023079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393549, 28.200819, 29.373587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010458, 28.130791, 29.282276>,  <26.780603, 28.088774, 29.227489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010458, 28.130791, 29.282276>,  <27.393549, 28.200819, 29.373587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010458, 28.130791, 29.282276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033707, 0.719750, -0.693415,
		0.285699, -0.671796, -0.683423,
		-0.957726, -0.175072, -0.228276,
		26.723141, 28.078270, 29.213793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343462, 28.160740, 28.622377>,  <27.393549, 28.200819, 29.373587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343462, 28.160740, 28.622377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971924, 28.235657, 28.750233>,  <26.749001, 28.280607, 28.826946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971924, 28.235657, 28.750233>,  <27.343462, 28.160740, 28.622377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971924, 28.235657, 28.750233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107432, 0.689550, -0.716226,
		-0.354549, -0.699602, -0.620364,
		-0.928845, 0.187290, 0.319639,
		26.693270, 28.291843, 28.846125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040939, 28.273336, 28.024757>,  <27.343462, 28.160740, 28.622377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040939, 28.273336, 28.024757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786747, 28.442432, 28.283199>,  <26.634232, 28.543890, 28.438265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786747, 28.442432, 28.283199>,  <27.040939, 28.273336, 28.024757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786747, 28.442432, 28.283199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280130, 0.653551, -0.703135,
		-0.719508, -0.627822, -0.296896,
		-0.635481, 0.422741, 0.646107,
		26.596104, 28.569254, 28.477032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354206, 28.307028, 27.656252>,  <27.040939, 28.273336, 28.024757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354206, 28.307028, 27.656252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342756, 28.574345, 27.953590>,  <26.335886, 28.734735, 28.131994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342756, 28.574345, 27.953590>,  <26.354206, 28.307028, 27.656252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342756, 28.574345, 27.953590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247969, 0.715659, -0.652949,
		-0.968345, -0.203016, 0.145232,
		-0.028623, 0.668293, 0.743347,
		26.334169, 28.774832, 28.176594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861183, 28.838907, 27.435688>,  <26.354206, 28.307028, 27.656252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861183, 28.838907, 27.435688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079147, 29.023411, 27.715778>,  <26.209925, 29.134113, 27.883833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079147, 29.023411, 27.715778>,  <25.861183, 28.838907, 27.435688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079147, 29.023411, 27.715778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112958, 0.787101, -0.606393,
		-0.830852, 0.409525, 0.376795,
		0.544909, 0.461260, 0.700224,
		26.242620, 29.161789, 27.925846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537022, 29.520296, 27.554255>,  <25.861183, 28.838907, 27.435688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537022, 29.520296, 27.554255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921436, 29.538387, 27.663330>,  <26.152086, 29.549242, 27.728775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921436, 29.538387, 27.663330>,  <25.537022, 29.520296, 27.554255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921436, 29.538387, 27.663330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083984, 0.892111, -0.443943,
		-0.263346, 0.449548, 0.853555,
		0.961039, 0.045226, 0.272688,
		26.209747, 29.551954, 27.745136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542141, 30.141344, 27.902481>,  <25.537022, 29.520296, 27.554255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542141, 30.141344, 27.902481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902452, 30.030899, 27.768398>,  <26.118639, 29.964632, 27.687948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902452, 30.030899, 27.768398>,  <25.542141, 30.141344, 27.902481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902452, 30.030899, 27.768398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064155, 0.847997, -0.526104,
		0.429517, 0.452397, 0.781570,
		0.900777, -0.276112, -0.335206,
		26.172686, 29.948065, 27.667837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883476, 30.623112, 28.036676>,  <25.542141, 30.141344, 27.902481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883476, 30.623112, 28.036676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144445, 30.471344, 27.774261>,  <26.301027, 30.380283, 27.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144445, 30.471344, 27.774261>,  <25.883476, 30.623112, 28.036676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144445, 30.471344, 27.774261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084765, 0.896751, -0.434342,
		0.753099, 0.227766, 0.617223,
		0.652424, -0.379421, -0.656036,
		26.340172, 30.357517, 27.577452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491436, 31.151548, 27.879688>,  <25.883476, 30.623112, 28.036676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491436, 31.151548, 27.879688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436790, 30.904385, 27.569973>,  <26.404003, 30.756086, 27.384144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436790, 30.904385, 27.569973>,  <26.491436, 31.151548, 27.879688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436790, 30.904385, 27.569973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048672, 0.784859, -0.617760,
		0.989428, -0.046709, -0.137299,
		-0.136616, -0.617911, -0.774288,
		26.395805, 30.719011, 27.337687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936672, 31.406782, 27.384531>,  <26.491436, 31.151548, 27.879688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936672, 31.406782, 27.384531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696415, 31.178947, 27.160103>,  <26.552261, 31.042246, 27.025446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696415, 31.178947, 27.160103>,  <26.936672, 31.406782, 27.384531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696415, 31.178947, 27.160103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010153, 0.696269, -0.717709,
		0.799454, -0.436783, -0.412426,
		-0.600642, -0.569588, -0.561070,
		26.516222, 31.008072, 26.991781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078943, 31.596848, 26.663681>,  <26.936672, 31.406782, 27.384531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078943, 31.596848, 26.663681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741316, 31.386509, 26.621662>,  <26.538740, 31.260305, 26.596451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741316, 31.386509, 26.621662>,  <27.078943, 31.596848, 26.663681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741316, 31.386509, 26.621662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319729, 0.650786, -0.688659,
		0.430490, -0.547690, -0.717436,
		-0.844069, -0.525846, -0.105045,
		26.488096, 31.228756, 26.590149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963770, 31.470366, 25.964182>,  <27.078943, 31.596848, 26.663681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963770, 31.470366, 25.964182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602404, 31.447178, 26.134113>,  <26.385584, 31.433266, 26.236073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602404, 31.447178, 26.134113>,  <26.963770, 31.470366, 25.964182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602404, 31.447178, 26.134113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362172, 0.633525, -0.683723,
		-0.229505, -0.771547, -0.593332,
		-0.903415, -0.057971, 0.424830,
		26.331379, 31.429787, 26.261562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428196, 31.317282, 25.490660>,  <26.963770, 31.470366, 25.964182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428196, 31.317282, 25.490660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251724, 31.504623, 25.796864>,  <26.145842, 31.617029, 25.980585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251724, 31.504623, 25.796864>,  <26.428196, 31.317282, 25.490660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251724, 31.504623, 25.796864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430868, 0.637720, -0.638488,
		-0.787220, -0.611520, -0.079548,
		-0.441177, 0.468356, 0.765510,
		26.119371, 31.645130, 26.026516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791990, 31.411459, 25.107788>,  <26.428196, 31.317282, 25.490660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791990, 31.411459, 25.107788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796480, 31.650181, 25.428711>,  <25.799173, 31.793413, 25.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796480, 31.650181, 25.428711>,  <25.791990, 31.411459, 25.107788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796480, 31.650181, 25.428711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470852, 0.710993, -0.522290,
		-0.882141, -0.371907, 0.288985,
		0.011223, 0.596803, 0.802310,
		25.799847, 31.829222, 25.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158381, 31.588266, 25.076408>,  <25.791990, 31.411459, 25.107788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158381, 31.588266, 25.076408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358271, 31.862450, 25.288227>,  <25.478205, 32.026958, 25.415319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358271, 31.862450, 25.288227>,  <25.158381, 31.588266, 25.076408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358271, 31.862450, 25.288227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442317, 0.727581, -0.524387,
		-0.744734, 0.027822, 0.666781,
		0.499727, 0.685457, 0.529549,
		25.508188, 32.068089, 25.447092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678596, 32.103733, 25.321661>,  <25.158381, 31.588266, 25.076408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678596, 32.103733, 25.321661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017937, 32.310257, 25.368534>,  <25.221540, 32.434170, 25.396658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017937, 32.310257, 25.368534>,  <24.678596, 32.103733, 25.321661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017937, 32.310257, 25.368534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434399, 0.805324, -0.403423,
		-0.302659, 0.291340, 0.907479,
		0.848349, 0.516308, 0.117181,
		25.272442, 32.465149, 25.403688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504557, 32.775276, 25.616646>,  <24.678596, 32.103733, 25.321661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504557, 32.775276, 25.616646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.847586, 32.800621, 25.412468>,  <25.053402, 32.815830, 25.289961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.847586, 32.800621, 25.412468>,  <24.504557, 32.775276, 25.616646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847586, 32.800621, 25.412468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382539, 0.741977, -0.550576,
		0.343852, 0.667424, 0.660538,
		0.857572, 0.063365, -0.510446,
		25.104856, 32.819630, 25.259335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529411, 33.477821, 25.461575>,  <24.504557, 32.775276, 25.616646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529411, 33.477821, 25.461575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761444, 33.300865, 25.187992>,  <24.900663, 33.194691, 25.023842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761444, 33.300865, 25.187992>,  <24.529411, 33.477821, 25.461575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761444, 33.300865, 25.187992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229615, 0.716806, -0.658381,
		0.781526, 0.538961, 0.314226,
		0.580082, -0.442391, -0.683956,
		24.935469, 33.168148, 24.982805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617270, 34.051468, 24.942369>,  <24.529411, 33.477821, 25.461575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617270, 34.051468, 24.942369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804047, 33.740669, 24.773495>,  <24.916113, 33.554192, 24.672169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804047, 33.740669, 24.773495>,  <24.617270, 34.051468, 24.942369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804047, 33.740669, 24.773495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149526, 0.401181, -0.903712,
		0.871555, 0.485108, 0.071147,
		0.466941, -0.776997, -0.422188,
		24.944128, 33.507568, 24.646839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.915689, 33.904037, 24.760204>,  <24.617270, 34.051468, 24.942369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.915689, 33.904037, 24.760204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.958326, 34.296532, 24.695927>,  <23.983908, 34.532028, 24.657360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.958326, 34.296532, 24.695927>,  <23.915689, 33.904037, 24.760204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.958326, 34.296532, 24.695927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888338, 0.166579, 0.427910,
		0.446647, 0.097138, 0.889421,
		0.106593, 0.981232, -0.160694,
		23.990305, 34.590900, 24.647718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624569, 34.223248, 25.285851>,  <23.915689, 33.904037, 24.760204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624569, 34.223248, 25.285851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626793, 34.528458, 25.027313>,  <23.628128, 34.711582, 24.872190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626793, 34.528458, 25.027313>,  <23.624569, 34.223248, 25.285851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626793, 34.528458, 25.027313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889619, 0.298949, 0.345264,
		0.456669, 0.573079, 0.680465,
		0.005560, 0.763027, -0.646343,
		23.628462, 34.757366, 24.833410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.304836, 34.886353, 25.238457>,  <23.624569, 34.223248, 25.285851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.304836, 34.886353, 25.238457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230318, 35.201248, 25.473591>,  <23.185606, 35.390186, 25.614672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230318, 35.201248, 25.473591>,  <23.304836, 34.886353, 25.238457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.230318, 35.201248, 25.473591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124636, 0.612411, -0.780652,
		-0.974556, -0.072168, -0.212209,
		-0.186298, 0.787238, 0.587834,
		23.174429, 35.437420, 25.649940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.663282, 35.356838, 25.018383>,  <23.304836, 34.886353, 25.238457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.663282, 35.356838, 25.018383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967407, 35.534203, 25.208252>,  <23.149881, 35.640621, 25.322174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967407, 35.534203, 25.208252>,  <22.663282, 35.356838, 25.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.967407, 35.534203, 25.208252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157378, 0.583241, -0.796907,
		-0.630206, 0.680601, 0.373661,
		0.760311, 0.443410, 0.474674,
		23.195499, 35.667225, 25.350655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.262642, 36.001350, 25.158331>,  <22.663282, 35.356838, 25.018383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.262642, 36.001350, 25.158331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.935091, 35.994518, 24.928844>,  <21.738562, 35.990417, 24.791153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.935091, 35.994518, 24.928844>,  <22.262642, 36.001350, 25.158331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935091, 35.994518, 24.928844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315099, -0.848846, -0.424467,
		-0.479746, -0.528363, 0.700482,
		-0.818875, -0.017085, -0.573717,
		21.689428, 35.989391, 24.756729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914814, 35.368374, 25.334057>,  <22.262642, 36.001350, 25.158331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914814, 35.368374, 25.334057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834473, 35.510025, 24.968708>,  <21.786268, 35.595016, 24.749498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834473, 35.510025, 24.968708>,  <21.914814, 35.368374, 25.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.834473, 35.510025, 24.968708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063048, -0.925766, -0.372803,
		-0.977590, -0.132465, 0.163615,
		-0.200853, 0.354133, -0.913372,
		21.774216, 35.616264, 24.694696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.992563, 34.845905, 24.864952>,  <21.914814, 35.368374, 25.334057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.992563, 34.845905, 24.864952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826281, 35.091904, 24.596931>,  <21.726511, 35.239502, 24.436119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826281, 35.091904, 24.596931>,  <21.992563, 34.845905, 24.864952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826281, 35.091904, 24.596931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139754, -0.771172, -0.621098,
		-0.898696, -0.164554, 0.406530,
		-0.415709, 0.614993, -0.670052,
		21.701569, 35.276402, 24.395916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374794, 34.518360, 24.600660>,  <21.992563, 34.845905, 24.864952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374794, 34.518360, 24.600660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441116, 34.794609, 24.319080>,  <21.480909, 34.960358, 24.150133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.441116, 34.794609, 24.319080>,  <21.374794, 34.518360, 24.600660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441116, 34.794609, 24.319080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259687, -0.658057, -0.706770,
		-0.951352, 0.299992, 0.070237,
		0.165806, 0.690627, -0.703948,
		21.490858, 35.001797, 24.107895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.018366, 34.298721, 24.089825>,  <21.374794, 34.518360, 24.600660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.018366, 34.298721, 24.089825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.200335, 34.584618, 23.877338>,  <21.309515, 34.756157, 23.749847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.200335, 34.584618, 23.877338>,  <21.018366, 34.298721, 24.089825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.200335, 34.584618, 23.877338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076082, -0.563140, -0.822852,
		-0.887276, 0.414747, -0.201805,
		0.454920, 0.714743, -0.531215,
		21.336811, 34.799042, 23.717974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.559446, 34.439907, 23.595133>,  <21.018366, 34.298721, 24.089825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.559446, 34.439907, 23.595133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.925924, 34.541817, 23.471405>,  <21.145811, 34.602962, 23.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.925924, 34.541817, 23.471405>,  <20.559446, 34.439907, 23.595133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925924, 34.541817, 23.471405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091130, -0.619201, -0.779926,
		-0.390234, 0.742753, -0.544092,
		0.916194, 0.254771, -0.309321,
		21.200783, 34.618248, 23.378609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545172, 34.501480, 22.841082>,  <20.559446, 34.439907, 23.595133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545172, 34.501480, 22.841082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.937599, 34.446331, 22.895481>,  <21.173056, 34.413242, 22.928120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.937599, 34.446331, 22.895481>,  <20.545172, 34.501480, 22.841082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.937599, 34.446331, 22.895481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037695, -0.552873, -0.832413,
		0.189953, 0.821781, -0.537210,
		0.981069, -0.137869, 0.135997,
		21.231920, 34.404972, 22.936281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921206, 34.768623, 22.278662>,  <20.545172, 34.501480, 22.841082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921206, 34.768623, 22.278662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.194256, 34.518948, 22.430664>,  <21.358086, 34.369141, 22.521866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.194256, 34.518948, 22.430664>,  <20.921206, 34.768623, 22.278662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.194256, 34.518948, 22.430664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101853, -0.433667, -0.895298,
		0.723635, 0.649859, -0.232456,
		0.682626, -0.624192, 0.380007,
		21.399044, 34.331688, 22.544666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551472, 34.873501, 21.890390>,  <20.921206, 34.768623, 22.278662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551472, 34.873501, 21.890390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.561399, 34.499977, 22.033157>,  <21.567356, 34.275864, 22.118816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.561399, 34.499977, 22.033157>,  <21.551472, 34.873501, 21.890390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.561399, 34.499977, 22.033157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018864, -0.356525, -0.934096,
		0.999514, 0.029915, 0.008767,
		0.024818, -0.933807, 0.356916,
		21.568844, 34.219833, 22.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.012842, 34.604332, 21.491871>,  <21.551472, 34.873501, 21.890390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.012842, 34.604332, 21.491871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.863317, 34.265232, 21.642380>,  <21.773603, 34.061771, 21.732685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.863317, 34.265232, 21.642380>,  <22.012842, 34.604332, 21.491871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863317, 34.265232, 21.642380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135944, -0.451378, -0.881917,
		0.917488, -0.278520, 0.283977,
		-0.373812, -0.847753, 0.376271,
		21.751173, 34.010906, 21.755260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442898, 34.075512, 21.297647>,  <22.012842, 34.604332, 21.491871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442898, 34.075512, 21.297647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.088484, 33.907387, 21.375908>,  <21.875835, 33.806511, 21.422865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.088484, 33.907387, 21.375908>,  <22.442898, 34.075512, 21.297647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.088484, 33.907387, 21.375908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164430, -0.679467, -0.715044,
		0.433482, -0.601382, 0.671143,
		-0.886034, -0.420315, 0.195652,
		21.822674, 33.781292, 21.434603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576889, 33.381989, 21.172085>,  <22.442898, 34.075512, 21.297647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576889, 33.381989, 21.172085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176924, 33.384678, 21.167473>,  <21.936945, 33.386292, 21.164705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176924, 33.384678, 21.167473>,  <22.576889, 33.381989, 21.172085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176924, 33.384678, 21.167473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004339, -0.653251, -0.757129,
		-0.012620, -0.757112, 0.653163,
		-0.999910, 0.006721, -0.011530,
		21.876951, 33.386696, 21.164015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418154, 32.789993, 21.103603>,  <22.576889, 33.381989, 21.172085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418154, 32.789993, 21.103603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.070004, 32.945473, 20.982697>,  <21.861115, 33.038761, 20.910152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.070004, 32.945473, 20.982697>,  <22.418154, 32.789993, 21.103603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.070004, 32.945473, 20.982697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045677, -0.547488, -0.835566,
		-0.490264, -0.741063, 0.458766,
		-0.870376, 0.388693, -0.302264,
		21.808891, 33.062080, 20.892017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851999, 32.246784, 21.129026>,  <22.418154, 32.789993, 21.103603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851999, 32.246784, 21.129026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769840, 32.535694, 20.864864>,  <21.720545, 32.709038, 20.706367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769840, 32.535694, 20.864864>,  <21.851999, 32.246784, 21.129026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769840, 32.535694, 20.864864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030980, -0.669658, -0.742023,
		-0.978188, -0.172868, 0.115170,
		-0.205397, 0.722271, -0.660407,
		21.708221, 32.752377, 20.666742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304144, 31.941031, 20.613098>,  <21.851999, 32.246784, 21.129026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304144, 31.941031, 20.613098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.475483, 32.260925, 20.444839>,  <21.578285, 32.452862, 20.343884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.475483, 32.260925, 20.444839>,  <21.304144, 31.941031, 20.613098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.475483, 32.260925, 20.444839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007115, -0.468486, -0.883442,
		-0.903587, 0.375426, -0.206364,
		0.428346, 0.799735, -0.420647,
		21.603987, 32.500847, 20.318645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884926, 32.098404, 20.015923>,  <21.304144, 31.941031, 20.613098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884926, 32.098404, 20.015923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228170, 32.287273, 19.935223>,  <21.434116, 32.400593, 19.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228170, 32.287273, 19.935223>,  <20.884926, 32.098404, 20.015923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228170, 32.287273, 19.935223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066304, -0.287733, -0.955413,
		-0.509169, 0.833225, -0.215599,
		0.858109, 0.472171, -0.201751,
		21.485603, 32.428925, 19.874697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.848108, 32.285225, 19.373800>,  <20.884926, 32.098404, 20.015923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.848108, 32.285225, 19.373800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233839, 32.367008, 19.441055>,  <21.465277, 32.416080, 19.481409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233839, 32.367008, 19.441055>,  <20.848108, 32.285225, 19.373800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233839, 32.367008, 19.441055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213983, -0.228157, -0.949819,
		-0.155839, 0.951914, -0.263769,
		0.964326, 0.204461, 0.168138,
		21.523136, 32.428345, 19.491497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055529, 32.847595, 18.798914>,  <20.848108, 32.285225, 19.373800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055529, 32.847595, 18.798914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347626, 32.622303, 18.953583>,  <21.522884, 32.487125, 19.046385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.347626, 32.622303, 18.953583>,  <21.055529, 32.847595, 18.798914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347626, 32.622303, 18.953583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379505, -0.136210, -0.915108,
		0.568087, 0.814995, 0.114283,
		0.730242, -0.563232, 0.386673,
		21.566698, 32.453335, 19.069584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660303, 33.103119, 18.444729>,  <21.055529, 32.847595, 18.798914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660303, 33.103119, 18.444729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.748438, 32.742119, 18.592751>,  <21.801319, 32.525517, 18.681564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.748438, 32.742119, 18.592751>,  <21.660303, 33.103119, 18.444729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.748438, 32.742119, 18.592751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403274, -0.261153, -0.877023,
		0.888157, 0.342474, 0.306414,
		0.220336, -0.902503, 0.370055,
		21.814539, 32.471367, 18.703768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220573, 32.983170, 18.010664>,  <21.660303, 33.103119, 18.444729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220573, 32.983170, 18.010664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.126986, 32.626949, 18.166702>,  <22.070833, 32.413216, 18.260326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.126986, 32.626949, 18.166702>,  <22.220573, 32.983170, 18.010664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.126986, 32.626949, 18.166702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440370, -0.454787, -0.774108,
		0.866794, -0.009332, 0.498580,
		-0.233971, -0.890551, 0.390097,
		22.056793, 32.359783, 18.283731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.706306, 32.454205, 17.650766>,  <22.220573, 32.983170, 18.010664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.706306, 32.454205, 17.650766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.408360, 32.236221, 17.804749>,  <22.229591, 32.105431, 17.897137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.408360, 32.236221, 17.804749>,  <22.706306, 32.454205, 17.650766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.408360, 32.236221, 17.804749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123919, -0.679913, -0.722746,
		0.655604, -0.490647, 0.573976,
		-0.744867, -0.544963, 0.384953,
		22.184900, 32.072731, 17.920235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.028967, 31.815607, 17.799273>,  <22.706306, 32.454205, 17.650766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.028967, 31.815607, 17.799273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633823, 31.773331, 17.753727>,  <22.396738, 31.747965, 17.726400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633823, 31.773331, 17.753727>,  <23.028967, 31.815607, 17.799273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633823, 31.773331, 17.753727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153870, -0.564536, -0.810940,
		0.021430, -0.818614, 0.573944,
		-0.987859, -0.105691, -0.113862,
		22.337465, 31.741623, 17.719568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.940069, 31.094181, 17.672598>,  <23.028967, 31.815607, 17.799273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.940069, 31.094181, 17.672598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596283, 31.242001, 17.531319>,  <22.390011, 31.330692, 17.446550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596283, 31.242001, 17.531319>,  <22.940069, 31.094181, 17.672598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596283, 31.242001, 17.531319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115304, -0.532983, -0.838233,
		-0.498013, -0.761161, 0.415473,
		-0.859470, 0.369545, -0.353197,
		22.338444, 31.352865, 17.425360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.363331, 30.510969, 17.452717>,  <22.940069, 31.094181, 17.672598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.363331, 30.510969, 17.452717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.333843, 30.857323, 17.254803>,  <22.316151, 31.065134, 17.136055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.333843, 30.857323, 17.254803>,  <22.363331, 30.510969, 17.452717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.333843, 30.857323, 17.254803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028264, -0.494120, -0.868934,
		-0.996878, -0.078043, 0.011953,
		-0.073721, 0.865884, -0.494784,
		22.311728, 31.117088, 17.106367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891348, 30.382500, 16.882109>,  <22.363331, 30.510969, 17.452717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891348, 30.382500, 16.882109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082787, 30.715584, 16.770725>,  <22.197649, 30.915434, 16.703896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082787, 30.715584, 16.770725>,  <21.891348, 30.382500, 16.882109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.082787, 30.715584, 16.770725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022486, -0.328661, -0.944180,
		-0.877747, 0.445620, -0.176020,
		0.478596, 0.832710, -0.278461,
		22.226366, 30.965397, 16.687187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.664417, 30.608046, 16.245333>,  <21.891348, 30.382500, 16.882109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.664417, 30.608046, 16.245333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.045992, 30.724678, 16.273571>,  <22.274937, 30.794657, 16.290514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.045992, 30.724678, 16.273571>,  <21.664417, 30.608046, 16.245333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.045992, 30.724678, 16.273571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153050, -0.270596, -0.950449,
		-0.258028, 0.917474, -0.302758,
		0.953938, 0.291580, 0.070598,
		22.332172, 30.812153, 16.294750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900194, 31.160234, 15.779619>,  <21.664417, 30.608046, 16.245333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900194, 31.160234, 15.779619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219091, 30.928547, 15.847627>,  <22.410431, 30.789534, 15.888432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219091, 30.928547, 15.847627>,  <21.900194, 31.160234, 15.779619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.219091, 30.928547, 15.847627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146972, -0.086927, -0.985314,
		0.585492, 0.810524, 0.015827,
		0.797244, -0.579219, 0.170019,
		22.458265, 30.754782, 15.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504728, 31.373241, 15.287164>,  <21.900194, 31.160234, 15.779619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504728, 31.373241, 15.287164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522530, 30.985020, 15.381856>,  <22.533211, 30.752087, 15.438671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522530, 30.985020, 15.381856>,  <22.504728, 31.373241, 15.287164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522530, 30.985020, 15.381856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156873, -0.227236, -0.961122,
		0.986616, 0.079908, 0.142141,
		0.044502, -0.970556, 0.236730,
		22.535881, 30.693853, 15.452875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.770092, 31.351891, 15.105545>,  <22.504728, 31.373241, 15.287164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.770092, 31.351891, 15.105545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400084, 31.376759, 14.955626>,  <21.178080, 31.391680, 14.865675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400084, 31.376759, 14.955626>,  <21.770092, 31.351891, 15.105545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400084, 31.376759, 14.955626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035751, 0.967897, 0.248792,
		0.378232, 0.243537, -0.893101,
		-0.925020, 0.062172, -0.374796,
		21.122578, 31.395411, 14.843187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.772369, 31.880697, 14.620336>,  <21.770092, 31.351891, 15.105545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.772369, 31.880697, 14.620336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410213, 31.851543, 14.787648>,  <21.192921, 31.834051, 14.888036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.410213, 31.851543, 14.787648>,  <21.772369, 31.880697, 14.620336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.410213, 31.851543, 14.787648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041971, 0.964969, 0.258987,
		-0.422504, 0.252039, -0.870613,
		-0.905389, -0.072883, 0.418281,
		21.138597, 31.829679, 14.913133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635376, 32.622162, 14.701215>,  <21.772369, 31.880697, 14.620336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635376, 32.622162, 14.701215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379433, 32.431709, 14.942506>,  <21.225866, 32.317440, 15.087280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379433, 32.431709, 14.942506>,  <21.635376, 32.622162, 14.701215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379433, 32.431709, 14.942506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229986, 0.867613, 0.440855,
		-0.733272, 0.143350, -0.664652,
		-0.639858, -0.476128, 0.603228,
		21.187475, 32.288872, 15.123474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.986889, 32.999893, 14.769561>,  <21.635376, 32.622162, 14.701215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.986889, 32.999893, 14.769561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070503, 32.782974, 15.095069>,  <21.120672, 32.652824, 15.290374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070503, 32.782974, 15.095069>,  <20.986889, 32.999893, 14.769561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070503, 32.782974, 15.095069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121939, 0.811206, 0.571906,
		-0.970276, -0.218779, 0.103443,
		0.209035, -0.542293, 0.813771,
		21.133213, 32.620285, 15.339200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.702591, 33.446865, 15.328347>,  <20.986889, 32.999893, 14.769561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.702591, 33.446865, 15.328347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856779, 33.156590, 15.556308>,  <20.949293, 32.982426, 15.693084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856779, 33.156590, 15.556308>,  <20.702591, 33.446865, 15.328347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.856779, 33.156590, 15.556308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148218, 0.560914, 0.814498,
		-0.910738, -0.398435, 0.108656,
		0.385471, -0.725689, 0.569901,
		20.972420, 32.938881, 15.727278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241852, 33.126713, 15.924881>,  <20.702591, 33.446865, 15.328347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241852, 33.126713, 15.924881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.633226, 33.136543, 16.006912>,  <20.868052, 33.142441, 16.056131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.633226, 33.136543, 16.006912>,  <20.241852, 33.126713, 15.924881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633226, 33.136543, 16.006912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184471, 0.550568, 0.814153,
		-0.092904, -0.834429, 0.543229,
		0.978437, 0.024572, 0.205078,
		20.926758, 33.143913, 16.068436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327475, 32.848431, 16.616209>,  <20.241852, 33.126713, 15.924881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.327475, 32.848431, 16.616209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.602537, 33.115917, 16.503105>,  <20.767574, 33.276409, 16.435244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.602537, 33.115917, 16.503105>,  <20.327475, 32.848431, 16.616209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.602537, 33.115917, 16.503105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123627, 0.491615, 0.861992,
		0.715434, -0.557797, 0.420733,
		0.687655, 0.668713, -0.282760,
		20.808834, 33.316532, 16.418278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866291, 32.943932, 17.138920>,  <20.327475, 32.848431, 16.616209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.866291, 32.943932, 17.138920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.895090, 33.302299, 16.963581>,  <20.912369, 33.517319, 16.858377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.895090, 33.302299, 16.963581>,  <20.866291, 32.943932, 17.138920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.895090, 33.302299, 16.963581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206322, 0.443358, 0.872276,
		0.975832, 0.027639, 0.216768,
		0.071997, 0.895918, -0.438346,
		20.916689, 33.571075, 16.832077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.365660, 33.479042, 17.480688>,  <20.866291, 32.943932, 17.138920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.365660, 33.479042, 17.480688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107801, 33.700626, 17.269955>,  <20.953087, 33.833576, 17.143515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107801, 33.700626, 17.269955>,  <21.365660, 33.479042, 17.480688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107801, 33.700626, 17.269955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096335, 0.624783, 0.774833,
		0.758387, 0.550246, -0.349398,
		-0.644647, 0.553964, -0.526835,
		20.914408, 33.866814, 17.111904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636517, 34.128452, 17.550428>,  <21.365660, 33.479042, 17.480688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636517, 34.128452, 17.550428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252754, 34.181763, 17.451008>,  <21.022497, 34.213749, 17.391356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252754, 34.181763, 17.451008>,  <21.636517, 34.128452, 17.550428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252754, 34.181763, 17.451008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096525, 0.672908, 0.733402,
		0.264999, 0.727621, -0.632726,
		-0.959405, 0.133277, -0.248554,
		20.964933, 34.221745, 17.376442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.544930, 34.850624, 17.732277>,  <21.636517, 34.128452, 17.550428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.544930, 34.850624, 17.732277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180950, 34.686962, 17.705200>,  <20.962563, 34.588764, 17.688953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180950, 34.686962, 17.705200>,  <21.544930, 34.850624, 17.732277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180950, 34.686962, 17.705200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354171, 0.681760, 0.640130,
		-0.215762, 0.606462, -0.765279,
		-0.909950, -0.409155, -0.067693,
		20.907965, 34.564217, 17.684893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171087, 35.439125, 17.661543>,  <21.544930, 34.850624, 17.732277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171087, 35.439125, 17.661543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.951283, 35.128254, 17.784203>,  <20.819401, 34.941730, 17.857800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.951283, 35.128254, 17.784203>,  <21.171087, 35.439125, 17.661543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.951283, 35.128254, 17.784203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343250, 0.544630, 0.765217,
		-0.761721, 0.315237, -0.566046,
		-0.549510, -0.777177, 0.306651,
		20.786428, 34.895100, 17.876198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494066, 35.752861, 17.818787>,  <21.171087, 35.439125, 17.661543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494066, 35.752861, 17.818787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.490376, 35.392704, 17.992779>,  <20.488161, 35.176609, 18.097174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.490376, 35.392704, 17.992779>,  <20.494066, 35.752861, 17.818787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.490376, 35.392704, 17.992779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259613, 0.422238, 0.868514,
		-0.965669, -0.104912, -0.237650,
		-0.009227, -0.900394, 0.434978,
		20.487608, 35.122585, 18.123272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.870054, 35.775131, 18.206478>,  <20.494066, 35.752861, 17.818787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.870054, 35.775131, 18.206478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094385, 35.489792, 18.374577>,  <20.228983, 35.318588, 18.475435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094385, 35.489792, 18.374577>,  <19.870054, 35.775131, 18.206478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094385, 35.489792, 18.374577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390983, 0.219231, 0.893907,
		-0.729799, -0.665636, -0.155957,
		0.560826, -0.713349, 0.420247,
		20.262632, 35.275787, 18.500650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462160, 35.502335, 18.709785>,  <19.870054, 35.775131, 18.206478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462160, 35.502335, 18.709785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.837149, 35.409264, 18.813328>,  <20.062141, 35.353420, 18.875454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.837149, 35.409264, 18.813328>,  <19.462160, 35.502335, 18.709785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.837149, 35.409264, 18.813328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193952, 0.268324, 0.943602,
		-0.289010, -0.934807, 0.206419,
		0.937473, -0.232675, 0.258856,
		20.118391, 35.339462, 18.890984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335726, 35.083420, 19.316723>,  <19.462160, 35.502335, 18.709785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335726, 35.083420, 19.316723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.716406, 35.202801, 19.345551>,  <19.944813, 35.274429, 19.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.716406, 35.202801, 19.345551>,  <19.335726, 35.083420, 19.316723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716406, 35.202801, 19.345551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146222, 0.234178, 0.961134,
		0.269985, -0.925247, 0.266508,
		0.951697, 0.298461, 0.072067,
		20.001915, 35.292336, 19.367172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499599, 34.777313, 19.870539>,  <19.335726, 35.083420, 19.316723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499599, 34.777313, 19.870539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792656, 35.046322, 19.828686>,  <19.968491, 35.207726, 19.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792656, 35.046322, 19.828686>,  <19.499599, 34.777313, 19.870539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792656, 35.046322, 19.828686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043261, 0.199438, 0.978955,
		0.679238, -0.712697, 0.175211,
		0.732642, 0.672523, -0.104634,
		20.012449, 35.248077, 19.797295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943024, 34.582527, 20.508736>,  <19.499599, 34.777313, 19.870539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943024, 34.582527, 20.508736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055738, 34.947422, 20.389797>,  <20.123367, 35.166359, 20.318434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055738, 34.947422, 20.389797>,  <19.943024, 34.582527, 20.508736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055738, 34.947422, 20.389797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266575, 0.223267, 0.937598,
		0.921702, -0.343466, -0.180267,
		0.281785, 0.912241, -0.297345,
		20.140274, 35.221096, 20.300594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605005, 34.782005, 20.839750>,  <19.943024, 34.582527, 20.508736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605005, 34.782005, 20.839750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396767, 35.111866, 20.751270>,  <20.271824, 35.309784, 20.698183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396767, 35.111866, 20.751270>,  <20.605005, 34.782005, 20.839750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396767, 35.111866, 20.751270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039106, 0.281835, 0.958665,
		0.852906, 0.490429, -0.178971,
		-0.520597, 0.824651, -0.221201,
		20.240587, 35.359261, 20.684910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.935133, 35.236301, 21.226971>,  <20.605005, 34.782005, 20.839750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.935133, 35.236301, 21.226971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.598280, 35.433052, 21.138542>,  <20.396168, 35.551102, 21.085485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.598280, 35.433052, 21.138542>,  <20.935133, 35.236301, 21.226971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.598280, 35.433052, 21.138542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080989, 0.289938, 0.953613,
		0.533158, 0.820971, -0.204329,
		-0.842130, 0.491878, -0.221072,
		20.345640, 35.580616, 21.072220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.924688, 35.881798, 21.612776>,  <20.935133, 35.236301, 21.226971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.924688, 35.881798, 21.612776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537134, 35.836231, 21.524879>,  <20.304602, 35.808891, 21.472141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537134, 35.836231, 21.524879>,  <20.924688, 35.881798, 21.612776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537134, 35.836231, 21.524879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241895, 0.247674, 0.938160,
		-0.052452, 0.962122, -0.267524,
		-0.968884, -0.113921, -0.219742,
		20.246469, 35.802055, 21.458958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630493, 36.448570, 21.896465>,  <20.924688, 35.881798, 21.612776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630493, 36.448570, 21.896465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.326954, 36.192165, 21.850414>,  <20.144831, 36.038322, 21.822784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.326954, 36.192165, 21.850414>,  <20.630493, 36.448570, 21.896465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.326954, 36.192165, 21.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303441, 0.191585, 0.933391,
		-0.576256, 0.743238, -0.339893,
		-0.758850, -0.641009, -0.115127,
		20.099298, 35.999863, 21.815876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002623, 36.825531, 22.197369>,  <20.630493, 36.448570, 21.896465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002623, 36.825531, 22.197369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893486, 36.443428, 22.151691>,  <19.828005, 36.214165, 22.124285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893486, 36.443428, 22.151691>,  <20.002623, 36.825531, 22.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.893486, 36.443428, 22.151691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534788, 0.051925, 0.843389,
		-0.799724, 0.291181, -0.525028,
		-0.272841, -0.955258, -0.114195,
		19.811634, 36.156849, 22.117434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316139, 36.843208, 22.204323>,  <20.002623, 36.825531, 22.197369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.316139, 36.843208, 22.204323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412062, 36.468803, 22.307381>,  <19.469616, 36.244160, 22.369215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412062, 36.468803, 22.307381>,  <19.316139, 36.843208, 22.204323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412062, 36.468803, 22.307381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606571, 0.062752, 0.792549,
		-0.758001, -0.346337, -0.552707,
		0.239806, -0.936009, 0.257644,
		19.484003, 36.188000, 22.384674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688257, 36.568645, 22.518847>,  <19.316139, 36.843208, 22.204323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688257, 36.568645, 22.518847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990423, 36.335632, 22.638847>,  <19.171722, 36.195824, 22.710848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990423, 36.335632, 22.638847>,  <18.688257, 36.568645, 22.518847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990423, 36.335632, 22.638847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349852, 0.028547, 0.936370,
		-0.554030, -0.812306, -0.182235,
		0.755417, -0.582532, 0.300003,
		19.217049, 36.160873, 22.728848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403580, 36.004795, 22.902946>,  <18.688257, 36.568645, 22.518847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403580, 36.004795, 22.902946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783436, 36.034164, 23.024792>,  <19.011351, 36.051788, 23.097898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783436, 36.034164, 23.024792>,  <18.403580, 36.004795, 22.902946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783436, 36.034164, 23.024792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306194, 0.011057, 0.951905,
		0.066532, -0.997239, 0.032985,
		0.949641, 0.073432, 0.304613,
		19.068329, 36.056190, 23.116177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590601, 35.531467, 23.383188>,  <18.403580, 36.004795, 22.902946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590601, 35.531467, 23.383188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802641, 35.867100, 23.432079>,  <18.929865, 36.068478, 23.461414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802641, 35.867100, 23.432079>,  <18.590601, 35.531467, 23.383188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802641, 35.867100, 23.432079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274425, 0.033381, 0.961029,
		0.802300, -0.542983, 0.247960,
		0.530099, 0.839080, 0.122227,
		18.961670, 36.118824, 23.468748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926243, 35.460503, 24.036428>,  <18.590601, 35.531467, 23.383188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926243, 35.460503, 24.036428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.843386, 35.830933, 23.910267>,  <18.793673, 36.053192, 23.834570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.843386, 35.830933, 23.910267>,  <18.926243, 35.460503, 24.036428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843386, 35.830933, 23.910267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354606, 0.229400, 0.906438,
		0.911782, 0.299605, 0.280873,
		-0.207142, 0.926074, -0.315405,
		18.781242, 36.108753, 23.815645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348452, 36.165852, 24.265892>,  <18.926243, 35.460503, 24.036428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348452, 36.165852, 24.265892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958559, 36.235565, 24.210003>,  <18.724623, 36.277393, 24.176470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958559, 36.235565, 24.210003>,  <19.348452, 36.165852, 24.265892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958559, 36.235565, 24.210003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093146, 0.251409, 0.963389,
		0.203028, 0.952061, -0.228822,
		-0.974732, 0.174281, -0.139724,
		18.666140, 36.287849, 24.168085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988577, 36.886929, 24.230562>,  <19.348452, 36.165852, 24.265892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988577, 36.886929, 24.230562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686035, 36.676575, 24.386189>,  <18.504511, 36.550362, 24.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686035, 36.676575, 24.386189>,  <18.988577, 36.886929, 24.230562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686035, 36.676575, 24.386189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039432, 0.557020, 0.829563,
		-0.652975, 0.642783, -0.400566,
		-0.756352, -0.525889, 0.389066,
		18.459129, 36.518806, 24.502909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765039, 37.150024, 23.627420>,  <18.988577, 36.886929, 24.230562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765039, 37.150024, 23.627420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.368042, 37.198471, 23.634148>,  <18.129843, 37.227539, 23.638184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.368042, 37.198471, 23.634148>,  <18.765039, 37.150024, 23.627420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368042, 37.198471, 23.634148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122113, -0.988907, -0.084568,
		0.006389, -0.085988, 0.996276,
		-0.992496, 0.121118, 0.016818,
		18.070293, 37.234806, 23.639193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.793749, 24.098949, 27.773317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121613, 24.160183, 27.994125>,  <29.318331, 24.196922, 28.126610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121613, 24.160183, 27.994125>,  <28.793749, 24.098949, 27.773317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121613, 24.160183, 27.994125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168790, 0.856314, -0.488095,
		-0.547420, 0.493247, 0.676047,
		0.819659, 0.153083, 0.552018,
		29.367510, 24.206108, 28.159731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736965, 24.760324, 28.106852>,  <28.793749, 24.098949, 27.773317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736965, 24.760324, 28.106852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.123407, 24.675884, 28.047424>,  <29.355272, 24.625219, 28.011768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.123407, 24.675884, 28.047424>,  <28.736965, 24.760324, 28.106852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123407, 24.675884, 28.047424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115403, 0.868021, -0.482931,
		0.230908, 0.449418, 0.862963,
		0.966108, -0.211101, -0.148568,
		29.413240, 24.612555, 28.002853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144238, 25.366247, 28.240749>,  <28.736965, 24.760324, 28.106852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144238, 25.366247, 28.240749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.398630, 25.149254, 28.021210>,  <29.551266, 25.019058, 27.889486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.398630, 25.149254, 28.021210>,  <29.144238, 25.366247, 28.240749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398630, 25.149254, 28.021210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327621, 0.833748, -0.444443,
		0.698706, 0.102843, 0.707978,
		0.635983, -0.542483, -0.548851,
		29.589426, 24.986509, 27.856554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766609, 25.751179, 28.138121>,  <29.144238, 25.366247, 28.240749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766609, 25.751179, 28.138121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.795086, 25.466068, 27.859013>,  <29.812172, 25.295002, 27.691547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.795086, 25.466068, 27.859013>,  <29.766609, 25.751179, 28.138121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795086, 25.466068, 27.859013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366392, 0.669330, -0.646340,
		0.927733, -0.209645, 0.308804,
		0.071190, -0.712774, -0.697771,
		29.816442, 25.252235, 27.649681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314556, 25.877171, 27.828302>,  <29.766609, 25.751179, 28.138121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314556, 25.877171, 27.828302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.141895, 25.659939, 27.540207>,  <30.038300, 25.529600, 27.367350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.141895, 25.659939, 27.540207>,  <30.314556, 25.877171, 27.828302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141895, 25.659939, 27.540207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255814, 0.691973, -0.675079,
		0.865007, -0.475645, -0.159763,
		-0.431651, -0.543079, -0.720239,
		30.012400, 25.497015, 27.324135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761036, 25.852175, 27.280407>,  <30.314556, 25.877171, 27.828302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761036, 25.852175, 27.280407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.399008, 25.791752, 27.121395>,  <30.181791, 25.755499, 27.025988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.399008, 25.791752, 27.121395>,  <30.761036, 25.852175, 27.280407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399008, 25.791752, 27.121395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191280, 0.690286, -0.697794,
		0.379815, -0.707593, -0.595863,
		-0.905070, -0.151056, -0.397530,
		30.127487, 25.746435, 27.002136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849318, 25.886396, 26.565664>,  <30.761036, 25.852175, 27.280407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849318, 25.886396, 26.565664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.458540, 25.955040, 26.616467>,  <30.224073, 25.996227, 26.646948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.458540, 25.955040, 26.616467>,  <30.849318, 25.886396, 26.565664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458540, 25.955040, 26.616467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092051, 0.875330, -0.474683,
		-0.192633, -0.452047, -0.870945,
		-0.976944, 0.171611, 0.127007,
		30.165457, 26.006523, 26.654568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553993, 26.117594, 25.882721>,  <30.849318, 25.886396, 26.565664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553993, 26.117594, 25.882721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.283043, 26.259357, 26.140575>,  <30.120474, 26.344416, 26.295288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.283043, 26.259357, 26.140575>,  <30.553993, 26.117594, 25.882721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283043, 26.259357, 26.140575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114729, 0.814679, -0.568450,
		-0.726637, -0.459012, -0.511182,
		-0.677374, 0.354409, 0.644638,
		30.079830, 26.365681, 26.333967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988155, 26.339239, 25.465235>,  <30.553993, 26.117594, 25.882721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988155, 26.339239, 25.465235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.932220, 26.533478, 25.810406>,  <29.898661, 26.650021, 26.017508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.932220, 26.533478, 25.810406>,  <29.988155, 26.339239, 25.465235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932220, 26.533478, 25.810406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261121, 0.822555, -0.505192,
		-0.955124, -0.295972, 0.011777,
		-0.139835, 0.485596, 0.862927,
		29.890270, 26.679157, 26.069284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248299, 26.722198, 25.369469>,  <29.988155, 26.339239, 25.465235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248299, 26.722198, 25.369469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.429049, 26.899582, 25.679089>,  <29.537498, 27.006012, 25.864861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.429049, 26.899582, 25.679089>,  <29.248299, 26.722198, 25.369469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429049, 26.899582, 25.679089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117684, 0.889739, -0.441038,
		-0.884284, 0.108202, 0.454240,
		0.451876, 0.443460, 0.774049,
		29.564611, 27.032619, 25.911303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781528, 27.304871, 25.580900>,  <29.248299, 26.722198, 25.369469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781528, 27.304871, 25.580900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.150492, 27.376331, 25.717865>,  <29.371870, 27.419209, 25.800043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.150492, 27.376331, 25.717865>,  <28.781528, 27.304871, 25.580900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150492, 27.376331, 25.717865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052887, 0.936658, -0.346229,
		-0.382578, 0.301256, 0.873429,
		0.922408, 0.178653, 0.342413,
		29.427214, 27.429928, 25.820589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702356, 27.880804, 26.042215>,  <28.781528, 27.304871, 25.580900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702356, 27.880804, 26.042215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.074812, 27.853397, 25.898949>,  <29.298286, 27.836954, 25.812988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.074812, 27.853397, 25.898949>,  <28.702356, 27.880804, 26.042215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074812, 27.853397, 25.898949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087428, 0.911599, -0.401675,
		0.354023, 0.405330, 0.842838,
		0.931141, -0.068515, -0.358164,
		29.354155, 27.832844, 25.791500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141262, 28.474848, 26.243580>,  <28.702356, 27.880804, 26.042215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141262, 28.474848, 26.243580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.333643, 28.346436, 25.917236>,  <29.449072, 28.269388, 25.721430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.333643, 28.346436, 25.917236>,  <29.141262, 28.474848, 26.243580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333643, 28.346436, 25.917236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031996, 0.936359, -0.349583,
		0.876162, 0.142029, 0.460617,
		0.480954, -0.321029, -0.815858,
		29.477928, 28.250128, 25.672480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565989, 29.066751, 26.056622>,  <29.141262, 28.474848, 26.243580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565989, 29.066751, 26.056622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.608192, 28.846695, 25.725269>,  <29.633514, 28.714661, 25.526459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.608192, 28.846695, 25.725269>,  <29.565989, 29.066751, 26.056622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608192, 28.846695, 25.725269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161506, 0.831449, -0.531610,
		0.981215, -0.077699, 0.176576,
		0.105508, -0.550142, -0.828379,
		29.639845, 28.681652, 25.476755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239296, 29.297739, 25.671993>,  <29.565989, 29.066751, 26.056622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239296, 29.297739, 25.671993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.996538, 29.116806, 25.410591>,  <29.850883, 29.008245, 25.253750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.996538, 29.116806, 25.410591>,  <30.239296, 29.297739, 25.671993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996538, 29.116806, 25.410591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238919, 0.680386, -0.692815,
		0.758022, -0.576601, -0.304851,
		-0.606894, -0.452335, -0.653508,
		29.814470, 28.981106, 25.214539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569660, 29.188145, 25.030388>,  <30.239296, 29.297739, 25.671993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569660, 29.188145, 25.030388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.190182, 29.164795, 24.906086>,  <29.962494, 29.150785, 24.831505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.190182, 29.164795, 24.906086>,  <30.569660, 29.188145, 25.030388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190182, 29.164795, 24.906086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203578, 0.639237, -0.741574,
		0.241936, -0.766791, -0.594557,
		-0.948696, -0.058375, -0.310756,
		29.905573, 29.147282, 24.812859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668945, 29.144135, 24.227343>,  <30.569660, 29.188145, 25.030388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668945, 29.144135, 24.227343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292440, 29.252071, 24.308544>,  <30.066538, 29.316833, 24.357265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.292440, 29.252071, 24.308544>,  <30.668945, 29.144135, 24.227343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292440, 29.252071, 24.308544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034114, 0.674092, -0.737859,
		-0.335947, -0.687594, -0.643704,
		-0.941263, 0.269841, 0.203002,
		30.010061, 29.333023, 24.369446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317236, 29.216917, 23.531347>,  <30.668945, 29.144135, 24.227343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317236, 29.216917, 23.531347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.107372, 29.419823, 23.804817>,  <29.981455, 29.541567, 23.968899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.107372, 29.419823, 23.804817>,  <30.317236, 29.216917, 23.531347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107372, 29.419823, 23.804817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050745, 0.783023, -0.619919,
		-0.849798, -0.359940, -0.385079,
		-0.524659, 0.507265, 0.683677,
		29.949974, 29.572002, 24.009920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844040, 29.518290, 23.204029>,  <30.317236, 29.216917, 23.531347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844040, 29.518290, 23.204029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.828474, 29.743870, 23.533985>,  <29.819134, 29.879217, 23.731958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.828474, 29.743870, 23.533985>,  <29.844040, 29.518290, 23.204029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828474, 29.743870, 23.533985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152909, 0.812434, -0.562645,
		-0.987474, -0.148029, 0.054616,
		-0.038916, 0.563949, 0.824892,
		29.816799, 29.913055, 23.781452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266523, 29.895374, 23.126888>,  <29.844040, 29.518290, 23.204029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266523, 29.895374, 23.126888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.516680, 30.077274, 23.380531>,  <29.666773, 30.186415, 23.532717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.516680, 30.077274, 23.380531>,  <29.266523, 29.895374, 23.126888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516680, 30.077274, 23.380531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101203, 0.853037, -0.511943,
		-0.773721, 0.255991, 0.579503,
		0.625391, 0.454749, 0.634106,
		29.704296, 30.213699, 23.570763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971064, 30.472500, 23.278078>,  <29.266523, 29.895374, 23.126888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971064, 30.472500, 23.278078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.348907, 30.567204, 23.368988>,  <29.575615, 30.624025, 23.423534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.348907, 30.567204, 23.368988>,  <28.971064, 30.472500, 23.278078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348907, 30.567204, 23.368988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113614, 0.885596, -0.450346,
		-0.307898, 0.399580, 0.863443,
		0.944611, 0.236760, 0.227275,
		29.632292, 30.638231, 23.437170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888943, 31.135548, 23.399979>,  <28.971064, 30.472500, 23.278078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888943, 31.135548, 23.399979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.283878, 31.087624, 23.358402>,  <29.520840, 31.058868, 23.333456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.283878, 31.087624, 23.358402>,  <28.888943, 31.135548, 23.399979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283878, 31.087624, 23.358402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038566, 0.816983, -0.575370,
		0.153855, 0.564078, 0.811261,
		0.987341, -0.119811, -0.103942,
		29.580080, 31.051680, 23.327219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260622, 31.151070, 23.992075>,  <28.888943, 31.135548, 23.399979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260622, 31.151070, 23.992075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.864948, 31.178120, 23.940018>,  <27.627544, 31.194349, 23.908783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.864948, 31.178120, 23.940018>,  <28.260622, 31.151070, 23.992075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864948, 31.178120, 23.940018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141535, -0.672768, 0.726190,
		-0.038449, 0.736757, 0.675064,
		-0.989186, 0.067624, -0.130144,
		27.568192, 31.198406, 23.900974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929806, 31.074409, 24.752365>,  <28.260622, 31.151070, 23.992075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929806, 31.074409, 24.752365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.666565, 30.983433, 24.465263>,  <27.508621, 30.928846, 24.293003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.666565, 30.983433, 24.465263>,  <27.929806, 31.074409, 24.752365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666565, 30.983433, 24.465263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248615, -0.834174, 0.492284,
		-0.710698, 0.502418, 0.492427,
		-0.658103, -0.227441, -0.717755,
		27.469133, 30.915201, 24.249937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386311, 30.928375, 25.093699>,  <27.929806, 31.074409, 24.752365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386311, 30.928375, 25.093699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.342442, 30.754692, 24.736053>,  <27.316120, 30.650482, 24.521467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.342442, 30.754692, 24.736053>,  <27.386311, 30.928375, 25.093699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342442, 30.754692, 24.736053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332423, -0.831717, 0.444681,
		-0.936732, 0.345992, -0.053124,
		-0.109672, -0.434207, -0.894112,
		27.309540, 30.624430, 24.467819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721031, 30.590788, 25.121378>,  <27.386311, 30.928375, 25.093699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721031, 30.590788, 25.121378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.882917, 30.428413, 24.793617>,  <26.980049, 30.330990, 24.596960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.882917, 30.428413, 24.793617>,  <26.721031, 30.590788, 25.121378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882917, 30.428413, 24.793617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390617, -0.886947, 0.246463,
		-0.826814, 0.220325, -0.517529,
		0.404718, -0.405935, -0.819403,
		27.004333, 30.306633, 24.547796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205770, 30.360592, 24.751047>,  <26.721031, 30.590788, 25.121378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205770, 30.360592, 24.751047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.524925, 30.142567, 24.648064>,  <26.716417, 30.011751, 24.586273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.524925, 30.142567, 24.648064>,  <26.205770, 30.360592, 24.751047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524925, 30.142567, 24.648064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479456, -0.832695, 0.277023,
		-0.365380, -0.097592, -0.925728,
		0.797885, -0.545064, -0.257459,
		26.764290, 29.979048, 24.570826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936150, 29.924366, 24.355722>,  <26.205770, 30.360592, 24.751047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936150, 29.924366, 24.355722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.279604, 29.745979, 24.456806>,  <26.485676, 29.638948, 24.517456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.279604, 29.745979, 24.456806>,  <25.936150, 29.924366, 24.355722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279604, 29.745979, 24.456806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478396, -0.874247, 0.082641,
		0.184075, -0.191854, -0.964007,
		0.858635, -0.445965, 0.252709,
		26.537195, 29.612190, 24.532619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945997, 29.312544, 23.923824>,  <25.936150, 29.924366, 24.355722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945997, 29.312544, 23.923824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.195129, 29.234455, 24.226868>,  <26.344608, 29.187603, 24.408693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.195129, 29.234455, 24.226868>,  <25.945997, 29.312544, 23.923824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195129, 29.234455, 24.226868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470152, -0.867404, 0.162998,
		0.625334, -0.457711, -0.632027,
		0.622829, -0.195221, 0.757611,
		26.381977, 29.175888, 24.454151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085066, 28.662092, 23.950720>,  <25.945997, 29.312544, 23.923824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085066, 28.662092, 23.950720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.237013, 28.731525, 24.314163>,  <26.328182, 28.773186, 24.532228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.237013, 28.731525, 24.314163>,  <26.085066, 28.662092, 23.950720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237013, 28.731525, 24.314163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236427, -0.931393, 0.276783,
		0.894316, -0.319960, -0.312767,
		0.379869, 0.173585, 0.908607,
		26.350973, 28.783602, 24.586746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505337, 28.169765, 24.025560>,  <26.085066, 28.662092, 23.950720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505337, 28.169765, 24.025560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.411350, 28.305641, 24.389847>,  <26.354959, 28.387167, 24.608418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.411350, 28.305641, 24.389847>,  <26.505337, 28.169765, 24.025560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411350, 28.305641, 24.389847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008613, -0.936182, 0.351411,
		0.971966, 0.090413, 0.217044,
		-0.234965, 0.339690, 0.910715,
		26.340860, 28.407549, 24.663061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910425, 27.803932, 24.453714>,  <26.505337, 28.169765, 24.025560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910425, 27.803932, 24.453714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.598253, 27.912575, 24.678982>,  <26.410950, 27.977760, 24.814142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.598253, 27.912575, 24.678982>,  <26.910425, 27.803932, 24.453714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598253, 27.912575, 24.678982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061730, -0.929789, 0.362880,
		0.622187, 0.248439, 0.742403,
		-0.780431, 0.271608, 0.563166,
		26.364124, 27.994057, 24.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029732, 27.608877, 25.150806>,  <26.910425, 27.803932, 24.453714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029732, 27.608877, 25.150806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.632404, 27.646370, 25.123882>,  <26.394007, 27.668865, 25.107729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.632404, 27.646370, 25.123882>,  <27.029732, 27.608877, 25.150806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632404, 27.646370, 25.123882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113174, -0.905176, 0.409692,
		-0.022526, 0.414573, 0.909737,
		-0.993320, 0.093730, -0.067309,
		26.334408, 27.674488, 25.103689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847862, 27.550354, 25.775053>,  <27.029732, 27.608877, 25.150806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847862, 27.550354, 25.775053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.533934, 27.447403, 25.549553>,  <26.345577, 27.385632, 25.414253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.533934, 27.447403, 25.549553>,  <26.847862, 27.550354, 25.775053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533934, 27.447403, 25.549553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012904, -0.902695, 0.430088,
		-0.619588, 0.344817, 0.705133,
		-0.784821, -0.257379, -0.563748,
		26.298487, 27.370190, 25.380428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329508, 27.230730, 26.188776>,  <26.847862, 27.550354, 25.775053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329508, 27.230730, 26.188776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.210732, 27.095436, 25.831581>,  <26.139465, 27.014259, 25.617264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.210732, 27.095436, 25.831581>,  <26.329508, 27.230730, 26.188776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210732, 27.095436, 25.831581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001017, -0.935053, 0.354507,
		-0.954895, 0.106176, 0.277312,
		-0.296941, -0.338235, -0.892986,
		26.121649, 26.993965, 25.563686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663464, 26.978544, 26.301395>,  <26.329508, 27.230730, 26.188776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663464, 26.978544, 26.301395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.840227, 26.809727, 25.984764>,  <25.946285, 26.708437, 25.794785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.840227, 26.809727, 25.984764>,  <25.663464, 26.978544, 26.301395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840227, 26.809727, 25.984764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039950, -0.872280, 0.487373,
		-0.896173, -0.246995, -0.368603,
		0.441904, -0.422044, -0.791580,
		25.972799, 26.683113, 25.747290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415110, 26.219885, 26.331913>,  <25.663464, 26.978544, 26.301395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415110, 26.219885, 26.331913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.737997, 26.211258, 26.095970>,  <25.931730, 26.206081, 25.954405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.737997, 26.211258, 26.095970>,  <25.415110, 26.219885, 26.331913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737997, 26.211258, 26.095970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193806, -0.934244, 0.299379,
		-0.557528, -0.355983, -0.749959,
		0.807219, -0.021566, -0.589859,
		25.980162, 26.204788, 25.919012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404005, 25.581160, 26.154411>,  <25.415110, 26.219885, 26.331913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404005, 25.581160, 26.154411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.783531, 25.685089, 26.082592>,  <26.011248, 25.747448, 26.039501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.783531, 25.685089, 26.082592>,  <25.404005, 25.581160, 26.154411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783531, 25.685089, 26.082592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314407, -0.830912, 0.459057,
		-0.029915, -0.492013, -0.870074,
		0.948817, 0.259825, -0.179549,
		26.068176, 25.763037, 26.028727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774307, 24.942814, 26.002163>,  <25.404005, 25.581160, 26.154411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774307, 24.942814, 26.002163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.068308, 25.197559, 26.095268>,  <26.244707, 25.350407, 26.151133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.068308, 25.197559, 26.095268>,  <25.774307, 24.942814, 26.002163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068308, 25.197559, 26.095268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444154, -0.711572, 0.544420,
		0.512351, -0.296765, -0.805871,
		0.734999, 0.636865, 0.232765,
		26.288807, 25.388618, 26.165098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332474, 24.509779, 25.895506>,  <25.774307, 24.942814, 26.002163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332474, 24.509779, 25.895506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.406382, 24.818913, 26.138351>,  <26.450727, 25.004393, 26.284060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.406382, 24.818913, 26.138351>,  <26.332474, 24.509779, 25.895506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406382, 24.818913, 26.138351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690048, -0.541884, 0.479787,
		0.699780, 0.330287, -0.633418,
		0.184772, 0.772834, 0.607113,
		26.461813, 25.050762, 26.320486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.596844, 24.579126, 26.072361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.320934, 24.740498, 26.312847>,  <27.155388, 24.837320, 26.457138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.320934, 24.740498, 26.312847>,  <27.596844, 24.579126, 26.072361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320934, 24.740498, 26.312847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242354, -0.653824, 0.716783,
		0.682258, 0.640126, 0.353219,
		-0.689775, 0.403427, 0.601214,
		27.114002, 24.861526, 26.493212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972528, 24.800705, 26.694952>,  <27.596844, 24.579126, 26.072361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972528, 24.800705, 26.694952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.589642, 24.770428, 26.806671>,  <27.359909, 24.752260, 26.873703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.589642, 24.770428, 26.806671>,  <27.972528, 24.800705, 26.694952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589642, 24.770428, 26.806671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256723, -0.667518, 0.698937,
		0.133532, 0.740736, 0.658391,
		-0.957216, -0.075694, 0.279300,
		27.302477, 24.747719, 26.890461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921122, 25.051762, 27.395563>,  <27.972528, 24.800705, 26.694952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921122, 25.051762, 27.395563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.621502, 24.798046, 27.319035>,  <27.441730, 24.645817, 27.273117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.621502, 24.798046, 27.319035>,  <27.921122, 25.051762, 27.395563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621502, 24.798046, 27.319035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090957, -0.384499, 0.918634,
		-0.656243, 0.670698, 0.345701,
		-0.749047, -0.634291, -0.191320,
		27.396788, 24.607759, 27.261639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796743, 24.932337, 27.997082>,  <27.921122, 25.051762, 27.395563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796743, 24.932337, 27.997082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.563721, 24.662037, 27.816422>,  <27.423906, 24.499857, 27.708025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.563721, 24.662037, 27.816422>,  <27.796743, 24.932337, 27.997082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563721, 24.662037, 27.816422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000399, -0.555915, 0.831239,
		-0.812789, 0.484064, 0.324123,
		-0.582558, -0.675751, -0.451648,
		27.388954, 24.459311, 27.680927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639254, 24.558090, 28.674784>,  <27.796743, 24.932337, 27.997082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639254, 24.558090, 28.674784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488617, 24.350662, 28.367729>,  <27.398235, 24.226206, 28.183496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.488617, 24.350662, 28.367729>,  <27.639254, 24.558090, 28.674784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488617, 24.350662, 28.367729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091425, -0.803791, 0.587844,
		-0.921857, 0.291558, 0.255290,
		-0.376591, -0.518569, -0.767636,
		27.375639, 24.195091, 28.137438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779533, 24.402430, 28.706825>,  <27.639254, 24.558090, 28.674784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779533, 24.402430, 28.706825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.983501, 24.130581, 28.495888>,  <27.105883, 23.967472, 28.369326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.983501, 24.130581, 28.495888>,  <26.779533, 24.402430, 28.706825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983501, 24.130581, 28.495888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298835, -0.714807, 0.632257,
		-0.806646, -0.164812, -0.567590,
		0.509921, -0.679624, -0.527345,
		27.136478, 23.926693, 28.337685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324654, 23.912491, 28.636673>,  <26.779533, 24.402430, 28.706825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324654, 23.912491, 28.636673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671370, 23.730972, 28.553970>,  <26.879398, 23.622061, 28.504349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671370, 23.730972, 28.553970>,  <26.324654, 23.912491, 28.636673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671370, 23.730972, 28.553970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321761, -0.825699, 0.463347,
		-0.380982, -0.335098, -0.861720,
		0.866789, -0.453795, -0.206755,
		26.931406, 23.594833, 28.491943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135666, 23.307714, 28.400930>,  <26.324654, 23.912491, 28.636673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135666, 23.307714, 28.400930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.520933, 23.241570, 28.485744>,  <26.752094, 23.201883, 28.536633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.520933, 23.241570, 28.485744>,  <26.135666, 23.307714, 28.400930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520933, 23.241570, 28.485744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229518, -0.916408, 0.327899,
		0.140088, -0.364489, -0.920610,
		0.963170, -0.165362, 0.212035,
		26.809885, 23.191961, 28.549355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226500, 22.572449, 28.250566>,  <26.135666, 23.307714, 28.400930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226500, 22.572449, 28.250566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.541958, 22.654621, 28.482372>,  <26.731234, 22.703924, 28.621456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.541958, 22.654621, 28.482372>,  <26.226500, 22.572449, 28.250566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541958, 22.654621, 28.482372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117393, -0.874882, 0.469893,
		0.603536, -0.438611, -0.665856,
		0.788646, 0.205430, 0.579513,
		26.778551, 22.716249, 28.656225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681705, 21.975647, 28.181753>,  <26.226500, 22.572449, 28.250566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681705, 21.975647, 28.181753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763168, 22.152969, 28.530926>,  <26.812046, 22.259363, 28.740429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763168, 22.152969, 28.530926>,  <26.681705, 21.975647, 28.181753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763168, 22.152969, 28.530926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034593, -0.894317, 0.446095,
		0.978431, -0.060653, -0.197468,
		0.203656, 0.443304, 0.872929,
		26.824265, 22.285961, 28.792805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155100, 21.439354, 28.471270>,  <26.681705, 21.975647, 28.181753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155100, 21.439354, 28.471270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.063524, 21.663139, 28.789913>,  <27.008579, 21.797411, 28.981100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.063524, 21.663139, 28.789913>,  <27.155100, 21.439354, 28.471270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063524, 21.663139, 28.789913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111184, -0.828017, 0.549569,
		0.967070, 0.037248, 0.251770,
		-0.228940, 0.559464, 0.796610,
		26.994843, 21.830978, 29.028896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688450, 21.381741, 28.921938>,  <27.155100, 21.439354, 28.471270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688450, 21.381741, 28.921938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.361284, 21.492538, 29.123646>,  <27.164984, 21.559017, 29.244671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.361284, 21.492538, 29.123646>,  <27.688450, 21.381741, 28.921938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361284, 21.492538, 29.123646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114340, -0.780733, 0.614315,
		0.563861, 0.560117, 0.606902,
		-0.817916, 0.276995, 0.504268,
		27.115910, 21.575638, 29.274927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810482, 21.203836, 29.528475>,  <27.688450, 21.381741, 28.921938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810482, 21.203836, 29.528475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414803, 21.248363, 29.566628>,  <27.177395, 21.275080, 29.589520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414803, 21.248363, 29.566628>,  <27.810482, 21.203836, 29.528475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414803, 21.248363, 29.566628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012885, -0.714175, 0.699849,
		0.146023, 0.691059, 0.707894,
		-0.989197, 0.111316, 0.095382,
		27.118044, 21.281757, 29.595242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679880, 21.443340, 30.175097>,  <27.810482, 21.203836, 29.528475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679880, 21.443340, 30.175097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.347347, 21.258221, 30.051998>,  <27.147827, 21.147150, 29.978140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.347347, 21.258221, 30.051998>,  <27.679880, 21.443340, 30.175097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347347, 21.258221, 30.051998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185717, -0.753212, 0.631016,
		-0.523831, 0.467430, 0.712117,
		-0.831331, -0.462798, -0.307746,
		27.097948, 21.119381, 29.959675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312292, 21.152122, 30.785151>,  <27.679880, 21.443340, 30.175097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312292, 21.152122, 30.785151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.163931, 20.962109, 30.465958>,  <27.074915, 20.848101, 30.274443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.163931, 20.962109, 30.465958>,  <27.312292, 21.152122, 30.785151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163931, 20.962109, 30.465958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109895, -0.830783, 0.545640,
		-0.922147, 0.290074, 0.255936,
		-0.370903, -0.475034, -0.797981,
		27.052660, 20.819599, 30.226562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711172, 20.854322, 31.017632>,  <27.312292, 21.152122, 30.785151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711172, 20.854322, 31.017632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.829943, 20.647675, 30.696400>,  <26.901205, 20.523685, 30.503660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.829943, 20.647675, 30.696400>,  <26.711172, 20.854322, 31.017632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829943, 20.647675, 30.696400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050380, -0.848315, 0.527089,
		-0.953570, -0.116047, -0.277914,
		0.296926, -0.516618, -0.803082,
		26.919022, 20.492689, 30.455475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435047, 20.239708, 31.130215>,  <26.711172, 20.854322, 31.017632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435047, 20.239708, 31.130215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.700937, 20.156254, 30.843269>,  <26.860472, 20.106180, 30.671103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.700937, 20.156254, 30.843269>,  <26.435047, 20.239708, 31.130215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700937, 20.156254, 30.843269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005269, -0.961499, 0.274758,
		-0.747071, -0.178859, -0.640230,
		0.664724, -0.208637, -0.717365,
		26.900354, 20.093662, 30.628059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161491, 19.657021, 30.954107>,  <26.435047, 20.239708, 31.130215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161491, 19.657021, 30.954107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.530846, 19.665535, 30.800793>,  <26.752459, 19.670643, 30.708805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.530846, 19.665535, 30.800793>,  <26.161491, 19.657021, 30.954107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530846, 19.665535, 30.800793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147833, -0.941170, 0.303882,
		-0.354268, -0.337262, -0.872209,
		0.923385, 0.021286, -0.383285,
		26.807861, 19.671921, 30.685808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302509, 19.021664, 30.575335>,  <26.161491, 19.657021, 30.954107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302509, 19.021664, 30.575335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.665695, 19.150414, 30.682659>,  <26.883608, 19.227663, 30.747055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.665695, 19.150414, 30.682659>,  <26.302509, 19.021664, 30.575335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665695, 19.150414, 30.682659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121430, -0.814929, 0.566697,
		0.401063, -0.481960, -0.779014,
		0.907966, 0.321877, 0.268313,
		26.938086, 19.246977, 30.763153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670206, 18.500385, 30.518538>,  <26.302509, 19.021664, 30.575335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670206, 18.500385, 30.518538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.846638, 18.740883, 30.785057>,  <26.952497, 18.885181, 30.944969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.846638, 18.740883, 30.785057>,  <26.670206, 18.500385, 30.518538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846638, 18.740883, 30.785057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001240, -0.742827, 0.669482,
		0.897467, -0.294468, -0.328392,
		0.441080, 0.601245, 0.666298,
		26.978962, 18.921257, 30.984947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189793, 18.026752, 30.925966>,  <26.670206, 18.500385, 30.518538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189793, 18.026752, 30.925966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.135410, 18.353405, 31.150333>,  <27.102781, 18.549397, 31.284954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.135410, 18.353405, 31.150333>,  <27.189793, 18.026752, 30.925966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135410, 18.353405, 31.150333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083751, -0.554676, 0.827840,
		0.987168, 0.159529, 0.007019,
		-0.135958, 0.816630, 0.560920,
		27.094624, 18.598394, 31.318609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775116, 18.072166, 31.261673>,  <27.189793, 18.026752, 30.925966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775116, 18.072166, 31.261673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.479731, 18.233776, 31.477612>,  <27.302500, 18.330742, 31.607176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.479731, 18.233776, 31.477612>,  <27.775116, 18.072166, 31.261673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479731, 18.233776, 31.477612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203568, -0.629675, 0.749713,
		0.642830, 0.663532, 0.382746,
		-0.738464, 0.404023, 0.539848,
		27.258192, 18.354982, 31.639566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961996, 18.352308, 32.071007>,  <27.775116, 18.072166, 31.261673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961996, 18.352308, 32.071007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.583990, 18.237717, 32.007923>,  <27.357185, 18.168962, 31.970072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.583990, 18.237717, 32.007923>,  <27.961996, 18.352308, 32.071007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583990, 18.237717, 32.007923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013558, -0.447532, 0.894165,
		-0.326742, 0.847139, 0.419041,
		-0.945017, -0.286480, -0.157713,
		27.300486, 18.151773, 31.960609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776787, 18.960869, 32.465473>,  <27.961996, 18.352308, 32.071007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776787, 18.960869, 32.465473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.019711, 19.225639, 32.289734>,  <28.165464, 19.384502, 32.184292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.019711, 19.225639, 32.289734>,  <27.776787, 18.960869, 32.465473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019711, 19.225639, 32.289734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780396, 0.600646, -0.173799,
		0.148850, 0.448415, 0.881344,
		0.607310, 0.661928, -0.439348,
		28.201904, 19.424217, 32.157928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217548, 18.540464, 32.987621>,  <27.776787, 18.960869, 32.465473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217548, 18.540464, 32.987621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565540, 18.343452, 32.996986>,  <28.774336, 18.225246, 33.002605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565540, 18.343452, 32.996986>,  <28.217548, 18.540464, 32.987621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565540, 18.343452, 32.996986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466844, 0.807476, -0.360609,
		0.158708, 0.324651, 0.932423,
		0.869982, -0.492528, 0.023409,
		28.826534, 18.195694, 33.004009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616331, 19.082758, 33.136852>,  <28.217548, 18.540464, 32.987621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616331, 19.082758, 33.136852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884670, 18.814838, 33.009521>,  <29.045673, 18.654087, 32.933125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884670, 18.814838, 33.009521>,  <28.616331, 19.082758, 33.136852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884670, 18.814838, 33.009521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483106, 0.720380, -0.497656,
		0.562646, 0.180066, 0.806849,
		0.670849, -0.669798, -0.318328,
		29.085924, 18.613899, 32.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199112, 19.354851, 33.363743>,  <28.616331, 19.082758, 33.136852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199112, 19.354851, 33.363743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259129, 19.106255, 33.056175>,  <29.295137, 18.957098, 32.871635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259129, 19.106255, 33.056175>,  <29.199112, 19.354851, 33.363743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259129, 19.106255, 33.056175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485682, 0.723748, -0.490206,
		0.861163, -0.299901, 0.410436,
		0.150039, -0.621488, -0.768922,
		29.304140, 18.919807, 32.825500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918760, 19.508011, 33.143841>,  <29.199112, 19.354851, 33.363743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918760, 19.508011, 33.143841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.765478, 19.296112, 32.841179>,  <29.673510, 19.168974, 32.659584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.765478, 19.296112, 32.841179>,  <29.918760, 19.508011, 33.143841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765478, 19.296112, 32.841179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295558, 0.705791, -0.643820,
		0.875100, -0.470350, -0.113893,
		-0.383206, -0.529745, -0.756653,
		29.650517, 19.137188, 32.614182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496136, 19.418783, 32.735413>,  <29.918760, 19.508011, 33.143841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496136, 19.418783, 32.735413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149166, 19.410275, 32.536568>,  <29.940985, 19.405170, 32.417259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149166, 19.410275, 32.536568>,  <30.496136, 19.418783, 32.735413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149166, 19.410275, 32.536568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299521, 0.775469, -0.555818,
		0.397320, -0.631027, -0.666290,
		-0.867424, -0.021270, -0.497115,
		29.888939, 19.403894, 32.387432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723999, 19.699642, 32.085823>,  <30.496136, 19.418783, 32.735413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723999, 19.699642, 32.085823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.326071, 19.686016, 32.047516>,  <30.087315, 19.677839, 32.024532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.326071, 19.686016, 32.047516>,  <30.723999, 19.699642, 32.085823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326071, 19.686016, 32.047516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035022, 0.769582, -0.637587,
		0.095418, -0.637638, -0.764404,
		-0.994821, -0.034067, -0.095763,
		30.027624, 19.675797, 32.018787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583990, 19.851383, 31.453892>,  <30.723999, 19.699642, 32.085823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583990, 19.851383, 31.453892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198240, 19.878754, 31.556110>,  <29.966791, 19.895176, 31.617441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198240, 19.878754, 31.556110>,  <30.583990, 19.851383, 31.453892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198240, 19.878754, 31.556110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137259, 0.696363, -0.704442,
		-0.226154, -0.714421, -0.662161,
		-0.964372, 0.068425, 0.255546,
		29.908928, 19.899281, 31.632774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272337, 19.762810, 30.813635>,  <30.583990, 19.851383, 31.453892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272337, 19.762810, 30.813635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041630, 19.969177, 31.066986>,  <29.903206, 20.092999, 31.218996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041630, 19.969177, 31.066986>,  <30.272337, 19.762810, 30.813635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041630, 19.969177, 31.066986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072593, 0.739897, -0.668792,
		-0.813677, -0.431716, -0.389295,
		-0.576767, 0.515921, 0.633377,
		29.868599, 20.123953, 31.257000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519014, 19.944658, 30.553303>,  <30.272337, 19.762810, 30.813635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519014, 19.944658, 30.553303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611763, 20.214432, 30.833694>,  <29.667412, 20.376295, 31.001930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611763, 20.214432, 30.833694>,  <29.519014, 19.944658, 30.553303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611763, 20.214432, 30.833694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148337, 0.736707, -0.659741,
		-0.961370, 0.048993, 0.270864,
		0.231870, 0.674434, 0.700981,
		29.681324, 20.416761, 31.043989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850405, 20.393957, 30.695965>,  <29.519014, 19.944658, 30.553303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850405, 20.393957, 30.695965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175486, 20.591255, 30.820045>,  <29.370535, 20.709635, 30.894493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175486, 20.591255, 30.820045>,  <28.850405, 20.393957, 30.695965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175486, 20.591255, 30.820045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283314, 0.799708, -0.529340,
		-0.509166, 0.342311, 0.789666,
		0.812702, 0.493245, 0.310202,
		29.419296, 20.739229, 30.913107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496817, 20.929388, 30.908295>,  <28.850405, 20.393957, 30.695965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496817, 20.929388, 30.908295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.875849, 21.029335, 30.828640>,  <29.103268, 21.089304, 30.780848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.875849, 21.029335, 30.828640>,  <28.496817, 20.929388, 30.908295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875849, 21.029335, 30.828640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319304, 0.763203, -0.561754,
		0.011616, 0.595892, 0.802981,
		0.947581, 0.249870, -0.199136,
		29.160124, 21.104296, 30.768900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427643, 21.586464, 30.834682>,  <28.496817, 20.929388, 30.908295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427643, 21.586464, 30.834682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.804419, 21.539280, 30.708931>,  <29.030485, 21.510969, 30.633480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.804419, 21.539280, 30.708931>,  <28.427643, 21.586464, 30.834682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804419, 21.539280, 30.708931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059532, 0.862764, -0.502089,
		0.330460, 0.491654, 0.805650,
		0.941940, -0.117958, -0.314379,
		29.087000, 21.503893, 30.614616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727585, 22.212383, 30.873510>,  <28.427643, 21.586464, 30.834682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727585, 22.212383, 30.873510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.976988, 22.019924, 30.627022>,  <29.126631, 21.904448, 30.479128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.976988, 22.019924, 30.627022>,  <28.727585, 22.212383, 30.873510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976988, 22.019924, 30.627022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056462, 0.813849, -0.578327,
		0.779774, 0.325799, 0.534609,
		0.623509, -0.481150, -0.616223,
		29.164042, 21.875580, 30.442154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371639, 22.556257, 30.725742>,  <28.727585, 22.212383, 30.873510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371639, 22.556257, 30.725742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333773, 22.317165, 30.407307>,  <29.311052, 22.173710, 30.216246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333773, 22.317165, 30.407307>,  <29.371639, 22.556257, 30.725742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333773, 22.317165, 30.407307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131403, 0.785181, -0.605165,
		0.986799, -0.161897, 0.004214,
		-0.094666, -0.597730, -0.796089,
		29.305372, 22.137846, 30.168480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954193, 22.805479, 30.376375>,  <29.371639, 22.556257, 30.725742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954193, 22.805479, 30.376375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709942, 22.604900, 30.131203>,  <29.563391, 22.484552, 29.984098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709942, 22.604900, 30.131203>,  <29.954193, 22.805479, 30.376375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709942, 22.604900, 30.131203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111538, 0.711810, -0.693459,
		0.784024, -0.491810, -0.378720,
		-0.610627, -0.501447, -0.612932,
		29.526752, 22.454466, 29.947323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329720, 22.914726, 29.746367>,  <29.954193, 22.805479, 30.376375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329720, 22.914726, 29.746367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.963764, 22.795193, 29.637791>,  <29.744190, 22.723473, 29.572645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.963764, 22.795193, 29.637791>,  <30.329720, 22.914726, 29.746367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963764, 22.795193, 29.637791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057138, 0.569745, -0.819833,
		0.399643, -0.765565, -0.504179,
		-0.914888, -0.298832, -0.271438,
		29.689299, 22.705544, 29.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362331, 22.724911, 28.984257>,  <30.329720, 22.914726, 29.746367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362331, 22.724911, 28.984257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985294, 22.810776, 29.086582>,  <29.759071, 22.862295, 29.147978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.985294, 22.810776, 29.086582>,  <30.362331, 22.724911, 28.984257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985294, 22.810776, 29.086582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063556, 0.636715, -0.768475,
		-0.327841, -0.740618, -0.586520,
		-0.942592, 0.214661, 0.255812,
		29.702517, 22.875174, 29.163326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995701, 22.652199, 28.361889>,  <30.362331, 22.724911, 28.984257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995701, 22.652199, 28.361889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.789083, 22.888859, 28.609482>,  <29.665113, 23.030855, 28.758038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.789083, 22.888859, 28.609482>,  <29.995701, 22.652199, 28.361889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789083, 22.888859, 28.609482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136083, 0.656976, -0.741528,
		-0.845379, -0.467262, -0.258842,
		-0.516541, 0.591648, 0.618980,
		29.634121, 23.066353, 28.795176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456394, 22.890741, 27.994064>,  <29.995701, 22.652199, 28.361889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456394, 22.890741, 27.994064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495571, 23.151897, 28.294502>,  <29.519077, 23.308592, 28.474764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495571, 23.151897, 28.294502>,  <29.456394, 22.890741, 27.994064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495571, 23.151897, 28.294502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130648, 0.756625, -0.640663,
		-0.986579, -0.035382, 0.159404,
		0.097941, 0.652891, 0.751094,
		29.524954, 23.347765, 28.519831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007092, 23.336786, 27.934175>,  <29.456394, 22.890741, 27.994064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007092, 23.336786, 27.934175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258341, 23.546089, 28.164536>,  <29.409090, 23.671671, 28.302752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258341, 23.546089, 28.164536>,  <29.007092, 23.336786, 27.934175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258341, 23.546089, 28.164536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022629, 0.752095, -0.658666,
		-0.777785, 0.400691, 0.484249,
		0.628123, 0.523259, 0.575901,
		29.446777, 23.703068, 28.337305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.165091, 31.836969, 17.059072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.517601, 31.683048, 17.168823>,  <21.729107, 31.590696, 17.234674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.517601, 31.683048, 17.168823>,  <21.165091, 31.836969, 17.059072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517601, 31.683048, 17.168823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067698, 0.471793, 0.879107,
		-0.467732, -0.793309, 0.389728,
		0.881274, -0.384803, 0.274378,
		21.781982, 31.567608, 17.251137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032316, 31.511034, 17.727003>,  <21.165091, 31.836969, 17.059072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032316, 31.511034, 17.727003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.425335, 31.582676, 17.706902>,  <21.661146, 31.625662, 17.694841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.425335, 31.582676, 17.706902>,  <21.032316, 31.511034, 17.727003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425335, 31.582676, 17.706902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025262, 0.396124, 0.917850,
		0.184297, -0.900560, 0.393734,
		0.982546, 0.179103, -0.050254,
		21.720098, 31.636408, 17.691826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264853, 31.328806, 18.291901>,  <21.032316, 31.511034, 17.727003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264853, 31.328806, 18.291901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.558710, 31.578850, 18.186424>,  <21.735025, 31.728876, 18.123138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.558710, 31.578850, 18.186424>,  <21.264853, 31.328806, 18.291901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.558710, 31.578850, 18.186424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068633, 0.455149, 0.887766,
		0.674972, -0.634095, 0.377276,
		0.734644, 0.625111, -0.263693,
		21.779104, 31.766382, 18.107317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822506, 31.210039, 18.790325>,  <21.264853, 31.328806, 18.291901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822506, 31.210039, 18.790325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.880005, 31.574726, 18.636387>,  <21.914505, 31.793539, 18.544024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.880005, 31.574726, 18.636387>,  <21.822506, 31.210039, 18.790325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880005, 31.574726, 18.636387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041152, 0.383043, 0.922814,
		0.988758, -0.148489, 0.017542,
		0.143747, 0.911718, -0.384848,
		21.923128, 31.848242, 18.520933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.353661, 31.378992, 19.244143>,  <21.822506, 31.210039, 18.790325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.353661, 31.378992, 19.244143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.152719, 31.685169, 19.083275>,  <22.032156, 31.868876, 18.986753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.152719, 31.685169, 19.083275>,  <22.353661, 31.378992, 19.244143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152719, 31.685169, 19.083275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170836, 0.368085, 0.913963,
		0.847620, 0.527835, -0.054142,
		-0.502350, 0.765443, -0.402170,
		22.002014, 31.914803, 18.962624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.688839, 31.906090, 19.470959>,  <22.353661, 31.378992, 19.244143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.688839, 31.906090, 19.470959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.341236, 32.067738, 19.356754>,  <22.132675, 32.164726, 19.288231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.341236, 32.067738, 19.356754>,  <22.688839, 31.906090, 19.470959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.341236, 32.067738, 19.356754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007656, 0.587938, 0.808870,
		0.494742, 0.700727, -0.514015,
		-0.869006, 0.404117, -0.285513,
		22.080534, 32.188972, 19.271101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.754847, 32.597809, 19.583673>,  <22.688839, 31.906090, 19.470959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.754847, 32.597809, 19.583673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.358295, 32.566139, 19.541908>,  <22.120365, 32.547138, 19.516850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.358295, 32.566139, 19.541908>,  <22.754847, 32.597809, 19.583673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.358295, 32.566139, 19.541908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128758, 0.440717, 0.888364,
		-0.024318, 0.894148, -0.447111,
		-0.991378, -0.079173, -0.104411,
		22.060883, 32.542389, 19.510586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.559456, 33.231190, 19.676405>,  <22.754847, 32.597809, 19.583673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.559456, 33.231190, 19.676405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.239666, 33.000195, 19.742546>,  <22.047792, 32.861595, 19.782230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.239666, 33.000195, 19.742546>,  <22.559456, 33.231190, 19.676405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.239666, 33.000195, 19.742546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173841, 0.485921, 0.856539,
		-0.574993, 0.656038, -0.488874,
		-0.799477, -0.577490, 0.165355,
		21.999823, 32.826946, 19.792152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.001869, 33.645245, 19.874660>,  <22.559456, 33.231190, 19.676405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.001869, 33.645245, 19.874660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893661, 33.285076, 20.010933>,  <21.828737, 33.068974, 20.092697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.893661, 33.285076, 20.010933>,  <22.001869, 33.645245, 19.874660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893661, 33.285076, 20.010933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266431, 0.410075, 0.872269,
		-0.925113, 0.145198, -0.350833,
		-0.270519, -0.900420, 0.340681,
		21.812506, 33.014950, 20.113136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190186, 33.791126, 19.954569>,  <22.001869, 33.645245, 19.874660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190186, 33.791126, 19.954569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323851, 33.467777, 20.148422>,  <21.404049, 33.273769, 20.264734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323851, 33.467777, 20.148422>,  <21.190186, 33.791126, 19.954569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323851, 33.467777, 20.148422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112154, 0.476434, 0.872028,
		-0.935819, -0.345753, 0.068545,
		0.334163, -0.808372, 0.484633,
		21.424099, 33.225266, 20.293812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657717, 33.610157, 20.493429>,  <21.190186, 33.791126, 19.954569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657717, 33.610157, 20.493429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.007257, 33.453648, 20.608871>,  <21.216982, 33.359741, 20.678137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.007257, 33.453648, 20.608871>,  <20.657717, 33.610157, 20.493429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007257, 33.453648, 20.608871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079602, 0.470457, 0.878825,
		-0.479635, -0.790935, 0.379963,
		0.873850, -0.391269, 0.288608,
		21.269413, 33.336266, 20.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.594963, 33.473053, 21.210810>,  <20.657717, 33.610157, 20.493429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.594963, 33.473053, 21.210810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991726, 33.426212, 21.191189>,  <21.229784, 33.398109, 21.179417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991726, 33.426212, 21.191189>,  <20.594963, 33.473053, 21.210810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991726, 33.426212, 21.191189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091873, 0.395375, 0.913913,
		-0.087624, -0.911025, 0.402934,
		0.991908, -0.117100, -0.049054,
		21.289299, 33.391083, 21.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757690, 33.179985, 21.875732>,  <20.594963, 33.473053, 21.210810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757690, 33.179985, 21.875732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.090061, 33.343021, 21.724243>,  <21.289484, 33.440842, 21.633350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.090061, 33.343021, 21.724243>,  <20.757690, 33.179985, 21.875732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.090061, 33.343021, 21.724243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173022, 0.457641, 0.872140,
		0.528796, -0.790211, 0.309743,
		0.830926, 0.407592, -0.378723,
		21.339340, 33.465298, 21.610626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.254557, 32.995022, 22.311485>,  <20.757690, 33.179985, 21.875732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.254557, 32.995022, 22.311485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.424656, 33.316681, 22.145348>,  <21.526714, 33.509678, 22.045664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.424656, 33.316681, 22.145348>,  <21.254557, 32.995022, 22.311485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424656, 33.316681, 22.145348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180389, 0.374397, 0.909553,
		0.886919, -0.461707, 0.014152,
		0.425246, 0.804148, -0.415346,
		21.552229, 33.557926, 22.020744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777119, 33.094036, 22.681770>,  <21.254557, 32.995022, 22.311485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777119, 33.094036, 22.681770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711655, 33.445480, 22.502319>,  <21.672377, 33.656345, 22.394650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711655, 33.445480, 22.502319>,  <21.777119, 33.094036, 22.681770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711655, 33.445480, 22.502319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040762, 0.460392, 0.886779,
		0.985674, 0.126844, -0.111162,
		-0.163661, 0.878607, -0.448626,
		21.662556, 33.709061, 22.367731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.262304, 33.549347, 22.996880>,  <21.777119, 33.094036, 22.681770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.262304, 33.549347, 22.996880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.989813, 33.801918, 22.848701>,  <21.826319, 33.953461, 22.759794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.989813, 33.801918, 22.848701>,  <22.262304, 33.549347, 22.996880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.989813, 33.801918, 22.848701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168307, 0.627555, 0.760163,
		0.712462, 0.455495, -0.533781,
		-0.681227, 0.631427, -0.370446,
		21.785444, 33.991344, 22.737568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.456390, 34.199127, 23.297291>,  <22.262304, 33.549347, 22.996880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.456390, 34.199127, 23.297291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.083368, 34.283325, 23.179966>,  <21.859554, 34.333843, 23.109571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.083368, 34.283325, 23.179966>,  <22.456390, 34.199127, 23.297291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.083368, 34.283325, 23.179966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070110, 0.691388, 0.719074,
		0.354154, 0.691140, -0.630000,
		-0.932556, 0.210493, -0.293313,
		21.803602, 34.346474, 23.091972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.439911, 35.010136, 23.075867>,  <22.456390, 34.199127, 23.297291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.439911, 35.010136, 23.075867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059767, 34.903797, 23.140545>,  <21.831680, 34.839993, 23.179352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.059767, 34.903797, 23.140545>,  <22.439911, 35.010136, 23.075867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059767, 34.903797, 23.140545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078197, 0.707036, 0.702841,
		-0.301172, 0.655307, -0.692725,
		-0.950358, -0.265845, 0.161697,
		21.774660, 34.824043, 23.189054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125021, 35.601048, 23.092922>,  <22.439911, 35.010136, 23.075867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125021, 35.601048, 23.092922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.873501, 35.353680, 23.281460>,  <21.722589, 35.205257, 23.394583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.873501, 35.353680, 23.281460>,  <22.125021, 35.601048, 23.092922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873501, 35.353680, 23.281460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123077, 0.677694, 0.724971,
		-0.767766, 0.397849, -0.502246,
		-0.628798, -0.618424, 0.471344,
		21.684862, 35.168152, 23.422863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562960, 36.031132, 23.335407>,  <22.125021, 35.601048, 23.092922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562960, 36.031132, 23.335407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.566881, 35.706573, 23.569172>,  <21.569233, 35.511837, 23.709431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.566881, 35.706573, 23.569172>,  <21.562960, 36.031132, 23.335407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.566881, 35.706573, 23.569172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019368, 0.584176, 0.811396,
		-0.999764, -0.019273, -0.009989,
		0.009803, -0.811399, 0.584411,
		21.569822, 35.463154, 23.744495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939135, 36.061714, 23.659534>,  <21.562960, 36.031132, 23.335407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939135, 36.061714, 23.659534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.191294, 35.833111, 23.869667>,  <21.342590, 35.695950, 23.995747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.191294, 35.833111, 23.869667>,  <20.939135, 36.061714, 23.659534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.191294, 35.833111, 23.869667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004911, 0.673786, 0.738910,
		-0.776256, -0.468387, 0.421947,
		0.630398, -0.571512, 0.525331,
		21.380413, 35.661655, 24.027266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.306629, 36.079491, 23.500868>,  <20.939135, 36.061714, 23.659534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.306629, 36.079491, 23.500868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.924601, 36.040062, 23.389065>,  <19.695383, 36.016407, 23.321983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.924601, 36.040062, 23.389065>,  <20.306629, 36.079491, 23.500868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.924601, 36.040062, 23.389065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284230, -0.037359, -0.958028,
		0.083991, -0.994429, 0.063697,
		-0.955070, -0.098570, -0.279509,
		19.638079, 36.010490, 23.305212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.279446, 35.536552, 23.114754>,  <20.306629, 36.079491, 23.500868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.279446, 35.536552, 23.114754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.938307, 35.705242, 22.991592>,  <19.733624, 35.806454, 22.917696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.938307, 35.705242, 22.991592>,  <20.279446, 35.536552, 23.114754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938307, 35.705242, 22.991592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178620, -0.318478, -0.930949,
		-0.490663, -0.848954, 0.196285,
		-0.852845, 0.421722, -0.307905,
		19.682453, 35.831760, 22.899221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999838, 35.092716, 22.729172>,  <20.279446, 35.536552, 23.114754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999838, 35.092716, 22.729172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.831755, 35.439720, 22.622696>,  <19.730906, 35.647923, 22.558809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.831755, 35.439720, 22.622696>,  <19.999838, 35.092716, 22.729172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.831755, 35.439720, 22.622696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002682, -0.292159, -0.956366,
		-0.907424, -0.402587, 0.120441,
		-0.420208, 0.867506, -0.266192,
		19.705692, 35.699970, 22.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616825, 34.894634, 22.091827>,  <19.999838, 35.092716, 22.729172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616825, 34.894634, 22.091827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.679930, 35.289463, 22.103146>,  <19.717793, 35.526360, 22.109938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.679930, 35.289463, 22.103146>,  <19.616825, 34.894634, 22.091827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679930, 35.289463, 22.103146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032131, 0.023510, -0.999207,
		-0.986955, 0.158544, -0.028006,
		0.157759, 0.987072, 0.028298,
		19.727257, 35.585587, 22.111635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205936, 35.109314, 21.606588>,  <19.616825, 34.894634, 22.091827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205936, 35.109314, 21.606588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.468334, 35.404278, 21.670956>,  <19.625772, 35.581257, 21.709576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.468334, 35.404278, 21.670956>,  <19.205936, 35.109314, 21.606588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468334, 35.404278, 21.670956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134716, 0.095386, -0.986282,
		-0.742646, 0.668674, -0.036769,
		0.655994, 0.737412, 0.160919,
		19.665133, 35.625500, 21.719231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037472, 35.660645, 21.098234>,  <19.205936, 35.109314, 21.606588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037472, 35.660645, 21.098234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.413881, 35.714355, 21.222454>,  <19.639727, 35.746582, 21.296986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.413881, 35.714355, 21.222454>,  <19.037472, 35.660645, 21.098234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.413881, 35.714355, 21.222454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316627, -0.026011, -0.948193,
		-0.119241, 0.990603, -0.066992,
		0.941025, 0.134275, 0.310550,
		19.696190, 35.754639, 21.315619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226759, 36.172474, 20.636051>,  <19.037472, 35.660645, 21.098234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226759, 36.172474, 20.636051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.555136, 35.988796, 20.771812>,  <19.752163, 35.878590, 20.853270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.555136, 35.988796, 20.771812>,  <19.226759, 36.172474, 20.636051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555136, 35.988796, 20.771812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289478, -0.177663, -0.940552,
		0.492194, 0.870389, -0.012925,
		0.820943, -0.459193, 0.339403,
		19.801418, 35.851040, 20.873634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710117, 36.422512, 20.228502>,  <19.226759, 36.172474, 20.636051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710117, 36.422512, 20.228502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.877434, 36.089993, 20.374912>,  <19.977823, 35.890480, 20.462759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.877434, 36.089993, 20.374912>,  <19.710117, 36.422512, 20.228502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877434, 36.089993, 20.374912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341082, -0.229727, -0.911531,
		0.841840, 0.506131, 0.187448,
		0.418292, -0.831298, 0.366025,
		20.002922, 35.840603, 20.484720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349983, 36.480114, 19.890129>,  <19.710117, 36.422512, 20.228502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349983, 36.480114, 19.890129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306736, 36.103195, 20.016869>,  <20.280787, 35.877045, 20.092913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.306736, 36.103195, 20.016869>,  <20.349983, 36.480114, 19.890129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.306736, 36.103195, 20.016869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226650, -0.333687, -0.915032,
		0.967957, -0.027120, 0.249649,
		-0.108120, -0.942294, 0.316848,
		20.274300, 35.820507, 20.111923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.909290, 36.176453, 19.642313>,  <20.349983, 36.480114, 19.890129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.909290, 36.176453, 19.642313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.629961, 35.896133, 19.700584>,  <20.462364, 35.727940, 19.735548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.629961, 35.896133, 19.700584>,  <20.909290, 36.176453, 19.642313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629961, 35.896133, 19.700584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281606, -0.456097, -0.844200,
		0.658061, -0.548500, 0.515853,
		-0.698322, -0.700802, 0.145678,
		20.420464, 35.685894, 19.744287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311716, 35.619530, 19.464756>,  <20.909290, 36.176453, 19.642313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311716, 35.619530, 19.464756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.922546, 35.527866, 19.452724>,  <20.689045, 35.472870, 19.445505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.922546, 35.527866, 19.452724>,  <21.311716, 35.619530, 19.464756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922546, 35.527866, 19.452724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136444, -0.464432, -0.875035,
		0.186550, -0.855447, 0.483124,
		-0.972924, -0.229157, -0.030081,
		20.630669, 35.459118, 19.443701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335464, 34.876476, 19.250347>,  <21.311716, 35.619530, 19.464756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335464, 34.876476, 19.250347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968830, 35.009800, 19.162006>,  <20.748850, 35.089794, 19.109001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968830, 35.009800, 19.162006>,  <21.335464, 34.876476, 19.250347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968830, 35.009800, 19.162006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008568, -0.535858, -0.844265,
		-0.399746, -0.775733, 0.488304,
		-0.916586, 0.333308, -0.220854,
		20.693853, 35.109791, 19.095751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915428, 34.327366, 19.135454>,  <21.335464, 34.876476, 19.250347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915428, 34.327366, 19.135454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.742697, 34.613728, 18.915997>,  <20.639059, 34.785545, 18.784323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.742697, 34.613728, 18.915997>,  <20.915428, 34.327366, 19.135454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742697, 34.613728, 18.915997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006984, -0.610916, -0.791665,
		-0.901930, -0.338030, 0.268810,
		-0.431826, 0.715903, -0.548642,
		20.613150, 34.828499, 18.751404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429605, 33.981670, 18.728998>,  <20.915428, 34.327366, 19.135454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429605, 33.981670, 18.728998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.445463, 34.333916, 18.540127>,  <20.454979, 34.545261, 18.426804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.445463, 34.333916, 18.540127>,  <20.429605, 33.981670, 18.728998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445463, 34.333916, 18.540127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017396, -0.473087, -0.880844,
		-0.999062, 0.026708, -0.034075,
		0.039646, 0.880611, -0.472178,
		20.457357, 34.598099, 18.398474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921373, 33.933640, 18.182566>,  <20.429605, 33.981670, 18.728998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921373, 33.933640, 18.182566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.168962, 34.235996, 18.097244>,  <20.317516, 34.417412, 18.046051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.168962, 34.235996, 18.097244>,  <19.921373, 33.933640, 18.182566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.168962, 34.235996, 18.097244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120707, -0.359906, -0.925148,
		-0.776083, 0.546893, -0.314013,
		0.618971, 0.755894, -0.213303,
		20.354654, 34.462765, 18.033253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731892, 34.108730, 17.591799>,  <19.921373, 33.933640, 18.182566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731892, 34.108730, 17.591799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.103275, 34.256416, 17.608025>,  <20.326105, 34.345028, 17.617760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.103275, 34.256416, 17.608025>,  <19.731892, 34.108730, 17.591799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103275, 34.256416, 17.608025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169905, -0.325047, -0.930310,
		-0.330302, 0.870645, -0.364524,
		0.928457, 0.369218, 0.040563,
		20.381813, 34.367184, 17.620193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762865, 34.470894, 16.931440>,  <19.731892, 34.108730, 17.591799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762865, 34.470894, 16.931440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.121819, 34.367626, 17.074577>,  <20.337191, 34.305664, 17.160460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.121819, 34.367626, 17.074577>,  <19.762865, 34.470894, 16.931440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121819, 34.367626, 17.074577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228867, -0.421031, -0.877698,
		0.377258, 0.869530, -0.318739,
		0.897383, -0.258169, 0.357843,
		20.391033, 34.290176, 17.181931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302586, 34.718674, 16.417009>,  <19.762865, 34.470894, 16.931440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302586, 34.718674, 16.417009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482311, 34.437489, 16.637539>,  <20.590147, 34.268776, 16.769857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482311, 34.437489, 16.637539>,  <20.302586, 34.718674, 16.417009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482311, 34.437489, 16.637539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294717, -0.465946, -0.834288,
		0.843362, 0.537342, -0.002180,
		0.449313, -0.702964, 0.551325,
		20.617105, 34.226601, 16.802937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921410, 34.647709, 16.121220>,  <20.302586, 34.718674, 16.417009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921410, 34.647709, 16.121220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.917608, 34.317272, 16.346600>,  <20.915327, 34.119011, 16.481827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.917608, 34.317272, 16.346600>,  <20.921410, 34.647709, 16.121220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917608, 34.317272, 16.346600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318951, -0.536547, -0.781273,
		0.947723, 0.172289, 0.268583,
		-0.009502, -0.826096, 0.563450,
		20.914757, 34.069443, 16.515635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.677731, 34.297531, 16.111290>,  <20.921410, 34.647709, 16.121220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.677731, 34.297531, 16.111290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.390034, 34.029408, 16.184372>,  <21.217415, 33.868534, 16.228222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.390034, 34.029408, 16.184372>,  <21.677731, 34.297531, 16.111290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.390034, 34.029408, 16.184372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330894, -0.561732, -0.758265,
		0.610901, -0.484920, 0.625821,
		-0.719242, -0.670306, 0.182705,
		21.174261, 33.828316, 16.239183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.958191, 33.613987, 16.101980>,  <21.677731, 34.297531, 16.111290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.958191, 33.613987, 16.101980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.567261, 33.577251, 16.025661>,  <21.332703, 33.555210, 15.979870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.567261, 33.577251, 16.025661>,  <21.958191, 33.613987, 16.101980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.567261, 33.577251, 16.025661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210886, -0.503429, -0.837906,
		-0.019099, -0.859142, 0.511381,
		-0.977324, -0.091840, -0.190796,
		21.274063, 33.549698, 15.968423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.233099, 27.278599, 24.603722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560911, 27.279972, 24.832932>,  <25.757599, 27.280796, 24.970457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560911, 27.279972, 24.832932>,  <25.233099, 27.278599, 24.603722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560911, 27.279972, 24.832932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070204, 0.991847, -0.106349,
		-0.568717, 0.127385, 0.812609,
		0.819532, 0.003434, 0.573023,
		25.806770, 27.281002, 25.004839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046978, 27.806679, 25.100893>,  <25.233099, 27.278599, 24.603722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046978, 27.806679, 25.100893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444893, 27.774078, 25.076370>,  <25.683641, 27.754519, 25.061657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444893, 27.774078, 25.076370>,  <25.046978, 27.806679, 25.100893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444893, 27.774078, 25.076370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079394, 0.996192, -0.036044,
		0.064012, 0.030989, 0.997468,
		0.994786, -0.081500, -0.061308,
		25.743328, 27.749628, 25.057978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330347, 28.349791, 25.582302>,  <25.046978, 27.806679, 25.100893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330347, 28.349791, 25.582302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633471, 28.248817, 25.341637>,  <25.815346, 28.188234, 25.197237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633471, 28.248817, 25.341637>,  <25.330347, 28.349791, 25.582302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633471, 28.248817, 25.341637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245680, 0.964656, -0.095287,
		0.604454, -0.075607, 0.793044,
		0.757811, -0.252432, -0.601665,
		25.860813, 28.173088, 25.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903421, 28.703009, 25.843163>,  <25.330347, 28.349791, 25.582302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903421, 28.703009, 25.843163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039759, 28.634354, 25.473434>,  <26.121561, 28.593161, 25.251598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039759, 28.634354, 25.473434>,  <25.903421, 28.703009, 25.843163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039759, 28.634354, 25.473434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457646, 0.889127, 0.003657,
		0.821210, -0.424258, 0.381601,
		0.340843, -0.171635, -0.924320,
		26.142012, 28.582863, 25.196138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564486, 29.057920, 25.848587>,  <25.903421, 28.703009, 25.843163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564486, 29.057920, 25.848587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500517, 28.980869, 25.461327>,  <26.462135, 28.934639, 25.228970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500517, 28.980869, 25.461327>,  <26.564486, 29.057920, 25.848587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500517, 28.980869, 25.461327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589698, 0.767893, -0.250193,
		0.791632, -0.610929, -0.009210,
		-0.159923, -0.192630, -0.968152,
		26.452539, 28.923080, 25.170881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243889, 29.174751, 25.457056>,  <26.564486, 29.057920, 25.848587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243889, 29.174751, 25.457056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988028, 29.161674, 25.149868>,  <26.834511, 29.153828, 24.965555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988028, 29.161674, 25.149868>,  <27.243889, 29.174751, 25.457056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988028, 29.161674, 25.149868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540764, 0.690900, -0.479824,
		0.546277, -0.722211, -0.424257,
		-0.639652, -0.032694, -0.767969,
		26.796131, 29.151867, 24.919477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613979, 28.987309, 24.899761>,  <27.243889, 29.174751, 25.457056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613979, 28.987309, 24.899761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285490, 29.188206, 24.791435>,  <27.088396, 29.308744, 24.726440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285490, 29.188206, 24.791435>,  <27.613979, 28.987309, 24.899761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285490, 29.188206, 24.791435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555945, 0.811159, -0.181510,
		0.128511, -0.299618, -0.945364,
		-0.821224, 0.502245, -0.270815,
		27.039124, 29.338879, 24.710192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874298, 29.338661, 24.316267>,  <27.613979, 28.987309, 24.899761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874298, 29.338661, 24.316267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545559, 29.548664, 24.404751>,  <27.348316, 29.674665, 24.457842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545559, 29.548664, 24.404751>,  <27.874298, 29.338661, 24.316267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545559, 29.548664, 24.404751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406182, 0.812244, -0.418660,
		-0.399477, -0.254223, -0.880789,
		-0.821848, 0.525006, 0.221212,
		27.299004, 29.706165, 24.471115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562593, 29.615383, 23.579241>,  <27.874298, 29.338661, 24.316267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562593, 29.615383, 23.579241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421139, 29.837070, 23.880646>,  <27.336266, 29.970083, 24.061489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421139, 29.837070, 23.880646>,  <27.562593, 29.615383, 23.579241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421139, 29.837070, 23.880646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030524, 0.798299, -0.601487,
		-0.934885, -0.235707, -0.265389,
		-0.353635, 0.554221, 0.753513,
		27.315048, 30.003336, 24.106699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048269, 30.116228, 23.302828>,  <27.562593, 29.615383, 23.579241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048269, 30.116228, 23.302828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098143, 30.269211, 23.669037>,  <27.128067, 30.361000, 23.888762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098143, 30.269211, 23.669037>,  <27.048269, 30.116228, 23.302828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098143, 30.269211, 23.669037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214955, 0.911220, -0.351387,
		-0.968632, -0.152984, 0.195824,
		0.124682, 0.382458, 0.915522,
		27.135548, 30.383949, 23.943693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403442, 30.431940, 23.594002>,  <27.048269, 30.116228, 23.302828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403442, 30.431940, 23.594002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729706, 30.611553, 23.739918>,  <26.925465, 30.719320, 23.827467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729706, 30.611553, 23.739918>,  <26.403442, 30.431940, 23.594002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729706, 30.611553, 23.739918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155862, 0.777783, -0.608902,
		-0.557144, 0.439799, 0.704392,
		0.815658, 0.449033, 0.364789,
		26.974403, 30.746264, 23.849354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298525, 31.206854, 23.560656>,  <26.403442, 30.431940, 23.594002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298525, 31.206854, 23.560656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689566, 31.194603, 23.643940>,  <26.924191, 31.187252, 23.693911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689566, 31.194603, 23.643940>,  <26.298525, 31.206854, 23.560656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689566, 31.194603, 23.643940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101024, 0.936208, -0.336613,
		-0.184619, 0.350109, 0.918335,
		0.977604, -0.030629, 0.208212,
		26.982847, 31.185413, 23.706404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394831, 31.787855, 23.951195>,  <26.298525, 31.206854, 23.560656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394831, 31.787855, 23.951195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739166, 31.690662, 23.772346>,  <26.945768, 31.632347, 23.665037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739166, 31.690662, 23.772346>,  <26.394831, 31.787855, 23.951195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739166, 31.690662, 23.772346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053742, 0.917136, -0.394935,
		0.506032, 0.315946, 0.802564,
		0.860838, -0.242981, -0.447121,
		26.997417, 31.617767, 23.638210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700300, 31.926023, 24.189236>,  <26.394831, 31.787855, 23.951195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700300, 31.926023, 24.189236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754692, 31.562847, 24.030666>,  <25.787327, 31.344942, 23.935524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754692, 31.562847, 24.030666>,  <25.700300, 31.926023, 24.189236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754692, 31.562847, 24.030666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532028, -0.404472, 0.743874,
		-0.835737, 0.109756, -0.538050,
		0.135981, -0.907940, -0.396425,
		25.795486, 31.290464, 23.911739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668690, 32.737694, 24.404192>,  <25.700300, 31.926023, 24.189236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668690, 32.737694, 24.404192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525286, 33.006233, 24.663658>,  <25.439243, 33.167355, 24.819338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525286, 33.006233, 24.663658>,  <25.668690, 32.737694, 24.404192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525286, 33.006233, 24.663658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378279, -0.530780, 0.758405,
		0.853449, 0.517272, -0.063666,
		-0.358509, 0.671344, 0.648667,
		25.417732, 33.207638, 24.858257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222498, 33.049908, 24.729898>,  <25.668690, 32.737694, 24.404192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222498, 33.049908, 24.729898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886057, 33.003651, 24.941246>,  <25.684193, 32.975899, 25.068054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886057, 33.003651, 24.941246>,  <26.222498, 33.049908, 24.729898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886057, 33.003651, 24.941246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477773, -0.616753, 0.625579,
		0.253532, 0.778616, 0.574002,
		-0.841103, -0.115639, 0.528368,
		25.633726, 32.968960, 25.099756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395157, 33.094025, 25.424835>,  <26.222498, 33.049908, 24.729898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395157, 33.094025, 25.424835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041502, 32.907173, 25.420910>,  <25.829309, 32.795063, 25.418554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041502, 32.907173, 25.420910>,  <26.395157, 33.094025, 25.424835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041502, 32.907173, 25.420910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316300, -0.613865, 0.723273,
		-0.343883, 0.636368, 0.690493,
		-0.884137, -0.467124, -0.009815,
		25.776260, 32.767036, 25.417965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165861, 33.037388, 26.075953>,  <26.395157, 33.094025, 25.424835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165861, 33.037388, 26.075953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976658, 32.741478, 25.884541>,  <25.863136, 32.563931, 25.769693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976658, 32.741478, 25.884541>,  <26.165861, 33.037388, 26.075953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976658, 32.741478, 25.884541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220721, -0.625307, 0.748514,
		-0.852963, 0.248432, 0.459060,
		-0.473008, -0.739779, -0.478530,
		25.834755, 32.519543, 25.740982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698145, 32.725342, 26.645256>,  <26.165861, 33.037388, 26.075953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698145, 32.725342, 26.645256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771959, 32.452080, 26.362629>,  <25.816248, 32.288120, 26.193052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771959, 32.452080, 26.362629>,  <25.698145, 32.725342, 26.645256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771959, 32.452080, 26.362629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228170, -0.669494, 0.706906,
		-0.955973, -0.291669, 0.032330,
		0.184538, -0.683160, -0.706568,
		25.827320, 32.247131, 26.150658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608362, 32.111214, 27.090223>,  <25.698145, 32.725342, 26.645256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608362, 32.111214, 27.090223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731421, 31.954727, 26.743282>,  <25.805256, 31.860834, 26.535118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731421, 31.954727, 26.743282>,  <25.608362, 32.111214, 27.090223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731421, 31.954727, 26.743282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206907, -0.862244, 0.462305,
		-0.928732, -0.321688, -0.184321,
		0.307648, -0.391220, -0.867352,
		25.823715, 31.837360, 26.483076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358070, 31.406158, 27.146206>,  <25.608362, 32.111214, 27.090223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358070, 31.406158, 27.146206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614452, 31.366676, 26.841724>,  <25.768282, 31.342987, 26.659035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614452, 31.366676, 26.841724>,  <25.358070, 31.406158, 27.146206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614452, 31.366676, 26.841724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173115, -0.947558, 0.268636,
		-0.747802, -0.303959, -0.590255,
		0.640956, -0.098704, -0.761205,
		25.806740, 31.337065, 26.613363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243748, 30.719801, 26.741768>,  <25.358070, 31.406158, 27.146206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243748, 30.719801, 26.741768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618420, 30.854057, 26.701813>,  <25.843222, 30.934612, 26.677839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618420, 30.854057, 26.701813>,  <25.243748, 30.719801, 26.741768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618420, 30.854057, 26.701813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337492, -0.789093, 0.513256,
		0.093450, -0.514467, -0.852403,
		0.936678, 0.335643, -0.099887,
		25.899424, 30.954750, 26.671846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740900, 30.208187, 26.346142>,  <25.243748, 30.719801, 26.741768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740900, 30.208187, 26.346142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970913, 30.466606, 26.546925>,  <26.108921, 30.621658, 26.667395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970913, 30.466606, 26.546925>,  <25.740900, 30.208187, 26.346142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970913, 30.466606, 26.546925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463018, -0.762815, 0.451363,
		0.674503, -0.027132, -0.737774,
		0.575031, 0.646048, 0.501958,
		26.143423, 30.660419, 26.697512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314745, 29.856026, 26.383995>,  <25.740900, 30.208187, 26.346142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314745, 29.856026, 26.383995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359837, 30.128613, 26.673241>,  <26.386892, 30.292164, 26.846788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359837, 30.128613, 26.673241>,  <26.314745, 29.856026, 26.383995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359837, 30.128613, 26.673241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456391, -0.681956, 0.571527,
		0.882609, 0.265595, -0.387892,
		0.112731, 0.681466, 0.723116,
		26.393656, 30.333052, 26.890175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028053, 29.764511, 26.695942>,  <26.314745, 29.856026, 26.383995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028053, 29.764511, 26.695942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810717, 29.955791, 26.971943>,  <26.680315, 30.070559, 27.137545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810717, 29.955791, 26.971943>,  <27.028053, 29.764511, 26.695942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810717, 29.955791, 26.971943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316857, -0.644307, 0.696039,
		0.777420, 0.596819, 0.198558,
		-0.543341, 0.478200, 0.690004,
		26.647715, 30.099251, 27.178944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405907, 29.668247, 27.271679>,  <27.028053, 29.764511, 26.695942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405907, 29.668247, 27.271679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036655, 29.748184, 27.403069>,  <26.815104, 29.796146, 27.481903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036655, 29.748184, 27.403069>,  <27.405907, 29.668247, 27.271679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036655, 29.748184, 27.403069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149782, -0.599905, 0.785926,
		0.354116, 0.774710, 0.523857,
		-0.923129, 0.199844, 0.328473,
		26.759716, 29.808138, 27.501610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444334, 29.676083, 28.053791>,  <27.405907, 29.668247, 27.271679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444334, 29.676083, 28.053791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054937, 29.659790, 27.963764>,  <26.821299, 29.650015, 27.909748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054937, 29.659790, 27.963764>,  <27.444334, 29.676083, 28.053791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054937, 29.659790, 27.963764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138160, -0.679481, 0.720568,
		-0.182279, 0.732562, 0.655841,
		-0.973492, -0.040733, -0.225066,
		26.762890, 29.647570, 27.896244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061707, 29.832663, 28.700125>,  <27.444334, 29.676083, 28.053791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061707, 29.832663, 28.700125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811003, 29.627018, 28.465908>,  <26.660580, 29.503632, 28.325378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811003, 29.627018, 28.465908>,  <27.061707, 29.832663, 28.700125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811003, 29.627018, 28.465908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037250, -0.730826, 0.681546,
		-0.778322, 0.448977, 0.438902,
		-0.626760, -0.514113, -0.585542,
		26.622974, 29.472784, 28.290245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870960, 30.187300, 29.199308>,  <27.061707, 29.832663, 28.700125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870960, 30.187300, 29.199308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161650, 30.212891, 29.472885>,  <27.336063, 30.228245, 29.637032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161650, 30.212891, 29.472885>,  <26.870960, 30.187300, 29.199308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161650, 30.212891, 29.472885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598069, 0.430851, -0.675782,
		-0.337910, 0.900152, 0.274849,
		0.726726, 0.063975, 0.683942,
		27.379667, 30.232082, 29.678068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186447, 30.808331, 28.953838>,  <26.870960, 30.187300, 29.199308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186447, 30.808331, 28.953838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452005, 30.636032, 29.198360>,  <27.611341, 30.532652, 29.345074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452005, 30.636032, 29.198360>,  <27.186447, 30.808331, 28.953838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452005, 30.636032, 29.198360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740573, 0.265142, -0.617456,
		0.103885, 0.862645, 0.495027,
		0.663898, -0.430747, 0.611307,
		27.651175, 30.506807, 29.381752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688667, 31.350948, 29.173878>,  <27.186447, 30.808331, 28.953838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688667, 31.350948, 29.173878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846146, 30.984970, 29.209389>,  <27.940632, 30.765383, 29.230696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846146, 30.984970, 29.209389>,  <27.688667, 31.350948, 29.173878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846146, 30.984970, 29.209389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706367, 0.239306, -0.666167,
		0.588260, 0.324978, 0.740500,
		0.393696, -0.914944, 0.088779,
		27.964254, 30.710487, 29.236023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346821, 31.446768, 29.305168>,  <27.688667, 31.350948, 29.173878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346821, 31.446768, 29.305168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371485, 31.063313, 29.194023>,  <28.386284, 30.833239, 29.127337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371485, 31.063313, 29.194023>,  <28.346821, 31.446768, 29.305168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371485, 31.063313, 29.194023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792022, 0.216407, -0.570849,
		0.607370, -0.184875, 0.772608,
		0.061662, -0.958639, -0.277864,
		28.389984, 30.775721, 29.110664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075279, 31.219454, 29.447517>,  <28.346821, 31.446768, 29.305168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075279, 31.219454, 29.447517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920563, 30.975109, 29.171188>,  <28.827732, 30.828503, 29.005390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920563, 30.975109, 29.171188>,  <29.075279, 31.219454, 29.447517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920563, 30.975109, 29.171188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824434, 0.106569, -0.555834,
		0.413159, -0.784532, 0.462396,
		-0.386793, -0.610862, -0.690825,
		28.804525, 30.791851, 28.963942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584705, 30.754419, 29.268650>,  <29.075279, 31.219454, 29.447517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584705, 30.754419, 29.268650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330236, 30.769356, 28.960392>,  <29.177555, 30.778318, 28.775436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330236, 30.769356, 28.960392>,  <29.584705, 30.754419, 29.268650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330236, 30.769356, 28.960392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769513, 0.103207, -0.630236,
		0.056004, -0.993959, -0.094390,
		-0.636170, 0.037339, -0.770645,
		29.139385, 30.780558, 28.729198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040808, 30.665009, 28.821060>,  <29.584705, 30.754419, 29.268650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040808, 30.665009, 28.821060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734793, 30.751251, 28.578331>,  <29.551184, 30.802998, 28.432693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734793, 30.751251, 28.578331>,  <30.040808, 30.665009, 28.821060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734793, 30.751251, 28.578331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636717, 0.112064, -0.762911,
		-0.096487, -0.970028, -0.223015,
		-0.765037, 0.215609, -0.606821,
		29.505281, 30.815933, 28.396284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125608, 30.232635, 28.107796>,  <30.040808, 30.665009, 28.821060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125608, 30.232635, 28.107796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908087, 30.561260, 28.039318>,  <29.777573, 30.758436, 27.998232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908087, 30.561260, 28.039318>,  <30.125608, 30.232635, 28.107796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908087, 30.561260, 28.039318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514883, 0.165538, -0.841126,
		-0.662700, -0.545554, -0.513030,
		-0.543805, 0.821564, -0.171195,
		29.744946, 30.807730, 27.987959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294008, 30.340237, 27.454885>,  <30.125608, 30.232635, 28.107796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294008, 30.340237, 27.454885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077084, 30.670719, 27.515915>,  <29.946928, 30.869009, 27.552532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077084, 30.670719, 27.515915>,  <30.294008, 30.340237, 27.454885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077084, 30.670719, 27.515915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527238, 0.476049, -0.703845,
		-0.654154, -0.301263, -0.693775,
		-0.542313, 0.826207, 0.152572,
		29.914389, 30.918581, 27.561687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946068, 30.604361, 26.723545>,  <30.294008, 30.340237, 27.454885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946068, 30.604361, 26.723545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977345, 30.915913, 26.972458>,  <29.996111, 31.102844, 27.121805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977345, 30.915913, 26.972458>,  <29.946068, 30.604361, 26.723545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977345, 30.915913, 26.972458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632425, 0.443769, -0.634907,
		-0.770665, 0.443190, -0.457884,
		0.078190, 0.778878, 0.622282,
		30.000801, 31.149576, 27.159142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849546, 31.221125, 26.261723>,  <29.946068, 30.604361, 26.723545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849546, 31.221125, 26.261723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030373, 31.347797, 26.595272>,  <30.138868, 31.423801, 26.795403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030373, 31.347797, 26.595272>,  <29.849546, 31.221125, 26.261723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030373, 31.347797, 26.595272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557542, 0.629407, -0.541289,
		-0.696263, 0.709620, 0.107971,
		0.452067, 0.316681, 0.833876,
		30.165993, 31.442802, 26.845434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562080, 31.866543, 26.396170>,  <29.849546, 31.221125, 26.261723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562080, 31.866543, 26.396170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930393, 31.831375, 26.548183>,  <30.151381, 31.810274, 26.639393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930393, 31.831375, 26.548183>,  <29.562080, 31.866543, 26.396170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930393, 31.831375, 26.548183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294879, 0.794665, -0.530616,
		-0.255350, 0.600647, 0.757640,
		0.920784, -0.087919, 0.380036,
		30.206629, 31.805000, 26.662193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.491602, 28.749073, 32.742825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.848642, 28.583912, 32.670406>,  <26.062866, 28.484816, 32.626957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.848642, 28.583912, 32.670406>,  <25.491602, 28.749073, 32.742825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848642, 28.583912, 32.670406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234565, 0.768242, -0.595637,
		0.385024, 0.489200, 0.782586,
		0.892601, -0.412902, -0.181042,
		26.116423, 28.460041, 32.616093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909863, 29.272419, 32.755646>,  <25.491602, 28.749073, 32.742825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909863, 29.272419, 32.755646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.120237, 28.986034, 32.571999>,  <26.246462, 28.814203, 32.461811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.120237, 28.986034, 32.571999>,  <25.909863, 29.272419, 32.755646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120237, 28.986034, 32.571999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459796, 0.693465, -0.554701,
		0.715527, 0.080638, 0.693916,
		0.525937, -0.715963, -0.459116,
		26.278019, 28.771246, 32.434265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434492, 29.603621, 32.576935>,  <25.909863, 29.272419, 32.755646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434492, 29.603621, 32.576935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.458561, 29.280807, 32.341961>,  <26.473001, 29.087120, 32.200977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.458561, 29.280807, 32.341961>,  <26.434492, 29.603621, 32.576935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458561, 29.280807, 32.341961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403426, 0.557958, -0.725210,
		0.913032, -0.193350, 0.359151,
		0.060172, -0.807031, -0.587436,
		26.476612, 29.038698, 32.165730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089033, 29.673565, 32.257389>,  <26.434492, 29.603621, 32.576935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089033, 29.673565, 32.257389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.889715, 29.421040, 32.019684>,  <26.770124, 29.269524, 31.877062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.889715, 29.421040, 32.019684>,  <27.089033, 29.673565, 32.257389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889715, 29.421040, 32.019684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403183, 0.438066, -0.803456,
		0.767558, -0.639954, 0.036249,
		-0.498296, -0.631313, -0.594260,
		26.740227, 29.231646, 31.841406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552198, 29.457987, 31.817554>,  <27.089033, 29.673565, 32.257389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552198, 29.457987, 31.817554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.200855, 29.395897, 31.636715>,  <26.990049, 29.358643, 31.528212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.200855, 29.395897, 31.636715>,  <27.552198, 29.457987, 31.817554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200855, 29.395897, 31.636715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372027, 0.371883, -0.850470,
		0.300140, -0.915210, -0.268899,
		-0.878358, -0.155223, -0.452100,
		26.937347, 29.349329, 31.501085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734268, 29.074955, 31.207806>,  <27.552198, 29.457987, 31.817554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734268, 29.074955, 31.207806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.370449, 29.234058, 31.159626>,  <27.152157, 29.329521, 31.130718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.370449, 29.234058, 31.159626>,  <27.734268, 29.074955, 31.207806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370449, 29.234058, 31.159626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319218, 0.483052, -0.815328,
		-0.266120, -0.780031, -0.566331,
		-0.909550, 0.397758, -0.120450,
		27.097584, 29.353386, 31.123491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561083, 28.987360, 30.567286>,  <27.734268, 29.074955, 31.207806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561083, 28.987360, 30.567286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.305462, 29.285995, 30.641277>,  <27.152088, 29.465176, 30.685673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.305462, 29.285995, 30.641277>,  <27.561083, 28.987360, 30.567286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305462, 29.285995, 30.641277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279925, 0.449749, -0.848155,
		-0.716416, -0.490238, -0.496403,
		-0.639054, 0.746587, 0.184978,
		27.113745, 29.509972, 30.696770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265503, 29.112036, 29.897333>,  <27.561083, 28.987360, 30.567286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265503, 29.112036, 29.897333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.201986, 29.449131, 30.103081>,  <27.163876, 29.651388, 30.226530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.201986, 29.449131, 30.103081>,  <27.265503, 29.112036, 29.897333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201986, 29.449131, 30.103081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360086, 0.534529, -0.764602,
		-0.919306, 0.063806, -0.388337,
		-0.158791, 0.842738, 0.514371,
		27.154348, 29.701952, 30.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808651, 29.529289, 29.494255>,  <27.265503, 29.112036, 29.897333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808651, 29.529289, 29.494255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.008104, 29.761803, 29.751461>,  <27.127777, 29.901312, 29.905785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.008104, 29.761803, 29.751461>,  <26.808651, 29.529289, 29.494255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008104, 29.761803, 29.751461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364349, 0.532551, -0.763963,
		-0.786520, 0.615221, 0.053758,
		0.498635, 0.581285, 0.643017,
		27.157696, 29.936188, 29.944366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223118, 29.667734, 29.105751>,  <26.808651, 29.529289, 29.494255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223118, 29.667734, 29.105751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.272875, 29.386791, 28.825401>,  <26.302729, 29.218225, 28.657192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.272875, 29.386791, 28.825401>,  <26.223118, 29.667734, 29.105751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272875, 29.386791, 28.825401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113448, -0.711794, 0.693166,
		-0.985726, -0.006712, -0.168223,
		0.124392, -0.702356, -0.700872,
		26.310192, 29.176085, 28.615139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650005, 29.150560, 29.138655>,  <26.223118, 29.667734, 29.105751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650005, 29.150560, 29.138655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.956839, 28.970406, 28.955906>,  <26.140940, 28.862312, 28.846256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.956839, 28.970406, 28.955906>,  <25.650005, 29.150560, 29.138655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956839, 28.970406, 28.955906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084577, -0.776924, 0.623887,
		-0.635945, -0.439934, -0.634060,
		0.767086, -0.450385, -0.456873,
		26.186964, 28.835289, 28.818844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441425, 28.514553, 29.125864>,  <25.650005, 29.150560, 29.138655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441425, 28.514553, 29.125864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.826336, 28.463127, 29.029953>,  <26.057281, 28.432272, 28.972406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.826336, 28.463127, 29.029953>,  <25.441425, 28.514553, 29.125864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826336, 28.463127, 29.029953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027810, -0.830209, 0.556758,
		-0.270646, -0.542424, -0.795316,
		0.962277, -0.128567, -0.239777,
		26.115019, 28.424557, 28.958019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491665, 27.775276, 28.906757>,  <25.441425, 28.514553, 29.125864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491665, 27.775276, 28.906757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.873428, 27.856270, 28.994488>,  <26.102486, 27.904865, 29.047125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.873428, 27.856270, 28.994488>,  <25.491665, 27.775276, 28.906757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873428, 27.856270, 28.994488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101016, -0.910492, 0.400999,
		0.280889, -0.360562, -0.889436,
		0.954409, 0.202484, 0.219325,
		26.159752, 27.917015, 29.060286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798594, 27.280542, 28.614344>,  <25.491665, 27.775276, 28.906757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798594, 27.280542, 28.614344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.054123, 27.414516, 28.891392>,  <26.207439, 27.494902, 29.057621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.054123, 27.414516, 28.891392>,  <25.798594, 27.280542, 28.614344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054123, 27.414516, 28.891392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094463, -0.927598, 0.361439,
		0.763533, -0.165468, -0.624210,
		0.638822, 0.334935, 0.692621,
		26.245770, 27.514997, 29.099178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218233, 26.760141, 28.678438>,  <25.798594, 27.280542, 28.614344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218233, 26.760141, 28.678438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.288776, 26.978714, 29.005928>,  <26.331102, 27.109858, 29.202421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.288776, 26.978714, 29.005928>,  <26.218233, 26.760141, 28.678438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288776, 26.978714, 29.005928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100730, -0.837414, 0.537207,
		0.979158, -0.012271, -0.202727,
		0.176358, 0.546432, 0.818725,
		26.341684, 27.142643, 29.251545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814938, 26.511715, 29.029455>,  <26.218233, 26.760141, 28.678438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814938, 26.511715, 29.029455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.634264, 26.710743, 29.325672>,  <26.525860, 26.830160, 29.503403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.634264, 26.710743, 29.325672>,  <26.814938, 26.511715, 29.029455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634264, 26.710743, 29.325672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031068, -0.820766, 0.570419,
		0.891637, 0.280657, 0.355269,
		-0.451684, 0.497569, 0.740545,
		26.498758, 26.860014, 29.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149689, 26.289652, 29.606800>,  <26.814938, 26.511715, 29.029455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149689, 26.289652, 29.606800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.795536, 26.429150, 29.729748>,  <26.583044, 26.512848, 29.803516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.795536, 26.429150, 29.729748>,  <27.149689, 26.289652, 29.606800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795536, 26.429150, 29.729748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094398, -0.782306, 0.615700,
		0.455177, 0.516115, 0.725561,
		-0.885383, 0.348744, 0.307367,
		26.529921, 26.533773, 29.821959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159575, 26.223307, 30.449730>,  <27.149689, 26.289652, 29.606800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159575, 26.223307, 30.449730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.778641, 26.250099, 30.330685>,  <26.550081, 26.266174, 30.259258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.778641, 26.250099, 30.330685>,  <27.159575, 26.223307, 30.449730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778641, 26.250099, 30.330685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200704, -0.872282, 0.445917,
		-0.229735, 0.484394, 0.844147,
		-0.952334, 0.066981, -0.297613,
		26.492941, 26.270193, 30.241400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753719, 26.179440, 31.123945>,  <27.159575, 26.223307, 30.449730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753719, 26.179440, 31.123945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.537760, 26.047695, 30.814098>,  <26.408184, 25.968649, 30.628191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.537760, 26.047695, 30.814098>,  <26.753719, 26.179440, 31.123945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537760, 26.047695, 30.814098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051278, -0.905687, 0.420834,
		-0.840166, 0.266929, 0.472092,
		-0.539900, -0.329362, -0.774615,
		26.375790, 25.948887, 30.581715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217649, 25.850941, 31.450125>,  <26.753719, 26.179440, 31.123945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217649, 25.850941, 31.450125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.188770, 25.694729, 31.083023>,  <26.171442, 25.601002, 30.862762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.188770, 25.694729, 31.083023>,  <26.217649, 25.850941, 31.450125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188770, 25.694729, 31.083023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305136, -0.867388, 0.393104,
		-0.949568, 0.308422, -0.056540,
		-0.072200, -0.390532, -0.917754,
		26.167110, 25.577570, 30.807697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577480, 25.495077, 31.394876>,  <26.217649, 25.850941, 31.450125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577480, 25.495077, 31.394876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.806614, 25.308693, 31.125137>,  <25.944094, 25.196861, 30.963295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.806614, 25.308693, 31.125137>,  <25.577480, 25.495077, 31.394876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806614, 25.308693, 31.125137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240754, -0.882061, 0.404977,
		-0.783518, -0.069633, -0.617456,
		0.572833, -0.465962, -0.674346,
		25.978464, 25.168905, 30.922834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163111, 24.885496, 31.128222>,  <25.577480, 25.495077, 31.394876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163111, 24.885496, 31.128222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.551943, 24.800297, 31.088844>,  <25.785242, 24.749176, 31.065218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.551943, 24.800297, 31.088844>,  <25.163111, 24.885496, 31.128222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551943, 24.800297, 31.088844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150270, -0.887309, 0.436007,
		-0.180219, -0.409041, -0.894543,
		0.972081, -0.212999, -0.098443,
		25.843567, 24.736397, 31.059311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116022, 24.237110, 30.917465>,  <25.163111, 24.885496, 31.128222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116022, 24.237110, 30.917465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.498180, 24.271706, 31.030415>,  <25.727476, 24.292463, 31.098185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.498180, 24.271706, 31.030415>,  <25.116022, 24.237110, 30.917465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498180, 24.271706, 31.030415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063254, -0.874037, 0.481725,
		0.288471, -0.478100, -0.829581,
		0.955397, 0.086489, 0.282376,
		25.784800, 24.297653, 31.115128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.552624, 23.160044, 29.631531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358917, 23.348656, 29.926323>,  <32.242691, 23.461823, 30.103199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358917, 23.348656, 29.926323>,  <32.552624, 23.160044, 29.631531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358917, 23.348656, 29.926323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102426, 0.805998, -0.582989,
		-0.868902, -0.357810, -0.342024,
		-0.484270, 0.471529, 0.736983,
		32.213634, 23.490114, 30.147417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779453, 23.274242, 29.467842>,  <32.552624, 23.160044, 29.631531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779453, 23.274242, 29.467842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922434, 23.547306, 29.722778>,  <32.008221, 23.711143, 29.875740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922434, 23.547306, 29.722778>,  <31.779453, 23.274242, 29.467842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922434, 23.547306, 29.722778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211429, 0.723861, -0.656752,
		-0.909685, 0.100004, 0.403079,
		0.357451, 0.682660, 0.637342,
		32.029671, 23.752104, 29.913980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272524, 23.780983, 29.439075>,  <31.779453, 23.274242, 29.467842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272524, 23.780983, 29.439075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599546, 23.941113, 29.604649>,  <31.795759, 24.037191, 29.703993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599546, 23.941113, 29.604649>,  <31.272524, 23.780983, 29.439075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599546, 23.941113, 29.604649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071534, 0.783860, -0.616803,
		-0.571387, 0.474662, 0.669487,
		0.817557, 0.400325, 0.413933,
		31.844814, 24.061211, 29.728828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974850, 24.426212, 29.721504>,  <31.272524, 23.780983, 29.439075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974850, 24.426212, 29.721504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.370321, 24.479813, 29.694500>,  <31.607605, 24.511972, 29.678297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.370321, 24.479813, 29.694500>,  <30.974850, 24.426212, 29.721504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370321, 24.479813, 29.694500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149214, 0.830770, -0.536243,
		-0.015769, 0.540246, 0.841359,
		0.988679, 0.133999, -0.067512,
		31.666925, 24.520012, 29.674246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085920, 25.173531, 29.830822>,  <30.974850, 24.426212, 29.721504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085920, 25.173531, 29.830822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432028, 25.039799, 29.681404>,  <31.639692, 24.959560, 29.591753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432028, 25.039799, 29.681404>,  <31.085920, 25.173531, 29.830822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432028, 25.039799, 29.681404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113162, 0.856164, -0.504160,
		0.488371, 0.393963, 0.778645,
		0.865268, -0.334330, -0.373544,
		31.691608, 24.939499, 29.569342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500746, 25.752504, 29.888706>,  <31.085920, 25.173531, 29.830822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500746, 25.752504, 29.888706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668919, 25.511726, 29.617149>,  <31.769823, 25.367260, 29.454214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668919, 25.511726, 29.617149>,  <31.500746, 25.752504, 29.888706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668919, 25.511726, 29.617149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139338, 0.782197, -0.607250,
		0.896560, 0.160712, 0.412736,
		0.420433, -0.601946, -0.678894,
		31.795048, 25.331142, 29.413481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001839, 26.237347, 29.592201>,  <31.500746, 25.752504, 29.888706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001839, 26.237347, 29.592201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985834, 25.936523, 29.329048>,  <31.976233, 25.756029, 29.171156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985834, 25.936523, 29.329048>,  <32.001839, 26.237347, 29.592201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985834, 25.936523, 29.329048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159526, 0.645158, -0.747210,
		0.986383, -0.134844, 0.094161,
		-0.040008, -0.752056, -0.657884,
		31.973831, 25.710907, 29.131683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593193, 26.327286, 29.074568>,  <32.001839, 26.237347, 29.592201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593193, 26.327286, 29.074568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321827, 26.105244, 28.882061>,  <32.159008, 25.972019, 28.766558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321827, 26.105244, 28.882061>,  <32.593193, 26.327286, 29.074568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321827, 26.105244, 28.882061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064395, 0.607618, -0.791615,
		0.731855, -0.568031, -0.376469,
		-0.678411, -0.555105, -0.481267,
		32.118305, 25.938713, 28.737680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776073, 26.387575, 28.340483>,  <32.593193, 26.327286, 29.074568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776073, 26.387575, 28.340483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.398487, 26.255665, 28.345711>,  <32.171936, 26.176519, 28.348846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.398487, 26.255665, 28.345711>,  <32.776073, 26.387575, 28.340483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398487, 26.255665, 28.345711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179040, 0.478427, -0.859681,
		0.277249, -0.813853, -0.510664,
		-0.943969, -0.329775, 0.013069,
		32.115295, 26.156733, 28.349630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676704, 26.001896, 27.716516>,  <32.776073, 26.387575, 28.340483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676704, 26.001896, 27.716516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338017, 26.157940, 27.861225>,  <32.134804, 26.251566, 27.948050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338017, 26.157940, 27.861225>,  <32.676704, 26.001896, 27.716516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338017, 26.157940, 27.861225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141281, 0.490695, -0.859801,
		-0.512934, -0.779124, -0.360367,
		-0.846722, 0.390109, 0.361770,
		32.084000, 26.274973, 27.969755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206673, 25.992317, 27.076797>,  <32.676704, 26.001896, 27.716516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206673, 25.992317, 27.076797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062168, 26.262997, 27.333412>,  <31.975466, 26.425406, 27.487381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062168, 26.262997, 27.333412>,  <32.206673, 25.992317, 27.076797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062168, 26.262997, 27.333412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108099, 0.652969, -0.749631,
		-0.926179, -0.340160, -0.162739,
		-0.361257, 0.676700, 0.641537,
		31.953791, 26.466007, 27.525873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683083, 26.223728, 26.664999>,  <32.206673, 25.992317, 27.076797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683083, 26.223728, 26.664999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.744402, 26.500328, 26.947369>,  <31.781193, 26.666288, 27.116791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.744402, 26.500328, 26.947369>,  <31.683083, 26.223728, 26.664999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744402, 26.500328, 26.947369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061180, 0.719638, -0.691649,
		-0.986284, 0.062839, 0.152625,
		0.153298, 0.691500, 0.705923,
		31.790392, 26.707779, 27.159145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298355, 26.742783, 26.479412>,  <31.683083, 26.223728, 26.664999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298355, 26.742783, 26.479412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547436, 26.927662, 26.731956>,  <31.696884, 27.038589, 26.883484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547436, 26.927662, 26.731956>,  <31.298355, 26.742783, 26.479412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547436, 26.927662, 26.731956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016017, 0.799193, -0.600861,
		-0.782297, 0.384268, 0.490255,
		0.622700, 0.462199, 0.631361,
		31.734245, 27.066322, 26.921366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972326, 27.311300, 26.735788>,  <31.298355, 26.742783, 26.479412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972326, 27.311300, 26.735788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360615, 27.386993, 26.794971>,  <31.593588, 27.432409, 26.830481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360615, 27.386993, 26.794971>,  <30.972326, 27.311300, 26.735788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360615, 27.386993, 26.794971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086715, 0.850480, -0.518810,
		-0.224011, 0.490790, 0.841988,
		0.970721, 0.189233, 0.147958,
		31.651831, 27.443764, 26.839359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266617, 27.630953, 26.853205>,  <30.972326, 27.311300, 26.735788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266617, 27.630953, 26.853205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.056473, 27.437801, 26.572968>,  <29.930387, 27.321911, 26.404825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.056473, 27.437801, 26.572968>,  <30.266617, 27.630953, 26.853205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056473, 27.437801, 26.572968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043004, -0.807251, 0.588640,
		-0.849793, 0.339375, 0.403331,
		-0.525359, -0.482877, -0.700591,
		29.898865, 27.292938, 26.362791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648666, 27.285654, 27.179926>,  <30.266617, 27.630953, 26.853205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648666, 27.285654, 27.179926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.722158, 27.089787, 26.838993>,  <29.766254, 26.972267, 26.634434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.722158, 27.089787, 26.838993>,  <29.648666, 27.285654, 27.179926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722158, 27.089787, 26.838993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202230, -0.867373, 0.454716,
		-0.961949, 0.088821, -0.258389,
		0.183731, -0.489668, -0.852331,
		29.777277, 26.942886, 26.583294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193769, 26.804020, 27.163879>,  <29.648666, 27.285654, 27.179926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193769, 26.804020, 27.163879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.485369, 26.667912, 26.926300>,  <29.660328, 26.586246, 26.783752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.485369, 26.667912, 26.926300>,  <29.193769, 26.804020, 27.163879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485369, 26.667912, 26.926300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055661, -0.894288, 0.444017,
		-0.682245, -0.290629, -0.670877,
		0.729001, -0.340271, -0.593947,
		29.704069, 26.565830, 26.748116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896696, 26.217991, 26.798815>,  <29.193769, 26.804020, 27.163879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896696, 26.217991, 26.798815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.287996, 26.145535, 26.758392>,  <29.522776, 26.102060, 26.734138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.287996, 26.145535, 26.758392>,  <28.896696, 26.217991, 26.798815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287996, 26.145535, 26.758392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140932, -0.937920, 0.316929,
		-0.152193, -0.295794, -0.943050,
		0.978251, -0.181141, -0.101058,
		29.581472, 26.091192, 26.728075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986525, 25.546675, 26.456947>,  <28.896696, 26.217991, 26.798815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986525, 25.546675, 26.456947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331419, 25.613400, 26.648247>,  <29.538357, 25.653435, 26.763025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331419, 25.613400, 26.648247>,  <28.986525, 25.546675, 26.456947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331419, 25.613400, 26.648247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031355, -0.959980, 0.278306,
		0.505533, -0.224970, -0.832961,
		0.862237, 0.166811, 0.478248,
		29.590090, 25.663443, 26.791721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296162, 24.813745, 26.450045>,  <28.986525, 25.546675, 26.456947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296162, 24.813745, 26.450045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.526182, 25.017017, 26.706505>,  <29.664194, 25.138981, 26.860380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.526182, 25.017017, 26.706505>,  <29.296162, 24.813745, 26.450045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526182, 25.017017, 26.706505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034427, -0.798024, 0.601641,
		0.817393, -0.323901, -0.476399,
		0.575051, 0.508179, 0.641149,
		29.698698, 25.169472, 26.898849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920099, 24.424488, 26.666969>,  <29.296162, 24.813745, 26.450045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920099, 24.424488, 26.666969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876650, 24.676617, 26.974449>,  <29.850580, 24.827894, 27.158937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876650, 24.676617, 26.974449>,  <29.920099, 24.424488, 26.666969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876650, 24.676617, 26.974449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066108, -0.776142, 0.627083,
		0.991882, 0.017300, 0.125978,
		-0.108625, 0.630321, 0.768698,
		29.844063, 24.865713, 27.205059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370008, 24.197702, 27.140568>,  <29.920099, 24.424488, 26.666969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370008, 24.197702, 27.140568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.144257, 24.437904, 27.367149>,  <30.008806, 24.582026, 27.503098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.144257, 24.437904, 27.367149>,  <30.370008, 24.197702, 27.140568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144257, 24.437904, 27.367149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042121, -0.706235, 0.706723,
		0.824441, 0.375000, 0.423878,
		-0.564378, 0.600506, 0.566454,
		29.974943, 24.618055, 27.537085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607706, 24.158957, 27.787174>,  <30.370008, 24.197702, 27.140568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607706, 24.158957, 27.787174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248245, 24.316391, 27.864647>,  <30.032568, 24.410851, 27.911131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248245, 24.316391, 27.864647>,  <30.607706, 24.158957, 27.787174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248245, 24.316391, 27.864647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140508, -0.676542, 0.722875,
		0.415547, 0.622400, 0.663279,
		-0.898653, 0.393585, 0.193683,
		29.978649, 24.434467, 27.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571842, 24.317083, 28.548309>,  <30.607706, 24.158957, 27.787174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571842, 24.317083, 28.548309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.193104, 24.274269, 28.426968>,  <29.965860, 24.248581, 28.354162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.193104, 24.274269, 28.426968>,  <30.571842, 24.317083, 28.548309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193104, 24.274269, 28.426968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182975, -0.596405, 0.781550,
		-0.264573, 0.795515, 0.545120,
		-0.946848, -0.107034, -0.303352,
		29.909050, 24.242159, 28.335962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168381, 24.309486, 29.174192>,  <30.571842, 24.317083, 28.548309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168381, 24.309486, 29.174192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.920826, 24.135227, 28.912754>,  <29.772293, 24.030672, 28.755892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.920826, 24.135227, 28.912754>,  <30.168381, 24.309486, 29.174192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920826, 24.135227, 28.912754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183441, -0.728925, 0.659559,
		-0.763758, 0.528090, 0.371207,
		-0.618888, -0.435649, -0.653596,
		29.735159, 24.004532, 28.716675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540815, 24.139503, 29.544683>,  <30.168381, 24.309486, 29.174192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540815, 24.139503, 29.544683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532997, 23.903633, 29.221722>,  <29.528307, 23.762112, 29.027945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532997, 23.903633, 29.221722>,  <29.540815, 24.139503, 29.544683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532997, 23.903633, 29.221722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206656, -0.787736, 0.580315,
		-0.978218, 0.178197, -0.106463,
		-0.019546, -0.589676, -0.807403,
		29.527134, 23.726730, 28.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904119, 23.853228, 29.496149>,  <29.540815, 24.139503, 29.544683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904119, 23.853228, 29.496149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.110569, 23.594463, 29.271606>,  <29.234440, 23.439205, 29.136881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.110569, 23.594463, 29.271606>,  <28.904119, 23.853228, 29.496149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110569, 23.594463, 29.271606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211037, -0.731239, 0.648655,
		-0.830107, -0.216321, -0.513934,
		0.516126, -0.646912, -0.561355,
		29.265408, 23.400391, 29.103201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507450, 23.219170, 29.630787>,  <28.904119, 23.853228, 29.496149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507450, 23.219170, 29.630787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.869446, 23.126888, 29.487808>,  <29.086643, 23.071520, 29.402021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.869446, 23.126888, 29.487808>,  <28.507450, 23.219170, 29.630787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869446, 23.126888, 29.487808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026851, -0.807549, 0.589189,
		-0.424585, -0.542808, -0.724629,
		0.904990, -0.230704, -0.357448,
		29.140944, 23.057676, 29.380573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093769, 23.176558, 28.945812>,  <28.507450, 23.219170, 29.630787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093769, 23.176558, 28.945812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.709105, 23.151337, 28.839054>,  <27.478306, 23.136204, 28.775000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.709105, 23.151337, 28.839054>,  <28.093769, 23.176558, 28.945812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709105, 23.151337, 28.839054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185310, 0.568012, -0.801887,
		0.202162, -0.820602, -0.534550,
		-0.961660, -0.063054, -0.266896,
		27.420607, 23.132420, 28.758986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062319, 23.004656, 28.225006>,  <28.093769, 23.176558, 28.945812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062319, 23.004656, 28.225006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.697514, 23.159672, 28.278740>,  <27.478630, 23.252682, 28.310980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.697514, 23.159672, 28.278740>,  <28.062319, 23.004656, 28.225006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697514, 23.159672, 28.278740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080995, 0.491226, -0.867258,
		-0.402085, -0.780070, -0.479393,
		-0.912013, 0.387540, 0.134333,
		27.423910, 23.275934, 28.319040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707905, 23.035797, 27.626156>,  <28.062319, 23.004656, 28.225006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707905, 23.035797, 27.626156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.543676, 23.324802, 27.848652>,  <27.445139, 23.498205, 27.982149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.543676, 23.324802, 27.848652>,  <27.707905, 23.035797, 27.626156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543676, 23.324802, 27.848652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057924, 0.629463, -0.774868,
		-0.909987, -0.285919, -0.300290,
		-0.410571, 0.722514, 0.556242,
		27.420506, 23.541557, 28.015524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435511, 23.353703, 27.131260>,  <27.707905, 23.035797, 27.626156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435511, 23.353703, 27.131260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.382862, 23.599625, 27.442307>,  <27.351273, 23.747177, 27.628935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.382862, 23.599625, 27.442307>,  <27.435511, 23.353703, 27.131260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382862, 23.599625, 27.442307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226648, 0.745000, -0.627380,
		-0.965042, -0.258823, 0.041285,
		-0.131623, 0.614805, 0.777619,
		27.343376, 23.784065, 27.675592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704636, 23.502647, 27.025135>,  <27.435511, 23.353703, 27.131260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704636, 23.502647, 27.025135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.916725, 23.776009, 27.225864>,  <27.043978, 23.940025, 27.346302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.916725, 23.776009, 27.225864>,  <26.704636, 23.502647, 27.025135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916725, 23.776009, 27.225864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461743, 0.729150, -0.505107,
		-0.711096, 0.036106, 0.702168,
		0.530223, 0.683401, 0.501824,
		27.075792, 23.981030, 27.376411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284357, 23.962284, 27.207218>,  <26.704636, 23.502647, 27.025135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284357, 23.962284, 27.207218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.629168, 24.162888, 27.236618>,  <26.836054, 24.283249, 27.254257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.629168, 24.162888, 27.236618>,  <26.284357, 23.962284, 27.207218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629168, 24.162888, 27.236618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283481, 0.597230, -0.750303,
		-0.420178, 0.625945, 0.656995,
		0.862026, 0.501507, 0.073499,
		26.887775, 24.313339, 27.258667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071121, 24.657654, 27.163446>,  <26.284357, 23.962284, 27.207218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071121, 24.657654, 27.163446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.463306, 24.673164, 27.086308>,  <26.698618, 24.682470, 27.040024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.463306, 24.673164, 27.086308>,  <26.071121, 24.657654, 27.163446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463306, 24.673164, 27.086308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170135, 0.659236, -0.732436,
		0.098728, 0.750936, 0.652954,
		0.980463, 0.038778, -0.192845,
		26.757444, 24.684797, 27.028454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302084, 25.336716, 27.400494>,  <26.071121, 24.657654, 27.163446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302084, 25.336716, 27.400494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.545294, 25.205605, 27.111256>,  <26.691219, 25.126938, 26.937714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.545294, 25.205605, 27.111256>,  <26.302084, 25.336716, 27.400494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545294, 25.205605, 27.111256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259401, 0.778785, -0.571144,
		0.750344, 0.534842, 0.388495,
		0.608026, -0.327778, -0.723095,
		26.727701, 25.107271, 26.894327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771198, 25.945541, 27.185555>,  <26.302084, 25.336716, 27.400494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771198, 25.945541, 27.185555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.765282, 25.680706, 26.885841>,  <26.761732, 25.521805, 26.706015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.765282, 25.680706, 26.885841>,  <26.771198, 25.945541, 27.185555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765282, 25.680706, 26.885841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138467, 0.743499, -0.654245,
		0.990257, 0.094074, -0.102673,
		-0.014790, -0.662087, -0.749281,
		26.760845, 25.482080, 26.661057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163359, 26.196886, 26.610060>,  <26.771198, 25.945541, 27.185555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163359, 26.196886, 26.610060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.901918, 25.937496, 26.453964>,  <26.745054, 25.781862, 26.360308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.901918, 25.937496, 26.453964>,  <27.163359, 26.196886, 26.610060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901918, 25.937496, 26.453964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290031, 0.690860, -0.662265,
		0.699068, -0.319670, -0.639621,
		-0.653594, -0.648478, -0.390244,
		26.705839, 25.742954, 26.336893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254902, 26.239021, 25.865953>,  <27.163359, 26.196886, 26.610060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254902, 26.239021, 25.865953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.900602, 26.061573, 25.920578>,  <26.688023, 25.955105, 25.953352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.900602, 26.061573, 25.920578>,  <27.254902, 26.239021, 25.865953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900602, 26.061573, 25.920578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395366, 0.566938, -0.722681,
		0.243173, -0.694106, -0.677557,
		-0.885750, -0.443619, 0.136562,
		26.634878, 25.928488, 25.961546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029013, 26.268572, 25.201508>,  <27.254902, 26.239021, 25.865953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029013, 26.268572, 25.201508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.704670, 26.249851, 25.434856>,  <26.510065, 26.238619, 25.574865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.704670, 26.249851, 25.434856>,  <27.029013, 26.268572, 25.201508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704670, 26.249851, 25.434856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491730, 0.595005, -0.635744,
		-0.317354, -0.802358, -0.505478,
		-0.810856, -0.046802, 0.583371,
		26.461412, 26.235811, 25.609867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509043, 26.134050, 24.700081>,  <27.029013, 26.268572, 25.201508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509043, 26.134050, 24.700081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.354271, 26.308746, 25.024929>,  <26.261408, 26.413565, 25.219839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.354271, 26.308746, 25.024929>,  <26.509043, 26.134050, 24.700081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354271, 26.308746, 25.024929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442971, 0.684405, -0.579109,
		-0.808741, -0.583821, -0.071352,
		-0.386929, 0.436742, 0.812122,
		26.238192, 26.439770, 25.268566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792000, 26.329491, 24.573883>,  <26.509043, 26.134050, 24.700081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792000, 26.329491, 24.573883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.928102, 26.573448, 24.860172>,  <26.009764, 26.719822, 25.031946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.928102, 26.573448, 24.860172>,  <25.792000, 26.329491, 24.573883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928102, 26.573448, 24.860172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433348, 0.777196, -0.456263,
		-0.834527, -0.154910, 0.528742,
		0.340256, 0.609893, 0.715721,
		26.030180, 26.756416, 25.074888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.908722, 31.618914, 31.104940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175488, 31.335155, 31.196144>,  <41.335545, 31.164900, 31.250866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175488, 31.335155, 31.196144>,  <40.908722, 31.618914, 31.104940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175488, 31.335155, 31.196144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096055, -0.221593, -0.970397,
		0.738919, 0.669071, -0.079642,
		0.666912, -0.709395, 0.228007,
		41.375561, 31.122337, 31.264545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312252, 31.529432, 30.472654>,  <40.908722, 31.618914, 31.104940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312252, 31.529432, 30.472654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436447, 31.208252, 30.676170>,  <41.510963, 31.015543, 30.798279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436447, 31.208252, 30.676170>,  <41.312252, 31.529432, 30.472654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436447, 31.208252, 30.676170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232307, -0.454918, -0.859700,
		0.921754, 0.385122, 0.045285,
		0.310488, -0.802952, 0.508789,
		41.529594, 30.967367, 30.828808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963692, 31.404549, 30.259439>,  <41.312252, 31.529432, 30.472654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963692, 31.404549, 30.259439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.838951, 31.050247, 30.396957>,  <41.764107, 30.837667, 30.479467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.838951, 31.050247, 30.396957>,  <41.963692, 31.404549, 30.259439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838951, 31.050247, 30.396957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379341, -0.447818, -0.809666,
		0.871120, -0.122080, 0.475654,
		-0.311850, -0.885751, 0.343793,
		41.745396, 30.784521, 30.500095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526665, 31.016930, 30.108223>,  <41.963692, 31.404549, 30.259439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526665, 31.016930, 30.108223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.213108, 30.774864, 30.163776>,  <42.024975, 30.629625, 30.197109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.213108, 30.774864, 30.163776>,  <42.526665, 31.016930, 30.108223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213108, 30.774864, 30.163776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261391, -0.524548, -0.810262,
		0.563192, -0.598855, 0.569374,
		-0.783893, -0.605163, 0.138886,
		41.977940, 30.593315, 30.205442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742935, 30.404238, 29.707430>,  <42.526665, 31.016930, 30.108223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742935, 30.404238, 29.707430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.360664, 30.322651, 29.792351>,  <42.131302, 30.273699, 29.843304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.360664, 30.322651, 29.792351>,  <42.742935, 30.404238, 29.707430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360664, 30.322651, 29.792351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086282, -0.495414, -0.864361,
		0.281480, -0.844371, 0.455858,
		-0.955680, -0.203968, 0.212303,
		42.073959, 30.261461, 29.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600956, 29.630663, 29.682348>,  <42.742935, 30.404238, 29.707430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600956, 29.630663, 29.682348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259396, 29.821301, 29.598721>,  <42.054459, 29.935682, 29.548544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259396, 29.821301, 29.598721>,  <42.600956, 29.630663, 29.682348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259396, 29.821301, 29.598721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062548, -0.492793, -0.867895,
		-0.516668, -0.728017, 0.450606,
		-0.853898, 0.476598, -0.209074,
		42.003223, 29.964277, 29.535999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275253, 29.112377, 29.394796>,  <42.600956, 29.630663, 29.682348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275253, 29.112377, 29.394796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046089, 29.424297, 29.293854>,  <41.908592, 29.611450, 29.233288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046089, 29.424297, 29.293854>,  <42.275253, 29.112377, 29.394796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046089, 29.424297, 29.293854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304363, -0.488291, -0.817884,
		-0.761011, -0.391765, 0.517090,
		-0.572910, 0.779802, -0.252356,
		41.874218, 29.658237, 29.218147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748768, 28.837521, 29.014517>,  <42.275253, 29.112377, 29.394796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748768, 28.837521, 29.014517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715420, 29.217258, 28.893326>,  <41.695412, 29.445101, 28.820612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715420, 29.217258, 28.893326>,  <41.748768, 28.837521, 29.014517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715420, 29.217258, 28.893326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153949, -0.312657, -0.937307,
		-0.984555, -0.031504, 0.172218,
		-0.083374, 0.949343, -0.302978,
		41.690407, 29.502062, 28.802433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096741, 28.797218, 28.493216>,  <41.748768, 28.837521, 29.014517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096741, 28.797218, 28.493216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.332108, 29.110157, 28.411530>,  <41.473328, 29.297920, 28.362518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.332108, 29.110157, 28.411530>,  <41.096741, 28.797218, 28.493216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332108, 29.110157, 28.411530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239904, -0.072269, -0.968103,
		-0.772149, 0.618638, 0.145164,
		0.588414, 0.782345, -0.204217,
		41.508633, 29.344860, 28.350264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726814, 29.260342, 28.057930>,  <41.096741, 28.797218, 28.493216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726814, 29.260342, 28.057930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109524, 29.355789, 27.991417>,  <41.339149, 29.413057, 27.951509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109524, 29.355789, 27.991417>,  <40.726814, 29.260342, 28.057930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109524, 29.355789, 27.991417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140539, -0.121238, -0.982624,
		-0.254632, 0.963516, -0.082462,
		0.956771, 0.238619, -0.166282,
		41.396557, 29.427374, 27.941532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643337, 29.740763, 27.527866>,  <40.726814, 29.260342, 28.057930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643337, 29.740763, 27.527866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.011768, 29.586040, 27.545761>,  <41.232826, 29.493208, 27.556498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.011768, 29.586040, 27.545761>,  <40.643337, 29.740763, 27.527866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011768, 29.586040, 27.545761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039269, -0.206584, -0.977640,
		0.387398, 0.898724, -0.205469,
		0.921076, -0.386805, 0.044738,
		41.288090, 29.469999, 27.559183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031849, 30.254433, 27.088772>,  <40.643337, 29.740763, 27.527866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031849, 30.254433, 27.088772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254902, 29.922955, 27.108021>,  <41.388733, 29.724068, 27.119570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254902, 29.922955, 27.108021>,  <41.031849, 30.254433, 27.088772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254902, 29.922955, 27.108021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088181, -0.116781, -0.989235,
		0.825392, 0.547385, -0.138196,
		0.557631, -0.828693, 0.048121,
		41.422192, 29.674347, 27.122458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646244, 30.439686, 26.658665>,  <41.031849, 30.254433, 27.088772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646244, 30.439686, 26.658665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.588444, 30.044945, 26.687614>,  <41.553764, 29.808100, 26.704985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.588444, 30.044945, 26.687614>,  <41.646244, 30.439686, 26.658665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588444, 30.044945, 26.687614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100713, -0.058095, -0.993218,
		0.984366, -0.150812, -0.090994,
		-0.144503, -0.986854, 0.072376,
		41.545094, 29.748888, 26.709328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848095, 30.264612, 26.088011>,  <41.646244, 30.439686, 26.658665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848095, 30.264612, 26.088011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.682949, 29.915401, 26.191826>,  <41.583862, 29.705875, 26.254114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.682949, 29.915401, 26.191826>,  <41.848095, 30.264612, 26.088011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682949, 29.915401, 26.191826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135624, -0.222851, -0.965372,
		0.900636, -0.433772, -0.026396,
		-0.412869, -0.873029, 0.259537,
		41.559090, 29.653492, 26.269688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204906, 29.839817, 25.607594>,  <41.848095, 30.264612, 26.088011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204906, 29.839817, 25.607594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.853088, 29.687481, 25.721687>,  <41.641998, 29.596079, 25.790144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.853088, 29.687481, 25.721687>,  <42.204906, 29.839817, 25.607594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853088, 29.687481, 25.721687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265897, -0.103725, -0.958405,
		0.394588, -0.918803, -0.010034,
		-0.879545, -0.380843, 0.285236,
		41.589226, 29.573229, 25.807259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118549, 29.341623, 25.246077>,  <42.204906, 29.839817, 25.607594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118549, 29.341623, 25.246077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.737690, 29.363098, 25.366425>,  <41.509174, 29.375982, 25.438633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.737690, 29.363098, 25.366425>,  <42.118549, 29.341623, 25.246077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737690, 29.363098, 25.366425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305488, -0.137966, -0.942148,
		-0.009068, -0.988981, 0.147765,
		-0.952153, 0.053684, 0.300871,
		41.452045, 29.379204, 25.456686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787178, 28.855003, 24.808189>,  <42.118549, 29.341623, 25.246077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787178, 28.855003, 24.808189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.506317, 29.113117, 24.928577>,  <41.337799, 29.267986, 25.000811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.506317, 29.113117, 24.928577>,  <41.787178, 28.855003, 24.808189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506317, 29.113117, 24.928577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337039, 0.071129, -0.938800,
		-0.627203, -0.760622, 0.167543,
		-0.702155, 0.645287, 0.300972,
		41.295670, 29.306704, 25.018869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166145, 28.698690, 24.459286>,  <41.787178, 28.855003, 24.808189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166145, 28.698690, 24.459286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.077404, 29.074455, 24.563816>,  <41.024158, 29.299913, 24.626535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.077404, 29.074455, 24.563816>,  <41.166145, 28.698690, 24.459286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077404, 29.074455, 24.563816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351242, 0.173024, -0.920159,
		-0.909622, -0.295925, 0.291575,
		-0.221849, 0.939410, 0.261327,
		41.010849, 29.356277, 24.642214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481197, 28.850918, 24.225460>,  <41.166145, 28.698690, 24.459286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481197, 28.850918, 24.225460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.625805, 29.218407, 24.289032>,  <40.712570, 29.438900, 24.327175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.625805, 29.218407, 24.289032>,  <40.481197, 28.850918, 24.225460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625805, 29.218407, 24.289032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328606, 0.285070, -0.900418,
		-0.872538, 0.273292, 0.404955,
		0.361518, 0.918720, 0.158929,
		40.734261, 29.494022, 24.336710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954243, 29.206993, 23.990925>,  <40.481197, 28.850918, 24.225460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954243, 29.206993, 23.990925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.263702, 29.459900, 23.974396>,  <40.449379, 29.611645, 23.964478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.263702, 29.459900, 23.974396>,  <39.954243, 29.206993, 23.990925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263702, 29.459900, 23.974396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147762, 0.116612, -0.982124,
		-0.616145, 0.765924, 0.183642,
		0.773648, 0.632267, -0.041324,
		40.495796, 29.649580, 23.961998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716217, 29.819561, 23.632580>,  <39.954243, 29.206993, 23.990925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716217, 29.819561, 23.632580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115578, 29.841934, 23.629498>,  <40.355194, 29.855358, 23.627647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115578, 29.841934, 23.629498>,  <39.716217, 29.819561, 23.632580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115578, 29.841934, 23.629498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007157, -0.010037, -0.999924,
		-0.056008, 0.998384, -0.009620,
		0.998405, 0.055935, -0.007707,
		40.415100, 29.858715, 23.627186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057144, 29.685049, 24.116735>,  <39.716217, 29.819561, 23.632580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057144, 29.685049, 24.116735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693417, 29.814892, 24.012608>,  <38.475182, 29.892797, 23.950130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693417, 29.814892, 24.012608>,  <39.057144, 29.685049, 24.116735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693417, 29.814892, 24.012608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091120, 0.765782, 0.636611,
		0.405997, 0.555163, -0.725920,
		-0.909320, 0.324609, -0.260319,
		38.420620, 29.912275, 23.934511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125317, 30.430901, 24.031387>,  <39.057144, 29.685049, 24.116735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125317, 30.430901, 24.031387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.746704, 30.319908, 24.097206>,  <38.519535, 30.253313, 24.136698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.746704, 30.319908, 24.097206>,  <39.125317, 30.430901, 24.031387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746704, 30.319908, 24.097206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026211, 0.574531, 0.818063,
		-0.321534, 0.770012, -0.551087,
		-0.946535, -0.277480, 0.164548,
		38.462742, 30.236664, 24.146570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792385, 31.010086, 24.399687>,  <39.125317, 30.430901, 24.031387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792385, 31.010086, 24.399687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527149, 30.720589, 24.476120>,  <38.368008, 30.546890, 24.521980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527149, 30.720589, 24.476120>,  <38.792385, 31.010086, 24.399687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527149, 30.720589, 24.476120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301348, 0.491775, 0.816913,
		-0.685205, 0.484102, -0.544188,
		-0.663087, -0.723742, 0.191084,
		38.328224, 30.503466, 24.533445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130295, 31.359194, 24.560711>,  <38.792385, 31.010086, 24.399687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130295, 31.359194, 24.560711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101494, 31.000675, 24.735737>,  <38.084213, 30.785564, 24.840754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101494, 31.000675, 24.735737>,  <38.130295, 31.359194, 24.560711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101494, 31.000675, 24.735737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009866, 0.439324, 0.898275,
		-0.997356, 0.060358, -0.040473,
		-0.071999, -0.896299, 0.437567,
		38.079895, 30.731785, 24.867006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699814, 31.479897, 25.063568>,  <38.130295, 31.359194, 24.560711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699814, 31.479897, 25.063568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863308, 31.134518, 25.181816>,  <37.961403, 30.927290, 25.252764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863308, 31.134518, 25.181816>,  <37.699814, 31.479897, 25.063568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863308, 31.134518, 25.181816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049599, 0.344448, 0.937494,
		-0.911304, -0.368526, 0.183614,
		0.408736, -0.863450, 0.295618,
		37.985928, 30.875483, 25.270502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387589, 31.414291, 25.695925>,  <37.699814, 31.479897, 25.063568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387589, 31.414291, 25.695925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.711292, 31.180782, 25.722183>,  <37.905514, 31.040676, 25.737938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.711292, 31.180782, 25.722183>,  <37.387589, 31.414291, 25.695925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711292, 31.180782, 25.722183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165299, 0.333517, 0.928139,
		-0.563718, -0.740253, 0.366399,
		0.809258, -0.583774, 0.065646,
		37.954071, 31.005650, 25.741877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344025, 31.063007, 26.393198>,  <37.387589, 31.414291, 25.695925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344025, 31.063007, 26.393198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.730190, 31.025158, 26.296024>,  <37.961891, 31.002449, 26.237720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.730190, 31.025158, 26.296024>,  <37.344025, 31.063007, 26.393198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730190, 31.025158, 26.296024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259924, 0.276929, 0.925067,
		-0.020258, -0.956220, 0.291947,
		0.965416, -0.094624, -0.242934,
		38.019814, 30.996771, 26.223145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695641, 30.586683, 26.931953>,  <37.344025, 31.063007, 26.393198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695641, 30.586683, 26.931953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975277, 30.805405, 26.747662>,  <38.143059, 30.936638, 26.637087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975277, 30.805405, 26.747662>,  <37.695641, 30.586683, 26.931953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975277, 30.805405, 26.747662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383866, 0.256614, 0.887015,
		0.603253, -0.796966, -0.030502,
		0.699094, 0.546803, -0.460731,
		38.185005, 30.969446, 26.609442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295158, 30.510199, 27.365635>,  <37.695641, 30.586683, 26.931953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295158, 30.510199, 27.365635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379364, 30.812466, 27.117554>,  <38.429886, 30.993826, 26.968704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379364, 30.812466, 27.117554>,  <38.295158, 30.510199, 27.365635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379364, 30.812466, 27.117554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506168, 0.458506, 0.730457,
		0.836349, -0.467697, -0.285974,
		0.210511, 0.755667, -0.620203,
		38.442516, 31.039165, 26.931492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044159, 30.565203, 27.538147>,  <38.295158, 30.510199, 27.365635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044159, 30.565203, 27.538147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.906231, 30.909073, 27.387386>,  <38.823475, 31.115395, 27.296930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.906231, 30.909073, 27.387386>,  <39.044159, 30.565203, 27.538147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906231, 30.909073, 27.387386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471703, 0.505845, 0.722231,
		0.811540, 0.071252, -0.579936,
		-0.344818, 0.859677, -0.376903,
		38.802784, 31.166975, 27.274315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567135, 31.015844, 27.610437>,  <39.044159, 30.565203, 27.538147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567135, 31.015844, 27.610437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.251579, 31.259296, 27.576443>,  <39.062244, 31.405367, 27.556046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.251579, 31.259296, 27.576443>,  <39.567135, 31.015844, 27.610437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251579, 31.259296, 27.576443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373594, 0.584783, 0.720040,
		0.487936, 0.536282, -0.688709,
		-0.788889, 0.608630, -0.084985,
		39.014912, 31.441885, 27.550947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834244, 31.752394, 27.575115>,  <39.567135, 31.015844, 27.610437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834244, 31.752394, 27.575115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457012, 31.760529, 27.707890>,  <39.230671, 31.765409, 27.787554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457012, 31.760529, 27.707890>,  <39.834244, 31.752394, 27.575115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457012, 31.760529, 27.707890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263575, 0.654353, 0.708767,
		-0.202786, 0.755915, -0.622470,
		-0.943083, 0.020339, 0.331934,
		39.174088, 31.766630, 27.807470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835236, 32.316444, 27.898359>,  <39.834244, 31.752394, 27.575115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835236, 32.316444, 27.898359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.501659, 32.155182, 28.049095>,  <39.301514, 32.058426, 28.139536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.501659, 32.155182, 28.049095>,  <39.835236, 32.316444, 27.898359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501659, 32.155182, 28.049095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239073, 0.351524, 0.905138,
		-0.497382, 0.844923, -0.196766,
		-0.833940, -0.403158, 0.376840,
		39.251476, 32.034233, 28.162148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419830, 32.892082, 28.067408>,  <39.835236, 32.316444, 27.898359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419830, 32.892082, 28.067408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317493, 32.569717, 28.280968>,  <39.256092, 32.376297, 28.409103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317493, 32.569717, 28.280968>,  <39.419830, 32.892082, 28.067408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317493, 32.569717, 28.280968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303432, 0.457424, 0.835878,
		-0.917865, 0.375852, 0.127514,
		-0.255839, -0.805914, 0.533899,
		39.240742, 32.327942, 28.441137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059914, 33.154400, 28.635036>,  <39.419830, 32.892082, 28.067408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059914, 33.154400, 28.635036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137287, 32.778419, 28.747517>,  <39.183712, 32.552830, 28.815004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137287, 32.778419, 28.747517>,  <39.059914, 33.154400, 28.635036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137287, 32.778419, 28.747517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270761, 0.326625, 0.905541,
		-0.943012, -0.099024, 0.317683,
		0.193433, -0.939952, 0.281199,
		39.195316, 32.496433, 28.831877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710125, 33.030743, 29.176411>,  <39.059914, 33.154400, 28.635036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710125, 33.030743, 29.176411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.022213, 32.784981, 29.223358>,  <39.209465, 32.637524, 29.251526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.022213, 32.784981, 29.223358>,  <38.710125, 33.030743, 29.176411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022213, 32.784981, 29.223358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169755, 0.388571, 0.905647,
		-0.602035, -0.686676, 0.407466,
		0.780215, -0.614401, 0.117367,
		39.256279, 32.600662, 29.258568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683929, 32.998196, 29.886938>,  <38.710125, 33.030743, 29.176411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683929, 32.998196, 29.886938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040123, 32.832909, 29.810734>,  <39.253838, 32.733738, 29.765011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040123, 32.832909, 29.810734>,  <38.683929, 32.998196, 29.886938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040123, 32.832909, 29.810734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316373, 0.261349, 0.911924,
		-0.327034, -0.872323, 0.363457,
		0.890482, -0.413218, -0.190509,
		39.307266, 32.708942, 29.753582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905270, 32.584419, 30.528006>,  <38.683929, 32.998196, 29.886938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905270, 32.584419, 30.528006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.239239, 32.668999, 30.324753>,  <39.439621, 32.719746, 30.202801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.239239, 32.668999, 30.324753>,  <38.905270, 32.584419, 30.528006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239239, 32.668999, 30.324753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409139, 0.379065, 0.830009,
		0.368103, -0.900892, 0.229987,
		0.834928, 0.211432, -0.508125,
		39.489716, 32.732433, 30.172314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453392, 32.253288, 30.882450>,  <38.905270, 32.584419, 30.528006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453392, 32.253288, 30.882450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.617210, 32.549465, 30.669277>,  <39.715504, 32.727173, 30.541374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.617210, 32.549465, 30.669277>,  <39.453392, 32.253288, 30.882450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617210, 32.549465, 30.669277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419738, 0.365730, 0.830699,
		0.809994, -0.563903, -0.161007,
		0.409549, 0.740442, -0.532931,
		39.740074, 32.771599, 30.509398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119610, 32.309723, 31.216309>,  <39.453392, 32.253288, 30.882450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119610, 32.309723, 31.216309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.072803, 32.654217, 31.018490>,  <40.044720, 32.860912, 30.899799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.072803, 32.654217, 31.018490>,  <40.119610, 32.309723, 31.216309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072803, 32.654217, 31.018490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538493, 0.473435, 0.697054,
		0.834465, -0.184741, -0.519172,
		-0.117019, 0.861237, -0.494547,
		40.037697, 32.912586, 30.870125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834999, 32.513794, 31.073536>,  <40.119610, 32.309723, 31.216309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834999, 32.513794, 31.073536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527061, 32.767143, 31.105003>,  <40.342300, 32.919151, 31.123884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527061, 32.767143, 31.105003>,  <40.834999, 32.513794, 31.073536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527061, 32.767143, 31.105003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473114, 0.483589, 0.736413,
		0.428380, 0.604139, -0.671943,
		-0.769840, 0.633370, 0.078667,
		40.296108, 32.957153, 31.128603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.097746, 23.220860, 30.660591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.289083, 23.465466, 30.912697>,  <26.403887, 23.612228, 31.063961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.289083, 23.465466, 30.912697>,  <26.097746, 23.220860, 30.660591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289083, 23.465466, 30.912697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021291, -0.725566, 0.687823,
		0.877914, -0.315598, -0.360091,
		0.478345, 0.611516, 0.630265,
		26.432587, 23.648920, 31.101776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791498, 22.980227, 30.927296>,  <26.097746, 23.220860, 30.660591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791498, 22.980227, 30.927296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.635355, 23.245136, 31.183113>,  <26.541670, 23.404081, 31.336603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.635355, 23.245136, 31.183113>,  <26.791498, 22.980227, 30.927296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635355, 23.245136, 31.183113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099843, -0.660106, 0.744508,
		0.915234, 0.354478, 0.191554,
		-0.390357, 0.662273, 0.639543,
		26.518248, 23.443819, 31.374975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334463, 22.957912, 31.492416>,  <26.791498, 22.980227, 30.927296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334463, 22.957912, 31.492416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.972193, 23.066078, 31.623032>,  <26.754829, 23.130978, 31.701401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.972193, 23.066078, 31.623032>,  <27.334463, 22.957912, 31.492416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972193, 23.066078, 31.623032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129057, -0.557799, 0.819881,
		0.403849, 0.784689, 0.470287,
		-0.905677, 0.270414, 0.326536,
		26.700489, 23.147202, 31.720993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458969, 23.254166, 32.190578>,  <27.334463, 22.957912, 31.492416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458969, 23.254166, 32.190578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.071228, 23.162109, 32.156200>,  <26.838583, 23.106876, 32.135574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.071228, 23.162109, 32.156200>,  <27.458969, 23.254166, 32.190578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071228, 23.162109, 32.156200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053732, -0.540005, 0.839945,
		-0.239715, 0.809587, 0.535822,
		-0.969355, -0.230139, -0.085946,
		26.780422, 23.093067, 32.130417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133495, 23.492052, 32.881748>,  <27.458969, 23.254166, 32.190578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133495, 23.492052, 32.881748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.900473, 23.219700, 32.704197>,  <26.760658, 23.056290, 32.597664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.900473, 23.219700, 32.704197>,  <27.133495, 23.492052, 32.881748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900473, 23.219700, 32.704197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046579, -0.517255, 0.854563,
		-0.811454, 0.518508, 0.269616,
		-0.582557, -0.680880, -0.443880,
		26.725706, 23.015436, 32.571033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668169, 23.311264, 33.354462>,  <27.133495, 23.492052, 32.881748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668169, 23.311264, 33.354462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.606245, 23.007465, 33.101734>,  <26.569090, 22.825186, 32.950096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.606245, 23.007465, 33.101734>,  <26.668169, 23.311264, 33.354462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606245, 23.007465, 33.101734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497695, -0.492498, 0.713965,
		-0.853424, 0.424985, -0.301753,
		-0.154812, -0.759496, -0.631822,
		26.559801, 22.779617, 32.912186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878651, 23.106535, 33.352676>,  <26.668169, 23.311264, 33.354462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878651, 23.106535, 33.352676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.100891, 22.792286, 33.243786>,  <26.234236, 22.603737, 33.178452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.100891, 22.792286, 33.243786>,  <25.878651, 23.106535, 33.352676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100891, 22.792286, 33.243786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412840, -0.544865, 0.729853,
		-0.721715, -0.293121, -0.627063,
		0.555600, -0.785622, -0.272225,
		26.267570, 22.556599, 33.162117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531967, 22.619106, 33.689796>,  <25.878651, 23.106535, 33.352676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531967, 22.619106, 33.689796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.849052, 22.419109, 33.550304>,  <26.039303, 22.299112, 33.466610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.849052, 22.419109, 33.550304>,  <25.531967, 22.619106, 33.689796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849052, 22.419109, 33.550304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237189, -0.779976, 0.579119,
		-0.561558, -0.376360, -0.736889,
		0.792713, -0.499990, -0.348733,
		26.086866, 22.269112, 33.445683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298592, 21.927111, 33.548412>,  <25.531967, 22.619106, 33.689796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298592, 21.927111, 33.548412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.690660, 21.893738, 33.620304>,  <25.925901, 21.873714, 33.663441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.690660, 21.893738, 33.620304>,  <25.298592, 21.927111, 33.548412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690660, 21.893738, 33.620304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189455, -0.660379, 0.726641,
		0.058067, -0.746284, -0.663091,
		0.980171, -0.083432, 0.179733,
		25.984713, 21.868708, 33.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554667, 21.249031, 33.342850>,  <25.298592, 21.927111, 33.548412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554667, 21.249031, 33.342850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.841913, 21.355400, 33.600094>,  <26.014261, 21.419222, 33.754440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.841913, 21.355400, 33.600094>,  <25.554667, 21.249031, 33.342850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841913, 21.355400, 33.600094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212340, -0.796322, 0.566377,
		0.662736, -0.543284, -0.515387,
		0.718118, 0.265921, 0.643112,
		26.057348, 21.435177, 33.793026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972006, 20.605635, 33.474049>,  <25.554667, 21.249031, 33.342850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972006, 20.605635, 33.474049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.009535, 20.876705, 33.765789>,  <26.032051, 21.039347, 33.940834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.009535, 20.876705, 33.765789>,  <25.972006, 20.605635, 33.474049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009535, 20.876705, 33.765789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327347, -0.670855, 0.665430,
		0.940235, -0.301183, 0.158895,
		0.093821, 0.677674, 0.729353,
		26.037682, 21.080008, 33.984596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221415, 20.190714, 33.971821>,  <25.972006, 20.605635, 33.474049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221415, 20.190714, 33.971821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.107260, 20.518406, 34.170784>,  <26.038767, 20.715021, 34.290161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.107260, 20.518406, 34.170784>,  <26.221415, 20.190714, 33.971821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107260, 20.518406, 34.170784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222769, -0.561482, 0.796939,
		0.932164, 0.116627, 0.342738,
		-0.285385, 0.819229, 0.497412,
		26.021645, 20.764175, 34.320007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009115, 19.797319, 33.309776>,  <26.221415, 20.190714, 33.971821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009115, 19.797319, 33.309776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.786362, 19.474979, 33.229290>,  <25.652710, 19.281576, 33.181000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.786362, 19.474979, 33.229290>,  <26.009115, 19.797319, 33.309776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786362, 19.474979, 33.229290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256089, 0.063864, -0.964541,
		0.790126, -0.588665, 0.170805,
		-0.556883, -0.805850, -0.201212,
		25.619297, 19.233225, 33.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341372, 19.265478, 33.055801>,  <26.009115, 19.797319, 33.309776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341372, 19.265478, 33.055801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.968367, 19.281624, 32.912251>,  <25.744564, 19.291311, 32.826118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.968367, 19.281624, 32.912251>,  <26.341372, 19.265478, 33.055801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968367, 19.281624, 32.912251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358482, -0.016897, -0.933384,
		-0.043749, -0.999042, 0.001283,
		-0.932511, 0.040375, -0.358877,
		25.688614, 19.293734, 32.804588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470135, 19.258656, 32.310108>,  <26.341372, 19.265478, 33.055801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470135, 19.258656, 32.310108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.711891, 19.002350, 32.120735>,  <26.856945, 18.848566, 32.007111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.711891, 19.002350, 32.120735>,  <26.470135, 19.258656, 32.310108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711891, 19.002350, 32.120735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276674, 0.726074, -0.629498,
		0.747105, 0.249476, 0.616114,
		0.604389, -0.640763, -0.473430,
		26.893208, 18.810122, 31.978706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074106, 19.629141, 32.084370>,  <26.470135, 19.258656, 32.310108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074106, 19.629141, 32.084370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.097425, 19.309711, 31.844742>,  <27.111418, 19.118053, 31.700966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.097425, 19.309711, 31.844742>,  <27.074106, 19.629141, 32.084370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097425, 19.309711, 31.844742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310924, 0.584764, -0.749251,
		0.948645, -0.142584, 0.282386,
		0.058298, -0.798575, -0.599066,
		27.114916, 19.070139, 31.665022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746862, 19.649044, 31.774265>,  <27.074106, 19.629141, 32.084370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746862, 19.649044, 31.774265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.520407, 19.430885, 31.527031>,  <27.384533, 19.299990, 31.378691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.520407, 19.430885, 31.527031>,  <27.746862, 19.649044, 31.774265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520407, 19.430885, 31.527031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199874, 0.636622, -0.744824,
		0.799712, -0.545212, -0.251404,
		-0.566136, -0.545396, -0.618088,
		27.350565, 19.267267, 31.341604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159838, 19.490128, 31.072947>,  <27.746862, 19.649044, 31.774265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159838, 19.490128, 31.072947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.765284, 19.464397, 31.012405>,  <27.528551, 19.448959, 30.976080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.765284, 19.464397, 31.012405>,  <28.159838, 19.490128, 31.072947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765284, 19.464397, 31.012405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090143, 0.558293, -0.824732,
		0.137551, -0.827146, -0.544894,
		-0.986384, -0.064325, -0.151355,
		27.469368, 19.445101, 30.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152632, 19.788324, 30.467474>,  <28.159838, 19.490128, 31.072947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152632, 19.788324, 30.467474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.761250, 19.724728, 30.520153>,  <27.526421, 19.686569, 30.551760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.761250, 19.724728, 30.520153>,  <28.152632, 19.788324, 30.467474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761250, 19.724728, 30.520153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197134, 0.530041, -0.824739,
		0.061321, -0.832934, -0.549965,
		-0.978457, -0.158990, 0.131697,
		27.467712, 19.677031, 30.559662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822573, 19.723387, 29.745741>,  <28.152632, 19.788324, 30.467474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822573, 19.723387, 29.745741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541260, 19.831787, 30.008633>,  <27.372473, 19.896828, 30.166368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541260, 19.831787, 30.008633>,  <27.822573, 19.723387, 29.745741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541260, 19.831787, 30.008633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341969, 0.681544, -0.646958,
		-0.623258, -0.679747, -0.386644,
		-0.703283, 0.271001, 0.657230,
		27.330275, 19.913088, 30.205801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193914, 19.761042, 29.343218>,  <27.822573, 19.723387, 29.745741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193914, 19.761042, 29.343218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.146660, 19.983536, 29.672253>,  <27.118307, 20.117031, 29.869673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.146660, 19.983536, 29.672253>,  <27.193914, 19.761042, 29.343218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146660, 19.983536, 29.672253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235379, 0.789092, -0.567389,
		-0.964697, -0.260648, 0.037707,
		-0.118134, 0.556234, 0.822586,
		27.111219, 20.150406, 29.919029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650892, 20.149927, 29.180889>,  <27.193914, 19.761042, 29.343218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650892, 20.149927, 29.180889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.787148, 20.344917, 29.502468>,  <26.868900, 20.461912, 29.695415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.787148, 20.344917, 29.502468>,  <26.650892, 20.149927, 29.180889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787148, 20.344917, 29.502468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376912, 0.854172, -0.358228,
		-0.861338, -0.180992, 0.474699,
		0.340638, 0.487475, 0.803949,
		26.889339, 20.491159, 29.743652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032345, 20.537033, 29.440058>,  <26.650892, 20.149927, 29.180889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032345, 20.537033, 29.440058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.364607, 20.696812, 29.595211>,  <26.563963, 20.792679, 29.688303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.364607, 20.696812, 29.595211>,  <26.032345, 20.537033, 29.440058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364607, 20.696812, 29.595211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286292, 0.903914, -0.317767,
		-0.477546, 0.152906, 0.865199,
		0.830654, 0.399448, 0.387885,
		26.613804, 20.816647, 29.711576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828484, 21.247419, 29.696333>,  <26.032345, 20.537033, 29.440058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828484, 21.247419, 29.696333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.227098, 21.254589, 29.663849>,  <26.466267, 21.258890, 29.644360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.227098, 21.254589, 29.663849>,  <25.828484, 21.247419, 29.696333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227098, 21.254589, 29.663849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046975, 0.927117, -0.371817,
		0.068624, 0.374344, 0.924747,
		0.996536, 0.017925, -0.081208,
		26.526060, 21.259966, 29.639486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025114, 21.942636, 29.963245>,  <25.828484, 21.247419, 29.696333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025114, 21.942636, 29.963245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.347261, 21.819530, 29.760597>,  <26.540550, 21.745667, 29.639008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.347261, 21.819530, 29.760597>,  <26.025114, 21.942636, 29.963245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347261, 21.819530, 29.760597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058241, 0.891604, -0.449056,
		0.589910, 0.332149, 0.735992,
		0.805366, -0.307767, -0.506621,
		26.588871, 21.727200, 29.608610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580038, 22.446815, 30.089933>,  <26.025114, 21.942636, 29.963245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580038, 22.446815, 30.089933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.697977, 22.258652, 29.757240>,  <26.768742, 22.145754, 29.557625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.697977, 22.258652, 29.757240>,  <26.580038, 22.446815, 30.089933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697977, 22.258652, 29.757240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328470, 0.867283, -0.374071,
		0.897313, -0.162905, 0.410233,
		0.294850, -0.470408, -0.831733,
		26.786432, 22.117529, 29.507721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161642, 22.679346, 29.972034>,  <26.580038, 22.446815, 30.089933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161642, 22.679346, 29.972034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.075283, 22.551292, 29.603058>,  <27.023468, 22.474461, 29.381672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.075283, 22.551292, 29.603058>,  <27.161642, 22.679346, 29.972034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075283, 22.551292, 29.603058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379148, 0.843106, -0.381339,
		0.899797, -0.432074, -0.060647,
		-0.215898, -0.320134, -0.922444,
		27.010513, 22.455252, 29.326324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787964, 22.747353, 29.513422>,  <27.161642, 22.679346, 29.972034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787964, 22.747353, 29.513422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.479481, 22.746666, 29.258789>,  <27.294392, 22.746254, 29.106010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.479481, 22.746666, 29.258789>,  <27.787964, 22.747353, 29.513422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479481, 22.746666, 29.258789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394557, 0.783464, -0.480113,
		0.499563, -0.621434, -0.603536,
		-0.771208, -0.001718, -0.636581,
		27.248119, 22.746151, 29.067814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409212, 22.492485, 29.275896>,  <27.787964, 22.747353, 29.513422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409212, 22.492485, 29.275896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.793818, 22.556183, 29.365456>,  <29.024582, 22.594402, 29.419191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.793818, 22.556183, 29.365456>,  <28.409212, 22.492485, 29.275896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793818, 22.556183, 29.365456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003546, -0.807645, 0.589659,
		0.274731, -0.567760, -0.775997,
		0.961515, 0.159246, 0.223899,
		29.082272, 22.603956, 29.432625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788588, 21.943050, 29.042990>,  <28.409212, 22.492485, 29.275896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788588, 21.943050, 29.042990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.989100, 22.098022, 29.352470>,  <29.109406, 22.191006, 29.538158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.989100, 22.098022, 29.352470>,  <28.788588, 21.943050, 29.042990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989100, 22.098022, 29.352470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046657, -0.904961, 0.422929,
		0.864027, -0.175907, -0.471714,
		0.501279, 0.387431, 0.773704,
		29.139482, 22.214252, 29.584581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274214, 21.388472, 29.135548>,  <28.788588, 21.943050, 29.042990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274214, 21.388472, 29.135548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.262133, 21.612160, 29.466934>,  <29.254885, 21.746372, 29.665766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.262133, 21.612160, 29.466934>,  <29.274214, 21.388472, 29.135548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262133, 21.612160, 29.466934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066980, -0.825851, 0.559896,
		0.997297, 0.072401, -0.012515,
		-0.030201, 0.559221, 0.828468,
		29.253073, 21.779926, 29.715475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770140, 21.133049, 29.543819>,  <29.274214, 21.388472, 29.135548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770140, 21.133049, 29.543819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.579794, 21.370289, 29.803600>,  <29.465586, 21.512632, 29.959469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.579794, 21.370289, 29.803600>,  <29.770140, 21.133049, 29.543819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579794, 21.370289, 29.803600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148430, -0.673670, 0.723973,
		0.866903, 0.440912, 0.232542,
		-0.475865, 0.593098, 0.649451,
		29.437035, 21.548218, 29.998436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236498, 21.229652, 30.119251>,  <29.770140, 21.133049, 29.543819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236498, 21.229652, 30.119251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.883640, 21.341457, 30.270882>,  <29.671926, 21.408541, 30.361860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.883640, 21.341457, 30.270882>,  <30.236498, 21.229652, 30.119251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883640, 21.341457, 30.270882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062917, -0.727710, 0.682993,
		0.466762, 0.626347, 0.624358,
		-0.882142, 0.279512, 0.379075,
		29.618998, 21.425310, 30.384604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427551, 21.375425, 30.709030>,  <30.236498, 21.229652, 30.119251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427551, 21.375425, 30.709030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041182, 21.272049, 30.703445>,  <29.809359, 21.210024, 30.700094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041182, 21.272049, 30.703445>,  <30.427551, 21.375425, 30.709030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041182, 21.272049, 30.703445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192702, -0.754136, 0.627810,
		-0.172780, 0.603728, 0.778241,
		-0.965926, -0.258442, -0.013960,
		29.751404, 21.194517, 30.699257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159359, 21.624392, 31.448383>,  <30.427551, 21.375425, 30.709030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159359, 21.624392, 31.448383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.934715, 21.347656, 31.266853>,  <29.799929, 21.181614, 31.157936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.934715, 21.347656, 31.266853>,  <30.159359, 21.624392, 31.448383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934715, 21.347656, 31.266853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206753, -0.648432, 0.732659,
		-0.801156, 0.317637, 0.507204,
		-0.561607, -0.691840, -0.453823,
		29.766233, 21.140104, 31.130707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333221, 21.931295, 32.161953>,  <30.159359, 21.624392, 31.448383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333221, 21.931295, 32.161953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.649466, 22.051205, 32.375523>,  <30.839212, 22.123150, 32.503662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.649466, 22.051205, 32.375523>,  <30.333221, 21.931295, 32.161953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649466, 22.051205, 32.375523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224968, 0.668774, -0.708611,
		-0.569495, 0.680351, 0.461301,
		0.790611, 0.299772, 0.533921,
		30.886648, 22.141136, 32.535698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311176, 22.694878, 32.131165>,  <30.333221, 21.931295, 32.161953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311176, 22.694878, 32.131165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687311, 22.598297, 32.227051>,  <30.912992, 22.540348, 32.284584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687311, 22.598297, 32.227051>,  <30.311176, 22.694878, 32.131165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687311, 22.598297, 32.227051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339886, 0.634515, -0.694167,
		0.015507, 0.734228, 0.678726,
		0.940339, -0.241453, 0.239715,
		30.969414, 22.525862, 32.298965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705210, 23.304264, 32.207577>,  <30.311176, 22.694878, 32.131165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705210, 23.304264, 32.207577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.958229, 23.006268, 32.122849>,  <31.110041, 22.827469, 32.072014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.958229, 23.006268, 32.122849>,  <30.705210, 23.304264, 32.207577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958229, 23.006268, 32.122849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435257, 0.568136, -0.698407,
		0.640650, 0.349582, 0.683637,
		0.632550, -0.744992, -0.211819,
		31.147993, 22.782770, 32.059303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356630, 23.743109, 32.245335>,  <30.705210, 23.304264, 32.207577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356630, 23.743109, 32.245335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.453270, 23.399254, 32.065266>,  <31.511253, 23.192942, 31.957226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.453270, 23.399254, 32.065266>,  <31.356630, 23.743109, 32.245335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453270, 23.399254, 32.065266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602277, 0.496584, -0.625034,
		0.760849, -0.120118, 0.637715,
		0.241601, -0.859637, -0.450170,
		31.525751, 23.141363, 31.930214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106968, 23.733593, 32.113178>,  <31.356630, 23.743109, 32.245335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106968, 23.733593, 32.113178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975367, 23.455521, 31.857529>,  <31.896404, 23.288677, 31.704140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975367, 23.455521, 31.857529>,  <32.106968, 23.733593, 32.113178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975367, 23.455521, 31.857529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456475, 0.475400, -0.752081,
		0.826671, -0.539183, 0.160924,
		-0.329006, -0.695181, -0.639123,
		31.876665, 23.246965, 31.665792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649590, 23.446594, 31.724453>,  <32.106968, 23.733593, 32.113178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649590, 23.446594, 31.724453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337528, 23.363598, 31.488380>,  <32.150291, 23.313801, 31.346737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.337528, 23.363598, 31.488380>,  <32.649590, 23.446594, 31.724453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337528, 23.363598, 31.488380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525623, 0.294173, -0.798237,
		0.339248, -0.932956, -0.120433,
		-0.780148, -0.207498, -0.590180,
		32.103481, 23.301350, 31.311327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990669, 23.205742, 31.094679>,  <32.649590, 23.446594, 31.724453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990669, 23.205742, 31.094679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621586, 23.327320, 30.999825>,  <32.400135, 23.400267, 30.942911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621586, 23.327320, 30.999825>,  <32.990669, 23.205742, 31.094679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621586, 23.327320, 30.999825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373530, 0.552747, -0.744948,
		-0.095346, -0.775944, -0.623554,
		-0.922705, 0.303944, -0.237136,
		32.344776, 23.418503, 30.928684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.465475, 22.839485, 36.985214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.282507, 22.689945, 36.662476>,  <26.172726, 22.600222, 36.468834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.282507, 22.689945, 36.662476>,  <26.465475, 22.839485, 36.985214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282507, 22.689945, 36.662476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373643, 0.742552, -0.555885,
		0.806945, -0.555744, -0.199968,
		-0.457417, -0.373852, -0.806848,
		26.145281, 22.577789, 36.420422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930313, 22.858505, 36.314396>,  <26.465475, 22.839485, 36.985214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930313, 22.858505, 36.314396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.541018, 22.863441, 36.222614>,  <26.307440, 22.866404, 36.167545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.541018, 22.863441, 36.222614>,  <26.930313, 22.858505, 36.314396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541018, 22.863441, 36.222614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164100, 0.736319, -0.656434,
		0.160853, -0.676522, -0.718640,
		-0.973241, 0.012340, -0.229457,
		26.249044, 22.867144, 36.153778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968636, 22.917828, 35.574837>,  <26.930313, 22.858505, 36.314396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968636, 22.917828, 35.574837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.611977, 23.043560, 35.705170>,  <26.397982, 23.118999, 35.783367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.611977, 23.043560, 35.705170>,  <26.968636, 22.917828, 35.574837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611977, 23.043560, 35.705170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031812, 0.761412, -0.647487,
		-0.451615, -0.566963, -0.688909,
		-0.891645, 0.314331, 0.325829,
		26.344482, 23.137859, 35.802917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679056, 23.144323, 35.028297>,  <26.968636, 22.917828, 35.574837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679056, 23.144323, 35.028297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.429382, 23.302380, 35.297890>,  <26.279577, 23.397213, 35.459644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.429382, 23.302380, 35.297890>,  <26.679056, 23.144323, 35.028297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429382, 23.302380, 35.297890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180734, 0.766243, -0.616610,
		-0.760084, -0.506690, -0.406862,
		-0.624185, 0.395142, 0.673985,
		26.242126, 23.420921, 35.500084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931511, 23.301086, 34.729740>,  <26.679056, 23.144323, 35.028297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931511, 23.301086, 34.729740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.982809, 23.538727, 35.047382>,  <26.013588, 23.681311, 35.237968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.982809, 23.538727, 35.047382>,  <25.931511, 23.301086, 34.729740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982809, 23.538727, 35.047382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014980, 0.801784, -0.597426,
		-0.991630, 0.064722, 0.111725,
		0.128245, 0.594099, 0.794103,
		26.021282, 23.716957, 35.285614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443535, 23.855560, 34.593704>,  <25.931511, 23.301086, 34.729740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443535, 23.855560, 34.593704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.673210, 24.010933, 34.881989>,  <25.811016, 24.104156, 35.054958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.673210, 24.010933, 34.881989>,  <25.443535, 23.855560, 34.593704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673210, 24.010933, 34.881989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139739, 0.913869, -0.381204,
		-0.806709, 0.118171, 0.579013,
		0.574189, 0.388431, 0.720714,
		25.845467, 24.127462, 35.098202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081711, 24.468401, 34.825691>,  <25.443535, 23.855560, 34.593704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081711, 24.468401, 34.825691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.469795, 24.511784, 34.912342>,  <25.702646, 24.537813, 34.964333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.469795, 24.511784, 34.912342>,  <25.081711, 24.468401, 34.825691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469795, 24.511784, 34.912342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013853, 0.917568, -0.397338,
		-0.241866, 0.382501, 0.891736,
		0.970211, 0.108456, 0.216630,
		25.760859, 24.544321, 34.977329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128077, 25.177759, 35.194813>,  <25.081711, 24.468401, 34.825691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128077, 25.177759, 35.194813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.492727, 25.058445, 35.081703>,  <25.711517, 24.986856, 35.013840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.492727, 25.058445, 35.081703>,  <25.128077, 25.177759, 35.194813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492727, 25.058445, 35.081703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139462, 0.871653, -0.469864,
		0.386632, 0.388905, 0.836223,
		0.911628, -0.298285, -0.282771,
		25.766216, 24.968960, 34.996872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569668, 25.823013, 35.358524>,  <25.128077, 25.177759, 35.194813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569668, 25.823013, 35.358524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.783747, 25.606228, 35.099346>,  <25.912193, 25.476156, 34.943840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.783747, 25.606228, 35.099346>,  <25.569668, 25.823013, 35.358524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783747, 25.606228, 35.099346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350268, 0.840383, -0.413605,
		0.768684, -0.005595, 0.639604,
		0.535198, -0.541964, -0.647949,
		25.944305, 25.443638, 34.904961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204876, 26.116364, 35.274147>,  <25.569668, 25.823013, 35.358524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204876, 26.116364, 35.274147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.180803, 25.913795, 34.930073>,  <26.166359, 25.792255, 34.723629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.180803, 25.913795, 34.930073>,  <26.204876, 26.116364, 35.274147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180803, 25.913795, 34.930073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178202, 0.842451, -0.508448,
		0.982152, -0.183886, 0.039544,
		-0.060182, -0.506420, -0.860184,
		26.162748, 25.761869, 34.672016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824884, 26.311052, 34.941769>,  <26.204876, 26.116364, 35.274147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824884, 26.311052, 34.941769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.578745, 26.174252, 34.657692>,  <26.431061, 26.092171, 34.487244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.578745, 26.174252, 34.657692>,  <26.824884, 26.311052, 34.941769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578745, 26.174252, 34.657692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215140, 0.793898, -0.568719,
		0.758323, -0.502755, -0.414950,
		-0.615355, -0.342000, -0.710193,
		26.394140, 26.071650, 34.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029154, 26.671635, 34.335037>,  <26.824884, 26.311052, 34.941769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029154, 26.671635, 34.335037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.663908, 26.556091, 34.219944>,  <26.444761, 26.486765, 34.150890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.663908, 26.556091, 34.219944>,  <27.029154, 26.671635, 34.335037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663908, 26.556091, 34.219944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047902, 0.776843, -0.627870,
		0.404884, -0.559533, -0.723182,
		-0.913113, -0.288856, -0.287728,
		26.389975, 26.469435, 34.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531944, 26.139751, 34.223423>,  <27.029154, 26.671635, 34.335037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531944, 26.139751, 34.223423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929516, 26.117737, 34.185307>,  <28.168058, 26.104528, 34.162437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.929516, 26.117737, 34.185307>,  <27.531944, 26.139751, 34.223423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929516, 26.117737, 34.185307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001742, -0.857957, 0.513719,
		-0.110028, -0.510765, -0.852651,
		0.993927, -0.055038, -0.095289,
		28.227694, 26.101225, 34.156719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774660, 25.516676, 33.911583>,  <27.531944, 26.139751, 34.223423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774660, 25.516676, 33.911583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071447, 25.665501, 34.134670>,  <28.249519, 25.754795, 34.268524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071447, 25.665501, 34.134670>,  <27.774660, 25.516676, 33.911583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071447, 25.665501, 34.134670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045706, -0.858013, 0.511590,
		0.668874, -0.354093, -0.653626,
		0.741970, 0.372064, 0.557718,
		28.294039, 25.777121, 34.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361223, 25.052246, 33.812984>,  <27.774660, 25.516676, 33.911583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361223, 25.052246, 33.812984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.440912, 25.238350, 34.157970>,  <28.488726, 25.350012, 34.364960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.440912, 25.238350, 34.157970>,  <28.361223, 25.052246, 33.812984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440912, 25.238350, 34.157970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336530, -0.859064, 0.385691,
		0.920358, 0.213406, -0.327719,
		0.199223, 0.465261, 0.862463,
		28.500679, 25.377928, 34.416710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993841, 24.902298, 33.872150>,  <28.361223, 25.052246, 33.812984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993841, 24.902298, 33.872150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.903109, 25.030750, 34.239937>,  <28.848669, 25.107822, 34.460609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.903109, 25.030750, 34.239937>,  <28.993841, 24.902298, 33.872150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903109, 25.030750, 34.239937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315574, -0.868910, 0.381325,
		0.921391, 0.376656, 0.095753,
		-0.226829, 0.321132, 0.919469,
		28.835060, 25.127090, 34.515778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588701, 24.740820, 34.305988>,  <28.993841, 24.902298, 33.872150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588701, 24.740820, 34.305988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.273708, 24.786945, 34.548172>,  <29.084713, 24.814621, 34.693481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.273708, 24.786945, 34.548172>,  <29.588701, 24.740820, 34.305988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273708, 24.786945, 34.548172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249018, -0.839069, 0.483688,
		0.563794, 0.531664, 0.632036,
		-0.787481, 0.115313, 0.605456,
		29.037464, 24.821539, 34.729809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846510, 24.582516, 34.981438>,  <29.588701, 24.740820, 34.305988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846510, 24.582516, 34.981438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.450272, 24.528996, 34.992889>,  <29.212528, 24.496883, 34.999760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.450272, 24.528996, 34.992889>,  <29.846510, 24.582516, 34.981438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450272, 24.528996, 34.992889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134827, -0.918864, 0.370824,
		-0.023311, 0.371196, 0.928262,
		-0.990595, -0.133799, 0.028627,
		29.153093, 24.488855, 35.001476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776031, 24.308657, 35.663227>,  <29.846510, 24.582516, 34.981438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776031, 24.308657, 35.663227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.432270, 24.214069, 35.481895>,  <29.226013, 24.157318, 35.373096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.432270, 24.214069, 35.481895>,  <29.776031, 24.308657, 35.663227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432270, 24.214069, 35.481895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046568, -0.846744, 0.529958,
		-0.509174, 0.476558, 0.716682,
		-0.859403, -0.236467, -0.453333,
		29.174450, 24.143129, 35.345894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425625, 23.902164, 36.215000>,  <29.776031, 24.308657, 35.663227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425625, 23.902164, 36.215000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.236099, 23.819702, 35.872540>,  <29.122385, 23.770224, 35.667061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.236099, 23.819702, 35.872540>,  <29.425625, 23.902164, 36.215000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236099, 23.819702, 35.872540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297056, -0.877813, 0.375768,
		-0.829012, 0.432370, 0.354678,
		-0.473812, -0.206157, -0.856155,
		29.093956, 23.757854, 35.615692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760483, 23.552437, 36.357075>,  <29.425625, 23.902164, 36.215000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760483, 23.552437, 36.357075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810860, 23.449196, 35.973927>,  <28.841085, 23.387251, 35.744038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810860, 23.449196, 35.973927>,  <28.760483, 23.552437, 36.357075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810860, 23.449196, 35.973927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319001, -0.924816, 0.207252,
		-0.939350, 0.279461, -0.198805,
		0.125940, -0.258101, -0.957874,
		28.848642, 23.371765, 35.686565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289909, 23.050169, 36.152588>,  <28.760483, 23.552437, 36.357075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289909, 23.050169, 36.152588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552145, 22.967102, 35.862186>,  <28.709486, 22.917263, 35.687946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552145, 22.967102, 35.862186>,  <28.289909, 23.050169, 36.152588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552145, 22.967102, 35.862186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182152, -0.976541, 0.114845,
		-0.732820, 0.056952, -0.678035,
		0.655588, -0.207666, -0.726002,
		28.748821, 22.904802, 35.644386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935879, 22.654079, 35.706810>,  <28.289909, 23.050169, 36.152588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935879, 22.654079, 35.706810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.317200, 22.560215, 35.630760>,  <28.545992, 22.503897, 35.585133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.317200, 22.560215, 35.630760>,  <27.935879, 22.654079, 35.706810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317200, 22.560215, 35.630760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231095, -0.972066, 0.041030,
		-0.194438, 0.004822, -0.980903,
		0.953304, -0.234659, -0.190121,
		28.603191, 22.489817, 35.573723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955868, 22.106037, 35.268711>,  <27.935879, 22.654079, 35.706810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955868, 22.106037, 35.268711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.319157, 22.066086, 35.431271>,  <28.537130, 22.042116, 35.528805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.319157, 22.066086, 35.431271>,  <27.955868, 22.106037, 35.268711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319157, 22.066086, 35.431271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144058, -0.986368, 0.079532,
		0.392912, -0.130777, -0.910229,
		0.908222, -0.099877, 0.406395,
		28.591623, 22.036123, 35.553188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172503, 21.594566, 34.986156>,  <27.955868, 22.106037, 35.268711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172503, 21.594566, 34.986156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.423410, 21.613407, 35.297108>,  <28.573956, 21.624712, 35.483677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.423410, 21.613407, 35.297108>,  <28.172503, 21.594566, 34.986156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423410, 21.613407, 35.297108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141963, -0.974531, 0.173597,
		0.765755, -0.219251, -0.604607,
		0.627269, 0.047101, 0.777377,
		28.611591, 21.627537, 35.530319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749489, 21.182604, 34.833618>,  <28.172503, 21.594566, 34.986156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749489, 21.182604, 34.833618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.719894, 21.212532, 35.231396>,  <28.702137, 21.230488, 35.470062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.719894, 21.212532, 35.231396>,  <28.749489, 21.182604, 34.833618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719894, 21.212532, 35.231396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100301, -0.991567, 0.082064,
		0.992202, 0.105816, 0.065859,
		-0.073987, 0.074818, 0.994449,
		28.697699, 21.234978, 35.529732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282322, 21.658211, 35.170574>,  <28.749489, 21.182604, 34.833618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282322, 21.658211, 35.170574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335941, 21.381084, 34.887157>,  <29.368113, 21.214808, 34.717106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335941, 21.381084, 34.887157>,  <29.282322, 21.658211, 35.170574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335941, 21.381084, 34.887157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751388, 0.537227, -0.383149,
		0.646102, -0.481032, 0.592588,
		0.134048, -0.692817, -0.708545,
		29.376156, 21.173239, 34.674595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013731, 21.558815, 35.104660>,  <29.282322, 21.658211, 35.170574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013731, 21.558815, 35.104660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.847425, 21.419395, 34.768646>,  <29.747643, 21.335743, 34.567039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.847425, 21.419395, 34.768646>,  <30.013731, 21.558815, 35.104660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847425, 21.419395, 34.768646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681382, 0.492389, -0.541546,
		0.602379, -0.797537, 0.032779,
		-0.415763, -0.348551, -0.840032,
		29.722696, 21.314831, 34.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528961, 21.258764, 34.780331>,  <30.013731, 21.558815, 35.104660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528961, 21.258764, 34.780331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.247763, 21.319489, 34.502411>,  <30.079042, 21.355923, 34.335659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.247763, 21.319489, 34.502411>,  <30.528961, 21.258764, 34.780331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247763, 21.319489, 34.502411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700349, 0.317721, -0.639190,
		0.123715, -0.935952, -0.329679,
		-0.702997, 0.151813, -0.694800,
		30.036863, 21.365032, 34.293972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641598, 20.780741, 34.239132>,  <30.528961, 21.258764, 34.780331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641598, 20.780741, 34.239132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458115, 21.101322, 34.085636>,  <30.348024, 21.293671, 33.993538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458115, 21.101322, 34.085636>,  <30.641598, 20.780741, 34.239132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458115, 21.101322, 34.085636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791677, 0.172491, -0.586083,
		-0.403528, -0.572640, -0.713617,
		-0.458707, 0.801455, -0.383741,
		30.320503, 21.341759, 33.970512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703672, 20.667391, 33.538258>,  <30.641598, 20.780741, 34.239132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703672, 20.667391, 33.538258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.638449, 21.061108, 33.565342>,  <30.599316, 21.297337, 33.581593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.638449, 21.061108, 33.565342>,  <30.703672, 20.667391, 33.538258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638449, 21.061108, 33.565342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636400, 0.157374, -0.755135,
		-0.753928, -0.080038, -0.652063,
		-0.163057, 0.984290, 0.067713,
		30.589531, 21.356394, 33.585655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518232, 20.824057, 32.866783>,  <30.703672, 20.667391, 33.538258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518232, 20.824057, 32.866783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.626467, 21.170444, 33.035011>,  <30.691406, 21.378277, 33.135948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.626467, 21.170444, 33.035011>,  <30.518232, 20.824057, 32.866783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626467, 21.170444, 33.035011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536094, 0.227322, -0.812974,
		-0.799617, 0.445444, -0.402732,
		0.270585, 0.865970, 0.420571,
		30.707642, 21.430235, 33.161182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721121, 21.234577, 32.317764>,  <30.518232, 20.824057, 32.866783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721121, 21.234577, 32.317764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.805517, 21.531162, 32.572548>,  <30.856155, 21.709112, 32.725418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.805517, 21.531162, 32.572548>,  <30.721121, 21.234577, 32.317764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805517, 21.531162, 32.572548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144762, 0.620742, -0.770535,
		-0.966709, 0.254784, 0.023637,
		0.210993, 0.741461, 0.636960,
		30.868814, 21.753601, 32.763638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906662, 21.209648, 32.029064>,  <30.721121, 21.234577, 32.317764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906662, 21.209648, 32.029064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.857773, 20.963699, 31.717426>,  <29.828440, 20.816130, 31.530443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.857773, 20.963699, 31.717426>,  <29.906662, 21.209648, 32.029064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857773, 20.963699, 31.717426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176643, -0.758974, 0.626702,
		-0.976657, 0.214220, -0.015849,
		-0.122224, -0.614872, -0.779098,
		29.821106, 20.779238, 31.483696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319826, 20.838303, 32.170872>,  <29.906662, 21.209648, 32.029064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319826, 20.838303, 32.170872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.499640, 20.619499, 31.888397>,  <29.607527, 20.488218, 31.718912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.499640, 20.619499, 31.888397>,  <29.319826, 20.838303, 32.170872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499640, 20.619499, 31.888397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286592, -0.837099, 0.465973,
		-0.846050, -0.007072, -0.533058,
		0.449517, -0.547007, -0.706200,
		29.634499, 20.455397, 31.676540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912088, 20.231678, 32.273094>,  <29.319826, 20.838303, 32.170872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912088, 20.231678, 32.273094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.219704, 20.139675, 32.034542>,  <29.404274, 20.084475, 31.891409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.219704, 20.139675, 32.034542>,  <28.912088, 20.231678, 32.273094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219704, 20.139675, 32.034542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104299, -0.965666, 0.237930,
		-0.630634, -0.120776, -0.766626,
		0.769040, -0.230005, -0.596385,
		29.450417, 20.070673, 31.855627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686810, 19.756968, 31.823095>,  <28.912088, 20.231678, 32.273094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686810, 19.756968, 31.823095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.079437, 19.696514, 31.869884>,  <29.315014, 19.660242, 31.897959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.079437, 19.696514, 31.869884>,  <28.686810, 19.756968, 31.823095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079437, 19.696514, 31.869884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178899, -0.941914, 0.284240,
		0.067222, -0.299927, -0.951591,
		0.981569, -0.151131, 0.116974,
		29.373907, 19.651175, 31.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834436, 19.068676, 31.628489>,  <28.686810, 19.756968, 31.823095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834436, 19.068676, 31.628489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.143770, 19.182011, 31.855354>,  <29.329370, 19.250011, 31.991474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.143770, 19.182011, 31.855354>,  <28.834436, 19.068676, 31.628489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143770, 19.182011, 31.855354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045309, -0.867597, 0.495200,
		0.632377, -0.408653, -0.658105,
		0.773335, 0.283335, 0.567163,
		29.375771, 19.267012, 32.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346521, 18.643669, 31.528555>,  <28.834436, 19.068676, 31.628489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346521, 18.643669, 31.528555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.407370, 18.777100, 31.900703>,  <29.443878, 18.857157, 32.123993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.407370, 18.777100, 31.900703>,  <29.346521, 18.643669, 31.528555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407370, 18.777100, 31.900703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081606, -0.933871, 0.348173,
		0.984987, -0.128888, -0.114839,
		0.152121, 0.333575, 0.930370,
		29.453007, 18.877172, 32.179813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670513, 18.110344, 31.868786>,  <29.346521, 18.643669, 31.528555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670513, 18.110344, 31.868786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.530418, 18.337605, 32.166656>,  <29.446362, 18.473961, 32.345379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.530418, 18.337605, 32.166656>,  <29.670513, 18.110344, 31.868786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530418, 18.337605, 32.166656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136637, -0.817517, 0.559461,
		0.926642, 0.094193, 0.363954,
		-0.350236, 0.568149, 0.744675,
		29.425348, 18.508049, 32.390060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859909, 17.698076, 32.441994>,  <29.670513, 18.110344, 31.868786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859909, 17.698076, 32.441994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.638538, 17.992836, 32.597275>,  <29.505716, 18.169693, 32.690441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.638538, 17.992836, 32.597275>,  <29.859909, 17.698076, 32.441994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638538, 17.992836, 32.597275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221460, -0.579494, 0.784310,
		0.802917, 0.348087, 0.483900,
		-0.553425, 0.736901, 0.388199,
		29.472511, 18.213905, 32.713734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035906, 17.767191, 33.174492>,  <29.859909, 17.698076, 32.441994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035906, 17.767191, 33.174492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.654558, 17.877720, 33.125946>,  <29.425749, 17.944036, 33.096817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.654558, 17.877720, 33.125946>,  <30.035906, 17.767191, 33.174492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654558, 17.877720, 33.125946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285326, -0.694183, 0.660833,
		0.098350, 0.664648, 0.740655,
		-0.953371, 0.276321, -0.121368,
		29.368547, 17.960617, 33.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.904068, 30.851242, 23.222401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514967, 30.934769, 23.262691>,  <30.281506, 30.984884, 23.286865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514967, 30.934769, 23.262691>,  <30.904068, 30.851242, 23.222401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514967, 30.934769, 23.262691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072474, -0.686579, 0.723434,
		0.220221, 0.696423, 0.683006,
		-0.972754, 0.208816, 0.100726,
		30.223141, 30.997414, 23.292910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756981, 31.007647, 23.984344>,  <30.904068, 30.851242, 23.222401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756981, 31.007647, 23.984344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412024, 30.897751, 23.814262>,  <30.205050, 30.831814, 23.712214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412024, 30.897751, 23.814262>,  <30.756981, 31.007647, 23.984344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412024, 30.897751, 23.814262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164178, -0.642747, 0.748279,
		-0.478881, 0.715119, 0.509194,
		-0.862391, -0.274739, -0.425206,
		30.153307, 30.815329, 23.686701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266998, 30.890039, 24.502012>,  <30.756981, 31.007647, 23.984344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266998, 30.890039, 24.502012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085953, 30.677372, 24.215664>,  <29.977325, 30.549772, 24.043856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085953, 30.677372, 24.215664>,  <30.266998, 30.890039, 24.502012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085953, 30.677372, 24.215664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262133, -0.688006, 0.676708,
		-0.852307, 0.493940, 0.172034,
		-0.452614, -0.531667, -0.715871,
		29.950169, 30.517872, 24.000902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666191, 30.587128, 24.840942>,  <30.266998, 30.890039, 24.502012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666191, 30.587128, 24.840942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740253, 30.381371, 24.506012>,  <29.784691, 30.257917, 24.305054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740253, 30.381371, 24.506012>,  <29.666191, 30.587128, 24.840942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740253, 30.381371, 24.506012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211082, -0.852991, 0.477337,
		-0.959772, 0.088363, -0.266515,
		0.185156, -0.514391, -0.837328,
		29.795801, 30.227053, 24.254814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145184, 30.162781, 24.923428>,  <29.666191, 30.587128, 24.840942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145184, 30.162781, 24.923428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377419, 29.983768, 24.651360>,  <29.516760, 29.876362, 24.488119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377419, 29.983768, 24.651360>,  <29.145184, 30.162781, 24.923428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377419, 29.983768, 24.651360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062421, -0.857396, 0.510857,
		-0.811800, -0.254141, -0.525730,
		0.580589, -0.447531, -0.680171,
		29.551596, 29.849508, 24.447308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793001, 29.572119, 24.800255>,  <29.145184, 30.162781, 24.923428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793001, 29.572119, 24.800255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148340, 29.498150, 24.632141>,  <29.361544, 29.453768, 24.531273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148340, 29.498150, 24.632141>,  <28.793001, 29.572119, 24.800255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148340, 29.498150, 24.632141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028803, -0.935957, 0.350935,
		-0.458264, -0.299647, -0.836783,
		0.888349, -0.184923, -0.420285,
		29.414845, 29.442673, 24.506056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705486, 28.974142, 24.425030>,  <28.793001, 29.572119, 24.800255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705486, 28.974142, 24.425030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075960, 29.041298, 24.560081>,  <29.298244, 29.081593, 24.641113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075960, 29.041298, 24.560081>,  <28.705486, 28.974142, 24.425030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075960, 29.041298, 24.560081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034379, -0.854077, 0.519010,
		0.375498, -0.492307, -0.785261,
		0.926185, 0.167891, 0.337629,
		29.353815, 29.091665, 24.661369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988609, 28.318825, 24.472189>,  <28.705486, 28.974142, 24.425030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988609, 28.318825, 24.472189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264732, 28.516647, 24.683430>,  <29.430407, 28.635342, 24.810173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264732, 28.516647, 24.683430>,  <28.988609, 28.318825, 24.472189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264732, 28.516647, 24.683430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186488, -0.826865, 0.530581,
		0.699071, -0.267779, -0.663019,
		0.690306, 0.494558, 0.528100,
		29.471825, 28.665014, 24.841860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737947, 28.038677, 24.365946>,  <28.988609, 28.318825, 24.472189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737947, 28.038677, 24.365946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696384, 28.226166, 24.716831>,  <29.671446, 28.338659, 24.927362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696384, 28.226166, 24.716831>,  <29.737947, 28.038677, 24.365946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696384, 28.226166, 24.716831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204698, -0.853027, 0.480045,
		0.973294, 0.229444, -0.007311,
		-0.103907, 0.468722, 0.877213,
		29.665213, 28.366783, 24.979996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307028, 27.838858, 24.764742>,  <29.737947, 28.038677, 24.365946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307028, 27.838858, 24.764742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041296, 27.969372, 25.033726>,  <29.881857, 28.047680, 25.195116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041296, 27.969372, 25.033726>,  <30.307028, 27.838858, 24.764742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041296, 27.969372, 25.033726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119874, -0.841528, 0.526745,
		0.737766, 0.430543, 0.519937,
		-0.664328, 0.326287, 0.672462,
		29.841997, 28.067259, 25.235464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636528, 27.808775, 25.471832>,  <30.307028, 27.838858, 24.764742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636528, 27.808775, 25.471832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248055, 27.800034, 25.566765>,  <30.014971, 27.794788, 25.623724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248055, 27.800034, 25.566765>,  <30.636528, 27.808775, 25.471832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248055, 27.800034, 25.566765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149104, -0.832565, 0.533483,
		0.185934, 0.553497, 0.811831,
		-0.971183, -0.021855, 0.237331,
		29.956699, 27.793476, 25.637964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612411, 27.740786, 26.236414>,  <30.636528, 27.808775, 25.471832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612411, 27.740786, 26.236414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251816, 27.633034, 26.100914>,  <30.035458, 27.568382, 26.019613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251816, 27.633034, 26.100914>,  <30.612411, 27.740786, 26.236414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251816, 27.633034, 26.100914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014245, -0.800735, 0.598849,
		-0.432569, 0.535030, 0.725691,
		-0.901489, -0.269381, -0.338751,
		29.981369, 27.552219, 25.999289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982286, 28.013371, 26.901770>,  <30.612411, 27.740786, 26.236414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982286, 28.013371, 26.901770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362194, 27.908508, 26.833405>,  <31.590139, 27.845591, 26.792385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362194, 27.908508, 26.833405>,  <30.982286, 28.013371, 26.901770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362194, 27.908508, 26.833405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133732, 0.833755, -0.535695,
		0.282936, 0.485930, 0.826933,
		0.949770, -0.262155, -0.170915,
		31.647125, 27.829863, 26.782129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433346, 28.586031, 26.854004>,  <30.982286, 28.013371, 26.901770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433346, 28.586031, 26.854004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641907, 28.335819, 26.621849>,  <31.767044, 28.185692, 26.482555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641907, 28.335819, 26.621849>,  <31.433346, 28.586031, 26.854004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641907, 28.335819, 26.621849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310213, 0.772575, -0.553981,
		0.794927, 0.108803, 0.596870,
		0.521402, -0.625531, -0.580388,
		31.798326, 28.148159, 26.447733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085091, 28.914103, 26.669569>,  <31.433346, 28.586031, 26.854004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085091, 28.914103, 26.669569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064453, 28.638542, 26.380363>,  <32.052071, 28.473206, 26.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064453, 28.638542, 26.380363>,  <32.085091, 28.914103, 26.669569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064453, 28.638542, 26.380363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527331, 0.596026, -0.605537,
		0.848092, -0.412512, 0.332526,
		-0.051597, -0.688902, -0.723015,
		32.048973, 28.431871, 26.163460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661430, 28.653790, 26.536732>,  <32.085091, 28.914103, 26.669569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661430, 28.653790, 26.536732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478271, 28.585037, 26.187840>,  <32.368374, 28.543785, 25.978504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478271, 28.585037, 26.187840>,  <32.661430, 28.653790, 26.536732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478271, 28.585037, 26.187840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740986, 0.468299, -0.481285,
		0.491189, -0.866690, -0.087071,
		-0.457900, -0.171883, -0.872229,
		32.340900, 28.533472, 25.926170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220692, 28.604162, 26.027397>,  <32.661430, 28.653790, 26.536732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220692, 28.604162, 26.027397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880886, 28.671558, 25.827419>,  <32.677002, 28.711996, 25.707432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880886, 28.671558, 25.827419>,  <33.220692, 28.604162, 26.027397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880886, 28.671558, 25.827419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511665, 0.494086, -0.702907,
		0.128580, -0.852930, -0.505943,
		-0.849509, 0.168493, -0.499944,
		32.626034, 28.722107, 25.677437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432884, 28.673853, 25.224220>,  <33.220692, 28.604162, 26.027397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432884, 28.673853, 25.224220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065571, 28.831944, 25.233608>,  <32.845184, 28.926798, 25.239241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065571, 28.831944, 25.233608>,  <33.432884, 28.673853, 25.224220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065571, 28.831944, 25.233608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274762, 0.678831, -0.680952,
		-0.285062, -0.618858, -0.731952,
		-0.918284, 0.395226, 0.023470,
		32.790085, 28.950512, 25.240650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312996, 28.820621, 24.515915>,  <33.432884, 28.673853, 25.224220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312996, 28.820621, 24.515915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087566, 29.062962, 24.740532>,  <32.952309, 29.208366, 24.875303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087566, 29.062962, 24.740532>,  <33.312996, 28.820621, 24.515915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087566, 29.062962, 24.740532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267543, 0.777008, -0.569806,
		-0.781543, -0.170889, -0.599990,
		-0.563571, 0.605851, 0.561545,
		32.918495, 29.244717, 24.908995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067684, 29.276052, 23.990467>,  <33.312996, 28.820621, 24.515915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067684, 29.276052, 23.990467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016579, 29.465340, 24.339119>,  <32.985916, 29.578913, 24.548311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016579, 29.465340, 24.339119>,  <33.067684, 29.276052, 23.990467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016579, 29.465340, 24.339119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271104, 0.862026, -0.428268,
		-0.954034, 0.181588, -0.238423,
		-0.127759, 0.473220, 0.871631,
		32.978252, 29.607306, 24.600609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958858, 30.018627, 23.830303>,  <33.067684, 29.276052, 23.990467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958858, 30.018627, 23.830303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050602, 29.997913, 24.219090>,  <33.105648, 29.985485, 24.452360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050602, 29.997913, 24.219090>,  <32.958858, 30.018627, 23.830303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050602, 29.997913, 24.219090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540066, 0.837538, -0.082817,
		-0.809768, 0.543920, 0.220060,
		0.229355, -0.051785, 0.971964,
		33.119408, 29.982378, 24.510679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990440, 30.632986, 23.980293>,  <32.958858, 30.018627, 23.830303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990440, 30.632986, 23.980293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163960, 30.489902, 24.311077>,  <33.268070, 30.404053, 24.509548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163960, 30.489902, 24.311077>,  <32.990440, 30.632986, 23.980293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163960, 30.489902, 24.311077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603978, 0.796519, 0.027710,
		-0.668602, 0.487446, 0.561576,
		0.433799, -0.357707, 0.826961,
		33.294098, 30.382591, 24.559166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969631, 31.145508, 24.448769>,  <32.990440, 30.632986, 23.980293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969631, 31.145508, 24.448769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276958, 30.904686, 24.535686>,  <33.461353, 30.760193, 24.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276958, 30.904686, 24.535686>,  <32.969631, 31.145508, 24.448769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276958, 30.904686, 24.535686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639779, 0.732554, -0.232481,
		-0.019216, 0.317642, 0.948016,
		0.768319, -0.602053, 0.217297,
		33.507454, 30.724070, 24.600876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434666, 31.525339, 24.904940>,  <32.969631, 31.145508, 24.448769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434666, 31.525339, 24.904940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641762, 31.244247, 24.709751>,  <33.766018, 31.075592, 24.592638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641762, 31.244247, 24.709751>,  <33.434666, 31.525339, 24.904940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641762, 31.244247, 24.709751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699240, 0.676219, -0.231928,
		0.492959, -0.221132, 0.841482,
		0.517740, -0.702729, -0.487973,
		33.797085, 31.033428, 24.563358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062458, 31.767027, 25.193413>,  <33.434666, 31.525339, 24.904940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062458, 31.767027, 25.193413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172817, 31.491997, 24.924751>,  <34.239033, 31.326979, 24.763554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172817, 31.491997, 24.924751>,  <34.062458, 31.767027, 25.193413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172817, 31.491997, 24.924751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738637, 0.598807, -0.309589,
		0.615058, -0.410695, 0.673077,
		0.275897, -0.687575, -0.671656,
		34.255585, 31.285725, 24.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751057, 31.542927, 25.238848>,  <34.062458, 31.767027, 25.193413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751057, 31.542927, 25.238848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659027, 31.458160, 24.858921>,  <34.603809, 31.407301, 24.630964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659027, 31.458160, 24.858921>,  <34.751057, 31.542927, 25.238848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659027, 31.458160, 24.858921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656684, 0.686495, -0.312236,
		0.718214, -0.695569, -0.018785,
		-0.230077, -0.211916, -0.949819,
		34.590004, 31.394587, 24.573975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273911, 31.150475, 25.781898>,  <34.751057, 31.542927, 25.238848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273911, 31.150475, 25.781898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483814, 30.816944, 25.850437>,  <34.609756, 30.616827, 25.891560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483814, 30.816944, 25.850437>,  <34.273911, 31.150475, 25.781898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483814, 30.816944, 25.850437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556841, 0.488494, 0.671789,
		-0.643856, -0.257117, 0.720652,
		0.524763, -0.833825, 0.171347,
		34.641243, 30.566797, 25.901840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330238, 31.035084, 26.521822>,  <34.273911, 31.150475, 25.781898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330238, 31.035084, 26.521822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640705, 30.890839, 26.314930>,  <34.826984, 30.804291, 26.190794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640705, 30.890839, 26.314930>,  <34.330238, 31.035084, 26.521822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640705, 30.890839, 26.314930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621729, 0.574295, 0.532577,
		0.104988, -0.734944, 0.669951,
		0.776164, -0.360614, -0.517230,
		34.873554, 30.782654, 26.159761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618816, 31.349663, 26.740841>,  <34.330238, 31.035084, 26.521822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618816, 31.349663, 26.740841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224785, 31.411453, 26.710491>,  <32.988365, 31.448528, 26.692282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224785, 31.411453, 26.710491>,  <33.618816, 31.349663, 26.740841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224785, 31.411453, 26.710491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127430, -0.358341, 0.924853,
		0.115680, 0.920722, 0.372679,
		-0.985079, 0.154478, -0.075874,
		32.929260, 31.457796, 26.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440506, 31.519690, 27.413527>,  <33.618816, 31.349663, 26.740841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440506, 31.519690, 27.413527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086685, 31.432674, 27.248482>,  <32.874393, 31.380465, 27.149454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086685, 31.432674, 27.248482>,  <33.440506, 31.519690, 27.413527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086685, 31.432674, 27.248482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363688, -0.232235, 0.902107,
		-0.292066, 0.948021, 0.126307,
		-0.884550, -0.217539, -0.412612,
		32.821320, 31.367413, 27.124699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848297, 31.915010, 27.763041>,  <33.440506, 31.519690, 27.413527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848297, 31.915010, 27.763041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685688, 31.583668, 27.608868>,  <32.588120, 31.384861, 27.516365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685688, 31.583668, 27.608868>,  <32.848297, 31.915010, 27.763041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685688, 31.583668, 27.608868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348899, -0.249138, 0.903438,
		-0.844396, 0.501749, -0.187732,
		-0.406528, -0.828359, -0.385431,
		32.563728, 31.335159, 27.493238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215084, 31.817352, 28.229649>,  <32.848297, 31.915010, 27.763041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215084, 31.817352, 28.229649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240425, 31.467396, 28.037586>,  <32.255630, 31.257421, 27.922348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240425, 31.467396, 28.037586>,  <32.215084, 31.817352, 28.229649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240425, 31.467396, 28.037586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240627, -0.480318, 0.843441,
		-0.968548, 0.062107, -0.240951,
		0.063350, -0.874893, -0.480156,
		32.259430, 31.204927, 27.893539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592417, 31.509647, 28.442139>,  <32.215084, 31.817352, 28.229649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592417, 31.509647, 28.442139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819197, 31.212139, 28.300507>,  <31.955265, 31.033634, 28.215527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819197, 31.212139, 28.300507>,  <31.592417, 31.509647, 28.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819197, 31.212139, 28.300507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279908, -0.578206, 0.766375,
		-0.774737, -0.335387, -0.536001,
		0.566951, -0.743770, -0.354080,
		31.989283, 30.989008, 28.194283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213585, 30.946976, 28.378611>,  <31.592417, 31.509647, 28.442139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213585, 30.946976, 28.378611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572996, 30.774490, 28.411366>,  <31.788643, 30.671000, 28.431019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572996, 30.774490, 28.411366>,  <31.213585, 30.946976, 28.378611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572996, 30.774490, 28.411366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336094, -0.555959, 0.760231,
		-0.282293, -0.710610, -0.644472,
		0.898527, -0.431211, 0.081888,
		31.842554, 30.645126, 28.435932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127525, 30.239874, 28.419138>,  <31.213585, 30.946976, 28.378611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127525, 30.239874, 28.419138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486475, 30.292568, 28.587597>,  <31.701845, 30.324184, 28.688673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486475, 30.292568, 28.587597>,  <31.127525, 30.239874, 28.419138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486475, 30.292568, 28.587597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286519, -0.551896, 0.783146,
		0.335598, -0.823442, -0.457512,
		0.897375, 0.131736, 0.421147,
		31.755688, 30.332088, 28.713942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417858, 29.572044, 28.478634>,  <31.127525, 30.239874, 28.419138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417858, 29.572044, 28.478634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603086, 29.808262, 28.743004>,  <31.714224, 29.949991, 28.901627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603086, 29.808262, 28.743004>,  <31.417858, 29.572044, 28.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603086, 29.808262, 28.743004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454528, -0.481948, 0.749086,
		0.760899, -0.647291, 0.045241,
		0.463073, 0.590542, 0.660926,
		31.742008, 29.985424, 28.941282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755783, 29.135616, 29.036890>,  <31.417858, 29.572044, 28.478634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755783, 29.135616, 29.036890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683990, 29.500595, 29.183983>,  <31.640915, 29.719582, 29.272238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683990, 29.500595, 29.183983>,  <31.755783, 29.135616, 29.036890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683990, 29.500595, 29.183983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460098, -0.408258, 0.788438,
		0.869538, -0.027683, 0.493090,
		-0.179482, 0.912447, 0.367733,
		31.630146, 29.774328, 29.294302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945768, 29.039858, 29.728016>,  <31.755783, 29.135616, 29.036890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945768, 29.039858, 29.728016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747496, 29.386833, 29.745213>,  <31.628532, 29.595018, 29.755529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747496, 29.386833, 29.745213>,  <31.945768, 29.039858, 29.728016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747496, 29.386833, 29.745213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568588, -0.361530, 0.738921,
		0.656511, 0.341827, 0.672419,
		-0.495682, 0.867439, 0.042990,
		31.598791, 29.647064, 29.758110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025925, 29.266317, 30.464472>,  <31.945768, 29.039858, 29.728016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025925, 29.266317, 30.464472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704290, 29.432983, 30.294842>,  <31.511311, 29.532984, 30.193064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704290, 29.432983, 30.294842>,  <32.025925, 29.266317, 30.464472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704290, 29.432983, 30.294842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577957, -0.380660, 0.721847,
		0.139341, 0.825523, 0.546897,
		-0.804083, 0.416666, -0.424075,
		31.463066, 29.557983, 30.167620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732742, 29.813942, 30.936972>,  <32.025925, 29.266317, 30.464472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732742, 29.813942, 30.936972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457626, 29.664738, 30.687874>,  <31.292557, 29.575216, 30.538416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457626, 29.664738, 30.687874>,  <31.732742, 29.813942, 30.936972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457626, 29.664738, 30.687874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546778, -0.298070, 0.782425,
		-0.477473, 0.878646, 0.001056,
		-0.687789, -0.373009, -0.622745,
		31.251289, 29.552835, 30.501051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172279, 29.770618, 31.441540>,  <31.732742, 29.813942, 30.936972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172279, 29.770618, 31.441540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040806, 29.586632, 31.111595>,  <30.961922, 29.476240, 30.913628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040806, 29.586632, 31.111595>,  <31.172279, 29.770618, 31.441540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040806, 29.586632, 31.111595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778292, -0.362837, 0.512456,
		-0.535004, 0.810418, -0.238732,
		-0.328683, -0.459969, -0.824861,
		30.942202, 29.448641, 30.864138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493629, 29.941471, 31.451895>,  <31.172279, 29.770618, 31.441540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493629, 29.941471, 31.451895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533924, 29.632740, 31.200775>,  <30.558100, 29.447500, 31.050104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533924, 29.632740, 31.200775>,  <30.493629, 29.941471, 31.451895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533924, 29.632740, 31.200775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793681, -0.442841, 0.417087,
		-0.599935, 0.456257, -0.657196,
		0.100735, -0.771830, -0.627799,
		30.564144, 29.401192, 31.012436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846828, 29.734016, 31.305910>,  <30.493629, 29.941471, 31.451895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846828, 29.734016, 31.305910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074083, 29.416115, 31.220509>,  <30.210436, 29.225374, 31.169268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074083, 29.416115, 31.220509>,  <29.846828, 29.734016, 31.305910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074083, 29.416115, 31.220509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762354, -0.605992, 0.227135,
		-0.309897, 0.033720, -0.950172,
		0.568138, -0.794755, -0.213502,
		30.244524, 29.177689, 31.156458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449934, 29.240217, 31.013247>,  <29.846828, 29.734016, 31.305910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449934, 29.240217, 31.013247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758993, 29.012482, 31.125584>,  <29.944427, 28.875841, 31.192986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758993, 29.012482, 31.125584>,  <29.449934, 29.240217, 31.013247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758993, 29.012482, 31.125584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634394, -0.675924, 0.375061,
		-0.023709, -0.467954, -0.883435,
		0.772646, -0.569338, 0.280842,
		29.990788, 28.841681, 31.209835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185041, 28.513414, 31.017790>,  <29.449934, 29.240217, 31.013247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185041, 28.513414, 31.017790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492357, 28.531857, 31.273167>,  <29.676746, 28.542921, 31.426392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492357, 28.531857, 31.273167>,  <29.185041, 28.513414, 31.017790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492357, 28.531857, 31.273167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425708, -0.708047, 0.563420,
		0.478022, -0.704659, -0.524358,
		0.768289, 0.046103, 0.638441,
		29.722843, 28.545687, 31.464699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289650, 27.878017, 31.197474>,  <29.185041, 28.513414, 31.017790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289650, 27.878017, 31.197474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512579, 28.075275, 31.464668>,  <29.646336, 28.193630, 31.624985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512579, 28.075275, 31.464668>,  <29.289650, 27.878017, 31.197474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512579, 28.075275, 31.464668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281781, -0.644430, 0.710851,
		0.781021, -0.584397, -0.220196,
		0.557320, 0.493143, 0.667985,
		29.679775, 28.223219, 31.665064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726089, 27.295523, 31.511179>,  <29.289650, 27.878017, 31.197474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726089, 27.295523, 31.511179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721970, 27.609638, 31.758797>,  <29.719498, 27.798107, 31.907368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721970, 27.609638, 31.758797>,  <29.726089, 27.295523, 31.511179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721970, 27.609638, 31.758797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264247, -0.599206, 0.755729,
		0.964400, -0.155797, 0.213681,
		-0.010299, 0.785290, 0.619043,
		29.718880, 27.845224, 31.944510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171741, 27.072380, 32.123844>,  <29.726089, 27.295523, 31.511179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171741, 27.072380, 32.123844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925108, 27.367924, 32.232590>,  <29.777128, 27.545250, 32.297836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925108, 27.367924, 32.232590>,  <30.171741, 27.072380, 32.123844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925108, 27.367924, 32.232590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305142, -0.542601, 0.782606,
		0.725750, 0.399586, 0.560016,
		-0.616583, 0.738861, 0.271862,
		29.740133, 27.589582, 32.314148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082239, 26.890352, 32.811882>,  <30.171741, 27.072380, 32.123844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082239, 26.890352, 32.811882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793440, 27.164093, 32.771126>,  <29.620159, 27.328337, 32.746674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793440, 27.164093, 32.771126>,  <30.082239, 26.890352, 32.811882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793440, 27.164093, 32.771126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514724, -0.432855, 0.740065,
		0.462359, 0.586772, 0.664772,
		-0.722000, 0.684350, -0.101891,
		29.576839, 27.369398, 32.740559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940557, 27.227400, 33.395409>,  <30.082239, 26.890352, 32.811882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940557, 27.227400, 33.395409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591877, 27.280647, 33.206764>,  <29.382669, 27.312595, 33.093578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591877, 27.280647, 33.206764>,  <29.940557, 27.227400, 33.395409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591877, 27.280647, 33.206764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479604, -0.429293, 0.765302,
		-0.100584, 0.893301, 0.438059,
		-0.871701, 0.133118, -0.471611,
		29.330366, 27.320583, 33.065281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447920, 27.588387, 33.874615>,  <29.940557, 27.227400, 33.395409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447920, 27.588387, 33.874615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231712, 27.406601, 33.591404>,  <29.101988, 27.297529, 33.421478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231712, 27.406601, 33.591404>,  <29.447920, 27.588387, 33.874615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231712, 27.406601, 33.591404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504392, -0.498506, 0.705040,
		-0.673370, 0.738210, 0.040225,
		-0.540519, -0.454464, -0.708026,
		29.069557, 27.270262, 33.378998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810139, 27.646681, 34.062923>,  <29.447920, 27.588387, 33.874615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810139, 27.646681, 34.062923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826988, 27.326908, 33.823212>,  <28.837097, 27.135044, 33.679386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826988, 27.326908, 33.823212>,  <28.810139, 27.646681, 34.062923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826988, 27.326908, 33.823212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423643, -0.557511, 0.713939,
		-0.904849, 0.223806, -0.362158,
		0.042123, -0.799432, -0.599277,
		28.839626, 27.087078, 33.643429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166243, 27.425337, 33.999107>,  <28.810139, 27.646681, 34.062923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166243, 27.425337, 33.999107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399902, 27.114273, 33.906143>,  <28.540098, 26.927635, 33.850365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399902, 27.114273, 33.906143>,  <28.166243, 27.425337, 33.999107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399902, 27.114273, 33.906143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356226, -0.502934, 0.787503,
		-0.729297, -0.377228, -0.570811,
		0.584148, -0.777661, -0.232411,
		28.575148, 26.880976, 33.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705046, 26.898737, 34.002842>,  <28.166243, 27.425337, 33.999107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705046, 26.898737, 34.002842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067474, 26.731071, 34.025940>,  <28.284931, 26.630472, 34.039799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067474, 26.731071, 34.025940>,  <27.705046, 26.898737, 34.002842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067474, 26.731071, 34.025940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330835, -0.616736, 0.714272,
		-0.263782, -0.666287, -0.697482,
		0.906072, -0.419164, 0.057747,
		28.339296, 26.605322, 34.043262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230780, 26.411261, 33.535286>,  <27.705046, 26.898737, 34.002842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230780, 26.411261, 33.535286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844654, 26.507648, 33.575485>,  <26.612978, 26.565481, 33.599606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844654, 26.507648, 33.575485>,  <27.230780, 26.411261, 33.535286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844654, 26.507648, 33.575485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142198, 0.808060, -0.571681,
		-0.218964, -0.537562, -0.814298,
		-0.965316, 0.240969, 0.100496,
		26.555059, 26.579939, 33.605633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910044, 26.563309, 32.895969>,  <27.230780, 26.411261, 33.535286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910044, 26.563309, 32.895969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651743, 26.765766, 33.124641>,  <26.496761, 26.887239, 33.261845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651743, 26.765766, 33.124641>,  <26.910044, 26.563309, 32.895969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651743, 26.765766, 33.124641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011620, 0.742122, -0.670164,
		-0.763458, -0.439404, -0.473347,
		-0.645754, 0.506142, 0.571685,
		26.458017, 26.917608, 33.296146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313988, 26.792997, 32.402924>,  <26.910044, 26.563309, 32.895969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313988, 26.792997, 32.402924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299999, 27.033512, 32.722229>,  <26.291605, 27.177820, 32.913815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299999, 27.033512, 32.722229>,  <26.313988, 26.792997, 32.402924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299999, 27.033512, 32.722229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072775, 0.798168, -0.598024,
		-0.996735, 0.037180, -0.071672,
		-0.034972, 0.601287, 0.798267,
		26.289507, 27.213898, 32.961708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795805, 27.218691, 32.222885>,  <26.313988, 26.792997, 32.402924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795805, 27.218691, 32.222885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003349, 27.399483, 32.513126>,  <26.127876, 27.507957, 32.687271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003349, 27.399483, 32.513126>,  <25.795805, 27.218691, 32.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003349, 27.399483, 32.513126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044304, 0.833440, -0.550832,
		-0.853709, 0.317953, 0.412416,
		0.518862, 0.451978, 0.725601,
		26.159008, 27.535076, 32.730808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457764, 27.922100, 32.356289>,  <25.795805, 27.218691, 32.222885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457764, 27.922100, 32.356289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826176, 27.952187, 32.509155>,  <26.047222, 27.970238, 32.600876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826176, 27.952187, 32.509155>,  <25.457764, 27.922100, 32.356289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826176, 27.952187, 32.509155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220952, 0.707128, -0.671677,
		-0.320760, 0.703073, 0.634666,
		0.921028, 0.075216, 0.382164,
		26.102484, 27.974752, 32.623806>
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
