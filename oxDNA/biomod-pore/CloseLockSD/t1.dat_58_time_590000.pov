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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.774878, 15.079329, 15.172366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.379164, 15.124147, 15.134925>,  <4.141736, 15.151038, 15.112460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.379164, 15.124147, 15.134925>,  <4.774878, 15.079329, 15.172366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.379164, 15.124147, 15.134925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146000, 0.757969, -0.635741,
		-0.000284, -0.642595, -0.766206,
		-0.989285, 0.112047, -0.093603,
		4.082378, 15.157762, 15.106844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.490084, 14.902088, 14.505681>,  <4.774878, 15.079329, 15.172366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.490084, 14.902088, 14.505681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332731, 15.216468, 14.696483>,  <4.238319, 15.405096, 14.810964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332731, 15.216468, 14.696483>,  <4.490084, 14.902088, 14.505681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.332731, 15.216468, 14.696483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330056, 0.604978, -0.724614,
		-0.858087, -0.127613, -0.497395,
		-0.393383, 0.785950, 0.477004,
		4.214716, 15.452252, 14.839584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.919367, 15.110975, 14.119778>,  <4.490084, 14.902088, 14.505681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.919367, 15.110975, 14.119778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.096055, 15.408022, 14.321135>,  <4.202068, 15.586249, 14.441949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.096055, 15.408022, 14.321135>,  <3.919367, 15.110975, 14.119778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.096055, 15.408022, 14.321135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018476, 0.553451, -0.832676,
		-0.896962, 0.377112, 0.230751,
		0.441721, 0.742616, 0.503392,
		4.228571, 15.630807, 14.472153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.676254, 15.826704, 13.893489>,  <3.919367, 15.110975, 14.119778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.676254, 15.826704, 13.893489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.038322, 15.871559, 14.057486>,  <4.255562, 15.898473, 14.155884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.038322, 15.871559, 14.057486>,  <3.676254, 15.826704, 13.893489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.038322, 15.871559, 14.057486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213892, 0.713376, -0.667342,
		-0.367314, 0.691751, 0.621740,
		0.905169, 0.112139, 0.409993,
		4.309873, 15.905201, 14.180484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.911068, 16.593012, 14.006607>,  <3.676254, 15.826704, 13.893489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.911068, 16.593012, 14.006607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.243508, 16.370586, 14.003364>,  <4.442972, 16.237131, 14.001417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.243508, 16.370586, 14.003364>,  <3.911068, 16.593012, 14.006607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.243508, 16.370586, 14.003364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406137, 0.616847, -0.674205,
		0.379905, 0.557037, 0.738500,
		0.831099, -0.556066, -0.008109,
		4.492837, 16.203766, 14.000931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.415945, 17.043287, 13.824992>,  <3.911068, 16.593012, 14.006607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.415945, 17.043287, 13.824992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.630076, 16.707472, 13.787901>,  <4.758555, 16.505983, 13.765646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.630076, 16.707472, 13.787901>,  <4.415945, 17.043287, 13.824992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.630076, 16.707472, 13.787901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541181, 0.425212, -0.725478,
		0.648496, 0.338186, 0.681970,
		0.535329, -0.839539, -0.092728,
		4.790675, 16.455610, 13.760082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.089902, 17.229347, 13.796692>,  <4.415945, 17.043287, 13.824992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.089902, 17.229347, 13.796692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.067590, 16.872578, 13.617199>,  <5.054203, 16.658516, 13.509503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.067590, 16.872578, 13.617199>,  <5.089902, 17.229347, 13.796692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.067590, 16.872578, 13.617199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451627, 0.378286, -0.808042,
		0.890461, -0.247732, 0.381717,
		-0.055780, -0.891924, -0.448732,
		5.050856, 16.605000, 13.482579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.718184, 17.124943, 13.451114>,  <5.089902, 17.229347, 13.796692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.718184, 17.124943, 13.451114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.474160, 16.877747, 13.252754>,  <5.327745, 16.729429, 13.133739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.474160, 16.877747, 13.252754>,  <5.718184, 17.124943, 13.451114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.474160, 16.877747, 13.252754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354902, 0.346444, -0.868344,
		0.708428, -0.705738, 0.007974,
		-0.610061, -0.617989, -0.495899,
		5.291142, 16.692350, 13.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.200044, 16.697407, 12.956915>,  <5.718184, 17.124943, 13.451114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.200044, 16.697407, 12.956915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.819025, 16.701376, 12.835226>,  <5.590413, 16.703756, 12.762213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.819025, 16.701376, 12.835226>,  <6.200044, 16.697407, 12.956915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.819025, 16.701376, 12.835226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294817, 0.278688, -0.914011,
		0.075713, -0.960330, -0.268390,
		-0.952550, 0.009923, -0.304222,
		5.533260, 16.704353, 12.743959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.324853, 16.579550, 12.231091>,  <6.200044, 16.697407, 12.956915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.324853, 16.579550, 12.231091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.939500, 16.686094, 12.243391>,  <5.708289, 16.750021, 12.250772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.939500, 16.686094, 12.243391>,  <6.324853, 16.579550, 12.231091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.939500, 16.686094, 12.243391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049686, 0.290048, -0.955721,
		-0.263486, -0.919197, -0.292662,
		-0.963382, 0.266361, 0.030752,
		5.650486, 16.766003, 12.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.924916, 16.248989, 11.606469>,  <6.324853, 16.579550, 12.231091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.924916, 16.248989, 11.606469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.720063, 16.575459, 11.713485>,  <5.597150, 16.771341, 11.777695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.720063, 16.575459, 11.713485>,  <5.924916, 16.248989, 11.606469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.720063, 16.575459, 11.713485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051022, 0.339848, -0.939095,
		-0.857388, -0.467293, -0.215690,
		-0.512134, 0.816174, 0.267540,
		5.566422, 16.820311, 11.793747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.468639, 16.337553, 11.022264>,  <5.924916, 16.248989, 11.606469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.468639, 16.337553, 11.022264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.499326, 16.685343, 11.217457>,  <5.517738, 16.894016, 11.334573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.499326, 16.685343, 11.217457>,  <5.468639, 16.337553, 11.022264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.499326, 16.685343, 11.217457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277925, 0.451379, -0.847947,
		-0.957534, 0.200675, -0.207020,
		0.076717, 0.869475, 0.487984,
		5.522341, 16.946186, 11.363852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.160601, 16.875645, 10.491508>,  <5.468639, 16.337553, 11.022264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.160601, 16.875645, 10.491508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.341868, 17.101549, 10.767386>,  <5.450628, 17.237093, 10.932914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.341868, 17.101549, 10.767386>,  <5.160601, 16.875645, 10.491508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.341868, 17.101549, 10.767386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344097, 0.602912, -0.719788,
		-0.822336, 0.563507, 0.078886,
		0.453167, 0.564763, 0.689697,
		5.477818, 17.270979, 10.974296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038649, 17.609303, 10.323090>,  <5.160601, 16.875645, 10.491508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038649, 17.609303, 10.323090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.364395, 17.616823, 10.555109>,  <5.559842, 17.621336, 10.694321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.364395, 17.616823, 10.555109>,  <5.038649, 17.609303, 10.323090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.364395, 17.616823, 10.555109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451435, 0.607584, -0.653489,
		-0.364715, 0.794033, 0.486308,
		0.814364, 0.018801, 0.580049,
		5.608704, 17.622463, 10.729124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312217, 18.328423, 10.196226>,  <5.038649, 17.609303, 10.323090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312217, 18.328423, 10.196226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.615232, 18.131969, 10.368237>,  <5.797041, 18.014097, 10.471444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.615232, 18.131969, 10.368237>,  <5.312217, 18.328423, 10.196226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.615232, 18.131969, 10.368237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652141, 0.598777, -0.464950,
		-0.029138, 0.632656, 0.773885,
		0.757538, -0.491134, 0.430028,
		5.842494, 17.984629, 10.497246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.652271, 18.809732, 10.504229>,  <5.312217, 18.328423, 10.196226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.652271, 18.809732, 10.504229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.873079, 18.492630, 10.400837>,  <6.005564, 18.302368, 10.338802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.873079, 18.492630, 10.400837>,  <5.652271, 18.809732, 10.504229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.873079, 18.492630, 10.400837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625264, 0.598637, -0.500678,
		0.551651, 0.114766, 0.826141,
		0.552020, -0.792756, -0.258479,
		6.038685, 18.254803, 10.323293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.334960, 19.012482, 10.492875>,  <5.652271, 18.809732, 10.504229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.334960, 19.012482, 10.492875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.362613, 18.688900, 10.259358>,  <6.379205, 18.494751, 10.119248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.362613, 18.688900, 10.259358>,  <6.334960, 19.012482, 10.492875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.362613, 18.688900, 10.259358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607106, 0.498469, -0.618830,
		0.791608, -0.311641, 0.525582,
		0.069133, -0.808955, -0.583791,
		6.383353, 18.446213, 10.084221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.895351, 19.207836, 10.193256>,  <6.334960, 19.012482, 10.492875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.895351, 19.207836, 10.193256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.776449, 18.879585, 9.998031>,  <6.705107, 18.682634, 9.880895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.776449, 18.879585, 9.998031>,  <6.895351, 19.207836, 10.193256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.776449, 18.879585, 9.998031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643712, 0.205286, -0.737220,
		0.705176, -0.533317, 0.467225,
		-0.297257, -0.820628, -0.488065,
		6.687272, 18.633396, 9.851611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.505925, 18.775265, 10.076652>,  <6.895351, 19.207836, 10.193256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.505925, 18.775265, 10.076652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.202902, 18.706060, 9.824883>,  <7.021088, 18.664537, 9.673820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.202902, 18.706060, 9.824883>,  <7.505925, 18.775265, 10.076652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.202902, 18.706060, 9.824883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502980, 0.459891, -0.731786,
		0.416073, -0.870957, -0.261373,
		-0.757558, -0.173011, -0.629423,
		6.975635, 18.654156, 9.636055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.810557, 18.476139, 9.463671>,  <7.505925, 18.775265, 10.076652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.810557, 18.476139, 9.463671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.447434, 18.605057, 9.356331>,  <7.229560, 18.682407, 9.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.447434, 18.605057, 9.356331>,  <7.810557, 18.476139, 9.463671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.447434, 18.605057, 9.356331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398098, 0.460956, -0.793119,
		-0.131920, -0.826829, -0.546765,
		-0.907808, 0.322294, -0.268349,
		7.175092, 18.701744, 9.275826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.815354, 18.383320, 8.760230>,  <7.810557, 18.476139, 9.463671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.815354, 18.383320, 8.760230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.525784, 18.652138, 8.822577>,  <7.352043, 18.813429, 8.859984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.525784, 18.652138, 8.822577>,  <7.815354, 18.383320, 8.760230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.525784, 18.652138, 8.822577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379307, 0.576451, -0.723762,
		-0.576248, -0.464826, -0.672216,
		-0.723923, 0.672043, 0.155867,
		7.308608, 18.853750, 8.869336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.532367, 18.526190, 8.140328>,  <7.815354, 18.383320, 8.760230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.532367, 18.526190, 8.140328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414008, 18.845600, 8.350015>,  <7.342993, 19.037247, 8.475826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.414008, 18.845600, 8.350015>,  <7.532367, 18.526190, 8.140328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414008, 18.845600, 8.350015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428355, 0.601441, -0.674374,
		-0.853790, 0.025005, -0.520017,
		-0.295897, 0.798526, 0.524215,
		7.325239, 19.085157, 8.507279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.165212, 18.979467, 7.683913>,  <7.532367, 18.526190, 8.140328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.165212, 18.979467, 7.683913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.297093, 19.196524, 7.992934>,  <7.376223, 19.326757, 8.178346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.297093, 19.196524, 7.992934>,  <7.165212, 18.979467, 7.683913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.297093, 19.196524, 7.992934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311346, 0.710031, -0.631601,
		-0.891268, 0.448773, 0.065151,
		0.329705, 0.542641, 0.772551,
		7.396005, 19.359316, 8.224699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.929013, 19.749392, 7.566063>,  <7.165212, 18.979467, 7.683913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.929013, 19.749392, 7.566063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.230771, 19.759285, 7.828445>,  <7.411825, 19.765221, 7.985875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.230771, 19.759285, 7.828445>,  <6.929013, 19.749392, 7.566063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.230771, 19.759285, 7.828445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429182, 0.737530, -0.521396,
		-0.496683, 0.674862, 0.545772,
		0.754393, 0.024733, 0.655957,
		7.457088, 19.766705, 8.025232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.106000, 20.488365, 7.596873>,  <6.929013, 19.749392, 7.566063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.106000, 20.488365, 7.596873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.422673, 20.277534, 7.720441>,  <7.612677, 20.151037, 7.794582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.422673, 20.277534, 7.720441>,  <7.106000, 20.488365, 7.596873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.422673, 20.277534, 7.720441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609168, 0.642623, -0.464704,
		0.046414, 0.556082, 0.829830,
		0.791682, -0.527075, 0.308921,
		7.660177, 20.119411, 7.813117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.603227, 21.033226, 7.663513>,  <7.106000, 20.488365, 7.596873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.603227, 21.033226, 7.663513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.783086, 20.677065, 7.635243>,  <7.891002, 20.463367, 7.618281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.783086, 20.677065, 7.635243>,  <7.603227, 21.033226, 7.663513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.783086, 20.677065, 7.635243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818395, 0.442395, -0.366764,
		0.357834, 0.107075, 0.927626,
		0.449649, -0.890405, -0.070674,
		7.917981, 20.409943, 7.614041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.242201, 21.142334, 8.031043>,  <7.603227, 21.033226, 7.663513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.242201, 21.142334, 8.031043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.254250, 20.855625, 7.752381>,  <8.261478, 20.683599, 7.585184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.254250, 20.855625, 7.752381>,  <8.242201, 21.142334, 8.031043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.254250, 20.855625, 7.752381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740825, 0.483904, -0.465848,
		0.671022, -0.502067, 0.545580,
		0.030121, -0.716774, -0.696655,
		8.263286, 20.640593, 7.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.887006, 20.839043, 8.007852>,  <8.242201, 21.142334, 8.031043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.887006, 20.839043, 8.007852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699515, 20.817425, 7.655176>,  <8.587021, 20.804453, 7.443571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699515, 20.817425, 7.655176>,  <8.887006, 20.839043, 8.007852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.699515, 20.817425, 7.655176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711535, 0.568383, -0.413109,
		0.523464, -0.820987, -0.227960,
		-0.468726, -0.054046, -0.881689,
		8.558898, 20.801210, 7.390669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.693695, 21.042007, 7.968584>,  <8.887006, 20.839043, 8.007852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.693695, 21.042007, 7.968584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.427208, 20.840523, 8.188559>,  <9.267316, 20.719631, 8.320543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.427208, 20.840523, 8.188559>,  <9.693695, 21.042007, 7.968584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.427208, 20.840523, 8.188559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597455, -0.801832, -0.010650,
		0.446321, 0.321466, 0.835139,
		-0.666217, -0.503711, 0.549936,
		9.227343, 20.689409, 8.353539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.120034, 20.830679, 8.609001>,  <9.693695, 21.042007, 7.968584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.120034, 20.830679, 8.609001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.813225, 20.602863, 8.490815>,  <9.629139, 20.466173, 8.419904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.813225, 20.602863, 8.490815>,  <10.120034, 20.830679, 8.609001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.813225, 20.602863, 8.490815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628736, -0.759002, -0.169137,
		-0.127928, -0.315501, 0.940263,
		-0.767024, -0.569540, -0.295464,
		9.583117, 20.432001, 8.402176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.917282, 20.338305, 9.061301>,  <10.120034, 20.830679, 8.609001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.917282, 20.338305, 9.061301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.891167, 20.278873, 8.666604>,  <9.875497, 20.243216, 8.429786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.891167, 20.278873, 8.666604>,  <9.917282, 20.338305, 9.061301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.891167, 20.278873, 8.666604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737582, -0.673209, 0.052564,
		-0.672094, -0.724372, 0.153541,
		-0.065289, -0.148577, -0.986743,
		9.871580, 20.234301, 8.370581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.376116, 20.006651, 8.635658>,  <9.917282, 20.338305, 9.061301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.376116, 20.006651, 8.635658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758858, 20.110249, 8.582966>,  <10.988503, 20.172407, 8.551351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758858, 20.110249, 8.582966>,  <10.376116, 20.006651, 8.635658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.758858, 20.110249, 8.582966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074528, 0.656941, 0.750250,
		0.280849, -0.708062, 0.647899,
		0.956854, 0.258993, -0.131731,
		11.045914, 20.187946, 8.543447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762191, 19.911871, 9.247755>,  <10.376116, 20.006651, 8.635658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762191, 19.911871, 9.247755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935540, 20.198118, 9.028637>,  <11.039550, 20.369867, 8.897166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935540, 20.198118, 9.028637>,  <10.762191, 19.911871, 9.247755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935540, 20.198118, 9.028637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273842, 0.683665, 0.676470,
		0.858602, -0.143154, 0.492248,
		0.433373, 0.715617, -0.547795,
		11.065552, 20.412804, 8.864298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.296516, 20.224228, 9.414577>,  <10.762191, 19.911871, 9.247755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.296516, 20.224228, 9.414577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.149557, 20.119804, 9.771647>,  <11.061381, 20.057150, 9.985889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.149557, 20.119804, 9.771647>,  <11.296516, 20.224228, 9.414577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.149557, 20.119804, 9.771647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307887, 0.871545, 0.381595,
		-0.877624, 0.415040, -0.239827,
		-0.367398, -0.261057, 0.892675,
		11.039338, 20.041487, 10.039450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.283689, 20.750904, 9.981434>,  <11.296516, 20.224228, 9.414577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.283689, 20.750904, 9.981434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048236, 21.023855, 10.154811>,  <10.906964, 21.187626, 10.258837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048236, 21.023855, 10.154811>,  <11.283689, 20.750904, 9.981434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.048236, 21.023855, 10.154811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091460, -0.588944, 0.802982,
		0.803211, 0.433018, 0.409081,
		-0.588631, 0.682379, 0.433443,
		10.871647, 21.228569, 10.284843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.343584, 20.753729, 10.710852>,  <11.283689, 20.750904, 9.981434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.343584, 20.753729, 10.710852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984767, 20.897158, 10.607515>,  <10.769477, 20.983215, 10.545514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.984767, 20.897158, 10.607515>,  <11.343584, 20.753729, 10.710852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.984767, 20.897158, 10.607515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440863, -0.685207, 0.579768,
		0.030872, 0.633970, 0.772741,
		-0.897043, 0.358572, -0.258340,
		10.715654, 21.004728, 10.530013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.884941, 20.905338, 11.323665>,  <11.343584, 20.753729, 10.710852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.884941, 20.905338, 11.323665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646199, 20.825773, 11.012744>,  <10.502954, 20.778034, 10.826191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646199, 20.825773, 11.012744>,  <10.884941, 20.905338, 11.323665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.646199, 20.825773, 11.012744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486185, -0.681006, 0.547590,
		-0.638270, 0.704743, 0.309753,
		-0.596854, -0.198913, -0.777302,
		10.467143, 20.766100, 10.779553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170945, 21.079781, 11.594895>,  <10.884941, 20.905338, 11.323665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170945, 21.079781, 11.594895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.174718, 20.813869, 11.296103>,  <10.176982, 20.654324, 11.116827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.174718, 20.813869, 11.296103>,  <10.170945, 21.079781, 11.594895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.174718, 20.813869, 11.296103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541331, -0.631481, 0.555152,
		-0.840757, 0.399128, -0.365821,
		0.009432, -0.664777, -0.746982,
		10.177547, 20.614437, 11.072008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.429575, 20.834190, 11.548747>,  <10.170945, 21.079781, 11.594895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.429575, 20.834190, 11.548747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.630191, 20.564415, 11.332011>,  <9.750561, 20.402550, 11.201970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.630191, 20.564415, 11.332011>,  <9.429575, 20.834190, 11.548747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.630191, 20.564415, 11.332011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568192, -0.729083, 0.381570,
		-0.652391, 0.116495, -0.748876,
		0.501541, -0.674438, -0.541839,
		9.780653, 20.362083, 11.169459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.931474, 20.393091, 11.125636>,  <9.429575, 20.834190, 11.548747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.931474, 20.393091, 11.125636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.274543, 20.191708, 11.167449>,  <9.480384, 20.070877, 11.192536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.274543, 20.191708, 11.167449>,  <8.931474, 20.393091, 11.125636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.274543, 20.191708, 11.167449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486069, -0.727514, 0.484211,
		-0.167732, -0.466104, -0.868685,
		0.857673, -0.503458, 0.104532,
		9.531845, 20.040670, 11.198809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.793063, 19.690357, 10.925773>,  <8.931474, 20.393091, 11.125636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.793063, 19.690357, 10.925773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141571, 19.678865, 11.121758>,  <9.350676, 19.671970, 11.239348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141571, 19.678865, 11.121758>,  <8.793063, 19.690357, 10.925773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141571, 19.678865, 11.121758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282772, -0.845332, 0.453269,
		0.401157, -0.533467, -0.744637,
		0.871271, -0.028730, 0.489961,
		9.402952, 19.670246, 11.268745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.923258, 18.994110, 10.885696>,  <8.793063, 19.690357, 10.925773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.923258, 18.994110, 10.885696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.181212, 19.096481, 11.173759>,  <9.335985, 19.157904, 11.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.181212, 19.096481, 11.173759>,  <8.923258, 18.994110, 10.885696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.181212, 19.096481, 11.173759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197600, -0.854398, 0.480581,
		0.738293, -0.452223, -0.500418,
		0.644886, 0.255927, 0.720155,
		9.374679, 19.173260, 11.389805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.449201, 18.469610, 10.991300>,  <8.923258, 18.994110, 10.885696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.449201, 18.469610, 10.991300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.447671, 18.670876, 11.336973>,  <9.446753, 18.791634, 11.544377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.447671, 18.670876, 11.336973>,  <9.449201, 18.469610, 10.991300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447671, 18.670876, 11.336973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324534, -0.818039, 0.474857,
		0.945866, -0.278641, 0.166422,
		-0.003825, 0.503161, 0.864184,
		9.446524, 18.821823, 11.596229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755709, 18.051916, 11.430921>,  <9.449201, 18.469610, 10.991300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755709, 18.051916, 11.430921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531849, 18.292051, 11.659441>,  <9.397532, 18.436132, 11.796554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531849, 18.292051, 11.659441>,  <9.755709, 18.051916, 11.430921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531849, 18.292051, 11.659441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239972, -0.777231, 0.581658,
		0.793225, 0.188429, 0.579042,
		-0.559650, 0.600339, 0.571301,
		9.363954, 18.472153, 11.830832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.978274, 17.915148, 12.101106>,  <9.755709, 18.051916, 11.430921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.978274, 17.915148, 12.101106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.614262, 18.072355, 12.153835>,  <9.395854, 18.166679, 12.185473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.614262, 18.072355, 12.153835>,  <9.978274, 17.915148, 12.101106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.614262, 18.072355, 12.153835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207452, -0.707096, 0.676002,
		0.358893, 0.587837, 0.725012,
		-0.910032, 0.393018, 0.131824,
		9.341252, 18.190260, 12.193382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.834135, 17.646524, 12.736816>,  <9.978274, 17.915148, 12.101106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.834135, 17.646524, 12.736816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469682, 17.788776, 12.653522>,  <9.251010, 17.874126, 12.603544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.469682, 17.788776, 12.653522>,  <9.834135, 17.646524, 12.736816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.469682, 17.788776, 12.653522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406018, -0.688075, 0.601417,
		0.070597, 0.632520, 0.771319,
		-0.911134, 0.355628, -0.208238,
		9.196342, 17.895464, 12.591050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.596585, 17.792267, 13.414197>,  <9.834135, 17.646524, 12.736816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.596585, 17.792267, 13.414197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291780, 17.759207, 13.157291>,  <9.108896, 17.739370, 13.003148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291780, 17.759207, 13.157291>,  <9.596585, 17.792267, 13.414197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291780, 17.759207, 13.157291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401507, -0.717858, 0.568746,
		-0.508060, 0.691267, 0.513834,
		-0.762015, -0.082649, -0.642264,
		9.063175, 17.734411, 12.964612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.046887, 17.802250, 13.757988>,  <9.596585, 17.792267, 13.414197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.046887, 17.802250, 13.757988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.929769, 17.611341, 13.426571>,  <8.859497, 17.496796, 13.227721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.929769, 17.611341, 13.426571>,  <9.046887, 17.802250, 13.757988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.929769, 17.611341, 13.426571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476447, -0.678459, 0.559189,
		-0.829016, 0.558486, -0.028743,
		-0.292798, -0.477271, -0.828542,
		8.841929, 17.468161, 13.178008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.290781, 17.720814, 13.731441>,  <9.046887, 17.802250, 13.757988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.290781, 17.720814, 13.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.383289, 17.436941, 13.465247>,  <8.438794, 17.266619, 13.305532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.383289, 17.436941, 13.465247>,  <8.290781, 17.720814, 13.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.383289, 17.436941, 13.465247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768944, -0.552392, 0.321852,
		-0.596020, 0.437286, -0.673455,
		0.231270, -0.709679, -0.665485,
		8.452670, 17.224037, 13.265602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.621196, 17.421808, 13.532915>,  <8.290781, 17.720814, 13.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.621196, 17.421808, 13.532915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864800, 17.135803, 13.395592>,  <8.010962, 16.964199, 13.313198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864800, 17.135803, 13.395592>,  <7.621196, 17.421808, 13.532915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.864800, 17.135803, 13.395592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701155, -0.687666, 0.188406,
		-0.370794, 0.125971, -0.920132,
		0.609010, -0.715015, -0.343308,
		8.047503, 16.921299, 13.292599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.332084, 17.027943, 13.036797>,  <7.621196, 17.421808, 13.532915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.332084, 17.027943, 13.036797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.614508, 16.814564, 13.223094>,  <7.783962, 16.686537, 13.334872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.614508, 16.814564, 13.223094>,  <7.332084, 17.027943, 13.036797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.614508, 16.814564, 13.223094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671743, -0.712696, 0.202054,
		0.224149, -0.455522, -0.861543,
		0.706059, -0.533445, 0.465744,
		7.826325, 16.654530, 13.362818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.076377, 16.450102, 12.969751>,  <7.332084, 17.027943, 13.036797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.076377, 16.450102, 12.969751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.384088, 16.332630, 13.196719>,  <7.568714, 16.262146, 13.332900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.384088, 16.332630, 13.196719>,  <7.076377, 16.450102, 12.969751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.384088, 16.332630, 13.196719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490663, -0.840376, 0.230258,
		0.409222, -0.455543, -0.790580,
		0.769277, -0.293681, 0.567419,
		7.614871, 16.244526, 13.366944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.243336, 15.783210, 12.697035>,  <7.076377, 16.450102, 12.969751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.243336, 15.783210, 12.697035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.386958, 15.786878, 13.070343>,  <7.473131, 15.789079, 13.294328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.386958, 15.786878, 13.070343>,  <7.243336, 15.783210, 12.697035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.386958, 15.786878, 13.070343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382180, -0.910828, 0.155985,
		0.851480, -0.412685, -0.323533,
		0.359055, 0.009170, 0.933271,
		7.494675, 15.789629, 13.350325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.562681, 15.117368, 12.849354>,  <7.243336, 15.783210, 12.697035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.562681, 15.117368, 12.849354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.494631, 15.273791, 13.211156>,  <7.453802, 15.367645, 13.428237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.494631, 15.273791, 13.211156>,  <7.562681, 15.117368, 12.849354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.494631, 15.273791, 13.211156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167012, -0.916049, 0.364638,
		0.971167, -0.089029, 0.221154,
		-0.170124, 0.391059, 0.904506,
		7.443594, 15.391109, 13.482508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.897135, 14.687393, 13.240468>,  <7.562681, 15.117368, 12.849354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.897135, 14.687393, 13.240468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.642379, 14.862477, 13.494328>,  <7.489526, 14.967527, 13.646645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.642379, 14.862477, 13.494328>,  <7.897135, 14.687393, 13.240468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.642379, 14.862477, 13.494328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255927, -0.896555, 0.361512,
		0.727238, 0.067819, 0.683027,
		-0.636888, 0.437710, 0.634652,
		7.451313, 14.993791, 13.684724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.984015, 14.317070, 13.891912>,  <7.897135, 14.687393, 13.240468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.984015, 14.317070, 13.891912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629036, 14.500439, 13.911054>,  <7.416049, 14.610460, 13.922539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629036, 14.500439, 13.911054>,  <7.984015, 14.317070, 13.891912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.629036, 14.500439, 13.911054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429610, -0.860314, 0.274401,
		0.166961, 0.222958, 0.960424,
		-0.887445, 0.458422, 0.047854,
		7.362803, 14.637965, 13.925410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.603703, 14.126745, 13.429813>,  <7.984015, 14.317070, 13.891912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.603703, 14.126745, 13.429813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.808271, 14.136249, 13.086212>,  <8.931012, 14.141951, 12.880052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.808271, 14.136249, 13.086212>,  <8.603703, 14.126745, 13.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.808271, 14.136249, 13.086212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823563, 0.271845, 0.497840,
		0.245342, -0.962048, 0.119463,
		0.511421, 0.023756, -0.859002,
		8.961698, 14.143376, 12.828511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.193686, 13.693370, 13.581487>,  <8.603703, 14.126745, 13.429813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.193686, 13.693370, 13.581487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.261615, 13.965964, 13.296745>,  <9.302373, 14.129521, 13.125900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.261615, 13.965964, 13.296745>,  <9.193686, 13.693370, 13.581487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.261615, 13.965964, 13.296745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808238, 0.316971, 0.496267,
		0.563836, -0.659626, -0.496973,
		0.169824, 0.681486, -0.711854,
		9.312562, 14.170410, 13.083189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.874261, 12.975656, 13.444863>,  <9.193686, 13.693370, 13.581487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.874261, 12.975656, 13.444863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093676, 13.053106, 13.119504>,  <9.225325, 13.099577, 12.924289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.093676, 13.053106, 13.119504>,  <8.874261, 12.975656, 13.444863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.093676, 13.053106, 13.119504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807549, -0.374845, 0.455363,
		-0.216728, -0.906642, -0.361980,
		0.548538, 0.193626, -0.813397,
		9.258237, 13.111194, 12.875484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356787, 12.377333, 13.190707>,  <8.874261, 12.975656, 13.444863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356787, 12.377333, 13.190707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524441, 12.731524, 13.110456>,  <9.625033, 12.944039, 13.062306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524441, 12.731524, 13.110456>,  <9.356787, 12.377333, 13.190707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524441, 12.731524, 13.110456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826221, -0.280376, 0.488619,
		0.376412, -0.370559, -0.849117,
		0.419134, 0.885480, -0.200626,
		9.650181, 12.997169, 13.050268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.839306, 12.248472, 12.654499>,  <9.356787, 12.377333, 13.190707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.839306, 12.248472, 12.654499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.933902, 12.520963, 12.931628>,  <9.990660, 12.684457, 13.097906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.933902, 12.520963, 12.931628>,  <9.839306, 12.248472, 12.654499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.933902, 12.520963, 12.931628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820960, -0.521491, 0.232534,
		0.519709, 0.513788, -0.682587,
		0.236490, 0.681226, 0.692823,
		10.004848, 12.725330, 13.139475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.569921, 12.785125, 12.638209>,  <9.839306, 12.248472, 12.654499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.569921, 12.785125, 12.638209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.425156, 12.627111, 12.975959>,  <10.338296, 12.532304, 13.178609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.425156, 12.627111, 12.975959>,  <10.569921, 12.785125, 12.638209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.425156, 12.627111, 12.975959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870030, -0.468404, 0.153771,
		0.334763, 0.790282, 0.513213,
		-0.361914, -0.395033, 0.844374,
		10.316582, 12.508601, 13.229271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.082495, 12.873602, 13.181780>,  <10.569921, 12.785125, 12.638209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.082495, 12.873602, 13.181780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832707, 12.610012, 13.349490>,  <10.682835, 12.451859, 13.450116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832707, 12.610012, 13.349490>,  <11.082495, 12.873602, 13.181780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832707, 12.610012, 13.349490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764824, -0.407066, 0.499342,
		-0.158380, 0.632496, 0.758198,
		-0.624468, -0.658974, 0.419277,
		10.645367, 12.412320, 13.475273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.098881, 12.801894, 14.000197>,  <11.082495, 12.873602, 13.181780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.098881, 12.801894, 14.000197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.009022, 12.444524, 13.844597>,  <10.955106, 12.230102, 13.751236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.009022, 12.444524, 13.844597>,  <11.098881, 12.801894, 14.000197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.009022, 12.444524, 13.844597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656042, -0.433849, 0.617563,
		-0.720515, -0.116467, 0.683588,
		-0.224648, -0.893426, -0.389002,
		10.941628, 12.176496, 13.727897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488588, 12.300955, 13.710506>,  <11.098881, 12.801894, 14.000197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488588, 12.300955, 13.710506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804096, 12.069180, 13.792574>,  <11.993402, 11.930115, 13.841814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804096, 12.069180, 13.792574>,  <11.488588, 12.300955, 13.710506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.804096, 12.069180, 13.792574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034592, 0.291404, 0.955974,
		-0.613714, -0.761141, 0.209807,
		0.788770, -0.579437, 0.205168,
		12.040728, 11.895349, 13.854124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.340731, 11.940554, 14.328732>,  <11.488588, 12.300955, 13.710506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.340731, 11.940554, 14.328732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737604, 11.981196, 14.299758>,  <11.975728, 12.005582, 14.282373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737604, 11.981196, 14.299758>,  <11.340731, 11.940554, 14.328732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.737604, 11.981196, 14.299758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037192, 0.313301, 0.948925,
		0.119111, -0.944203, 0.307073,
		0.992184, 0.101607, -0.072434,
		12.035259, 12.011679, 14.278028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575863, 11.542247, 14.952659>,  <11.340731, 11.940554, 14.328732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575863, 11.542247, 14.952659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.844451, 11.811057, 14.827754>,  <12.005604, 11.972343, 14.752811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.844451, 11.811057, 14.827754>,  <11.575863, 11.542247, 14.952659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.844451, 11.811057, 14.827754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156944, 0.282862, 0.946234,
		0.724221, -0.684376, 0.084463,
		0.671471, 0.672026, -0.312263,
		12.045893, 12.012665, 14.734076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.939933, 11.677418, 15.560319>,  <11.575863, 11.542247, 14.952659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.939933, 11.677418, 15.560319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117579, 11.965088, 15.346571>,  <12.224166, 12.137690, 15.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117579, 11.965088, 15.346571>,  <11.939933, 11.677418, 15.560319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117579, 11.965088, 15.346571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232222, 0.483639, 0.843899,
		0.865354, -0.498879, 0.047783,
		0.444113, 0.719175, -0.534370,
		12.250813, 12.180840, 15.186260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592191, 11.814479, 15.851949>,  <11.939933, 11.677418, 15.560319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592191, 11.814479, 15.851949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.473741, 12.147451, 15.664602>,  <12.402670, 12.347235, 15.552195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.473741, 12.147451, 15.664602>,  <12.592191, 11.814479, 15.851949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473741, 12.147451, 15.664602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140131, 0.522918, 0.840786,
		0.944813, 0.183346, -0.271499,
		-0.296126, 0.832431, -0.468367,
		12.384903, 12.397181, 15.524092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040777, 12.265989, 16.047548>,  <12.592191, 11.814479, 15.851949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040777, 12.265989, 16.047548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.737801, 12.487470, 15.909160>,  <12.556014, 12.620358, 15.826126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.737801, 12.487470, 15.909160>,  <13.040777, 12.265989, 16.047548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737801, 12.487470, 15.909160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022699, 0.507245, 0.861503,
		0.652507, 0.660392, -0.371641,
		-0.757443, 0.553701, -0.345971,
		12.510568, 12.653580, 15.805368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161316, 12.935799, 16.381592>,  <13.040777, 12.265989, 16.047548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161316, 12.935799, 16.381592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779363, 12.929847, 16.262947>,  <12.550191, 12.926275, 16.191761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779363, 12.929847, 16.262947>,  <13.161316, 12.935799, 16.381592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779363, 12.929847, 16.262947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260231, 0.523177, 0.811521,
		0.143104, 0.852094, -0.503445,
		-0.954883, -0.014880, -0.296610,
		12.492898, 12.925383, 16.173964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913850, 13.684250, 16.388178>,  <13.161316, 12.935799, 16.381592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913850, 13.684250, 16.388178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.598721, 13.439048, 16.412037>,  <12.409643, 13.291926, 16.426353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.598721, 13.439048, 16.412037>,  <12.913850, 13.684250, 16.388178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.598721, 13.439048, 16.412037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274981, 0.436745, 0.856528,
		-0.551108, 0.658390, -0.512643,
		-0.787824, -0.613006, 0.059649,
		12.362373, 13.255146, 16.429932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.391102, 14.079018, 16.474840>,  <12.913850, 13.684250, 16.388178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.391102, 14.079018, 16.474840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.226634, 13.738003, 16.603910>,  <12.127954, 13.533394, 16.681353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.226634, 13.738003, 16.603910>,  <12.391102, 14.079018, 16.474840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226634, 13.738003, 16.603910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309974, 0.463651, 0.830026,
		-0.857237, 0.241261, -0.454904,
		-0.411170, -0.852538, 0.322674,
		12.103283, 13.482242, 16.700712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.759010, 14.264440, 16.732529>,  <12.391102, 14.079018, 16.474840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.759010, 14.264440, 16.732529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.796851, 13.895568, 16.882534>,  <11.819556, 13.674245, 16.972538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.796851, 13.895568, 16.882534>,  <11.759010, 14.264440, 16.732529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.796851, 13.895568, 16.882534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272461, 0.338335, 0.900719,
		-0.957505, -0.187387, -0.219250,
		0.094603, -0.922179, 0.375014,
		11.825233, 13.618914, 16.995039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.096951, 14.124778, 17.139582>,  <11.759010, 14.264440, 16.732529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.096951, 14.124778, 17.139582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368793, 13.867649, 17.280954>,  <11.531899, 13.713371, 17.365778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368793, 13.867649, 17.280954>,  <11.096951, 14.124778, 17.139582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368793, 13.867649, 17.280954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292696, 0.204165, 0.934155,
		-0.672654, -0.738306, -0.049400,
		0.679607, -0.642823, 0.353432,
		11.572676, 13.674802, 17.386984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.773953, 13.692090, 17.591217>,  <11.096951, 14.124778, 17.139582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.773953, 13.692090, 17.591217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156802, 13.653472, 17.700468>,  <11.386511, 13.630301, 17.766018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156802, 13.653472, 17.700468>,  <10.773953, 13.692090, 17.591217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.156802, 13.653472, 17.700468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243752, 0.241071, 0.939399,
		-0.156538, -0.965693, 0.207201,
		0.957121, -0.096546, 0.273126,
		11.443938, 13.624509, 17.782406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.757153, 13.237822, 18.107590>,  <10.773953, 13.692090, 17.591217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.757153, 13.237822, 18.107590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.103929, 13.430693, 18.158058>,  <11.311995, 13.546415, 18.188339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.103929, 13.430693, 18.158058>,  <10.757153, 13.237822, 18.107590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.103929, 13.430693, 18.158058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147898, 0.007128, 0.988977,
		0.475964, -0.876044, 0.077492,
		0.866940, 0.482178, 0.126172,
		11.364011, 13.575346, 18.195910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.136400, 12.846868, 18.739843>,  <10.757153, 13.237822, 18.107590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.136400, 12.846868, 18.739843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298475, 13.211854, 18.717115>,  <11.395720, 13.430846, 18.703478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298475, 13.211854, 18.717115>,  <11.136400, 12.846868, 18.739843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298475, 13.211854, 18.717115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167911, 0.135367, 0.976464,
		0.898682, -0.386110, 0.208062,
		0.405187, 0.912466, -0.056820,
		11.420032, 13.485594, 18.700069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.564870, 12.946409, 19.340832>,  <11.136400, 12.846868, 18.739843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.564870, 12.946409, 19.340832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465388, 13.313161, 19.215946>,  <11.405700, 13.533212, 19.141014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465388, 13.313161, 19.215946>,  <11.564870, 12.946409, 19.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465388, 13.313161, 19.215946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184679, 0.271539, 0.944543,
		0.950810, 0.292570, 0.101796,
		-0.248703, 0.916880, -0.312214,
		11.390778, 13.588225, 19.122282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858611, 13.350520, 19.945183>,  <11.564870, 12.946409, 19.340832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858611, 13.350520, 19.945183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627939, 13.590391, 19.723253>,  <11.489536, 13.734314, 19.590096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627939, 13.590391, 19.723253>,  <11.858611, 13.350520, 19.945183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.627939, 13.590391, 19.723253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274258, 0.497610, 0.822902,
		0.769560, 0.626715, -0.122496,
		-0.576680, 0.599677, -0.554822,
		11.454935, 13.770294, 19.556807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.977788, 13.969346, 20.192553>,  <11.858611, 13.350520, 19.945183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.977788, 13.969346, 20.192553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607909, 13.997398, 20.042877>,  <11.385982, 14.014230, 19.953072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607909, 13.997398, 20.042877>,  <11.977788, 13.969346, 20.192553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607909, 13.997398, 20.042877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327588, 0.354187, 0.875921,
		0.193962, 0.932541, -0.304542,
		-0.924697, 0.070131, -0.374188,
		11.330500, 14.018437, 19.930620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706037, 14.618110, 20.412483>,  <11.977788, 13.969346, 20.192553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706037, 14.618110, 20.412483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375517, 14.412728, 20.319880>,  <11.177205, 14.289499, 20.264318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.375517, 14.412728, 20.319880>,  <11.706037, 14.618110, 20.412483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375517, 14.412728, 20.319880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391149, 0.227378, 0.891797,
		-0.405257, 0.827445, -0.388719,
		-0.826299, -0.513454, -0.231507,
		11.127627, 14.258692, 20.250427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.170453, 15.096144, 20.658108>,  <11.706037, 14.618110, 20.412483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.170453, 15.096144, 20.658108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.967029, 14.752826, 20.630695>,  <10.844975, 14.546835, 20.614248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.967029, 14.752826, 20.630695>,  <11.170453, 15.096144, 20.658108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.967029, 14.752826, 20.630695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572885, 0.277880, 0.771094,
		-0.642782, 0.431408, -0.633023,
		-0.508560, -0.858295, -0.068531,
		10.814461, 14.495337, 20.610136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.384342, 15.222391, 20.590126>,  <11.170453, 15.096144, 20.658108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.384342, 15.222391, 20.590126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.376356, 14.840584, 20.709120>,  <10.371564, 14.611500, 20.780516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.376356, 14.840584, 20.709120>,  <10.384342, 15.222391, 20.590126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.376356, 14.840584, 20.709120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621428, 0.244937, 0.744199,
		-0.783217, -0.170008, -0.598054,
		-0.019966, -0.954517, 0.297487,
		10.370366, 14.554229, 20.798367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.763618, 15.233335, 20.853765>,  <10.384342, 15.222391, 20.590126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.763618, 15.233335, 20.853765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.909755, 14.891490, 21.001369>,  <9.997437, 14.686383, 21.089931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.909755, 14.891490, 21.001369>,  <9.763618, 15.233335, 20.853765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.909755, 14.891490, 21.001369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648102, 0.051030, 0.759842,
		-0.668199, -0.516756, -0.535232,
		0.365340, -0.854611, 0.369009,
		10.019357, 14.635107, 21.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.227943, 14.880352, 20.915468>,  <9.763618, 15.233335, 20.853765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.227943, 14.880352, 20.915468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.511881, 14.761743, 21.171028>,  <9.682243, 14.690577, 21.324364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.511881, 14.761743, 21.171028>,  <9.227943, 14.880352, 20.915468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.511881, 14.761743, 21.171028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632930, 0.129482, 0.763305,
		-0.309065, -0.946207, -0.095767,
		0.709844, -0.296525, 0.638901,
		9.724834, 14.672785, 21.362698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.950829, 14.399110, 21.230883>,  <9.227943, 14.880352, 20.915468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.950829, 14.399110, 21.230883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240929, 14.523097, 21.476788>,  <9.414989, 14.597489, 21.624331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240929, 14.523097, 21.476788>,  <8.950829, 14.399110, 21.230883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.240929, 14.523097, 21.476788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669054, 0.106657, 0.735521,
		0.162421, -0.944745, 0.284740,
		0.725249, 0.309970, 0.614762,
		9.458504, 14.616087, 21.661217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.783782, 14.130014, 21.839407>,  <8.950829, 14.399110, 21.230883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.783782, 14.130014, 21.839407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.052549, 14.400573, 21.960081>,  <9.213810, 14.562908, 22.032486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.052549, 14.400573, 21.960081>,  <8.783782, 14.130014, 21.839407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.052549, 14.400573, 21.960081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487499, 0.097265, 0.867689,
		0.557559, -0.730087, 0.395097,
		0.671917, 0.676397, 0.301686,
		9.254125, 14.603492, 22.050587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.890300, 14.071387, 22.686005>,  <8.783782, 14.130014, 21.839407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.890300, 14.071387, 22.686005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.009156, 14.424632, 22.540777>,  <9.080470, 14.636579, 22.453640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.009156, 14.424632, 22.540777>,  <8.890300, 14.071387, 22.686005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.009156, 14.424632, 22.540777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450743, 0.464944, 0.762010,
		0.841747, -0.062773, 0.536210,
		0.297141, 0.883112, -0.363070,
		9.098298, 14.689566, 22.431856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.014676, 14.404037, 23.244049>,  <8.890300, 14.071387, 22.686005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.014676, 14.404037, 23.244049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.006577, 14.716302, 22.994198>,  <9.001719, 14.903661, 22.844288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.006577, 14.716302, 22.994198>,  <9.014676, 14.404037, 23.244049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.006577, 14.716302, 22.994198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573197, 0.502820, 0.647006,
		0.819167, 0.371133, 0.437293,
		-0.020246, 0.780661, -0.624627,
		9.000504, 14.950500, 22.806810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.241236, 14.937373, 23.630615>,  <9.014676, 14.404037, 23.244049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.241236, 14.937373, 23.630615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.040676, 15.107553, 23.329260>,  <8.920341, 15.209661, 23.148447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.040676, 15.107553, 23.329260>,  <9.241236, 14.937373, 23.630615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.040676, 15.107553, 23.329260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507863, 0.560242, 0.654372,
		0.700482, 0.710719, -0.064835,
		-0.501398, 0.425449, -0.753388,
		8.890257, 15.235188, 23.103243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.294162, 15.654742, 23.678505>,  <9.241236, 14.937373, 23.630615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.294162, 15.654742, 23.678505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.962595, 15.586649, 23.465370>,  <8.763655, 15.545793, 23.337490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.962595, 15.586649, 23.465370>,  <9.294162, 15.654742, 23.678505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.962595, 15.586649, 23.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522787, 0.574598, 0.629708,
		0.198969, 0.800536, -0.565290,
		-0.828918, -0.170234, -0.532837,
		8.713920, 15.535579, 23.305519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.966242, 16.324860, 23.589529>,  <9.294162, 15.654742, 23.678505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.966242, 16.324860, 23.589529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676394, 16.055073, 23.532932>,  <8.502485, 15.893201, 23.498974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676394, 16.055073, 23.532932>,  <8.966242, 16.324860, 23.589529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676394, 16.055073, 23.532932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595651, 0.509709, 0.620804,
		-0.346593, 0.534126, -0.771092,
		-0.724620, -0.674468, -0.141491,
		8.459008, 15.852733, 23.490484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.390029, 16.721899, 23.360788>,  <8.966242, 16.324860, 23.589529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.390029, 16.721899, 23.360788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238414, 16.386606, 23.517607>,  <8.147445, 16.185431, 23.611698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238414, 16.386606, 23.517607>,  <8.390029, 16.721899, 23.360788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.238414, 16.386606, 23.517607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451974, 0.537382, 0.711997,
		-0.807496, 0.092680, -0.582546,
		-0.379038, -0.838231, 0.392045,
		8.124702, 16.135138, 23.635220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.823518, 16.926859, 23.717121>,  <8.390029, 16.721899, 23.360788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.823518, 16.926859, 23.717121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.845190, 16.546965, 23.840456>,  <7.858193, 16.319029, 23.914457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.845190, 16.546965, 23.840456>,  <7.823518, 16.926859, 23.717121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.845190, 16.546965, 23.840456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354527, 0.270374, 0.895102,
		-0.933475, -0.157810, -0.322058,
		0.054180, -0.949733, 0.308335,
		7.861444, 16.262045, 23.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.255845, 16.913031, 23.989262>,  <7.823518, 16.926859, 23.717121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.255845, 16.913031, 23.989262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.407234, 16.586107, 24.163050>,  <7.498067, 16.389954, 24.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.407234, 16.586107, 24.163050>,  <7.255845, 16.913031, 23.989262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.407234, 16.586107, 24.163050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509937, 0.207621, 0.834780,
		-0.772479, -0.537494, -0.338197,
		0.378473, -0.817309, 0.434470,
		7.520776, 16.340914, 24.293390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.721432, 16.549749, 24.290588>,  <7.255845, 16.913031, 23.989262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.721432, 16.549749, 24.290588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.045393, 16.453680, 24.504644>,  <7.239769, 16.396038, 24.633078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.045393, 16.453680, 24.504644>,  <6.721432, 16.549749, 24.290588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.045393, 16.453680, 24.504644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509978, 0.162427, 0.844713,
		-0.289799, -0.957045, 0.009066,
		0.809901, -0.240174, 0.535142,
		7.288363, 16.381628, 24.665188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.532125, 16.062138, 24.862387>,  <6.721432, 16.549749, 24.290588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.532125, 16.062138, 24.862387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.876652, 16.219322, 24.991205>,  <7.083368, 16.313633, 25.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.876652, 16.219322, 24.991205>,  <6.532125, 16.062138, 24.862387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.876652, 16.219322, 24.991205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388807, 0.101773, 0.915681,
		0.327051, -0.913906, 0.240444,
		0.861317, 0.392961, 0.322048,
		7.135047, 16.337210, 25.087820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.744263, 15.627562, 25.542582>,  <6.532125, 16.062138, 24.862387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.744263, 15.627562, 25.542582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.914187, 15.989527, 25.532234>,  <7.016141, 16.206705, 25.526026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.914187, 15.989527, 25.532234>,  <6.744263, 15.627562, 25.542582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.914187, 15.989527, 25.532234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233341, 0.137063, 0.962687,
		0.874693, -0.402923, 0.269379,
		0.424810, 0.904913, -0.025870,
		7.041630, 16.261000, 25.524473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.111702, 15.603203, 26.102592>,  <6.744263, 15.627562, 25.542582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.111702, 15.603203, 26.102592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.088470, 15.991597, 26.009804>,  <7.074531, 16.224634, 25.954130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.088470, 15.991597, 26.009804>,  <7.111702, 15.603203, 26.102592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.088470, 15.991597, 26.009804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165020, 0.219831, 0.961479,
		0.984579, 0.094124, 0.147464,
		-0.058081, 0.970987, -0.231973,
		7.071046, 16.282894, 25.940212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.476932, 15.892760, 26.738169>,  <7.111702, 15.603203, 26.102592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.476932, 15.892760, 26.738169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244339, 16.163609, 26.557775>,  <7.104784, 16.326118, 26.449539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244339, 16.163609, 26.557775>,  <7.476932, 15.892760, 26.738169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.244339, 16.163609, 26.557775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364096, 0.279131, 0.888549,
		0.727539, 0.680876, 0.084228,
		-0.581482, 0.677121, -0.450983,
		7.069895, 16.366745, 26.422482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.550275, 16.654224, 27.138195>,  <7.476932, 15.892760, 26.738169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.550275, 16.654224, 27.138195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211361, 16.635254, 26.926588>,  <7.008012, 16.623871, 26.799623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211361, 16.635254, 26.926588>,  <7.550275, 16.654224, 27.138195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211361, 16.635254, 26.926588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530693, 0.116319, 0.839544,
		0.021718, 0.992079, -0.123724,
		-0.847286, -0.047426, -0.529016,
		6.957175, 16.621027, 26.767883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.176957, 17.304718, 27.336042>,  <7.550275, 16.654224, 27.138195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.176957, 17.304718, 27.336042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.925678, 17.026783, 27.196001>,  <6.774911, 16.860022, 27.111977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.925678, 17.026783, 27.196001>,  <7.176957, 17.304718, 27.336042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.925678, 17.026783, 27.196001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581784, 0.120710, 0.804336,
		-0.516621, 0.708965, -0.480074,
		-0.628196, -0.694836, -0.350103,
		6.737219, 16.818333, 27.090971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.434924, 17.604254, 27.483007>,  <7.176957, 17.304718, 27.336042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.434924, 17.604254, 27.483007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.378911, 17.210806, 27.437603>,  <6.345304, 16.974737, 27.410360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.378911, 17.210806, 27.437603>,  <6.434924, 17.604254, 27.483007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.378911, 17.210806, 27.437603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764770, 0.034631, 0.643372,
		-0.628902, 0.176901, -0.757092,
		-0.140032, -0.983619, -0.113509,
		6.336902, 16.915720, 27.403551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.687603, 17.484194, 27.411053>,  <6.434924, 17.604254, 27.483007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.687603, 17.484194, 27.411053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.897748, 17.204973, 27.605669>,  <6.023834, 17.037441, 27.722439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.897748, 17.204973, 27.605669>,  <5.687603, 17.484194, 27.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.897748, 17.204973, 27.605669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582254, 0.122032, 0.803796,
		-0.620465, -0.705572, -0.342333,
		0.525360, -0.698052, 0.486539,
		6.055356, 16.995558, 27.751631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.563437, 17.434095, 28.226065>,  <5.687603, 17.484194, 27.411053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.563437, 17.434095, 28.226065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.194529, 17.542326, 28.336487>,  <4.973184, 17.607264, 28.402740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.194529, 17.542326, 28.336487>,  <5.563437, 17.434095, 28.226065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.194529, 17.542326, 28.336487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324069, 0.151952, 0.933751,
		0.210704, 0.950631, -0.227826,
		-0.922271, 0.270576, 0.276053,
		4.917847, 17.623499, 28.419302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.780681, 17.128717, 28.030148>,  <5.563437, 17.434095, 28.226065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.780681, 17.128717, 28.030148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945333, 17.264174, 28.368587>,  <5.044125, 17.345448, 28.571651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945333, 17.264174, 28.368587>,  <4.780681, 17.128717, 28.030148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.945333, 17.264174, 28.368587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779315, -0.350513, 0.519430,
		0.472469, -0.873191, 0.119625,
		0.411632, 0.338640, 0.846098,
		5.068823, 17.365765, 28.622417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.745852, 16.630327, 28.606089>,  <4.780681, 17.128717, 28.030148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.745852, 16.630327, 28.606089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801886, 16.982645, 28.787008>,  <4.835506, 17.194036, 28.895559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801886, 16.982645, 28.787008>,  <4.745852, 16.630327, 28.606089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.801886, 16.982645, 28.787008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769577, -0.190566, 0.609456,
		0.622999, -0.433454, 0.651145,
		0.140085, 0.880797, 0.452298,
		4.843911, 17.246883, 28.922697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.885554, 16.585730, 29.341431>,  <4.745852, 16.630327, 28.606089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.885554, 16.585730, 29.341431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.682877, 16.918417, 29.250650>,  <4.561271, 17.118029, 29.196182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.682877, 16.918417, 29.250650>,  <4.885554, 16.585730, 29.341431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.682877, 16.918417, 29.250650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768725, -0.316690, 0.555671,
		0.390287, 0.456019, 0.799827,
		-0.506693, 0.831718, -0.226953,
		4.530869, 17.167933, 29.182564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.475500, 16.551064, 29.850002>,  <4.885554, 16.585730, 29.341431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.475500, 16.551064, 29.850002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.716359, 16.840202, 29.714407>,  <5.860874, 17.013685, 29.633049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.716359, 16.840202, 29.714407>,  <5.475500, 16.551064, 29.850002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.716359, 16.840202, 29.714407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600241, -0.689836, -0.404767,
		-0.526430, 0.040255, -0.849265,
		0.602147, 0.722845, -0.338988,
		5.897003, 17.057056, 29.612711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.576781, 16.408689, 29.122639>,  <5.475500, 16.551064, 29.850002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.576781, 16.408689, 29.122639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.866223, 16.617031, 29.303793>,  <6.039889, 16.742035, 29.412485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.866223, 16.617031, 29.303793>,  <5.576781, 16.408689, 29.122639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.866223, 16.617031, 29.303793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688280, -0.593588, -0.417041,
		0.051612, 0.613487, -0.788017,
		0.723607, 0.520852, 0.452887,
		6.083305, 16.773287, 29.439659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.160216, 16.760984, 28.644073>,  <5.576781, 16.408689, 29.122639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.160216, 16.760984, 28.644073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.294592, 16.672419, 29.010269>,  <6.375217, 16.619278, 29.229986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.294592, 16.672419, 29.010269>,  <6.160216, 16.760984, 28.644073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.294592, 16.672419, 29.010269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750893, -0.523807, -0.402226,
		0.568599, 0.822558, -0.009706,
		0.335939, -0.221417, 0.915489,
		6.395373, 16.605993, 29.284916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.909382, 16.896549, 28.644753>,  <6.160216, 16.760984, 28.644073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.909382, 16.896549, 28.644753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.789340, 16.628441, 28.916245>,  <6.717314, 16.467577, 29.079140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.789340, 16.628441, 28.916245>,  <6.909382, 16.896549, 28.644753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.789340, 16.628441, 28.916245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737395, -0.614383, -0.280680,
		0.605132, 0.416259, 0.678633,
		-0.300105, -0.670270, 0.678731,
		6.699308, 16.427361, 29.119864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.433338, 16.633087, 29.147442>,  <6.909382, 16.896549, 28.644753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.433338, 16.633087, 29.147442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.173446, 16.332254, 29.103224>,  <7.017510, 16.151754, 29.076693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.173446, 16.332254, 29.103224>,  <7.433338, 16.633087, 29.147442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.173446, 16.332254, 29.103224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759571, -0.636578, -0.133493,
		0.030026, -0.170703, 0.984865,
		-0.649731, -0.752083, -0.110547,
		6.978527, 16.106630, 29.070059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.724679, 16.164322, 29.482161>,  <7.433338, 16.633087, 29.147442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.724679, 16.164322, 29.482161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.484439, 15.995808, 29.210337>,  <7.340295, 15.894700, 29.047243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.484439, 15.995808, 29.210337>,  <7.724679, 16.164322, 29.482161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.484439, 15.995808, 29.210337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705098, -0.679808, -0.201736,
		-0.376980, -0.600317, 0.705340,
		-0.600601, -0.421284, -0.679557,
		7.304258, 15.869423, 29.006470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.858015, 15.509107, 29.515259>,  <7.724679, 16.164322, 29.482161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.858015, 15.509107, 29.515259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.681365, 15.529749, 29.156973>,  <7.575376, 15.542134, 28.942001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.681365, 15.529749, 29.156973>,  <7.858015, 15.509107, 29.515259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.681365, 15.529749, 29.156973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698748, -0.606441, -0.379448,
		-0.562780, -0.793452, 0.231760,
		-0.441623, 0.051604, -0.895715,
		7.548879, 15.545231, 28.888258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.796410, 14.826771, 29.311325>,  <7.858015, 15.509107, 29.515259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.796410, 14.826771, 29.311325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.747800, 15.039974, 28.976391>,  <7.718634, 15.167896, 28.775431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.747800, 15.039974, 28.976391>,  <7.796410, 14.826771, 29.311325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.747800, 15.039974, 28.976391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611325, -0.624415, -0.486196,
		-0.781993, -0.570971, -0.249959,
		-0.121526, 0.533009, -0.837337,
		7.711342, 15.199877, 28.725189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.678273, 14.352357, 28.784536>,  <7.796410, 14.826771, 29.311325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.678273, 14.352357, 28.784536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.826203, 14.684895, 28.618599>,  <7.914961, 14.884418, 28.519037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.826203, 14.684895, 28.618599>,  <7.678273, 14.352357, 28.784536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.826203, 14.684895, 28.618599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588010, -0.555130, -0.588281,
		-0.719357, -0.026371, -0.694140,
		0.369825, 0.831345, -0.414843,
		7.937150, 14.934299, 28.494146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.655309, 14.211712, 28.045649>,  <7.678273, 14.352357, 28.784536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.655309, 14.211712, 28.045649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.924944, 14.502946, 28.095446>,  <8.086725, 14.677686, 28.125324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.924944, 14.502946, 28.095446>,  <7.655309, 14.211712, 28.045649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.924944, 14.502946, 28.095446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607283, -0.450330, -0.654531,
		-0.420490, 0.516814, -0.745715,
		0.674088, 0.728084, 0.124494,
		8.127171, 14.721371, 28.132793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.827085, 14.399698, 27.335196>,  <7.655309, 14.211712, 28.045649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.827085, 14.399698, 27.335196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.140965, 14.534325, 27.543413>,  <8.329294, 14.615101, 27.668344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.140965, 14.534325, 27.543413>,  <7.827085, 14.399698, 27.335196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.140965, 14.534325, 27.543413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605136, -0.233910, -0.760984,
		-0.134361, 0.912146, -0.387218,
		0.784702, 0.336566, 0.520544,
		8.376376, 14.635295, 27.699577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.294024, 14.635079, 26.905632>,  <7.827085, 14.399698, 27.335196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.294024, 14.635079, 26.905632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.530247, 14.594204, 27.225832>,  <8.671980, 14.569678, 27.417952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.530247, 14.594204, 27.225832>,  <8.294024, 14.635079, 26.905632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.530247, 14.594204, 27.225832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753009, -0.286941, -0.592150,
		0.290208, 0.952482, -0.092506,
		0.590556, -0.102189, 0.800500,
		8.707414, 14.563547, 27.465982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.980359, 14.966403, 26.616180>,  <8.294024, 14.635079, 26.905632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.980359, 14.966403, 26.616180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.030609, 14.720508, 26.927645>,  <9.060759, 14.572970, 27.114523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.030609, 14.720508, 26.927645>,  <8.980359, 14.966403, 26.616180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.030609, 14.720508, 26.927645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840421, -0.351128, -0.412797,
		0.527172, 0.706261, 0.472529,
		0.125624, -0.614739, 0.778662,
		9.068296, 14.536086, 27.161243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.630987, 14.858008, 26.751644>,  <8.980359, 14.966403, 26.616180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.630987, 14.858008, 26.751644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523469, 14.553543, 26.987740>,  <9.458958, 14.370864, 27.129396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523469, 14.553543, 26.987740>,  <9.630987, 14.858008, 26.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523469, 14.553543, 26.987740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794571, -0.521597, -0.310795,
		0.544431, 0.385445, 0.745001,
		-0.268796, -0.761163, 0.590237,
		9.442830, 14.325194, 27.164810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.219061, 14.548639, 26.822960>,  <9.630987, 14.858008, 26.751644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.219061, 14.548639, 26.822960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.955288, 14.274708, 26.946997>,  <9.797024, 14.110349, 27.021418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.955288, 14.274708, 26.946997>,  <10.219061, 14.548639, 26.822960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.955288, 14.274708, 26.946997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621311, -0.728698, -0.288049,
		0.423227, 0.002714, 0.906020,
		-0.659433, -0.684830, 0.310091,
		9.757458, 14.069259, 27.040024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.644084, 14.160163, 27.301195>,  <10.219061, 14.548639, 26.822960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.644084, 14.160163, 27.301195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.330211, 13.995416, 27.115881>,  <10.141887, 13.896567, 27.004692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.330211, 13.995416, 27.115881>,  <10.644084, 14.160163, 27.301195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.330211, 13.995416, 27.115881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589062, -0.728197, -0.350336,
		-0.193072, -0.547808, 0.814021,
		-0.784684, -0.411869, -0.463287,
		10.094806, 13.871855, 26.976894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.748925, 13.516811, 27.425694>,  <10.644084, 14.160163, 27.301195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.748925, 13.516811, 27.425694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.482557, 13.505763, 27.127489>,  <10.322737, 13.499134, 26.948566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.482557, 13.505763, 27.127489>,  <10.748925, 13.516811, 27.425694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.482557, 13.505763, 27.127489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513871, -0.741425, -0.431538,
		-0.540822, -0.670467, 0.507923,
		-0.665919, -0.027622, -0.745513,
		10.282782, 13.497477, 26.903835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683765, 12.801168, 27.354696>,  <10.748925, 13.516811, 27.425694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683765, 12.801168, 27.354696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.555142, 12.974460, 27.017908>,  <10.477968, 13.078435, 26.815836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.555142, 12.974460, 27.017908>,  <10.683765, 12.801168, 27.354696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.555142, 12.974460, 27.017908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517689, -0.664099, -0.539418,
		-0.792842, -0.609332, -0.010732,
		-0.321558, 0.433229, -0.841970,
		10.458675, 13.104428, 26.765318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.714259, 12.274096, 26.926304>,  <10.683765, 12.801168, 27.354696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.714259, 12.274096, 26.926304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.694376, 12.585874, 26.676504>,  <10.682446, 12.772940, 26.526625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.694376, 12.585874, 26.676504>,  <10.714259, 12.274096, 26.926304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.694376, 12.585874, 26.676504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375121, -0.564925, -0.734945,
		-0.925642, -0.270795, -0.264305,
		-0.049707, 0.779442, -0.624499,
		10.679463, 12.819706, 26.489155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.333451, 12.124496, 26.223188>,  <10.714259, 12.274096, 26.926304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.333451, 12.124496, 26.223188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.554110, 12.447245, 26.138672>,  <10.686504, 12.640894, 26.087961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.554110, 12.447245, 26.138672>,  <10.333451, 12.124496, 26.223188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.554110, 12.447245, 26.138672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295778, -0.426103, -0.854958,
		-0.779873, 0.409139, -0.473713,
		0.551646, 0.806872, -0.211292,
		10.719604, 12.689306, 26.075285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209337, 12.280263, 25.495352>,  <10.333451, 12.124496, 26.223188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209337, 12.280263, 25.495352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556723, 12.465712, 25.565582>,  <10.765154, 12.576981, 25.607719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556723, 12.465712, 25.565582>,  <10.209337, 12.280263, 25.495352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.556723, 12.465712, 25.565582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421049, -0.502830, -0.754904,
		-0.261705, 0.729532, -0.631897,
		0.868463, 0.463621, 0.175575,
		10.817262, 12.604798, 25.618256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.444431, 12.374048, 24.880775>,  <10.209337, 12.280263, 25.495352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.444431, 12.374048, 24.880775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.776343, 12.472256, 25.081249>,  <10.975491, 12.531180, 25.201532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.776343, 12.472256, 25.081249>,  <10.444431, 12.374048, 24.880775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.776343, 12.472256, 25.081249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557979, -0.347075, -0.753789,
		-0.011121, 0.905129, -0.424991,
		0.829780, 0.245519, 0.501184,
		11.025277, 12.545912, 25.231604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.783095, 12.960139, 24.543068>,  <10.444431, 12.374048, 24.880775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.783095, 12.960139, 24.543068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.039262, 12.731157, 24.747875>,  <11.192962, 12.593768, 24.870760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.039262, 12.731157, 24.747875>,  <10.783095, 12.960139, 24.543068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.039262, 12.731157, 24.747875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338904, -0.387619, -0.857261,
		0.689211, 0.722529, -0.054230,
		0.640416, -0.572454, 0.512019,
		11.231387, 12.559421, 24.901482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.384537, 13.046558, 24.175066>,  <10.783095, 12.960139, 24.543068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.384537, 13.046558, 24.175066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421385, 12.715186, 24.396051>,  <11.443494, 12.516363, 24.528643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421385, 12.715186, 24.396051>,  <11.384537, 13.046558, 24.175066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.421385, 12.715186, 24.396051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393749, -0.479296, -0.784370,
		0.914590, 0.289788, 0.282041,
		0.092120, -0.828431, 0.552464,
		11.449020, 12.466657, 24.561790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.030911, 12.815786, 24.011654>,  <11.384537, 13.046558, 24.175066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.030911, 12.815786, 24.011654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865216, 12.499231, 24.191483>,  <11.765800, 12.309299, 24.299379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865216, 12.499231, 24.191483>,  <12.030911, 12.815786, 24.011654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865216, 12.499231, 24.191483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285038, -0.581893, -0.761679,
		0.864385, -0.187370, 0.466617,
		-0.414237, -0.791387, 0.449572,
		11.740945, 12.261815, 24.326353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529231, 12.283917, 23.893860>,  <12.030911, 12.815786, 24.011654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529231, 12.283917, 23.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194753, 12.094525, 24.004562>,  <11.994066, 11.980890, 24.070984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.194753, 12.094525, 24.004562>,  <12.529231, 12.283917, 23.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.194753, 12.094525, 24.004562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056777, -0.576657, -0.815011,
		0.545485, -0.665795, 0.509081,
		-0.836195, -0.473480, 0.276756,
		11.943894, 11.952481, 24.087589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688919, 11.548959, 23.826897>,  <12.529231, 12.283917, 23.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688919, 11.548959, 23.826897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293940, 11.600296, 23.790073>,  <12.056952, 11.631099, 23.767979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293940, 11.600296, 23.790073>,  <12.688919, 11.548959, 23.826897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293940, 11.600296, 23.790073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015969, -0.498741, -0.866604,
		-0.157136, -0.857196, 0.490431,
		-0.987448, 0.128343, -0.092059,
		11.997705, 11.638799, 23.762455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434428, 10.924047, 23.630545>,  <12.688919, 11.548959, 23.826897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434428, 10.924047, 23.630545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.121775, 11.152295, 23.529795>,  <11.934182, 11.289244, 23.469345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.121775, 11.152295, 23.529795>,  <12.434428, 10.924047, 23.630545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.121775, 11.152295, 23.529795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119033, -0.259929, -0.958263,
		-0.612274, -0.778992, 0.135247,
		-0.781634, 0.570621, -0.251873,
		11.887284, 11.323482, 23.454233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998942, 10.550248, 23.288799>,  <12.434428, 10.924047, 23.630545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998942, 10.550248, 23.288799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948829, 10.928424, 23.168501>,  <11.918760, 11.155330, 23.096321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948829, 10.928424, 23.168501>,  <11.998942, 10.550248, 23.288799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948829, 10.928424, 23.168501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031083, -0.306727, -0.951290,
		-0.991634, -0.109834, 0.067816,
		-0.125285, 0.945439, -0.300747,
		11.911243, 11.212055, 23.078278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615407, 10.270565, 22.753986>,  <11.998942, 10.550248, 23.288799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.615407, 10.270565, 22.753986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705678, 10.658085, 22.713009>,  <11.759840, 10.890597, 22.688421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705678, 10.658085, 22.713009>,  <11.615407, 10.270565, 22.753986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.705678, 10.658085, 22.713009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125895, -0.133279, -0.983050,
		-0.966033, 0.208954, -0.152045,
		0.225677, 0.968801, -0.102446,
		11.773381, 10.948725, 22.682276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.270034, 10.457679, 22.158655>,  <11.615407, 10.270565, 22.753986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.270034, 10.457679, 22.158655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.544719, 10.742986, 22.214762>,  <11.709530, 10.914170, 22.248426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.544719, 10.742986, 22.214762>,  <11.270034, 10.457679, 22.158655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.544719, 10.742986, 22.214762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197055, 0.003078, -0.980388,
		-0.699711, 0.700884, -0.138439,
		0.686712, 0.713268, 0.140267,
		11.750732, 10.956966, 22.256842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.107703, 10.882504, 21.654470>,  <11.270034, 10.457679, 22.158655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.107703, 10.882504, 21.654470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494683, 10.932453, 21.742516>,  <11.726871, 10.962422, 21.795341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494683, 10.932453, 21.742516>,  <11.107703, 10.882504, 21.654470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494683, 10.932453, 21.742516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227264, -0.046086, -0.972742,
		-0.111323, 0.991102, -0.072964,
		0.967449, 0.124871, 0.220111,
		11.784918, 10.969914, 21.808548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299533, 11.474233, 21.316708>,  <11.107703, 10.882504, 21.654470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299533, 11.474233, 21.316708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.648959, 11.289792, 21.379023>,  <11.858615, 11.179128, 21.416412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.648959, 11.289792, 21.379023>,  <11.299533, 11.474233, 21.316708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648959, 11.289792, 21.379023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221947, 0.092538, -0.970657,
		0.433156, 0.882509, 0.183178,
		0.873565, -0.461102, 0.155787,
		11.911029, 11.151462, 21.425758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.792133, 11.871360, 20.885790>,  <11.299533, 11.474233, 21.316708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.792133, 11.871360, 20.885790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.992001, 11.533519, 20.962709>,  <12.111921, 11.330814, 21.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.992001, 11.533519, 20.962709>,  <11.792133, 11.871360, 20.885790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.992001, 11.533519, 20.962709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461338, 0.071585, -0.884332,
		0.733143, 0.530586, 0.425416,
		0.499668, -0.844603, 0.192297,
		12.141901, 11.280138, 21.020399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482305, 12.010075, 20.749479>,  <11.792133, 11.871360, 20.885790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482305, 12.010075, 20.749479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.462994, 11.611766, 20.718216>,  <12.451407, 11.372781, 20.699459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.462994, 11.611766, 20.718216>,  <12.482305, 12.010075, 20.749479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.462994, 11.611766, 20.718216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274628, 0.062000, -0.959549,
		0.960338, -0.067787, 0.270474,
		-0.048276, -0.995771, -0.078157,
		12.448511, 11.313034, 20.694769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147299, 11.753315, 20.365604>,  <12.482305, 12.010075, 20.749479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147299, 11.753315, 20.365604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853115, 11.486321, 20.319017>,  <12.676604, 11.326125, 20.291065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853115, 11.486321, 20.319017>,  <13.147299, 11.753315, 20.365604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853115, 11.486321, 20.319017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283782, -0.147353, -0.947499,
		0.615278, -0.729900, 0.297792,
		-0.735460, -0.667483, -0.116469,
		12.632477, 11.286077, 20.284077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.498019, 11.226889, 19.946873>,  <13.147299, 11.753315, 20.365604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.498019, 11.226889, 19.946873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106320, 11.163322, 19.896559>,  <12.871302, 11.125182, 19.866371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106320, 11.163322, 19.896559>,  <13.498019, 11.226889, 19.946873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106320, 11.163322, 19.896559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176018, -0.359203, -0.916510,
		0.100467, -0.919630, 0.379721,
		-0.979247, -0.158917, -0.125783,
		12.812547, 11.115647, 19.858824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.472641, 10.639514, 19.631262>,  <13.498019, 11.226889, 19.946873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.472641, 10.639514, 19.631262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107111, 10.779158, 19.548271>,  <12.887793, 10.862944, 19.498476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107111, 10.779158, 19.548271>,  <13.472641, 10.639514, 19.631262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107111, 10.779158, 19.548271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151888, -0.180006, -0.971868,
		-0.376637, -0.919630, 0.111468,
		-0.913824, 0.349110, -0.207478,
		12.832964, 10.883890, 19.486029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214711, 10.063907, 19.244019>,  <13.472641, 10.639514, 19.631262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214711, 10.063907, 19.244019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000218, 10.390847, 19.159740>,  <12.871523, 10.587011, 19.109173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000218, 10.390847, 19.159740>,  <13.214711, 10.063907, 19.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000218, 10.390847, 19.159740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083587, -0.196969, -0.976840,
		-0.839921, -0.541425, 0.037301,
		-0.536233, 0.817351, -0.210695,
		12.839349, 10.636052, 19.096533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.638398, 9.919024, 18.843426>,  <13.214711, 10.063907, 19.244019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.638398, 9.919024, 18.843426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.725245, 10.303191, 18.773623>,  <12.777354, 10.533692, 18.731741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.725245, 10.303191, 18.773623>,  <12.638398, 9.919024, 18.843426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.725245, 10.303191, 18.773623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215413, -0.221508, -0.951069,
		-0.952080, 0.168903, -0.254981,
		0.217119, 0.960420, -0.174509,
		12.790381, 10.591317, 18.721270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620498, 9.980970, 18.131027>,  <12.638398, 9.919024, 18.843426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620498, 9.980970, 18.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.782134, 10.332867, 18.231239>,  <12.879116, 10.544004, 18.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.782134, 10.332867, 18.231239>,  <12.620498, 9.980970, 18.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.782134, 10.332867, 18.231239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194969, 0.184758, -0.963251,
		-0.893699, 0.438086, -0.096863,
		0.404090, 0.879741, 0.250531,
		12.903361, 10.596789, 18.306398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299926, 10.406563, 17.715939>,  <12.620498, 9.980970, 18.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299926, 10.406563, 17.715939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.650039, 10.588242, 17.782377>,  <12.860106, 10.697248, 17.822241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.650039, 10.588242, 17.782377>,  <12.299926, 10.406563, 17.715939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.650039, 10.588242, 17.782377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069781, 0.221237, -0.972720,
		-0.478552, 0.862995, 0.161951,
		0.875282, 0.454196, 0.166094,
		12.912623, 10.724501, 17.832205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446136, 10.797681, 17.104044>,  <12.299926, 10.406563, 17.715939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446136, 10.797681, 17.104044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.790999, 10.877534, 17.290302>,  <12.997918, 10.925446, 17.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.790999, 10.877534, 17.290302>,  <12.446136, 10.797681, 17.104044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790999, 10.877534, 17.290302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317313, 0.503727, -0.803474,
		-0.394958, 0.840479, 0.370948,
		0.862160, 0.199632, 0.465646,
		13.049647, 10.937424, 17.429996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657398, 11.471078, 16.944124>,  <12.446136, 10.797681, 17.104044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657398, 11.471078, 16.944124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.981709, 11.257390, 17.039833>,  <13.176296, 11.129177, 17.097258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.981709, 11.257390, 17.039833>,  <12.657398, 11.471078, 16.944124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981709, 11.257390, 17.039833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400390, 0.207956, -0.892436,
		0.426999, 0.819368, 0.382502,
		0.810777, -0.534219, 0.239270,
		13.224943, 11.097124, 17.111614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197541, 11.904725, 16.889265>,  <12.657398, 11.471078, 16.944124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197541, 11.904725, 16.889265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.316822, 11.529024, 16.821289>,  <13.388391, 11.303603, 16.780504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.316822, 11.529024, 16.821289>,  <13.197541, 11.904725, 16.889265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316822, 11.529024, 16.821289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476587, 0.300773, -0.826075,
		0.827006, 0.165347, 0.537327,
		0.298203, -0.939253, -0.169939,
		13.406282, 11.247249, 16.770308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865527, 11.829885, 16.711758>,  <13.197541, 11.904725, 16.889265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865527, 11.829885, 16.711758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685428, 11.512883, 16.547216>,  <13.577368, 11.322681, 16.448492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685428, 11.512883, 16.547216>,  <13.865527, 11.829885, 16.711758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685428, 11.512883, 16.547216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357522, 0.262139, -0.896360,
		0.818203, -0.550651, 0.165311,
		-0.450247, -0.792506, -0.411353,
		13.550353, 11.275131, 16.423811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301817, 12.164447, 17.029572>,  <13.865527, 11.829885, 16.711758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301817, 12.164447, 17.029572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.695261, 12.222993, 16.987450>,  <14.931328, 12.258121, 16.962177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.695261, 12.222993, 16.987450>,  <14.301817, 12.164447, 17.029572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.695261, 12.222993, 16.987450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147981, -0.321588, 0.935245,
		0.103022, -0.935499, -0.337976,
		0.983610, 0.146365, -0.105305,
		14.990344, 12.266902, 16.955858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497200, 11.591574, 17.363836>,  <14.301817, 12.164447, 17.029572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497200, 11.591574, 17.363836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798681, 11.854302, 17.354738>,  <14.979569, 12.011940, 17.349279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798681, 11.854302, 17.354738>,  <14.497200, 11.591574, 17.363836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798681, 11.854302, 17.354738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130463, -0.115604, 0.984690,
		0.644137, -0.745131, -0.172822,
		0.753702, 0.656822, -0.022747,
		15.024792, 12.051349, 17.347914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106979, 11.305387, 17.735144>,  <14.497200, 11.591574, 17.363836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106979, 11.305387, 17.735144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154568, 11.702542, 17.736803>,  <15.183121, 11.940836, 17.737799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154568, 11.702542, 17.736803>,  <15.106979, 11.305387, 17.735144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154568, 11.702542, 17.736803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071941, -0.012786, 0.997327,
		0.990288, -0.118356, -0.072951,
		0.118972, 0.992889, 0.004147,
		15.190259, 12.000409, 17.738047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561552, 11.378027, 18.239330>,  <15.106979, 11.305387, 17.735144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561552, 11.378027, 18.239330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.398290, 11.738090, 18.178501>,  <15.300332, 11.954127, 18.142004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.398290, 11.738090, 18.178501>,  <15.561552, 11.378027, 18.239330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398290, 11.738090, 18.178501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125044, 0.220136, 0.967421,
		0.904309, 0.375842, -0.202409,
		-0.408155, 0.900157, -0.152074,
		15.275844, 12.008137, 18.132879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906182, 11.845484, 18.689749>,  <15.561552, 11.378027, 18.239330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906182, 11.845484, 18.689749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563154, 12.040357, 18.623745>,  <15.357338, 12.157281, 18.584143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563154, 12.040357, 18.623745>,  <15.906182, 11.845484, 18.689749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563154, 12.040357, 18.623745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049976, 0.398200, 0.915936,
		0.511935, 0.777232, -0.365832,
		-0.857569, 0.487183, -0.165010,
		15.305883, 12.186511, 18.574242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115042, 12.572281, 18.902498>,  <15.906182, 11.845484, 18.689749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115042, 12.572281, 18.902498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720080, 12.520020, 18.938192>,  <15.483104, 12.488663, 18.959610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720080, 12.520020, 18.938192>,  <16.115042, 12.572281, 18.902498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720080, 12.520020, 18.938192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024392, 0.431561, 0.901754,
		-0.156328, 0.892572, -0.422939,
		-0.987404, -0.130653, 0.089236,
		15.423860, 12.480824, 18.964964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976823, 12.946691, 19.453360>,  <16.115042, 12.572281, 18.902498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976823, 12.946691, 19.453360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604750, 12.804767, 19.415689>,  <15.381506, 12.719612, 19.393087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604750, 12.804767, 19.415689>,  <15.976823, 12.946691, 19.453360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604750, 12.804767, 19.415689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241148, 0.397164, 0.885499,
		-0.276780, 0.846387, -0.454997,
		-0.930183, -0.354810, -0.094177,
		15.325695, 12.698323, 19.387436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458392, 13.525111, 19.562458>,  <15.976823, 12.946691, 19.453360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458392, 13.525111, 19.562458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.244192, 13.192758, 19.622953>,  <15.115672, 12.993345, 19.659250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.244192, 13.192758, 19.622953>,  <15.458392, 13.525111, 19.562458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244192, 13.192758, 19.622953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290951, 0.349618, 0.890570,
		-0.792835, 0.432897, -0.428967,
		-0.535500, -0.830883, 0.151238,
		15.083542, 12.943493, 19.668325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807499, 13.668080, 19.899353>,  <15.458392, 13.525111, 19.562458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807499, 13.668080, 19.899353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889182, 13.283405, 19.972517>,  <14.938191, 13.052600, 20.016415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889182, 13.283405, 19.972517>,  <14.807499, 13.668080, 19.899353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889182, 13.283405, 19.972517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149038, 0.154125, 0.976746,
		-0.967516, -0.226718, -0.111855,
		0.204207, -0.961688, 0.182908,
		14.950444, 12.994899, 20.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387266, 13.573298, 20.355757>,  <14.807499, 13.668080, 19.899353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387266, 13.573298, 20.355757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642865, 13.270700, 20.411467>,  <14.796225, 13.089141, 20.444893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642865, 13.270700, 20.411467>,  <14.387266, 13.573298, 20.355757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642865, 13.270700, 20.411467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092746, 0.103969, 0.990247,
		-0.763598, -0.645682, -0.003726,
		0.638997, -0.756496, 0.139275,
		14.834564, 13.043751, 20.453249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995123, 13.137557, 20.737673>,  <14.387266, 13.573298, 20.355757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995123, 13.137557, 20.737673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378165, 13.029860, 20.778664>,  <14.607990, 12.965242, 20.803259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378165, 13.029860, 20.778664>,  <13.995123, 13.137557, 20.737673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378165, 13.029860, 20.778664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081867, 0.086729, 0.992863,
		-0.276206, -0.959160, 0.061010,
		0.957605, -0.269240, 0.102478,
		14.665447, 12.949088, 20.809406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999901, 12.669848, 21.396809>,  <13.995123, 13.137557, 20.737673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999901, 12.669848, 21.396809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.384700, 12.761449, 21.337322>,  <14.615580, 12.816409, 21.301630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.384700, 12.761449, 21.337322>,  <13.999901, 12.669848, 21.396809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384700, 12.761449, 21.337322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171032, -0.080783, 0.981948,
		0.212855, -0.970068, -0.116880,
		0.961999, 0.229002, -0.148718,
		14.673300, 12.830150, 21.292707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452703, 12.119897, 21.695961>,  <13.999901, 12.669848, 21.396809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452703, 12.119897, 21.695961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.671112, 12.454671, 21.680990>,  <14.802157, 12.655536, 21.672009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.671112, 12.454671, 21.680990>,  <14.452703, 12.119897, 21.695961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.671112, 12.454671, 21.680990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022592, 0.029948, 0.999296,
		0.837466, -0.546483, -0.002556,
		0.546022, 0.836935, -0.037426,
		14.834919, 12.705751, 21.669762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924624, 12.069340, 22.143047>,  <14.452703, 12.119897, 21.695961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924624, 12.069340, 22.143047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935326, 12.467302, 22.104176>,  <14.941746, 12.706080, 22.080853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935326, 12.467302, 22.104176>,  <14.924624, 12.069340, 22.143047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935326, 12.467302, 22.104176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029908, 0.096374, 0.994896,
		0.999195, -0.029522, -0.027178,
		0.026752, 0.994907, -0.097179,
		14.943351, 12.765775, 22.075022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442287, 12.261123, 22.566227>,  <14.924624, 12.069340, 22.143047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.442287, 12.261123, 22.566227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224894, 12.594542, 22.526581>,  <15.094457, 12.794593, 22.502792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224894, 12.594542, 22.526581>,  <15.442287, 12.261123, 22.566227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224894, 12.594542, 22.526581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069137, 0.162127, 0.984345,
		0.836567, 0.528124, -0.145743,
		-0.543485, 0.833546, -0.099117,
		15.061848, 12.844605, 22.496845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750873, 12.793712, 23.155012>,  <15.442287, 12.261123, 22.566227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750873, 12.793712, 23.155012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.399994, 12.925625, 23.015430>,  <15.189466, 13.004772, 22.931681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.399994, 12.925625, 23.015430>,  <15.750873, 12.793712, 23.155012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.399994, 12.925625, 23.015430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205332, 0.399308, 0.893528,
		0.434010, 0.855451, -0.282557,
		-0.877196, 0.329782, -0.348955,
		15.136835, 13.024560, 22.910744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653782, 13.576788, 23.294264>,  <15.750873, 12.793712, 23.155012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653782, 13.576788, 23.294264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.297559, 13.395093, 23.284657>,  <15.083825, 13.286077, 23.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.297559, 13.395093, 23.284657>,  <15.653782, 13.576788, 23.294264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.297559, 13.395093, 23.284657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266785, 0.478821, 0.836395,
		-0.368420, 0.751266, -0.547601,
		-0.890557, -0.454236, -0.024019,
		15.030392, 13.258822, 23.277451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250250, 13.999328, 23.705000>,  <15.653782, 13.576788, 23.294264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250250, 13.999328, 23.705000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964775, 13.725599, 23.645191>,  <14.793490, 13.561362, 23.609306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964775, 13.725599, 23.645191>,  <15.250250, 13.999328, 23.705000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964775, 13.725599, 23.645191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546785, 0.410850, 0.729539,
		-0.437808, 0.602418, -0.667395,
		-0.713687, -0.684320, -0.149520,
		14.750669, 13.520303, 23.600336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594145, 14.307897, 23.541229>,  <15.250250, 13.999328, 23.705000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594145, 14.307897, 23.541229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481198, 13.958506, 23.699877>,  <14.413430, 13.748871, 23.795065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481198, 13.958506, 23.699877>,  <14.594145, 14.307897, 23.541229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481198, 13.958506, 23.699877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578611, 0.484843, 0.655848,
		-0.765166, -0.044297, -0.642307,
		-0.282366, -0.873478, 0.396617,
		14.396488, 13.696462, 23.818861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868411, 14.378972, 23.691460>,  <14.594145, 14.307897, 23.541229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868411, 14.378972, 23.691460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962932, 14.050738, 23.899614>,  <14.019644, 13.853798, 24.024508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962932, 14.050738, 23.899614>,  <13.868411, 14.378972, 23.691460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.962932, 14.050738, 23.899614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799253, 0.140423, 0.584359,
		-0.552590, -0.554005, -0.622673,
		0.236300, -0.820585, 0.520387,
		14.033822, 13.804563, 24.055731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234483, 14.114899, 23.939735>,  <13.868411, 14.378972, 23.691460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234483, 14.114899, 23.939735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.482594, 13.942443, 24.201841>,  <13.631462, 13.838969, 24.359104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.482594, 13.942443, 24.201841>,  <13.234483, 14.114899, 23.939735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482594, 13.942443, 24.201841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652146, 0.180723, 0.736237,
		-0.435842, -0.884001, -0.169067,
		0.620279, -0.431139, 0.655265,
		13.668678, 13.813101, 24.398420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754595, 13.891081, 24.415792>,  <13.234483, 14.114899, 23.939735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754595, 13.891081, 24.415792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107190, 13.874468, 24.603943>,  <13.318748, 13.864500, 24.716833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107190, 13.874468, 24.603943>,  <12.754595, 13.891081, 24.415792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107190, 13.874468, 24.603943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447035, 0.247488, 0.859599,
		-0.152115, -0.968000, 0.199591,
		0.881488, -0.041533, 0.470376,
		13.371636, 13.862008, 24.745056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.607261, 13.478342, 25.045559>,  <12.754595, 13.891081, 24.415792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.607261, 13.478342, 25.045559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.932904, 13.703926, 25.100948>,  <13.128290, 13.839276, 25.134182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.932904, 13.703926, 25.100948>,  <12.607261, 13.478342, 25.045559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.932904, 13.703926, 25.100948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400459, 0.372528, 0.837171,
		0.420547, -0.737001, 0.529122,
		0.814108, 0.563962, 0.138473,
		13.177137, 13.873114, 25.142490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781045, 13.351413, 25.835667>,  <12.607261, 13.478342, 25.045559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781045, 13.351413, 25.835667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930937, 13.687809, 25.679558>,  <13.020872, 13.889647, 25.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930937, 13.687809, 25.679558>,  <12.781045, 13.351413, 25.835667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930937, 13.687809, 25.679558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353350, 0.518723, 0.778505,
		0.857160, -0.153825, 0.491544,
		0.374729, 0.840990, -0.390274,
		13.043356, 13.940106, 25.562475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.048271, 13.665071, 26.430054>,  <12.781045, 13.351413, 25.835667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.048271, 13.665071, 26.430054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.993637, 13.943837, 26.148443>,  <12.960856, 14.111097, 25.979477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.993637, 13.943837, 26.148443>,  <13.048271, 13.665071, 26.430054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.993637, 13.943837, 26.148443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508810, 0.560427, 0.653478,
		0.849975, 0.447471, 0.278052,
		-0.136584, 0.696915, -0.704026,
		12.952662, 14.152912, 25.937235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304976, 14.349954, 26.605738>,  <13.048271, 13.665071, 26.430054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304976, 14.349954, 26.605738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992186, 14.354347, 26.356453>,  <12.804511, 14.356983, 26.206882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992186, 14.354347, 26.356453>,  <13.304976, 14.349954, 26.605738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992186, 14.354347, 26.356453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443594, 0.692591, 0.568807,
		0.437878, 0.721247, -0.536718,
		-0.781977, 0.010983, -0.623211,
		12.757592, 14.357642, 26.169489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.173790, 15.061856, 26.322020>,  <13.304976, 14.349954, 26.605738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.173790, 15.061856, 26.322020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865408, 14.811270, 26.367920>,  <12.680379, 14.660917, 26.395460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865408, 14.811270, 26.367920>,  <13.173790, 15.061856, 26.322020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865408, 14.811270, 26.367920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449112, 0.662505, 0.599488,
		-0.451582, 0.410642, -0.792115,
		-0.770955, -0.626467, 0.114751,
		12.634122, 14.623330, 26.402346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.698608, 15.494085, 26.204950>,  <13.173790, 15.061856, 26.322020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.698608, 15.494085, 26.204950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518541, 15.192411, 26.396179>,  <12.410501, 15.011407, 26.510918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518541, 15.192411, 26.396179>,  <12.698608, 15.494085, 26.204950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518541, 15.192411, 26.396179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628572, 0.647914, 0.430238,
		-0.634230, -0.106825, -0.765729,
		-0.450167, -0.754186, 0.478073,
		12.383492, 14.966156, 26.539600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.079283, 15.764650, 26.194893>,  <12.698608, 15.494085, 26.204950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.079283, 15.764650, 26.194893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.091142, 15.489248, 26.484743>,  <12.098257, 15.324007, 26.658653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.091142, 15.489248, 26.484743>,  <12.079283, 15.764650, 26.194893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.091142, 15.489248, 26.484743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568899, 0.584452, 0.578593,
		-0.821873, -0.429393, -0.374362,
		0.029647, -0.688504, 0.724626,
		12.100036, 15.282697, 26.702131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.367763, 15.696860, 26.456028>,  <12.079283, 15.764650, 26.194893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.367763, 15.696860, 26.456028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597327, 15.560701, 26.753956>,  <11.735066, 15.479006, 26.932713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597327, 15.560701, 26.753956>,  <11.367763, 15.696860, 26.456028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.597327, 15.560701, 26.753956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539075, 0.527624, 0.656515,
		-0.616460, -0.778294, 0.119310,
		0.573912, -0.340398, 0.744818,
		11.769501, 15.458582, 26.977402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897256, 15.632945, 26.868393>,  <11.367763, 15.696860, 26.456028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897256, 15.632945, 26.868393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247593, 15.668386, 27.058149>,  <11.457795, 15.689651, 27.172003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247593, 15.668386, 27.058149>,  <10.897256, 15.632945, 26.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.247593, 15.668386, 27.058149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389820, 0.709386, 0.587207,
		-0.284500, -0.699229, 0.655850,
		0.875843, 0.088603, 0.474393,
		11.510345, 15.694967, 27.200468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.739471, 15.578355, 27.513159>,  <10.897256, 15.632945, 26.868393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.739471, 15.578355, 27.513159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.094846, 15.761058, 27.531284>,  <11.308070, 15.870680, 27.542160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.094846, 15.761058, 27.531284>,  <10.739471, 15.578355, 27.513159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.094846, 15.761058, 27.531284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380492, 0.677660, 0.629288,
		0.256723, -0.576324, 0.775850,
		0.888436, 0.456757, 0.045315,
		11.361377, 15.898086, 27.544878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.776519, 15.979142, 28.220673>,  <10.739471, 15.578355, 27.513159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.776519, 15.979142, 28.220673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036725, 16.160398, 27.976871>,  <11.192849, 16.269152, 27.830591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036725, 16.160398, 27.976871>,  <10.776519, 15.979142, 28.220673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.036725, 16.160398, 27.976871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204258, 0.877326, 0.434255,
		0.731510, -0.157995, 0.663272,
		0.650516, 0.453141, -0.609502,
		11.231880, 16.296341, 27.794022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.218991, 16.329142, 28.681000>,  <10.776519, 15.979142, 28.220673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.218991, 16.329142, 28.681000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.280986, 16.514389, 28.331944>,  <11.318183, 16.625538, 28.122511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.280986, 16.514389, 28.331944>,  <11.218991, 16.329142, 28.681000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280986, 16.514389, 28.331944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269196, 0.869685, 0.413741,
		0.950533, 0.170787, 0.259458,
		0.154985, 0.463119, -0.872640,
		11.327481, 16.653324, 28.070152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735278, 16.950844, 28.656055>,  <11.218991, 16.329142, 28.681000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735278, 16.950844, 28.656055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.466817, 17.019394, 28.367559>,  <11.305740, 17.060524, 28.194462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.466817, 17.019394, 28.367559>,  <11.735278, 16.950844, 28.656055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.466817, 17.019394, 28.367559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319609, 0.810953, 0.490108,
		0.668883, 0.559451, -0.489500,
		-0.671153, 0.171376, -0.721238,
		11.265471, 17.070807, 28.151188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.561327, 17.781841, 28.461672>,  <11.735278, 16.950844, 28.656055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.561327, 17.781841, 28.461672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268579, 17.515661, 28.402964>,  <11.092929, 17.355953, 28.367739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268579, 17.515661, 28.402964>,  <11.561327, 17.781841, 28.461672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.268579, 17.515661, 28.402964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622726, 0.565651, 0.540604,
		-0.276724, 0.487049, -0.828376,
		-0.731872, -0.665449, -0.146769,
		11.049017, 17.316027, 28.358932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.896335, 18.198496, 28.533318>,  <11.561327, 17.781841, 28.461672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.896335, 18.198496, 28.533318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.800802, 17.811668, 28.568504>,  <10.743483, 17.579573, 28.589617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.800802, 17.811668, 28.568504>,  <10.896335, 18.198496, 28.533318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.800802, 17.811668, 28.568504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878104, 0.253757, 0.405636,
		-0.414600, 0.019634, -0.909792,
		-0.238830, -0.967069, 0.087967,
		10.729154, 17.521547, 28.594894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.399186, 18.380426, 28.096514>,  <10.896335, 18.198496, 28.533318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.399186, 18.380426, 28.096514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.106155, 18.645008, 28.160774>,  <9.930337, 18.803757, 28.199331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.106155, 18.645008, 28.160774>,  <10.399186, 18.380426, 28.096514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.106155, 18.645008, 28.160774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680008, -0.700664, -0.216007,
		-0.030317, -0.267486, 0.963085,
		-0.732577, 0.661454, 0.160651,
		9.886382, 18.843445, 28.208969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.578749, 19.090164, 27.909542>,  <10.399186, 18.380426, 28.096514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.578749, 19.090164, 27.909542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.807774, 19.411942, 27.846245>,  <10.945189, 19.605009, 27.808266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.807774, 19.411942, 27.846245>,  <10.578749, 19.090164, 27.909542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807774, 19.411942, 27.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468644, -0.479501, -0.741924,
		-0.672715, 0.350637, -0.651542,
		0.572562, 0.804445, -0.158244,
		10.979542, 19.653275, 27.798771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710222, 19.076128, 27.160614>,  <10.578749, 19.090164, 27.909542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710222, 19.076128, 27.160614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.998511, 19.301241, 27.322521>,  <11.171485, 19.436308, 27.419666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.998511, 19.301241, 27.322521>,  <10.710222, 19.076128, 27.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.998511, 19.301241, 27.322521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660243, -0.379313, -0.648229,
		-0.211277, 0.734438, -0.644952,
		0.720722, 0.562781, 0.404768,
		11.214728, 19.470076, 27.443951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121822, 19.368729, 26.594522>,  <10.710222, 19.076128, 27.160614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121822, 19.368729, 26.594522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.359200, 19.397657, 26.915171>,  <11.501626, 19.415014, 27.107559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.359200, 19.397657, 26.915171>,  <11.121822, 19.368729, 26.594522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.359200, 19.397657, 26.915171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732121, -0.462295, -0.500283,
		0.334403, 0.883772, -0.327294,
		0.593442, 0.072322, 0.801621,
		11.537232, 19.419353, 27.155657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.754299, 19.429953, 26.281693>,  <11.121822, 19.368729, 26.594522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.754299, 19.429953, 26.281693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849778, 19.326365, 26.656063>,  <11.907065, 19.264212, 26.880686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849778, 19.326365, 26.656063>,  <11.754299, 19.429953, 26.281693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849778, 19.326365, 26.656063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802902, -0.489493, -0.340214,
		0.546235, 0.832665, 0.091089,
		0.238697, -0.258972, 0.935926,
		11.921388, 19.248672, 26.936840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408842, 19.529413, 26.296988>,  <11.754299, 19.429953, 26.281693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408842, 19.529413, 26.296988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339650, 19.272821, 26.595940>,  <12.298135, 19.118866, 26.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339650, 19.272821, 26.595940>,  <12.408842, 19.529413, 26.296988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339650, 19.272821, 26.595940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849712, -0.480921, -0.216112,
		0.498064, 0.597676, 0.628264,
		-0.172980, -0.641481, 0.747382,
		12.287756, 19.080378, 26.820154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.942661, 19.514322, 26.854292>,  <12.408842, 19.529413, 26.296988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.942661, 19.514322, 26.854292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768364, 19.154568, 26.868328>,  <12.663785, 18.938715, 26.876751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768364, 19.154568, 26.868328>,  <12.942661, 19.514322, 26.854292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.768364, 19.154568, 26.868328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899387, -0.436601, -0.021961,
		0.035073, 0.021992, 0.999143,
		-0.435744, -0.899386, 0.035092,
		12.637641, 18.884752, 26.878855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451518, 19.191788, 27.304890>,  <12.942661, 19.514322, 26.854292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451518, 19.191788, 27.304890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231988, 18.897154, 27.146784>,  <13.100270, 18.720373, 27.051920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231988, 18.897154, 27.146784>,  <13.451518, 19.191788, 27.304890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231988, 18.897154, 27.146784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831563, -0.529376, -0.168120,
		-0.085410, -0.420957, 0.903050,
		-0.548825, -0.736584, -0.395267,
		13.067341, 18.676178, 27.028204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636300, 18.589920, 27.626291>,  <13.451518, 19.191788, 27.304890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636300, 18.589920, 27.626291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502664, 18.486086, 27.263855>,  <13.422482, 18.423784, 27.046394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502664, 18.486086, 27.263855>,  <13.636300, 18.589920, 27.626291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502664, 18.486086, 27.263855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871501, -0.451217, -0.192067,
		-0.358985, -0.853825, 0.376978,
		-0.334091, -0.259587, -0.906089,
		13.402436, 18.408211, 26.992027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120599, 18.080111, 27.481028>,  <13.636300, 18.589920, 27.626291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120599, 18.080111, 27.481028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901986, 18.126335, 27.149258>,  <13.770819, 18.154070, 26.950195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901986, 18.126335, 27.149258>,  <14.120599, 18.080111, 27.481028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901986, 18.126335, 27.149258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666625, -0.539434, -0.514414,
		-0.506865, -0.834061, 0.217786,
		-0.546534, 0.115557, -0.829426,
		13.738027, 18.161003, 26.900429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016891, 17.415325, 27.164330>,  <14.120599, 18.080111, 27.481028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016891, 17.415325, 27.164330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928884, 17.682533, 26.879980>,  <13.876080, 17.842857, 26.709370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928884, 17.682533, 26.879980>,  <14.016891, 17.415325, 27.164330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928884, 17.682533, 26.879980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545690, -0.519762, -0.657321,
		-0.808588, -0.532539, -0.250174,
		-0.220018, 0.668019, -0.710874,
		13.862878, 17.882938, 26.666718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.807479, 16.952797, 26.531445>,  <14.016891, 17.415325, 27.164330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.807479, 16.952797, 26.531445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.933482, 17.298557, 26.374689>,  <14.009084, 17.506014, 26.280636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.933482, 17.298557, 26.374689>,  <13.807479, 16.952797, 26.531445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933482, 17.298557, 26.374689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537001, -0.502791, -0.677371,
		-0.782560, 0.002932, -0.622568,
		0.315008, 0.864403, -0.391890,
		14.027985, 17.557878, 26.257122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719618, 16.968624, 25.767176>,  <13.807479, 16.952797, 26.531445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719618, 16.968624, 25.767176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982204, 17.264879, 25.824453>,  <14.139756, 17.442633, 25.858820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982204, 17.264879, 25.824453>,  <13.719618, 16.968624, 25.767176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982204, 17.264879, 25.824453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428338, -0.209725, -0.878944,
		-0.620949, 0.638333, -0.454921,
		0.656467, 0.740640, 0.143194,
		14.179145, 17.487072, 25.867411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673581, 17.374031, 25.152153>,  <13.719618, 16.968624, 25.767176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673581, 17.374031, 25.152153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018613, 17.456961, 25.336750>,  <14.225632, 17.506720, 25.447508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018613, 17.456961, 25.336750>,  <13.673581, 17.374031, 25.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018613, 17.456961, 25.336750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503481, -0.262250, -0.823245,
		-0.049653, 0.942465, -0.330596,
		0.862578, 0.207325, 0.461492,
		14.277387, 17.519157, 25.475197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001537, 17.693951, 24.629490>,  <13.673581, 17.374031, 25.152153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001537, 17.693951, 24.629490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.282507, 17.581467, 24.891031>,  <14.451089, 17.513975, 25.047956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.282507, 17.581467, 24.891031>,  <14.001537, 17.693951, 24.629490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282507, 17.581467, 24.891031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535635, -0.396107, -0.745785,
		0.468718, 0.874082, -0.127608,
		0.702424, -0.281211, 0.653851,
		14.493234, 17.497103, 25.087187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679622, 18.019732, 24.427462>,  <14.001537, 17.693951, 24.629490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679622, 18.019732, 24.427462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728311, 17.681528, 24.635424>,  <14.757524, 17.478607, 24.760201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728311, 17.681528, 24.635424>,  <14.679622, 18.019732, 24.427462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728311, 17.681528, 24.635424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404807, -0.435968, -0.803781,
		0.906264, 0.308300, 0.289200,
		0.121723, -0.845508, 0.519904,
		14.764828, 17.427876, 24.791395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338988, 17.770748, 24.291992>,  <14.679622, 18.019732, 24.427462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338988, 17.770748, 24.291992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152093, 17.444387, 24.428223>,  <15.039956, 17.248571, 24.509960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152093, 17.444387, 24.428223>,  <15.338988, 17.770748, 24.291992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152093, 17.444387, 24.428223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426123, -0.545331, -0.721826,
		0.774666, -0.192138, 0.602475,
		-0.467239, -0.815902, 0.340575,
		15.011921, 17.199617, 24.530396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.699635, 17.299372, 24.002213>,  <15.338988, 17.770748, 24.291992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.699635, 17.299372, 24.002213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.402545, 17.073519, 24.146185>,  <15.224291, 16.938007, 24.232569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.402545, 17.073519, 24.146185>,  <15.699635, 17.299372, 24.002213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.402545, 17.073519, 24.146185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142973, -0.658862, -0.738552,
		0.654155, -0.497081, 0.570080,
		-0.742724, -0.564634, 0.359929,
		15.179728, 16.904129, 24.254164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026531, 16.623262, 24.004454>,  <15.699635, 17.299372, 24.002213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026531, 16.623262, 24.004454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.628234, 16.593674, 23.982447>,  <15.389256, 16.575920, 23.969242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.628234, 16.593674, 23.982447>,  <16.026531, 16.623262, 24.004454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.628234, 16.593674, 23.982447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089929, -0.648084, -0.756241,
		0.020284, -0.757968, 0.651976,
		-0.995742, -0.073971, -0.055017,
		15.329512, 16.571482, 23.965940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895411, 15.935439, 24.150913>,  <16.026531, 16.623262, 24.004454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895411, 15.935439, 24.150913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594629, 16.068312, 23.923151>,  <15.414161, 16.148035, 23.786493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594629, 16.068312, 23.923151>,  <15.895411, 15.935439, 24.150913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594629, 16.068312, 23.923151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223316, -0.684327, -0.694138,
		-0.620238, -0.649117, 0.440401,
		-0.751954, 0.332182, -0.569403,
		15.369043, 16.167967, 23.752331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481512, 15.323038, 24.048695>,  <15.895411, 15.935439, 24.150913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481512, 15.323038, 24.048695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354780, 15.575306, 23.765322>,  <15.278741, 15.726666, 23.595299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354780, 15.575306, 23.765322>,  <15.481512, 15.323038, 24.048695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.354780, 15.575306, 23.765322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176427, -0.694688, -0.697339,
		-0.931930, -0.345924, 0.108830,
		-0.316829, 0.630670, -0.708431,
		15.259731, 15.764507, 23.552794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037012, 14.988396, 23.603867>,  <15.481512, 15.323038, 24.048695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037012, 14.988396, 23.603867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158101, 15.295572, 23.378078>,  <15.230755, 15.479878, 23.242605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158101, 15.295572, 23.378078>,  <15.037012, 14.988396, 23.603867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158101, 15.295572, 23.378078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330064, -0.640081, -0.693797,
		-0.894101, 0.023718, -0.447237,
		0.302723, 0.767941, -0.564469,
		15.248918, 15.525954, 23.208738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887790, 14.813068, 22.759727>,  <15.037012, 14.988396, 23.603867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887790, 14.813068, 22.759727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145921, 15.118255, 22.774887>,  <15.300799, 15.301367, 22.783983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145921, 15.118255, 22.774887>,  <14.887790, 14.813068, 22.759727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145921, 15.118255, 22.774887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426591, -0.318775, -0.846406,
		-0.633698, 0.562375, -0.531188,
		0.645327, 0.762966, 0.037897,
		15.339519, 15.347144, 22.786257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998073, 15.070326, 22.049791>,  <14.887790, 14.813068, 22.759727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998073, 15.070326, 22.049791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341418, 15.176203, 22.225586>,  <15.547425, 15.239729, 22.331062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341418, 15.176203, 22.225586>,  <14.998073, 15.070326, 22.049791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341418, 15.176203, 22.225586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502806, -0.263758, -0.823175,
		-0.101969, 0.927561, -0.359489,
		0.858364, 0.264692, 0.439488,
		15.598927, 15.255610, 22.357433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349444, 15.400076, 21.578264>,  <14.998073, 15.070326, 22.049791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349444, 15.400076, 21.578264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629803, 15.294836, 21.843451>,  <15.798018, 15.231692, 22.002563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629803, 15.294836, 21.843451>,  <15.349444, 15.400076, 21.578264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629803, 15.294836, 21.843451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588883, -0.310992, -0.745990,
		0.402446, 0.913271, -0.063038,
		0.700895, -0.263099, 0.662967,
		15.840072, 15.215906, 22.042341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893061, 15.720074, 21.376657>,  <15.349444, 15.400076, 21.578264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893061, 15.720074, 21.376657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058517, 15.439434, 21.608747>,  <16.157791, 15.271050, 21.748001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.058517, 15.439434, 21.608747>,  <15.893061, 15.720074, 21.376657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058517, 15.439434, 21.608747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705265, -0.156103, -0.691544,
		0.575761, 0.695263, 0.430243,
		0.413643, -0.701599, 0.580223,
		16.182610, 15.228954, 21.782814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633038, 15.840583, 21.363255>,  <15.893061, 15.720074, 21.376657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633038, 15.840583, 21.363255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.574684, 15.458149, 21.464939>,  <16.539673, 15.228689, 21.525949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.574684, 15.458149, 21.464939>,  <16.633038, 15.840583, 21.363255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574684, 15.458149, 21.464939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480122, -0.293090, -0.826789,
		0.864986, 0.001439, 0.501793,
		-0.145881, -0.956084, 0.254210,
		16.530920, 15.171324, 21.541203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206812, 15.576434, 21.216513>,  <16.633038, 15.840583, 21.363255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206812, 15.576434, 21.216513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983055, 15.244909, 21.211624>,  <16.848801, 15.045995, 21.208691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983055, 15.244909, 21.211624>,  <17.206812, 15.576434, 21.216513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983055, 15.244909, 21.211624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521169, -0.340214, -0.782711,
		0.644562, -0.444213, 0.622265,
		-0.559394, -0.828812, -0.012221,
		16.815237, 14.996265, 21.207958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.686749, 15.124720, 21.325817>,  <17.206812, 15.576434, 21.216513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.686749, 15.124720, 21.325817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373661, 14.944412, 21.154163>,  <17.185808, 14.836227, 21.051170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373661, 14.944412, 21.154163>,  <17.686749, 15.124720, 21.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373661, 14.944412, 21.154163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618241, -0.483795, -0.619452,
		0.071616, -0.750166, 0.657359,
		-0.782719, -0.450769, -0.429136,
		17.138845, 14.809181, 21.025423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817366, 14.406014, 21.356403>,  <17.686749, 15.124720, 21.325817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817366, 14.406014, 21.356403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554455, 14.477288, 21.063490>,  <17.396708, 14.520052, 20.887743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554455, 14.477288, 21.063490>,  <17.817366, 14.406014, 21.356403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554455, 14.477288, 21.063490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532646, -0.577571, -0.618628,
		-0.533172, -0.796658, 0.284717,
		-0.657278, 0.178182, -0.732281,
		17.357271, 14.530744, 20.843805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.962770, 13.916305, 20.933088>,  <17.817366, 14.406014, 21.356403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.962770, 13.916305, 20.933088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717381, 14.101514, 20.677195>,  <17.570147, 14.212640, 20.523659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717381, 14.101514, 20.677195>,  <17.962770, 13.916305, 20.933088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717381, 14.101514, 20.677195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465840, -0.441954, -0.766596,
		-0.637684, -0.768301, 0.055433,
		-0.613475, 0.463024, -0.639733,
		17.533339, 14.240421, 20.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826571, 13.402049, 20.430887>,  <17.962770, 13.916305, 20.933088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826571, 13.402049, 20.430887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.760893, 13.763868, 20.273491>,  <17.721485, 13.980960, 20.179054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.760893, 13.763868, 20.273491>,  <17.826571, 13.402049, 20.430887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760893, 13.763868, 20.273491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409075, -0.300544, -0.861586,
		-0.897607, -0.302435, -0.320680,
		-0.164195, 0.904548, -0.393489,
		17.711634, 14.035233, 20.155445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553755, 13.270445, 19.660635>,  <17.826571, 13.402049, 20.430887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553755, 13.270445, 19.660635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.720520, 13.630726, 19.709492>,  <17.820580, 13.846894, 19.738806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.720520, 13.630726, 19.709492>,  <17.553755, 13.270445, 19.660635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720520, 13.630726, 19.709492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561513, -0.149547, -0.813842,
		-0.714764, 0.407884, -0.568105,
		0.416912, 0.900703, 0.122141,
		17.845594, 13.900937, 19.746134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602352, 13.517605, 19.050680>,  <17.553755, 13.270445, 19.660635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602352, 13.517605, 19.050680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858973, 13.780334, 19.209171>,  <18.012945, 13.937972, 19.304266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858973, 13.780334, 19.209171>,  <17.602352, 13.517605, 19.050680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858973, 13.780334, 19.209171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585299, -0.085280, -0.806320,
		-0.495820, 0.749206, -0.439149,
		0.641551, 0.656824, 0.396226,
		18.051437, 13.977382, 19.328039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613745, 14.056201, 18.580854>,  <17.602352, 13.517605, 19.050680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613745, 14.056201, 18.580854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951986, 14.105079, 18.788710>,  <18.154932, 14.134405, 18.913422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951986, 14.105079, 18.788710>,  <17.613745, 14.056201, 18.580854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951986, 14.105079, 18.788710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527117, -0.037479, -0.848966,
		-0.084264, 0.991798, -0.096103,
		0.845604, 0.122195, 0.519636,
		18.205667, 14.141737, 18.944601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950945, 14.564035, 18.211910>,  <17.613745, 14.056201, 18.580854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950945, 14.564035, 18.211910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235312, 14.387061, 18.430578>,  <18.405931, 14.280877, 18.561779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235312, 14.387061, 18.430578>,  <17.950945, 14.564035, 18.211910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235312, 14.387061, 18.430578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602721, -0.017246, -0.797766,
		0.362387, 0.896635, 0.254404,
		0.710917, -0.442435, 0.546670,
		18.448587, 14.254331, 18.594580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482986, 15.056054, 18.243221>,  <17.950945, 14.564035, 18.211910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482986, 15.056054, 18.243221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630032, 14.687532, 18.293913>,  <18.718258, 14.466419, 18.324327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630032, 14.687532, 18.293913>,  <18.482986, 15.056054, 18.243221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630032, 14.687532, 18.293913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574513, 0.117825, -0.809970,
		0.731296, 0.370563, 0.572615,
		0.367614, -0.921303, 0.126728,
		18.740316, 14.411141, 18.331932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075445, 15.187207, 18.065956>,  <18.482986, 15.056054, 18.243221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.075445, 15.187207, 18.065956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067373, 14.787494, 18.053154>,  <19.062531, 14.547666, 18.045473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067373, 14.787494, 18.053154>,  <19.075445, 15.187207, 18.065956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067373, 14.787494, 18.053154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591906, 0.013858, -0.805888,
		0.805754, -0.035208, 0.591203,
		-0.020180, -0.999284, -0.032006,
		19.061319, 14.487708, 18.043552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750284, 14.987200, 18.080355>,  <19.075445, 15.187207, 18.065956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750284, 14.987200, 18.080355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560345, 14.669456, 17.928822>,  <19.446381, 14.478810, 17.837902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560345, 14.669456, 17.928822>,  <19.750284, 14.987200, 18.080355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560345, 14.669456, 17.928822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589609, 0.032426, -0.807038,
		0.653362, -0.606582, 0.452964,
		-0.474847, -0.794360, -0.378831,
		19.417891, 14.431149, 17.815172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282804, 14.429033, 18.012518>,  <19.750284, 14.987200, 18.080355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282804, 14.429033, 18.012518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.962950, 14.364182, 17.781246>,  <19.771036, 14.325272, 17.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.962950, 14.364182, 17.781246>,  <20.282804, 14.429033, 18.012518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962950, 14.364182, 17.781246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600394, -0.232330, -0.765212,
		-0.010267, -0.959029, 0.283120,
		-0.799639, -0.162127, -0.578181,
		19.723059, 14.315544, 17.607792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488947, 13.850655, 17.708384>,  <20.282804, 14.429033, 18.012518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488947, 13.850655, 17.708384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211626, 14.012374, 17.469763>,  <20.045233, 14.109406, 17.326591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211626, 14.012374, 17.469763>,  <20.488947, 13.850655, 17.708384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.211626, 14.012374, 17.469763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483436, -0.352971, -0.801062,
		-0.534434, -0.843773, 0.049263,
		-0.693303, 0.404299, -0.596550,
		20.003635, 14.133663, 17.290798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058645, 13.315728, 17.317049>,  <20.488947, 13.850655, 17.708384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058645, 13.315728, 17.317049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.159813, 13.656973, 17.134520>,  <20.220512, 13.861720, 17.025002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.159813, 13.656973, 17.134520>,  <20.058645, 13.315728, 17.317049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.159813, 13.656973, 17.134520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616955, -0.505533, -0.603161,
		-0.745250, -0.128982, -0.654191,
		0.252918, 0.853112, -0.456324,
		20.235689, 13.912907, 16.997622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334881, 13.170775, 16.732477>,  <20.058645, 13.315728, 17.317049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334881, 13.170775, 16.732477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.465120, 13.546857, 16.692467>,  <20.543264, 13.772506, 16.668461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.465120, 13.546857, 16.692467>,  <20.334881, 13.170775, 16.732477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465120, 13.546857, 16.692467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732058, -0.317630, -0.602662,
		-0.598395, 0.123001, -0.791703,
		0.325597, 0.940203, -0.100024,
		20.562799, 13.828918, 16.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260775, 13.412128, 15.960091>,  <20.334881, 13.170775, 16.732477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260775, 13.412128, 15.960091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546795, 13.616504, 16.150938>,  <20.718407, 13.739129, 16.265446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546795, 13.616504, 16.150938>,  <20.260775, 13.412128, 15.960091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546795, 13.616504, 16.150938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668530, -0.300256, -0.680379,
		-0.204375, 0.805474, -0.556276,
		0.715052, 0.510939, 0.477118,
		20.761311, 13.769785, 16.294073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407200, 13.952121, 15.522484>,  <20.260775, 13.412128, 15.960091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407200, 13.952121, 15.522484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.736933, 13.874267, 15.735121>,  <20.934772, 13.827554, 15.862702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.736933, 13.874267, 15.735121>,  <20.407200, 13.952121, 15.522484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.736933, 13.874267, 15.735121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460339, -0.316072, -0.829570,
		0.329485, 0.928556, -0.170950,
		0.824335, -0.194636, 0.531591,
		20.984234, 13.815876, 15.894598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872997, 14.258441, 15.144484>,  <20.407200, 13.952121, 15.522484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872997, 14.258441, 15.144484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035946, 13.943554, 15.329671>,  <21.133715, 13.754622, 15.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035946, 13.943554, 15.329671>,  <20.872997, 14.258441, 15.144484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035946, 13.943554, 15.329671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121559, -0.455689, -0.881800,
		0.905137, 0.415496, -0.089940,
		0.407369, -0.787217, 0.462969,
		21.158157, 13.707389, 15.468561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474079, 14.140180, 14.950844>,  <20.872997, 14.258441, 15.144484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474079, 14.140180, 14.950844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324402, 13.789762, 15.072514>,  <21.234594, 13.579511, 15.145515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324402, 13.789762, 15.072514>,  <21.474079, 14.140180, 14.950844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324402, 13.789762, 15.072514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013111, -0.332968, -0.942847,
		0.927257, -0.348821, 0.136081,
		-0.374195, -0.876046, 0.304173,
		21.212143, 13.526948, 15.163766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703156, 14.951122, 14.983716>,  <21.474079, 14.140180, 14.950844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703156, 14.951122, 14.983716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746136, 14.785995, 14.621935>,  <21.771925, 14.686917, 14.404866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746136, 14.785995, 14.621935>,  <21.703156, 14.951122, 14.983716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746136, 14.785995, 14.621935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084956, 0.910204, -0.405353,
		0.990574, -0.033282, 0.132875,
		0.107453, -0.412820, -0.904452,
		21.778372, 14.662148, 14.350599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297956, 15.213425, 14.670825>,  <21.703156, 14.951122, 14.983716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297956, 15.213425, 14.670825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.034924, 15.084206, 14.398582>,  <21.877104, 15.006675, 14.235235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.034924, 15.084206, 14.398582>,  <22.297956, 15.213425, 14.670825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.034924, 15.084206, 14.398582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107775, 0.853774, -0.509367,
		0.745635, -0.408303, -0.526610,
		-0.657582, -0.323046, -0.680608,
		21.837648, 14.987291, 14.194399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.597692, 15.347445, 13.993427>,  <22.297956, 15.213425, 14.670825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.597692, 15.347445, 13.993427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206654, 15.304192, 13.921195>,  <21.972031, 15.278240, 13.877856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206654, 15.304192, 13.921195>,  <22.597692, 15.347445, 13.993427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206654, 15.304192, 13.921195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015641, 0.818251, -0.574649,
		0.209898, -0.564600, -0.798229,
		-0.977599, -0.108133, -0.180580,
		21.913374, 15.271751, 13.867022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.553991, 15.512406, 13.282475>,  <22.597692, 15.347445, 13.993427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.553991, 15.512406, 13.282475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.175503, 15.533500, 13.410150>,  <21.948410, 15.546156, 13.486754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.175503, 15.533500, 13.410150>,  <22.553991, 15.512406, 13.282475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.175503, 15.533500, 13.410150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158880, 0.783700, -0.600476,
		-0.281813, -0.618897, -0.733177,
		-0.946223, 0.052734, 0.319187,
		21.891636, 15.549320, 13.505906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180227, 15.493115, 12.728273>,  <22.553991, 15.512406, 13.282475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180227, 15.493115, 12.728273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948965, 15.673559, 13.000224>,  <21.810207, 15.781826, 13.163395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.948965, 15.673559, 13.000224>,  <22.180227, 15.493115, 12.728273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948965, 15.673559, 13.000224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227374, 0.711174, -0.665232,
		-0.783604, -0.539195, -0.308599,
		-0.578157, 0.451111, 0.679877,
		21.775518, 15.808892, 13.204187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.485945, 15.532173, 12.457964>,  <22.180227, 15.493115, 12.728273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.485945, 15.532173, 12.457964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537397, 15.815967, 12.735117>,  <21.568270, 15.986242, 12.901409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537397, 15.815967, 12.735117>,  <21.485945, 15.532173, 12.457964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537397, 15.815967, 12.735117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102459, 0.704456, -0.702313,
		-0.986385, 0.019348, 0.163308,
		0.128632, 0.709484, 0.692883,
		21.575987, 16.028812, 12.942982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003801, 16.005852, 12.264660>,  <21.485945, 15.532173, 12.457964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003801, 16.005852, 12.264660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252443, 16.208860, 12.503333>,  <21.401628, 16.330666, 12.646537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252443, 16.208860, 12.503333>,  <21.003801, 16.005852, 12.264660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252443, 16.208860, 12.503333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082352, 0.799844, -0.594532,
		-0.778990, 0.320426, 0.538982,
		0.621605, 0.507521, 0.596683,
		21.438925, 16.361116, 12.682338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864340, 16.772615, 12.204983>,  <21.003801, 16.005852, 12.264660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864340, 16.772615, 12.204983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.214762, 16.781620, 12.397658>,  <21.425014, 16.787024, 12.513264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.214762, 16.781620, 12.397658>,  <20.864340, 16.772615, 12.204983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214762, 16.781620, 12.397658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217042, 0.873599, -0.435566,
		-0.430608, 0.486126, 0.760433,
		0.876053, 0.022512, 0.481688,
		21.477577, 16.788374, 12.542165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843346, 17.349619, 12.490208>,  <20.864340, 16.772615, 12.204983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843346, 17.349619, 12.490208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.231459, 17.261047, 12.451182>,  <21.464327, 17.207905, 12.427767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.231459, 17.261047, 12.451182>,  <20.843346, 17.349619, 12.490208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.231459, 17.261047, 12.451182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178285, 0.926833, -0.330446,
		0.163595, 0.303232, 0.938769,
		0.970284, -0.221428, -0.097564,
		21.522543, 17.194618, 12.421913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235697, 18.021564, 12.526339>,  <20.843346, 17.349619, 12.490208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235697, 18.021564, 12.526339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497486, 17.765394, 12.365581>,  <21.654560, 17.611692, 12.269126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497486, 17.765394, 12.365581>,  <21.235697, 18.021564, 12.526339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.497486, 17.765394, 12.365581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415756, 0.748802, -0.516181,
		0.631515, 0.170737, 0.756332,
		0.654474, -0.640425, -0.401895,
		21.693829, 17.573267, 12.245012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959276, 18.282631, 12.581395>,  <21.235697, 18.021564, 12.526339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959276, 18.282631, 12.581395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.007429, 18.026201, 12.278203>,  <22.036320, 17.872343, 12.096288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.007429, 18.026201, 12.278203>,  <21.959276, 18.282631, 12.581395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007429, 18.026201, 12.278203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689118, 0.603565, -0.401031,
		0.714581, -0.474061, 0.514432,
		0.120380, -0.641074, -0.757980,
		22.043543, 17.833879, 12.050809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604860, 18.043474, 12.592561>,  <21.959276, 18.282631, 12.581395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604860, 18.043474, 12.592561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.502134, 18.003653, 12.208033>,  <22.440498, 17.979759, 11.977316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.502134, 18.003653, 12.208033>,  <22.604860, 18.043474, 12.592561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502134, 18.003653, 12.208033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723544, 0.639630, -0.259531,
		0.640731, -0.762207, -0.092220,
		-0.256803, -0.099565, -0.961322,
		22.425091, 17.973787, 11.919637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212135, 18.245634, 12.224103>,  <22.604860, 18.043474, 12.592561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212135, 18.245634, 12.224103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.925125, 18.267685, 11.946363>,  <22.752920, 18.280916, 11.779719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.925125, 18.267685, 11.946363>,  <23.212135, 18.245634, 12.224103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.925125, 18.267685, 11.946363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516914, 0.710306, -0.477771,
		0.466862, -0.701731, -0.538158,
		-0.717523, 0.055128, -0.694349,
		22.709867, 18.284224, 11.738059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593929, 18.441206, 11.554970>,  <23.212135, 18.245634, 12.224103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593929, 18.441206, 11.554970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215450, 18.508429, 11.444362>,  <22.988363, 18.548761, 11.377997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.215450, 18.508429, 11.444362>,  <23.593929, 18.441206, 11.554970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.215450, 18.508429, 11.444362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323406, 0.519449, -0.790937,
		0.010715, -0.837812, -0.545854,
		-0.946200, 0.168057, -0.276519,
		22.931591, 18.558846, 11.361406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.489765, 18.093555, 10.939198>,  <23.593929, 18.441206, 11.554970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.489765, 18.093555, 10.939198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230391, 18.396505, 10.969956>,  <23.074766, 18.578276, 10.988412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.230391, 18.396505, 10.969956>,  <23.489765, 18.093555, 10.939198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.230391, 18.396505, 10.969956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349545, 0.385947, -0.853735,
		-0.676277, -0.526712, -0.514999,
		-0.648435, 0.757376, 0.076897,
		23.035860, 18.623718, 10.993026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037334, 18.193436, 10.306700>,  <23.489765, 18.093555, 10.939198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037334, 18.193436, 10.306700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023895, 18.540442, 10.505212>,  <23.015833, 18.748644, 10.624319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023895, 18.540442, 10.505212>,  <23.037334, 18.193436, 10.306700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023895, 18.540442, 10.505212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155973, 0.495027, -0.854764,
		-0.987190, 0.048689, -0.151939,
		-0.033597, 0.867513, 0.496279,
		23.013817, 18.800695, 10.654096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461872, 18.763445, 10.106949>,  <23.037334, 18.193436, 10.306700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461872, 18.763445, 10.106949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738417, 18.989902, 10.286503>,  <22.904345, 19.125776, 10.394236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738417, 18.989902, 10.286503>,  <22.461872, 18.763445, 10.106949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738417, 18.989902, 10.286503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120548, 0.522193, -0.844264,
		-0.712380, 0.637806, 0.292778,
		0.691363, 0.566143, 0.448886,
		22.945826, 19.159746, 10.421168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.300489, 19.362804, 9.843748>,  <22.461872, 18.763445, 10.106949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.300489, 19.362804, 9.843748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.671839, 19.396406, 9.988561>,  <22.894648, 19.416567, 10.075448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.671839, 19.396406, 9.988561>,  <22.300489, 19.362804, 9.843748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.671839, 19.396406, 9.988561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240343, 0.607305, -0.757242,
		-0.283474, 0.790015, 0.543616,
		0.928374, 0.084004, 0.362030,
		22.950352, 19.421608, 10.097170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.559387, 20.036667, 9.753428>,  <22.300489, 19.362804, 9.843748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.559387, 20.036667, 9.753428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905298, 19.840519, 9.796694>,  <23.112844, 19.722830, 9.822653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.905298, 19.840519, 9.796694>,  <22.559387, 20.036667, 9.753428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.905298, 19.840519, 9.796694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399361, 0.541026, -0.740137,
		0.304421, 0.683249, 0.663701,
		0.864777, -0.490369, 0.108163,
		23.164732, 19.693409, 9.829143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.961155, 20.547144, 9.605778>,  <22.559387, 20.036667, 9.753428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.961155, 20.547144, 9.605778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.210733, 20.234617, 9.611903>,  <23.360481, 20.047102, 9.615579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.210733, 20.234617, 9.611903>,  <22.961155, 20.547144, 9.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.210733, 20.234617, 9.611903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481799, 0.369182, -0.794717,
		0.615271, 0.503241, 0.606788,
		0.623949, -0.781315, 0.015314,
		23.397919, 20.000223, 9.616497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.640490, 20.815678, 9.596977>,  <22.961155, 20.547144, 9.605778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.640490, 20.815678, 9.596977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.656406, 20.442324, 9.454309>,  <23.665956, 20.218311, 9.368709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.656406, 20.442324, 9.454309>,  <23.640490, 20.815678, 9.596977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.656406, 20.442324, 9.454309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592264, 0.309519, -0.743923,
		0.804761, -0.181641, 0.565125,
		0.039790, -0.933383, -0.356668,
		23.668343, 20.162308, 9.347309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314167, 20.752741, 9.525688>,  <23.640490, 20.815678, 9.596977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314167, 20.752741, 9.525688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184345, 20.455988, 9.290988>,  <24.106451, 20.277937, 9.150167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184345, 20.455988, 9.290988>,  <24.314167, 20.752741, 9.525688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184345, 20.455988, 9.290988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653312, 0.272761, -0.706247,
		0.683994, -0.612547, 0.396153,
		-0.324555, -0.741881, -0.586751,
		24.086979, 20.233423, 9.114963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860765, 20.526718, 9.122240>,  <24.314167, 20.752741, 9.525688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860765, 20.526718, 9.122240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563322, 20.369602, 8.905810>,  <24.384855, 20.275333, 8.775952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563322, 20.369602, 8.905810>,  <24.860765, 20.526718, 9.122240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563322, 20.369602, 8.905810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378141, 0.420330, -0.824822,
		0.551412, -0.817948, -0.164032,
		-0.743609, -0.392789, -0.541075,
		24.340239, 20.251766, 8.743488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108755, 20.063242, 8.511842>,  <24.860765, 20.526718, 9.122240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108755, 20.063242, 8.511842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770443, 20.266142, 8.445684>,  <24.567455, 20.387882, 8.405990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770443, 20.266142, 8.445684>,  <25.108755, 20.063242, 8.511842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770443, 20.266142, 8.445684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371986, 0.338412, -0.864352,
		-0.382471, -0.792575, -0.474912,
		-0.845779, 0.507250, -0.165394,
		24.516708, 20.418316, 8.396067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727425, 19.855656, 7.969660>,  <25.108755, 20.063242, 8.511842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727425, 19.855656, 7.969660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739998, 20.247156, 8.050709>,  <24.747541, 20.482058, 8.099338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739998, 20.247156, 8.050709>,  <24.727425, 19.855656, 7.969660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739998, 20.247156, 8.050709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528868, 0.155732, -0.834294,
		-0.848122, 0.133384, -0.512736,
		0.031433, 0.978752, 0.202622,
		24.749428, 20.540781, 8.111495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518536, 19.113457, 7.716302>,  <24.727425, 19.855656, 7.969660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518536, 19.113457, 7.716302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815075, 18.860226, 7.627205>,  <24.992998, 18.708288, 7.573746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815075, 18.860226, 7.627205>,  <24.518536, 19.113457, 7.716302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815075, 18.860226, 7.627205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065171, -0.398242, 0.914963,
		-0.667947, -0.663791, -0.336494,
		0.741350, -0.633076, -0.222744,
		25.037479, 18.670303, 7.560382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380810, 18.427006, 7.890139>,  <24.518536, 19.113457, 7.716302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380810, 18.427006, 7.890139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780499, 18.442770, 7.889404>,  <25.020311, 18.452229, 7.888963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780499, 18.442770, 7.889404>,  <24.380810, 18.427006, 7.890139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780499, 18.442770, 7.889404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021395, -0.502131, 0.864527,
		0.033151, -0.863893, -0.502583,
		0.999221, 0.039413, -0.001837,
		25.080265, 18.454594, 7.888853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.736837, 17.716539, 7.855574>,  <24.380810, 18.427006, 7.890139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.736837, 17.716539, 7.855574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934643, 18.009270, 8.043142>,  <25.053326, 18.184908, 8.155684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934643, 18.009270, 8.043142>,  <24.736837, 17.716539, 7.855574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934643, 18.009270, 8.043142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035253, -0.522174, 0.852110,
		0.868455, -0.437911, -0.232424,
		0.494514, 0.731825, 0.468922,
		25.082996, 18.228817, 8.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372149, 17.469147, 8.176507>,  <24.736837, 17.716539, 7.855574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372149, 17.469147, 8.176507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238455, 17.783045, 8.385301>,  <25.158239, 17.971384, 8.510577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238455, 17.783045, 8.385301>,  <25.372149, 17.469147, 8.176507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238455, 17.783045, 8.385301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093483, -0.523501, 0.846881,
		0.937843, 0.331852, 0.101611,
		-0.334232, 0.784743, 0.521984,
		25.138186, 18.018467, 8.541896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895889, 17.754442, 8.756773>,  <25.372149, 17.469147, 8.176507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895889, 17.754442, 8.756773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503828, 17.803535, 8.819044>,  <25.268591, 17.832991, 8.856406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503828, 17.803535, 8.819044>,  <25.895889, 17.754442, 8.756773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503828, 17.803535, 8.819044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096951, -0.388201, 0.916461,
		0.172914, 0.913365, 0.368597,
		-0.980154, 0.122733, 0.155677,
		25.209782, 17.840355, 8.865747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705360, 17.943764, 9.418652>,  <25.895889, 17.754442, 8.756773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705360, 17.943764, 9.418652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396767, 17.731674, 9.277981>,  <25.211611, 17.604420, 9.193579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396767, 17.731674, 9.277981>,  <25.705360, 17.943764, 9.418652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396767, 17.731674, 9.277981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057597, -0.492263, 0.868539,
		-0.633636, 0.690319, 0.349234,
		-0.771484, -0.530223, -0.351676,
		25.165321, 17.572607, 9.172478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269951, 17.849634, 10.070868>,  <25.705360, 17.943764, 9.418652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269951, 17.849634, 10.070868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180603, 17.569046, 9.800151>,  <25.126995, 17.400694, 9.637721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180603, 17.569046, 9.800151>,  <25.269951, 17.849634, 10.070868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180603, 17.569046, 9.800151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117122, -0.669990, 0.733073,
		-0.967672, 0.243013, 0.067498,
		-0.223369, -0.701468, -0.676793,
		25.113592, 17.358606, 9.597113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567209, 17.562643, 10.316249>,  <25.269951, 17.849634, 10.070868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567209, 17.562643, 10.316249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771656, 17.287756, 10.109757>,  <24.894323, 17.122824, 9.985863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771656, 17.287756, 10.109757>,  <24.567209, 17.562643, 10.316249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.771656, 17.287756, 10.109757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292596, -0.703851, 0.647288,
		-0.808176, -0.179792, -0.560827,
		0.511115, -0.687218, -0.516229,
		24.924992, 17.081591, 9.954889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103508, 16.974062, 10.225899>,  <24.567209, 17.562643, 10.316249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103508, 16.974062, 10.225899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478714, 16.836191, 10.211359>,  <24.703838, 16.753468, 10.202635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478714, 16.836191, 10.211359>,  <24.103508, 16.974062, 10.225899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478714, 16.836191, 10.211359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273941, -0.801560, 0.531468,
		-0.212322, -0.488568, -0.846298,
		0.938017, -0.344678, -0.036350,
		24.760118, 16.732788, 10.200454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999159, 16.172897, 10.068877>,  <24.103508, 16.974062, 10.225899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999159, 16.172897, 10.068877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372215, 16.212421, 10.207681>,  <24.596050, 16.236135, 10.290962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372215, 16.212421, 10.207681>,  <23.999159, 16.172897, 10.068877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372215, 16.212421, 10.207681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079307, -0.882103, 0.464333,
		0.351979, -0.460577, -0.814849,
		0.932642, 0.098812, 0.347008,
		24.652008, 16.242065, 10.311783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336601, 15.490042, 9.975244>,  <23.999159, 16.172897, 10.068877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336601, 15.490042, 9.975244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570269, 15.668906, 10.246181>,  <24.710470, 15.776225, 10.408743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570269, 15.668906, 10.246181>,  <24.336601, 15.490042, 9.975244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570269, 15.668906, 10.246181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059627, -0.808646, 0.585267,
		0.809438, -0.382283, -0.445723,
		0.584170, 0.447160, 0.677343,
		24.745520, 15.803054, 10.449384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839485, 15.013020, 10.136788>,  <24.336601, 15.490042, 9.975244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839485, 15.013020, 10.136788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805628, 15.272043, 10.439709>,  <24.785315, 15.427457, 10.621461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805628, 15.272043, 10.439709>,  <24.839485, 15.013020, 10.136788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805628, 15.272043, 10.439709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023860, -0.758493, 0.651245,
		0.996126, 0.073192, 0.048749,
		-0.084642, 0.647559, 0.757300,
		24.780235, 15.466311, 10.666899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128424, 14.636025, 10.712871>,  <24.839485, 15.013020, 10.136788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128424, 14.636025, 10.712871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958023, 14.939997, 10.909250>,  <24.855782, 15.122379, 11.027078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958023, 14.939997, 10.909250>,  <25.128424, 14.636025, 10.712871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958023, 14.939997, 10.909250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064066, -0.566628, 0.821479,
		0.902450, 0.318500, 0.290071,
		-0.426003, 0.759928, 0.490949,
		24.830221, 15.167975, 11.056535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471203, 14.662095, 11.357587>,  <25.128424, 14.636025, 10.712871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471203, 14.662095, 11.357587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112530, 14.836606, 11.387569>,  <24.897326, 14.941313, 11.405559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112530, 14.836606, 11.387569>,  <25.471203, 14.662095, 11.357587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112530, 14.836606, 11.387569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159445, -0.476274, 0.864720,
		0.412957, 0.763430, 0.496630,
		-0.896685, 0.436277, 0.074956,
		24.843525, 14.967489, 11.410056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345846, 14.537663, 12.049197>,  <25.471203, 14.662095, 11.357587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345846, 14.537663, 12.049197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996777, 14.667141, 11.902957>,  <24.787334, 14.744828, 11.815213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996777, 14.667141, 11.902957>,  <25.345846, 14.537663, 12.049197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996777, 14.667141, 11.902957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483355, -0.466280, 0.740912,
		0.069359, 0.823288, 0.563371,
		-0.872672, 0.323697, -0.365600,
		24.734974, 14.764250, 11.793277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019964, 14.888435, 12.559062>,  <25.345846, 14.537663, 12.049197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019964, 14.888435, 12.559062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752750, 14.723808, 12.311081>,  <24.592422, 14.625031, 12.162292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752750, 14.723808, 12.311081>,  <25.019964, 14.888435, 12.559062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752750, 14.723808, 12.311081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405457, -0.497271, 0.767024,
		-0.623968, 0.763762, 0.165321,
		-0.668033, -0.411568, -0.619954,
		24.552340, 14.600338, 12.125094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.372974, 14.903775, 12.983264>,  <25.019964, 14.888435, 12.559062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.372974, 14.903775, 12.983264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284191, 14.655452, 12.682509>,  <24.230921, 14.506457, 12.502057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284191, 14.655452, 12.682509>,  <24.372974, 14.903775, 12.983264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284191, 14.655452, 12.682509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488527, -0.596550, 0.636765,
		-0.843847, 0.508650, -0.170874,
		-0.221956, -0.620809, -0.751886,
		24.217604, 14.469209, 12.456944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.618782, 14.890912, 12.907930>,  <24.372974, 14.903775, 12.983264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.618782, 14.890912, 12.907930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.775349, 14.558794, 12.749233>,  <23.869287, 14.359524, 12.654015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.775349, 14.558794, 12.749233>,  <23.618782, 14.890912, 12.907930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775349, 14.558794, 12.749233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488361, -0.552845, 0.675178,
		-0.779935, -0.070521, -0.621875,
		0.391415, -0.830295, -0.396743,
		23.892773, 14.309706, 12.630210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.168011, 14.392699, 13.063947>,  <23.618782, 14.890912, 12.907930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.168011, 14.392699, 13.063947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.490875, 14.180241, 12.960895>,  <23.684593, 14.052765, 12.899063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.490875, 14.180241, 12.960895>,  <23.168011, 14.392699, 13.063947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.490875, 14.180241, 12.960895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286348, -0.733909, 0.615940,
		-0.516232, -0.423391, -0.744476,
		0.807162, -0.531147, -0.257630,
		23.733025, 14.020897, 12.883606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.938725, 13.699181, 12.922599>,  <23.168011, 14.392699, 13.063947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.938725, 13.699181, 12.922599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.329590, 13.685329, 13.006457>,  <23.564110, 13.677019, 13.056772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.329590, 13.685329, 13.006457>,  <22.938725, 13.699181, 12.922599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329590, 13.685329, 13.006457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148555, -0.816768, 0.557514,
		0.151927, -0.575926, -0.803260,
		0.977164, -0.034627, 0.209646,
		23.622740, 13.674941, 13.069351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.151150, 13.022227, 12.990497>,  <22.938725, 13.699181, 12.922599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.151150, 13.022227, 12.990497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.431751, 13.229565, 13.186134>,  <23.600113, 13.353967, 13.303517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.431751, 13.229565, 13.186134>,  <23.151150, 13.022227, 12.990497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.431751, 13.229565, 13.186134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021355, -0.701268, 0.712578,
		0.712347, -0.489431, -0.503011,
		0.701503, 0.518344, 0.489094,
		23.642202, 13.385068, 13.332863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.714310, 12.578773, 13.178567>,  <23.151150, 13.022227, 12.990497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.714310, 12.578773, 13.178567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.774033, 12.879548, 13.435410>,  <23.809866, 13.060013, 13.589515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.774033, 12.879548, 13.435410>,  <23.714310, 12.578773, 13.178567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.774033, 12.879548, 13.435410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057193, -0.654865, 0.753578,
		0.987135, -0.075793, -0.140783,
		0.149309, 0.751935, 0.642106,
		23.818825, 13.105128, 13.628041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180305, 12.230975, 13.637003>,  <23.714310, 12.578773, 13.178567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180305, 12.230975, 13.637003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.057421, 12.546795, 13.849505>,  <23.983690, 12.736287, 13.977007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.057421, 12.546795, 13.849505>,  <24.180305, 12.230975, 13.637003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.057421, 12.546795, 13.849505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111796, -0.524443, 0.844074,
		0.945051, 0.318702, 0.072847,
		-0.307212, 0.789549, 0.531255,
		23.965258, 12.783660, 14.008883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657204, 12.337405, 14.196115>,  <24.180305, 12.230975, 13.637003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657204, 12.337405, 14.196115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332380, 12.530489, 14.327297>,  <24.137487, 12.646339, 14.406007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332380, 12.530489, 14.327297>,  <24.657204, 12.337405, 14.196115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332380, 12.530489, 14.327297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117782, -0.414842, 0.902238,
		0.571568, 0.771296, 0.280021,
		-0.812057, 0.482709, 0.327955,
		24.088762, 12.675302, 14.425684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135744, 12.598629, 13.812818>,  <24.657204, 12.337405, 14.196115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135744, 12.598629, 13.812818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.847403, 12.823459, 13.975024>,  <24.674398, 12.958357, 14.072349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.847403, 12.823459, 13.975024>,  <25.135744, 12.598629, 13.812818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847403, 12.823459, 13.975024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569962, -0.813642, 0.114590,
		0.394354, -0.148528, 0.906876,
		-0.720853, 0.562074, 0.405518,
		24.631147, 12.992081, 14.096680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363764, 12.625360, 14.480865>,  <25.135744, 12.598629, 13.812818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363764, 12.625360, 14.480865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759180, 12.565003, 14.482693>,  <25.996429, 12.528789, 14.483789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759180, 12.565003, 14.482693>,  <25.363764, 12.625360, 14.480865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759180, 12.565003, 14.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137301, 0.911248, 0.388298,
		-0.062755, -0.383220, 0.921523,
		0.988540, -0.150894, 0.004568,
		26.055742, 12.519735, 14.484063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581282, 12.746185, 15.139229>,  <25.363764, 12.625360, 14.480865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581282, 12.746185, 15.139229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837469, 12.845487, 14.848528>,  <25.991182, 12.905067, 14.674108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837469, 12.845487, 14.848528>,  <25.581282, 12.746185, 15.139229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837469, 12.845487, 14.848528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036276, 0.935476, 0.351522,
		0.767126, -0.251503, 0.590139,
		0.640470, 0.248254, -0.726752,
		26.029610, 12.919963, 14.630503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168905, 13.019328, 15.493172>,  <25.581282, 12.746185, 15.139229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168905, 13.019328, 15.493172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179142, 13.151248, 15.115690>,  <26.185284, 13.230400, 14.889201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179142, 13.151248, 15.115690>,  <26.168905, 13.019328, 15.493172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179142, 13.151248, 15.115690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262902, 0.908563, 0.324648,
		0.964483, -0.256410, -0.063453,
		0.025592, 0.329800, -0.943704,
		26.186819, 13.250188, 14.832579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560858, 13.555498, 15.567345>,  <26.168905, 13.019328, 15.493172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560858, 13.555498, 15.567345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432293, 13.594406, 15.190573>,  <26.355154, 13.617751, 14.964510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432293, 13.594406, 15.190573>,  <26.560858, 13.555498, 15.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432293, 13.594406, 15.190573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346557, 0.937784, -0.021414,
		0.881244, -0.333315, -0.335126,
		-0.321413, 0.097270, -0.941930,
		26.335869, 13.623587, 14.907993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062166, 13.807959, 15.165143>,  <26.560858, 13.555498, 15.567345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062166, 13.807959, 15.165143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723087, 13.957012, 15.014117>,  <26.519640, 14.046444, 14.923502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723087, 13.957012, 15.014117>,  <27.062166, 13.807959, 15.165143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723087, 13.957012, 15.014117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377962, 0.923674, 0.063022,
		0.372231, -0.089282, -0.923836,
		-0.847696, 0.372634, -0.377565,
		26.468779, 14.068802, 14.900847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118790, 14.326181, 14.677135>,  <27.062166, 13.807959, 15.165143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118790, 14.326181, 14.677135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778097, 14.407138, 14.870462>,  <26.573683, 14.455711, 14.986459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778097, 14.407138, 14.870462>,  <27.118790, 14.326181, 14.677135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778097, 14.407138, 14.870462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286296, 0.952287, 0.105753,
		-0.438853, 0.228445, -0.869035,
		-0.851729, 0.202391, 0.483317,
		26.522579, 14.467855, 15.015457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817709, 14.890664, 14.414966>,  <27.118790, 14.326181, 14.677135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817709, 14.890664, 14.414966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634895, 14.879882, 14.770582>,  <26.525208, 14.873413, 14.983952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634895, 14.879882, 14.770582>,  <26.817709, 14.890664, 14.414966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634895, 14.879882, 14.770582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143797, 0.984153, 0.103761,
		-0.877749, 0.175263, -0.445915,
		-0.457034, -0.026955, 0.889041,
		26.497786, 14.871796, 15.037294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.492091, 17.315012, 22.004339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.173461, 17.076496, 21.964525>,  <11.982283, 16.933386, 21.940638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.173461, 17.076496, 21.964525>,  <12.492091, 17.315012, 22.004339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173461, 17.076496, 21.964525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406706, -0.406770, -0.818003,
		0.447280, -0.692081, 0.566537,
		-0.796574, -0.596290, -0.099533,
		11.934488, 16.897610, 21.934666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768306, 16.576614, 21.824188>,  <12.492091, 17.315012, 22.004339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768306, 16.576614, 21.824188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.385881, 16.592743, 21.708035>,  <12.156427, 16.602421, 21.638342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.385881, 16.592743, 21.708035>,  <12.768306, 16.576614, 21.824188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.385881, 16.592743, 21.708035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244383, -0.437523, -0.865362,
		-0.161942, -0.898303, 0.408444,
		-0.956061, 0.040322, -0.290383,
		12.099063, 16.604839, 21.620920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585698, 15.898285, 21.562449>,  <12.768306, 16.576614, 21.824188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585698, 15.898285, 21.562449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313061, 16.150772, 21.414398>,  <12.149478, 16.302265, 21.325567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313061, 16.150772, 21.414398>,  <12.585698, 15.898285, 21.562449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313061, 16.150772, 21.414398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112157, -0.409723, -0.905289,
		-0.723084, -0.658552, 0.208469,
		-0.681594, 0.631218, -0.370125,
		12.108582, 16.340137, 21.303360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198870, 15.493608, 21.110306>,  <12.585698, 15.898285, 21.562449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198870, 15.493608, 21.110306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.134249, 15.874843, 21.007914>,  <12.095476, 16.103584, 20.946478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.134249, 15.874843, 21.007914>,  <12.198870, 15.493608, 21.110306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.134249, 15.874843, 21.007914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340809, -0.189548, -0.920826,
		-0.926148, -0.236002, -0.294199,
		-0.161551, 0.953087, -0.255981,
		12.085783, 16.160769, 20.931120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.795700, 15.518837, 20.560759>,  <12.198870, 15.493608, 21.110306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.795700, 15.518837, 20.560759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.995003, 15.865601, 20.554995>,  <12.114584, 16.073660, 20.551537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.995003, 15.865601, 20.554995>,  <11.795700, 15.518837, 20.560759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.995003, 15.865601, 20.554995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309654, -0.193448, -0.930963,
		-0.809849, 0.459396, -0.364829,
		0.498256, 0.866910, -0.014410,
		12.144480, 16.125673, 20.550673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.624400, 15.766511, 19.924393>,  <11.795700, 15.518837, 20.560759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.624400, 15.766511, 19.924393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.948022, 15.984975, 20.011240>,  <12.142195, 16.116053, 20.063349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.948022, 15.984975, 20.011240>,  <11.624400, 15.766511, 19.924393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948022, 15.984975, 20.011240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395063, -0.231854, -0.888915,
		-0.435151, 0.804955, -0.403350,
		0.809055, 0.546160, 0.217117,
		12.190739, 16.148823, 20.076376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733716, 16.146902, 19.314482>,  <11.624400, 15.766511, 19.924393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733716, 16.146902, 19.314482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.091757, 16.152222, 19.492746>,  <12.306581, 16.155413, 19.599705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.091757, 16.152222, 19.492746>,  <11.733716, 16.146902, 19.314482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.091757, 16.152222, 19.492746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430632, -0.284796, -0.856415,
		0.115533, 0.958496, -0.260649,
		0.895102, 0.013300, 0.445662,
		12.360288, 16.156212, 19.626446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.163033, 16.452271, 18.870907>,  <11.733716, 16.146902, 19.314482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.163033, 16.452271, 18.870907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.381410, 16.239786, 19.130064>,  <12.512436, 16.112295, 19.285559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.381410, 16.239786, 19.130064>,  <12.163033, 16.452271, 18.870907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381410, 16.239786, 19.130064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636391, -0.240044, -0.733065,
		0.544935, 0.812522, 0.207009,
		0.545941, -0.531212, 0.647891,
		12.545192, 16.080423, 19.324430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.832533, 16.601419, 18.712452>,  <12.163033, 16.452271, 18.870907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.832533, 16.601419, 18.712452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.838812, 16.247068, 18.897911>,  <12.842579, 16.034458, 19.009188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.838812, 16.247068, 18.897911>,  <12.832533, 16.601419, 18.712452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838812, 16.247068, 18.897911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710890, -0.316198, -0.628215,
		0.703128, 0.339465, 0.624800,
		0.015697, -0.885880, 0.463650,
		12.843521, 15.981304, 19.037006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633539, 16.597946, 18.832853>,  <12.832533, 16.601419, 18.712452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633539, 16.597946, 18.832853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.438118, 16.249022, 18.840755>,  <13.320865, 16.039667, 18.845497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.438118, 16.249022, 18.840755>,  <13.633539, 16.597946, 18.832853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438118, 16.249022, 18.840755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706620, -0.408836, -0.577530,
		0.511863, -0.268194, 0.816130,
		-0.488554, -0.872310, 0.019757,
		13.291552, 15.987329, 18.846682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064560, 16.134682, 19.092529>,  <13.633539, 16.597946, 18.832853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064560, 16.134682, 19.092529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.791601, 15.916163, 18.898252>,  <13.627826, 15.785053, 18.781687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.791601, 15.916163, 18.898252>,  <14.064560, 16.134682, 19.092529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791601, 15.916163, 18.898252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717659, -0.374413, -0.587180,
		0.138923, -0.749252, 0.647551,
		-0.682397, -0.546293, -0.485693,
		13.586882, 15.752275, 18.752544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331821, 15.452074, 19.025009>,  <14.064560, 16.134682, 19.092529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.331821, 15.452074, 19.025009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.054724, 15.470676, 18.737137>,  <13.888465, 15.481838, 18.564413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.054724, 15.470676, 18.737137>,  <14.331821, 15.452074, 19.025009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054724, 15.470676, 18.737137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625862, -0.457063, -0.631972,
		-0.358332, -0.888217, 0.287521,
		-0.692744, 0.046507, -0.719682,
		13.846900, 15.484629, 18.521233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498624, 14.830830, 18.622673>,  <14.331821, 15.452074, 19.025009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498624, 14.830830, 18.622673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.232801, 14.997986, 18.374889>,  <14.073308, 15.098280, 18.226219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.232801, 14.997986, 18.374889>,  <14.498624, 14.830830, 18.622673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232801, 14.997986, 18.374889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518308, -0.339366, -0.784976,
		-0.538258, -0.842733, 0.008933,
		-0.664557, 0.417890, -0.619461,
		14.033435, 15.123353, 18.189051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214432, 14.303191, 18.161915>,  <14.498624, 14.830830, 18.622673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214432, 14.303191, 18.161915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.172935, 14.657572, 17.981104>,  <14.148038, 14.870200, 17.872618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.172935, 14.657572, 17.981104>,  <14.214432, 14.303191, 18.161915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172935, 14.657572, 17.981104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571791, -0.318743, -0.755948,
		-0.813814, -0.336888, -0.473512,
		-0.103741, 0.885951, -0.452027,
		14.141813, 14.923357, 17.845495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997306, 14.122302, 17.490681>,  <14.214432, 14.303191, 18.161915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997306, 14.122302, 17.490681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.119720, 14.501577, 17.456554>,  <14.193170, 14.729143, 17.436079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.119720, 14.501577, 17.456554>,  <13.997306, 14.122302, 17.490681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.119720, 14.501577, 17.456554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480348, -0.231166, -0.846066,
		-0.821953, 0.217946, -0.526206,
		0.306037, 0.948189, -0.085318,
		14.211532, 14.786034, 17.430960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766273, 14.352457, 16.801487>,  <13.997306, 14.122302, 17.490681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766273, 14.352457, 16.801487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.094977, 14.543148, 16.926348>,  <14.292200, 14.657562, 17.001265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.094977, 14.543148, 16.926348>,  <13.766273, 14.352457, 16.801487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.094977, 14.543148, 16.926348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510100, -0.371269, -0.775859,
		-0.253979, 0.796801, -0.548273,
		0.821762, 0.476726, 0.312153,
		14.341506, 14.686166, 17.019993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963560, 14.641895, 16.169914>,  <13.766273, 14.352457, 16.801487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963560, 14.641895, 16.169914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.282990, 14.710873, 16.400581>,  <14.474648, 14.752259, 16.538980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.282990, 14.710873, 16.400581>,  <13.963560, 14.641895, 16.169914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282990, 14.710873, 16.400581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570695, 0.087542, -0.816482,
		-0.191278, 0.981122, -0.028503,
		0.798574, 0.172442, 0.576666,
		14.522562, 14.762606, 16.573582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.274759, 15.293880, 15.856550>,  <13.963560, 14.641895, 16.169914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.274759, 15.293880, 15.856550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.544194, 15.088257, 16.068974>,  <14.705855, 14.964883, 16.196428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.544194, 15.088257, 16.068974>,  <14.274759, 15.293880, 15.856550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.544194, 15.088257, 16.068974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662606, 0.101654, -0.742037,
		0.327467, 0.851709, 0.409092,
		0.673586, -0.514060, 0.531059,
		14.746270, 14.934039, 16.228291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921425, 15.551670, 15.659912>,  <14.274759, 15.293880, 15.856550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921425, 15.551670, 15.659912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.031259, 15.211247, 15.838935>,  <15.097159, 15.006994, 15.946348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.031259, 15.211247, 15.838935>,  <14.921425, 15.551670, 15.659912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.031259, 15.211247, 15.838935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785823, -0.069627, -0.614520,
		0.554153, 0.520438, 0.649661,
		0.274585, -0.851056, 0.447556,
		15.113634, 14.955931, 15.973202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.632531, 15.574993, 15.846079>,  <14.921425, 15.551670, 15.659912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.632531, 15.574993, 15.846079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.558587, 15.181900, 15.849200>,  <15.514221, 14.946044, 15.851073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.558587, 15.181900, 15.849200>,  <15.632531, 15.574993, 15.846079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.558587, 15.181900, 15.849200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805596, -0.156077, -0.571537,
		0.562887, -0.099368, 0.820539,
		-0.184860, -0.982734, 0.007803,
		15.503129, 14.887080, 15.851542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245729, 15.269290, 15.980811>,  <15.632531, 15.574993, 15.846079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245729, 15.269290, 15.980811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.021065, 14.996266, 15.793771>,  <15.886266, 14.832453, 15.681547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.021065, 14.996266, 15.793771>,  <16.245729, 15.269290, 15.980811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021065, 14.996266, 15.793771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706082, -0.100845, -0.700912,
		0.431258, -0.723840, 0.538583,
		-0.561662, -0.682558, -0.467600,
		15.852566, 14.791499, 15.653491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743448, 14.686564, 15.793938>,  <16.245729, 15.269290, 15.980811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743448, 14.686564, 15.793938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.426775, 14.713611, 15.551065>,  <16.236771, 14.729838, 15.405342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.426775, 14.713611, 15.551065>,  <16.743448, 14.686564, 15.793938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426775, 14.713611, 15.551065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609022, 0.008774, -0.793105,
		-0.048301, -0.997673, -0.048127,
		-0.791681, 0.067618, -0.607180,
		16.189270, 14.733895, 15.368911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.134398, 15.164145, 16.079388>,  <16.743448, 14.686564, 15.793938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.134398, 15.164145, 16.079388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.486399, 15.314938, 15.963819>,  <17.697599, 15.405414, 15.894477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.486399, 15.314938, 15.963819>,  <17.134398, 15.164145, 16.079388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486399, 15.314938, 15.963819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057470, 0.688348, 0.723101,
		0.471476, -0.619728, 0.627414,
		0.880005, 0.376982, -0.288924,
		17.750401, 15.428032, 15.877141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688503, 15.100462, 16.604198>,  <17.134398, 15.164145, 16.079388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688503, 15.100462, 16.604198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.768726, 15.425543, 16.385368>,  <17.816860, 15.620591, 16.254070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.768726, 15.425543, 16.385368>,  <17.688503, 15.100462, 16.604198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.768726, 15.425543, 16.385368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073323, 0.569307, 0.818848,
		0.976934, -0.124112, 0.173768,
		0.200556, 0.812703, -0.547076,
		17.828894, 15.669353, 16.221245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046127, 15.531095, 17.146662>,  <17.688503, 15.100462, 16.604198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046127, 15.531095, 17.146662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.995497, 15.774782, 16.833527>,  <17.965118, 15.920995, 16.645645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.995497, 15.774782, 16.833527>,  <18.046127, 15.531095, 17.146662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995497, 15.774782, 16.833527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041571, 0.785232, 0.617805,
		0.991085, 0.110743, -0.074065,
		-0.126576, 0.609218, -0.782836,
		17.957523, 15.957548, 16.598677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623522, 15.991247, 17.179699>,  <18.046127, 15.531095, 17.146662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623522, 15.991247, 17.179699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.309044, 16.135555, 16.979002>,  <18.120358, 16.222139, 16.858583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.309044, 16.135555, 16.979002>,  <18.623522, 15.991247, 17.179699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.309044, 16.135555, 16.979002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150598, 0.675579, 0.721743,
		0.599350, 0.642991, -0.476804,
		-0.786193, 0.360771, -0.501741,
		18.073185, 16.243786, 16.828480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642445, 16.658510, 17.328678>,  <18.623522, 15.991247, 17.179699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642445, 16.658510, 17.328678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.267712, 16.627150, 17.192326>,  <18.042871, 16.608334, 17.110514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.267712, 16.627150, 17.192326>,  <18.642445, 16.658510, 17.328678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267712, 16.627150, 17.192326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331090, 0.513090, 0.791908,
		0.112815, 0.854747, -0.506637,
		-0.936831, -0.078403, -0.340882,
		17.986662, 16.603628, 17.090061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410763, 17.330965, 17.309755>,  <18.642445, 16.658510, 17.328678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410763, 17.330965, 17.309755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.109604, 17.068922, 17.334988>,  <17.928909, 16.911695, 17.350128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.109604, 17.068922, 17.334988>,  <18.410763, 17.330965, 17.309755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109604, 17.068922, 17.334988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409296, 0.541129, 0.734614,
		-0.515388, 0.527269, -0.675547,
		-0.752896, -0.655109, 0.063082,
		17.883736, 16.872389, 17.353912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843739, 17.769121, 17.540207>,  <18.410763, 17.330965, 17.309755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843739, 17.769121, 17.540207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.689741, 17.402885, 17.586636>,  <17.597343, 17.183144, 17.614492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.689741, 17.402885, 17.586636>,  <17.843739, 17.769121, 17.540207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689741, 17.402885, 17.586636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622152, 0.350363, 0.700123,
		-0.681695, 0.197326, -0.704525,
		-0.384992, -0.915592, 0.116074,
		17.574244, 17.128208, 17.621458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122482, 17.776619, 17.524706>,  <17.843739, 17.769121, 17.540207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122482, 17.776619, 17.524706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.160139, 17.423120, 17.708067>,  <17.182734, 17.211021, 17.818083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.160139, 17.423120, 17.708067>,  <17.122482, 17.776619, 17.524706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160139, 17.423120, 17.708067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728827, 0.252485, 0.636445,
		-0.678195, -0.394012, -0.620327,
		0.094144, -0.883745, 0.458401,
		17.188383, 17.157997, 17.845587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446184, 17.562984, 17.692043>,  <17.122482, 17.776619, 17.524706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446184, 17.562984, 17.692043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.679525, 17.362566, 17.947746>,  <16.819530, 17.242315, 18.101168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.679525, 17.362566, 17.947746>,  <16.446184, 17.562984, 17.692043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679525, 17.362566, 17.947746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719431, 0.046551, 0.693002,
		-0.376984, -0.864167, -0.333313,
		0.583354, -0.501047, 0.639258,
		16.854532, 17.212252, 18.139524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072203, 16.955608, 18.063047>,  <16.446184, 17.562984, 17.692043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072203, 16.955608, 18.063047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.363998, 17.073486, 18.309948>,  <16.539076, 17.144213, 18.458088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.363998, 17.073486, 18.309948>,  <16.072203, 16.955608, 18.063047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.363998, 17.073486, 18.309948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657712, 0.054493, 0.751296,
		0.187767, -0.954037, 0.233576,
		0.729492, 0.294695, 0.617250,
		16.582846, 17.161896, 18.495123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968947, 16.594179, 18.715504>,  <16.072203, 16.955608, 18.063047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968947, 16.594179, 18.715504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.218624, 16.883581, 18.833437>,  <16.368431, 17.057222, 18.904196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.218624, 16.883581, 18.833437>,  <15.968947, 16.594179, 18.715504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218624, 16.883581, 18.833437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492679, 0.071638, 0.867258,
		0.606343, -0.686593, 0.401171,
		0.624192, 0.723505, 0.294832,
		16.405882, 17.100632, 18.921886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096592, 16.489477, 19.437391>,  <15.968947, 16.594179, 18.715504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096592, 16.489477, 19.437391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.201590, 16.871185, 19.380167>,  <16.264587, 17.100210, 19.345833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.201590, 16.871185, 19.380167>,  <16.096592, 16.489477, 19.437391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.201590, 16.871185, 19.380167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434013, 0.249176, 0.865762,
		0.861818, -0.165166, 0.479573,
		0.262492, 0.954270, -0.143061,
		16.280336, 17.157467, 19.337250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229332, 16.640301, 20.070412>,  <16.096592, 16.489477, 19.437391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229332, 16.640301, 20.070412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.176899, 16.989632, 19.882744>,  <16.145439, 17.199230, 19.770144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.176899, 16.989632, 19.882744>,  <16.229332, 16.640301, 20.070412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176899, 16.989632, 19.882744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634169, 0.289889, 0.716794,
		0.762002, 0.391491, 0.515837,
		-0.131083, 0.873327, -0.469168,
		16.137573, 17.251629, 19.741993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.285109, 17.121607, 20.602234>,  <16.229332, 16.640301, 20.070412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.285109, 17.121607, 20.602234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.089422, 17.333073, 20.324764>,  <15.972010, 17.459951, 20.158283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.089422, 17.333073, 20.324764>,  <16.285109, 17.121607, 20.602234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089422, 17.333073, 20.324764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669725, 0.281774, 0.687074,
		0.558690, 0.800699, 0.216210,
		-0.489218, 0.528663, -0.693673,
		15.942657, 17.491671, 20.116663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077585, 17.738642, 20.934650>,  <16.285109, 17.121607, 20.602234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077585, 17.738642, 20.934650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.841014, 17.772036, 20.613842>,  <15.699071, 17.792072, 20.421356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.841014, 17.772036, 20.613842>,  <16.077585, 17.738642, 20.934650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841014, 17.772036, 20.613842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762704, 0.264899, 0.590010,
		0.261712, 0.960655, -0.092995,
		-0.591430, 0.083485, -0.802023,
		15.663585, 17.797081, 20.373236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848184, 18.428068, 20.856701>,  <16.077585, 17.738642, 20.934650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848184, 18.428068, 20.856701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.575823, 18.196890, 20.676767>,  <15.412406, 18.058182, 20.568808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.575823, 18.196890, 20.676767>,  <15.848184, 18.428068, 20.856701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575823, 18.196890, 20.676767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670120, 0.243840, 0.701058,
		-0.295487, 0.778794, -0.553324,
		-0.680902, -0.577947, -0.449834,
		15.371552, 18.023506, 20.541817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368535, 18.866047, 20.737850>,  <15.848184, 18.428068, 20.856701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368535, 18.866047, 20.737850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.173830, 18.517302, 20.716238>,  <15.057007, 18.308054, 20.703272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.173830, 18.517302, 20.716238>,  <15.368535, 18.866047, 20.737850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173830, 18.517302, 20.716238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679615, 0.339121, 0.650477,
		-0.548803, 0.353347, -0.757602,
		-0.486763, -0.871862, -0.054029,
		15.027802, 18.255743, 20.700029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805393, 19.075443, 20.914671>,  <15.368535, 18.866047, 20.737850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805393, 19.075443, 20.914671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.748688, 18.679750, 20.929228>,  <14.714664, 18.442335, 20.937962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.748688, 18.679750, 20.929228>,  <14.805393, 19.075443, 20.914671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748688, 18.679750, 20.929228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717232, 0.127982, 0.684981,
		-0.682262, 0.071006, -0.727652,
		-0.141764, -0.989231, 0.036390,
		14.706159, 18.382980, 20.940145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.947456, 18.849154, 20.754414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.142894, 18.570358, 20.964361>,  <14.260156, 18.403082, 21.090330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.142894, 18.570358, 20.964361>,  <13.947456, 18.849154, 20.754414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142894, 18.570358, 20.964361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743817, -0.018281, 0.668133,
		-0.456085, -0.716851, -0.527362,
		0.488593, -0.696986, 0.524868,
		14.289472, 18.361263, 21.121822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423605, 18.381336, 21.005121>,  <13.947456, 18.849154, 20.754414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423605, 18.381336, 21.005121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.738867, 18.332449, 21.246410>,  <13.928024, 18.303116, 21.391184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.738867, 18.332449, 21.246410>,  <13.423605, 18.381336, 21.005121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738867, 18.332449, 21.246410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608480, -0.007354, 0.793535,
		-0.092550, -0.992476, -0.080165,
		0.788154, -0.122220, 0.603221,
		13.975313, 18.295784, 21.427376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204320, 17.912415, 21.408079>,  <13.423605, 18.381336, 21.005121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204320, 17.912415, 21.408079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.508419, 18.075264, 21.610575>,  <13.690879, 18.172974, 21.732071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.508419, 18.075264, 21.610575>,  <13.204320, 17.912415, 21.408079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508419, 18.075264, 21.610575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576138, 0.062498, 0.814960,
		0.300149, -0.911233, 0.282072,
		0.760247, 0.407121, 0.506237,
		13.736493, 18.197401, 21.762445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258298, 17.510099, 22.115099>,  <13.204320, 17.912415, 21.408079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258298, 17.510099, 22.115099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.448150, 17.857069, 22.174833>,  <13.562060, 18.065250, 22.210674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.448150, 17.857069, 22.174833>,  <13.258298, 17.510099, 22.115099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448150, 17.857069, 22.174833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458866, 0.099066, 0.882966,
		0.751112, -0.487607, 0.445051,
		0.474629, 0.867424, 0.149337,
		13.590539, 18.117296, 22.219635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.484632, 17.455067, 22.824099>,  <13.258298, 17.510099, 22.115099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.484632, 17.455067, 22.824099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.510670, 17.840933, 22.721977>,  <13.526292, 18.072453, 22.660704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.510670, 17.840933, 22.721977>,  <13.484632, 17.455067, 22.824099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.510670, 17.840933, 22.721977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364322, 0.261160, 0.893904,
		0.928995, 0.034827, 0.368449,
		0.065093, 0.964667, -0.255305,
		13.530197, 18.130333, 22.645386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.605202, 17.811052, 23.488840>,  <13.484632, 17.455067, 22.824099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.605202, 17.811052, 23.488840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.494658, 18.115017, 23.253498>,  <13.428332, 18.297396, 23.112293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.494658, 18.115017, 23.253498>,  <13.605202, 17.811052, 23.488840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494658, 18.115017, 23.253498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579250, 0.356799, 0.732915,
		0.766874, 0.543352, 0.341574,
		-0.276357, 0.759910, -0.588356,
		13.411752, 18.342991, 23.076992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658024, 18.496542, 23.914520>,  <13.605202, 17.811052, 23.488840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.658024, 18.496542, 23.914520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.389842, 18.564548, 23.625637>,  <13.228932, 18.605352, 23.452307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.389842, 18.564548, 23.625637>,  <13.658024, 18.496542, 23.914520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389842, 18.564548, 23.625637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563685, 0.516210, 0.644815,
		0.482441, 0.839417, -0.250260,
		-0.670455, 0.170017, -0.722208,
		13.188705, 18.615553, 23.408976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403751, 19.153561, 24.046986>,  <13.658024, 18.496542, 23.914520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403751, 19.153561, 24.046986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.129584, 19.012117, 23.792376>,  <12.965084, 18.927252, 23.639610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.129584, 19.012117, 23.792376>,  <13.403751, 19.153561, 24.046986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.129584, 19.012117, 23.792376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700189, 0.559991, 0.442883,
		0.199841, 0.749247, -0.631421,
		-0.685419, -0.353608, -0.636524,
		12.923959, 18.906034, 23.601418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002741, 19.675991, 23.770935>,  <13.403751, 19.153561, 24.046986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002741, 19.675991, 23.770935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.776650, 19.346111, 23.763081>,  <12.640996, 19.148184, 23.758368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.776650, 19.346111, 23.763081>,  <13.002741, 19.675991, 23.770935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.776650, 19.346111, 23.763081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756209, 0.508479, 0.411822,
		-0.329646, 0.247621, -0.911053,
		-0.565227, -0.824702, -0.019636,
		12.607082, 19.098701, 23.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446674, 19.864363, 23.350445>,  <13.002741, 19.675991, 23.770935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446674, 19.864363, 23.350445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.341306, 19.574312, 23.604940>,  <12.278085, 19.400282, 23.757639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.341306, 19.574312, 23.604940>,  <12.446674, 19.864363, 23.350445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341306, 19.574312, 23.604940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778836, 0.549034, 0.303275,
		-0.569230, -0.415638, -0.709382,
		-0.263422, -0.725125, 0.636241,
		12.262280, 19.356775, 23.795813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683312, 19.690948, 23.157116>,  <12.446674, 19.864363, 23.350445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683312, 19.690948, 23.157116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.777835, 19.597250, 23.534325>,  <11.834549, 19.541031, 23.760649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.777835, 19.597250, 23.534325>,  <11.683312, 19.690948, 23.157116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.777835, 19.597250, 23.534325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807886, 0.491873, 0.324625,
		-0.539888, -0.838564, -0.073010,
		0.236307, -0.234245, 0.943021,
		11.848727, 19.526978, 23.817230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.051366, 19.678312, 23.456161>,  <11.683312, 19.690948, 23.157116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.051366, 19.678312, 23.456161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277988, 19.647141, 23.784294>,  <11.413961, 19.628437, 23.981173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277988, 19.647141, 23.784294>,  <11.051366, 19.678312, 23.456161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277988, 19.647141, 23.784294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678797, 0.520260, 0.518232,
		-0.467172, -0.850445, 0.241856,
		0.566555, -0.077932, 0.820330,
		11.447955, 19.623760, 24.030394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.609129, 19.339844, 23.964085>,  <11.051366, 19.678312, 23.456161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.609129, 19.339844, 23.964085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.882579, 19.543324, 24.173418>,  <11.046649, 19.665411, 24.299019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.882579, 19.543324, 24.173418>,  <10.609129, 19.339844, 23.964085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.882579, 19.543324, 24.173418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720788, 0.358046, 0.593521,
		0.114546, -0.782960, 0.611435,
		0.683625, 0.508700, 0.523336,
		11.087667, 19.695934, 24.330420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.501116, 19.224430, 24.669069>,  <10.609129, 19.339844, 23.964085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.501116, 19.224430, 24.669069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.731422, 19.551435, 24.674206>,  <10.869607, 19.747639, 24.677288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.731422, 19.551435, 24.674206>,  <10.501116, 19.224430, 24.669069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.731422, 19.551435, 24.674206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647821, 0.446560, 0.617181,
		0.498820, -0.363669, 0.786717,
		0.575766, 0.817514, 0.012839,
		10.904153, 19.796690, 24.678059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601125, 19.353498, 25.386721>,  <10.501116, 19.224430, 24.669069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601125, 19.353498, 25.386721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.647518, 19.691427, 25.177790>,  <10.675354, 19.894184, 25.052431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.647518, 19.691427, 25.177790>,  <10.601125, 19.353498, 25.386721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.647518, 19.691427, 25.177790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477332, 0.508580, 0.716589,
		0.871035, 0.166212, 0.462247,
		0.115984, 0.844820, -0.522329,
		10.682313, 19.944874, 25.021091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.930845, 19.937752, 25.927935>,  <10.601125, 19.353498, 25.386721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.930845, 19.937752, 25.927935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.743556, 20.107883, 25.618132>,  <10.631183, 20.209963, 25.432249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.743556, 20.107883, 25.618132>,  <10.930845, 19.937752, 25.927935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.743556, 20.107883, 25.618132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501277, 0.593967, 0.629225,
		0.727660, 0.682861, -0.064902,
		-0.468222, 0.425328, -0.774509,
		10.603089, 20.235481, 25.385778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925323, 20.660139, 26.066484>,  <10.930845, 19.937752, 25.927935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925323, 20.660139, 26.066484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.632330, 20.586338, 25.804361>,  <10.456534, 20.542057, 25.647087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.632330, 20.586338, 25.804361>,  <10.925323, 20.660139, 26.066484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.632330, 20.586338, 25.804361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613096, 0.597218, 0.517150,
		0.295945, 0.780569, -0.550570,
		-0.732482, -0.184504, -0.655308,
		10.412585, 20.530987, 25.607769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.655528, 21.254702, 25.892969>,  <10.925323, 20.660139, 26.066484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.655528, 21.254702, 25.892969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.355070, 21.008629, 25.797194>,  <10.174795, 20.860985, 25.739727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.355070, 21.008629, 25.797194>,  <10.655528, 21.254702, 25.892969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355070, 21.008629, 25.797194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639532, 0.588226, 0.494965,
		-0.163649, 0.524919, -0.835272,
		-0.751145, -0.615183, -0.239440,
		10.129726, 20.824074, 25.725361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.129951, 21.741255, 25.922014>,  <10.655528, 21.254702, 25.892969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.129951, 21.741255, 25.922014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.928667, 21.398058, 25.880779>,  <9.807897, 21.192139, 25.856039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.928667, 21.398058, 25.880779>,  <10.129951, 21.741255, 25.922014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928667, 21.398058, 25.880779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738618, 0.365110, 0.566691,
		-0.448580, 0.361305, -0.817457,
		-0.503209, -0.857994, -0.103085,
		9.777704, 21.140659, 25.849854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.525222, 21.914532, 25.599524>,  <10.129951, 21.741255, 25.922014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.525222, 21.914532, 25.599524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.467725, 21.557695, 25.770878>,  <9.433227, 21.343594, 25.873690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.467725, 21.557695, 25.770878>,  <9.525222, 21.914532, 25.599524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.467725, 21.557695, 25.770878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808764, 0.355359, 0.468638,
		-0.570297, -0.279100, -0.772570,
		-0.143743, -0.892089, 0.428386,
		9.424603, 21.290070, 25.899393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.812202, 21.800793, 25.680971>,  <9.525222, 21.914532, 25.599524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.812202, 21.800793, 25.680971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.019015, 21.604635, 25.961597>,  <9.143103, 21.486940, 26.129972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.019015, 21.604635, 25.961597>,  <8.812202, 21.800793, 25.680971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.019015, 21.604635, 25.961597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577981, 0.404537, 0.708723,
		-0.631361, -0.771923, -0.074279,
		0.517031, -0.490392, 0.701565,
		9.174125, 21.457518, 26.172068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.337078, 21.658943, 26.195393>,  <8.812202, 21.800793, 25.680971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.337078, 21.658943, 26.195393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.701256, 21.670485, 26.360441>,  <8.919763, 21.677408, 26.459471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.701256, 21.670485, 26.360441>,  <8.337078, 21.658943, 26.195393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.701256, 21.670485, 26.360441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404029, 0.275713, 0.872206,
		-0.088602, -0.960807, 0.262678,
		0.910445, 0.028851, 0.412623,
		8.974389, 21.679140, 26.484228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.190381, 21.429558, 26.860685>,  <8.337078, 21.658943, 26.195393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.190381, 21.429558, 26.860685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.518792, 21.657843, 26.854990>,  <8.715838, 21.794813, 26.851574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.518792, 21.657843, 26.854990>,  <8.190381, 21.429558, 26.860685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.518792, 21.657843, 26.854990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295039, 0.445530, 0.845254,
		0.488743, -0.689773, 0.534174,
		0.821025, 0.570715, -0.014240,
		8.765100, 21.829056, 26.850719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.875017, 20.962866, 27.316700>,  <8.190381, 21.429558, 26.860685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.875017, 20.962866, 27.316700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.799467, 20.629824, 27.524965>,  <7.754138, 20.429998, 27.649925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.799467, 20.629824, 27.524965>,  <7.875017, 20.962866, 27.316700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.799467, 20.629824, 27.524965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017124, -0.527335, -0.849485,
		0.981852, -0.169361, 0.085342,
		-0.188874, -0.832607, 0.520665,
		7.742805, 20.380041, 27.681166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.371305, 20.383614, 27.356640>,  <7.875017, 20.962866, 27.316700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.371305, 20.383614, 27.356640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.999717, 20.241442, 27.397991>,  <7.776764, 20.156139, 27.422802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.999717, 20.241442, 27.397991>,  <8.371305, 20.383614, 27.356640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.999717, 20.241442, 27.397991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107780, -0.526915, -0.843056,
		0.354119, -0.772031, 0.527796,
		-0.928969, -0.355428, 0.103381,
		7.721026, 20.134813, 27.429005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.406886, 19.685862, 27.191574>,  <8.371305, 20.383614, 27.356640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.406886, 19.685862, 27.191574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.016224, 19.761129, 27.150126>,  <7.781826, 19.806290, 27.125257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.016224, 19.761129, 27.150126>,  <8.406886, 19.685862, 27.191574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.016224, 19.761129, 27.150126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009640, -0.520276, -0.853943,
		-0.214596, -0.833010, 0.509945,
		-0.976655, 0.188169, -0.103619,
		7.723228, 19.817579, 27.119040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.103455, 19.050354, 27.095589>,  <8.406886, 19.685862, 27.191574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.103455, 19.050354, 27.095589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.850204, 19.316490, 26.937361>,  <7.698254, 19.476171, 26.842424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.850204, 19.316490, 26.937361>,  <8.103455, 19.050354, 27.095589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.850204, 19.316490, 26.937361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138656, -0.600258, -0.787696,
		-0.761528, -0.443863, 0.472292,
		-0.633126, 0.665339, -0.395569,
		7.660266, 19.516092, 26.818689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.531340, 18.644421, 26.960665>,  <8.103455, 19.050354, 27.095589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.531340, 18.644421, 26.960665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.544837, 18.979782, 26.743063>,  <7.552935, 19.181000, 26.612501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.544837, 18.979782, 26.743063>,  <7.531340, 18.644421, 26.960665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.544837, 18.979782, 26.743063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022006, -0.543559, -0.839082,
		-0.999188, 0.040284, 0.000109,
		0.033742, 0.838404, -0.544004,
		7.554959, 19.231304, 26.579863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.957275, 18.645784, 26.519880>,  <7.531340, 18.644421, 26.960665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.957275, 18.645784, 26.519880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.203686, 18.914309, 26.355026>,  <7.351533, 19.075422, 26.256115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.203686, 18.914309, 26.355026>,  <6.957275, 18.645784, 26.519880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.203686, 18.914309, 26.355026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088847, -0.579069, -0.810423,
		-0.782697, 0.462627, -0.416367,
		0.616029, 0.671309, -0.412133,
		7.388495, 19.115702, 26.231386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.915812, 18.440884, 25.839499>,  <6.957275, 18.645784, 26.519880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.915812, 18.440884, 25.839499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.247989, 18.655897, 25.898043>,  <7.447296, 18.784904, 25.933168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.247989, 18.655897, 25.898043>,  <6.915812, 18.440884, 25.839499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.247989, 18.655897, 25.898043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403814, -0.399816, -0.822850,
		-0.383792, 0.742432, -0.549088,
		0.830444, 0.537533, 0.146358,
		7.497122, 18.817158, 25.941950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.061607, 18.615622, 25.192301>,  <6.915812, 18.440884, 25.839499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.061607, 18.615622, 25.192301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.421385, 18.677521, 25.355789>,  <7.637251, 18.714661, 25.453882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.421385, 18.677521, 25.355789>,  <7.061607, 18.615622, 25.192301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.421385, 18.677521, 25.355789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419333, -0.569047, -0.707351,
		0.123121, 0.807613, -0.576716,
		0.899445, 0.154746, 0.408721,
		7.691218, 18.723944, 25.478405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.542164, 18.853870, 24.581457>,  <7.061607, 18.615622, 25.192301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.542164, 18.853870, 24.581457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.766629, 18.721849, 24.885078>,  <7.901309, 18.642637, 25.067251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.766629, 18.721849, 24.885078>,  <7.542164, 18.853870, 24.581457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.766629, 18.721849, 24.885078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720980, -0.255527, -0.644123,
		0.406552, 0.908720, 0.094567,
		0.561163, -0.330050, 0.759054,
		7.934978, 18.622835, 25.112795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.262364, 19.102081, 24.444960>,  <7.542164, 18.853870, 24.581457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.262364, 19.102081, 24.444960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.281345, 18.786423, 24.689907>,  <8.292734, 18.597027, 24.836876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.281345, 18.786423, 24.689907>,  <8.262364, 19.102081, 24.444960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.281345, 18.786423, 24.689907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858559, -0.281105, -0.428785,
		0.510514, 0.546103, 0.664189,
		0.047454, -0.789146, 0.612369,
		8.295582, 18.549679, 24.873617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.849505, 19.224367, 24.781416>,  <8.262364, 19.102081, 24.444960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.849505, 19.224367, 24.781416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.782184, 18.830074, 24.780333>,  <8.741791, 18.593498, 24.779682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.782184, 18.830074, 24.780333>,  <8.849505, 19.224367, 24.781416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.782184, 18.830074, 24.780333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933159, -0.158441, -0.322662,
		0.317629, -0.056833, 0.946510,
		-0.168304, -0.985731, -0.002709,
		8.731692, 18.534355, 24.779520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.508550, 18.976320, 24.994745>,  <8.849505, 19.224367, 24.781416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.508550, 18.976320, 24.994745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.330583, 18.654734, 24.836916>,  <9.223803, 18.461782, 24.742218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.330583, 18.654734, 24.836916>,  <9.508550, 18.976320, 24.994745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.330583, 18.654734, 24.836916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861657, -0.264188, -0.433302,
		0.244119, -0.532770, 0.810285,
		-0.444918, -0.803966, -0.394572,
		9.197107, 18.413544, 24.718544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.014809, 18.443039, 25.092997>,  <9.508550, 18.976320, 24.994745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.014809, 18.443039, 25.092997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.787324, 18.321960, 24.787069>,  <9.650833, 18.249313, 24.603514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.787324, 18.321960, 24.787069>,  <10.014809, 18.443039, 25.092997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.787324, 18.321960, 24.787069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779865, -0.494027, -0.384379,
		-0.261491, -0.815054, 0.517020,
		-0.568712, -0.302694, -0.764816,
		9.616711, 18.231152, 24.557625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.131846, 17.749510, 24.899942>,  <10.014809, 18.443039, 25.092997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.131846, 17.749510, 24.899942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.979105, 17.908047, 24.565971>,  <9.887460, 18.003168, 24.365589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.979105, 17.908047, 24.565971>,  <10.131846, 17.749510, 24.899942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979105, 17.908047, 24.565971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712866, -0.448658, -0.539007,
		-0.588227, -0.801012, -0.111216,
		-0.381853, 0.396340, -0.834927,
		9.864549, 18.026949, 24.315493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.417173, 17.263668, 24.463444>,  <10.131846, 17.749510, 24.899942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.417173, 17.263668, 24.463444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.257104, 17.536322, 24.218418>,  <10.161062, 17.699913, 24.071402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.257104, 17.536322, 24.218418>,  <10.417173, 17.263668, 24.463444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257104, 17.536322, 24.218418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522634, -0.379328, -0.763521,
		-0.752805, -0.625688, -0.204448,
		-0.400173, 0.681633, -0.612566,
		10.137052, 17.740812, 24.034649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.086635, 16.950478, 23.882862>,  <10.417173, 17.263668, 24.463444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.086635, 16.950478, 23.882862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.194933, 17.314571, 23.757532>,  <10.259912, 17.533028, 23.682335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.194933, 17.314571, 23.757532>,  <10.086635, 16.950478, 23.882862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.194933, 17.314571, 23.757532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497155, -0.410927, -0.764183,
		-0.824338, 0.051129, -0.563784,
		0.270746, 0.910233, -0.313324,
		10.276156, 17.587641, 23.663534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.844007, 17.004776, 23.214195>,  <10.086635, 16.950478, 23.882862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.844007, 17.004776, 23.214195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.133092, 17.275246, 23.271423>,  <10.306543, 17.437529, 23.305761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.133092, 17.275246, 23.271423>,  <9.844007, 17.004776, 23.214195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.133092, 17.275246, 23.271423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489635, -0.354809, -0.796473,
		-0.487793, 0.645675, -0.587505,
		0.722715, 0.676176, 0.143072,
		10.349906, 17.478098, 23.314344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.971615, 17.159668, 22.574411>,  <9.844007, 17.004776, 23.214195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.971615, 17.159668, 22.574411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.291385, 17.257339, 22.793974>,  <10.483247, 17.315943, 22.925711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.291385, 17.257339, 22.793974>,  <9.971615, 17.159668, 22.574411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.291385, 17.257339, 22.793974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600764, -0.322159, -0.731640,
		-0.001817, 0.914653, -0.404236,
		0.799425, 0.244180, 0.548905,
		10.531212, 17.330593, 22.958645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315475, 17.562979, 22.126894>,  <9.971615, 17.159668, 22.574411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315475, 17.562979, 22.126894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.595022, 17.427427, 22.378845>,  <10.762751, 17.346096, 22.530016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.595022, 17.427427, 22.378845>,  <10.315475, 17.562979, 22.126894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.595022, 17.427427, 22.378845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510381, -0.380691, -0.771094,
		0.501095, 0.860370, -0.093096,
		0.698867, -0.338877, 0.629879,
		10.804683, 17.325764, 22.567808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054745, 17.918476, 22.004190>,  <10.315475, 17.562979, 22.126894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054745, 17.918476, 22.004190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.099177, 17.552889, 22.160303>,  <11.125837, 17.333536, 22.253971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.099177, 17.552889, 22.160303>,  <11.054745, 17.918476, 22.004190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099177, 17.552889, 22.160303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725858, -0.193627, -0.660029,
		0.678816, 0.356607, 0.641904,
		0.111082, -0.913969, 0.390283,
		11.132502, 17.278698, 22.277388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822094, 17.857145, 22.034252>,  <11.054745, 17.918476, 22.004190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822094, 17.857145, 22.034252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.655363, 17.496418, 22.079828>,  <11.555325, 17.279982, 22.107174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.655363, 17.496418, 22.079828>,  <11.822094, 17.857145, 22.034252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655363, 17.496418, 22.079828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599788, -0.367059, -0.711001,
		0.683016, -0.228023, 0.693899,
		-0.416826, -0.901817, 0.113942,
		11.530315, 17.225872, 22.114012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.762865, 23.582880, 4.868385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.713997, 23.521698, 5.260646>,  <24.684675, 23.484989, 5.496003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.713997, 23.521698, 5.260646>,  <24.762865, 23.582880, 4.868385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713997, 23.521698, 5.260646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744267, 0.667785, 0.011432,
		-0.656613, -0.728471, -0.195423,
		-0.122172, -0.152953, 0.980653,
		24.677345, 23.475813, 5.554842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833113, 22.756289, 4.859480>,  <24.762865, 23.582880, 4.868385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833113, 22.756289, 4.859480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.124254, 22.682028, 5.123530>,  <25.298939, 22.637472, 5.281960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.124254, 22.682028, 5.123530>,  <24.833113, 22.756289, 4.859480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124254, 22.682028, 5.123530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556043, 0.403581, 0.726594,
		-0.401306, -0.895911, 0.190518,
		0.727853, -0.185650, 0.660124,
		25.342609, 22.626333, 5.321567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544928, 22.308258, 5.392616>,  <24.833113, 22.756289, 4.859480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544928, 22.308258, 5.392616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.832293, 22.546463, 5.536419>,  <25.004711, 22.689386, 5.622701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.832293, 22.546463, 5.536419>,  <24.544928, 22.308258, 5.392616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832293, 22.546463, 5.536419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609756, 0.290387, 0.737477,
		0.334780, -0.749027, 0.571736,
		0.718414, 0.595512, 0.359508,
		25.047817, 22.725117, 5.644271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858452, 21.807188, 5.979495>,  <24.544928, 22.308258, 5.392616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858452, 21.807188, 5.979495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.866220, 21.855906, 6.376441>,  <24.870882, 21.885136, 6.614609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.866220, 21.855906, 6.376441>,  <24.858452, 21.807188, 5.979495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866220, 21.855906, 6.376441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757789, 0.645682, -0.094077,
		-0.652210, 0.753832, -0.079752,
		0.019424, 0.121793, 0.992366,
		24.872047, 21.892443, 6.674151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473053, 21.335344, 6.429996>,  <24.858452, 21.807188, 5.979495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473053, 21.335344, 6.429996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.135530, 21.347219, 6.644326>,  <23.933016, 21.354343, 6.772923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.135530, 21.347219, 6.644326>,  <24.473053, 21.335344, 6.429996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.135530, 21.347219, 6.644326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350987, -0.724774, 0.592884,
		0.405952, 0.688347, 0.601150,
		-0.843808, 0.029687, 0.535824,
		23.882389, 21.356125, 6.805073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616817, 21.456593, 7.161727>,  <24.473053, 21.335344, 6.429996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616817, 21.456593, 7.161727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.265345, 21.270859, 7.117339>,  <24.054461, 21.159418, 7.090706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.265345, 21.270859, 7.117339>,  <24.616817, 21.456593, 7.161727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265345, 21.270859, 7.117339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232386, -0.619042, 0.750189,
		-0.417033, 0.633389, 0.651845,
		-0.878681, -0.464334, -0.110970,
		24.001740, 21.131559, 7.084048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316181, 21.429434, 7.817215>,  <24.616817, 21.456593, 7.161727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316181, 21.429434, 7.817215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.152500, 21.125908, 7.614532>,  <24.054291, 20.943792, 7.492922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.152500, 21.125908, 7.614532>,  <24.316181, 21.429434, 7.817215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.152500, 21.125908, 7.614532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392810, -0.647737, 0.652792,
		-0.823562, 0.068085, 0.563126,
		-0.409202, -0.758816, -0.506707,
		24.029739, 20.898264, 7.462520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.775846, 21.183235, 8.315948>,  <24.316181, 21.429434, 7.817215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.775846, 21.183235, 8.315948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.911104, 20.913816, 8.053043>,  <23.992260, 20.752165, 7.895300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.911104, 20.913816, 8.053043>,  <23.775846, 21.183235, 8.315948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911104, 20.913816, 8.053043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066178, -0.679655, 0.730541,
		-0.938764, -0.290526, -0.185249,
		0.338146, -0.673546, -0.657262,
		24.012548, 20.711752, 7.855865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285320, 20.571680, 8.337750>,  <23.775846, 21.183235, 8.315948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285320, 20.571680, 8.337750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.658062, 20.471098, 8.233122>,  <23.881706, 20.410748, 8.170344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.658062, 20.471098, 8.233122>,  <23.285320, 20.571680, 8.337750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.658062, 20.471098, 8.233122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000429, -0.720143, 0.693825,
		-0.362836, -0.646655, -0.670959,
		0.931853, -0.251457, -0.261571,
		23.937618, 20.395660, 8.154651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.263336, 19.826414, 8.101880>,  <23.285320, 20.571680, 8.337750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.263336, 19.826414, 8.101880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592154, 19.970434, 8.278337>,  <23.789444, 20.056847, 8.384211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592154, 19.970434, 8.278337>,  <23.263336, 19.826414, 8.101880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.592154, 19.970434, 8.278337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185928, -0.562535, 0.805596,
		0.538213, -0.744257, -0.395486,
		0.822045, 0.360050, 0.441141,
		23.838768, 20.078449, 8.410679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656382, 19.225073, 8.342113>,  <23.263336, 19.826414, 8.101880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656382, 19.225073, 8.342113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.777845, 19.515133, 8.589322>,  <23.850723, 19.689169, 8.737647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.777845, 19.515133, 8.589322>,  <23.656382, 19.225073, 8.342113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.777845, 19.515133, 8.589322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251188, -0.564774, 0.786088,
		0.919074, -0.393942, 0.010650,
		0.303658, 0.725148, 0.618022,
		23.868942, 19.732677, 8.774729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.814695, 18.902514, 8.988053>,  <23.656382, 19.225073, 8.342113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.814695, 18.902514, 8.988053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.805689, 19.288393, 9.093010>,  <23.800285, 19.519920, 9.155984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.805689, 19.288393, 9.093010>,  <23.814695, 18.902514, 8.988053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.805689, 19.288393, 9.093010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290794, -0.257431, 0.921503,
		0.956521, -0.055553, 0.286325,
		-0.022517, 0.964699, 0.262392,
		23.798933, 19.577803, 9.171727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274158, 18.989397, 9.460750>,  <23.814695, 18.902514, 8.988053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274158, 18.989397, 9.460750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997986, 19.274670, 9.509208>,  <23.832281, 19.445833, 9.538282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997986, 19.274670, 9.509208>,  <24.274158, 18.989397, 9.460750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997986, 19.274670, 9.509208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107682, -0.266924, 0.957683,
		0.715337, 0.648170, 0.261090,
		-0.690433, 0.713181, 0.121145,
		23.790855, 19.488625, 9.545551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260798, 19.131060, 10.093693>,  <24.274158, 18.989397, 9.460750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260798, 19.131060, 10.093693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.934021, 19.353619, 10.032992>,  <23.737955, 19.487154, 9.996572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.934021, 19.353619, 10.032992>,  <24.260798, 19.131060, 10.093693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.934021, 19.353619, 10.032992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284388, -0.159740, 0.945308,
		0.501725, 0.815418, 0.288731,
		-0.816943, 0.556396, -0.151750,
		23.688938, 19.520538, 9.987468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127979, 19.719618, 10.642897>,  <24.260798, 19.131060, 10.093693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127979, 19.719618, 10.642897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775644, 19.637815, 10.472107>,  <23.564243, 19.588734, 10.369633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775644, 19.637815, 10.472107>,  <24.127979, 19.719618, 10.642897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775644, 19.637815, 10.472107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423244, -0.063922, 0.903758,
		-0.212115, 0.976776, -0.030250,
		-0.880836, -0.204504, -0.426974,
		23.511395, 19.576464, 10.344015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.665615, 19.959745, 11.011746>,  <24.127979, 19.719618, 10.642897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.665615, 19.959745, 11.011746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.481678, 19.671473, 10.804223>,  <23.371315, 19.498508, 10.679709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.481678, 19.671473, 10.804223>,  <23.665615, 19.959745, 11.011746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.481678, 19.671473, 10.804223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421296, -0.337248, 0.841887,
		-0.781700, 0.605707, -0.148540,
		-0.459842, -0.720683, -0.518809,
		23.343725, 19.455267, 10.648581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.917845, 19.940916, 11.159631>,  <23.665615, 19.959745, 11.011746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.917845, 19.940916, 11.159631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.949472, 19.582607, 10.984660>,  <22.968449, 19.367622, 10.879678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.949472, 19.582607, 10.984660>,  <22.917845, 19.940916, 11.159631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.949472, 19.582607, 10.984660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486670, -0.417643, 0.767285,
		-0.870000, 0.152214, -0.468968,
		0.079070, -0.895771, -0.437427,
		22.973194, 19.313875, 10.853432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136564, 19.596647, 11.108950>,  <22.917845, 19.940916, 11.159631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136564, 19.596647, 11.108950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.421564, 19.316223, 11.097237>,  <22.592564, 19.147968, 11.090209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.421564, 19.316223, 11.097237>,  <22.136564, 19.596647, 11.108950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.421564, 19.316223, 11.097237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564394, -0.597403, 0.569711,
		-0.416895, -0.389392, -0.821324,
		0.712502, -0.701059, -0.029283,
		22.635315, 19.105906, 11.088451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793232, 19.009462, 10.992807>,  <22.136564, 19.596647, 11.108950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793232, 19.009462, 10.992807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.144714, 18.873796, 11.127178>,  <22.355604, 18.792397, 11.207801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.144714, 18.873796, 11.127178>,  <21.793232, 19.009462, 10.992807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144714, 18.873796, 11.127178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473199, -0.711652, 0.519263,
		0.062948, -0.615239, -0.785824,
		0.878704, -0.339165, 0.335927,
		22.408325, 18.772047, 11.227956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811247, 18.283634, 10.828483>,  <21.793232, 19.009462, 10.992807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811247, 18.283634, 10.828483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.091461, 18.273697, 11.113755>,  <22.259590, 18.267735, 11.284919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.091461, 18.273697, 11.113755>,  <21.811247, 18.283634, 10.828483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091461, 18.273697, 11.113755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324067, -0.901475, 0.286919,
		0.635789, -0.432117, -0.639568,
		0.700538, -0.024843, 0.713183,
		22.301622, 18.266245, 11.327710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868914, 17.601917, 10.838745>,  <21.811247, 18.283634, 10.828483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868914, 17.601917, 10.838745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.066933, 17.721064, 11.165231>,  <22.185743, 17.792551, 11.361122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.066933, 17.721064, 11.165231>,  <21.868914, 17.601917, 10.838745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066933, 17.721064, 11.165231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222967, -0.864392, 0.450680,
		0.839771, -0.405096, -0.361500,
		0.495047, 0.297865, 0.816214,
		22.215446, 17.810423, 11.410095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331656, 17.069340, 11.049962>,  <21.868914, 17.601917, 10.838745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331656, 17.069340, 11.049962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.240074, 17.290630, 11.370343>,  <22.185125, 17.423405, 11.562572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.240074, 17.290630, 11.370343>,  <22.331656, 17.069340, 11.049962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240074, 17.290630, 11.370343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301360, -0.822667, 0.482079,
		0.925615, -0.131002, 0.355071,
		-0.228952, 0.553224, 0.800952,
		22.171389, 17.456598, 11.610629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.660925, 16.791567, 11.688801>,  <22.331656, 17.069340, 11.049962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.660925, 16.791567, 11.688801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.390480, 17.033169, 11.857585>,  <22.228212, 17.178129, 11.958856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.390480, 17.033169, 11.857585>,  <22.660925, 16.791567, 11.688801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.390480, 17.033169, 11.857585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216589, -0.710321, 0.669726,
		0.704244, 0.361419, 0.611078,
		-0.676113, 0.604003, 0.421961,
		22.187647, 17.214369, 11.984173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.698492, 16.683245, 12.452809>,  <22.660925, 16.791567, 11.688801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.698492, 16.683245, 12.452809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.344381, 16.868336, 12.434196>,  <22.131914, 16.979391, 12.423029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.344381, 16.868336, 12.434196>,  <22.698492, 16.683245, 12.452809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344381, 16.868336, 12.434196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328096, -0.550507, 0.767656,
		0.329600, 0.694856, 0.639170,
		-0.885278, 0.462729, -0.046532,
		22.078798, 17.007154, 12.420237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.616165, 16.960545, 13.102644>,  <22.698492, 16.683245, 12.452809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.616165, 16.960545, 13.102644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.259407, 16.894508, 12.934230>,  <22.045353, 16.854887, 12.833181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.259407, 16.894508, 12.934230>,  <22.616165, 16.960545, 13.102644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.259407, 16.894508, 12.934230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255403, -0.584441, 0.770194,
		-0.373222, 0.794465, 0.479094,
		-0.891894, -0.165092, -0.421035,
		21.991838, 16.844980, 12.807920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127033, 17.085075, 13.531097>,  <22.616165, 16.960545, 13.102644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127033, 17.085075, 13.531097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.888258, 16.866999, 13.295665>,  <21.744993, 16.736153, 13.154405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.888258, 16.866999, 13.295665>,  <22.127033, 17.085075, 13.531097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.888258, 16.866999, 13.295665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059995, -0.701243, 0.710394,
		-0.800040, 0.459374, 0.385891,
		-0.596939, -0.545192, -0.588582,
		21.709177, 16.703442, 13.119090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606325, 16.897350, 13.935397>,  <22.127033, 17.085075, 13.531097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606325, 16.897350, 13.935397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.596958, 16.625122, 13.642474>,  <21.591337, 16.461784, 13.466721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.596958, 16.625122, 13.642474>,  <21.606325, 16.897350, 13.935397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596958, 16.625122, 13.642474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192981, -0.715654, 0.671265,
		-0.980923, 0.157040, -0.114579,
		-0.023417, -0.680571, -0.732308,
		21.589933, 16.420950, 13.422782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021887, 16.485989, 14.080569>,  <21.606325, 16.897350, 13.935397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021887, 16.485989, 14.080569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.262033, 16.278202, 13.837354>,  <21.406122, 16.153530, 13.691424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.262033, 16.278202, 13.837354>,  <21.021887, 16.485989, 14.080569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262033, 16.278202, 13.837354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209951, -0.836023, 0.506938,
		-0.771671, -0.176692, -0.610986,
		0.600370, -0.519466, -0.608038,
		21.442144, 16.122362, 13.654942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807314, 15.752090, 14.157580>,  <21.021887, 16.485989, 14.080569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807314, 15.752090, 14.157580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.137520, 15.709339, 13.935914>,  <21.335644, 15.683688, 13.802915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.137520, 15.709339, 13.935914>,  <20.807314, 15.752090, 14.157580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137520, 15.709339, 13.935914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108494, -0.933539, 0.341664,
		-0.553851, -0.342173, -0.759057,
		0.825517, -0.106878, -0.554165,
		21.385176, 15.677276, 13.769665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645309, 15.168036, 13.668123>,  <20.807314, 15.752090, 14.157580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645309, 15.168036, 13.668123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.043617, 15.190080, 13.697536>,  <21.282602, 15.203305, 13.715184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.043617, 15.190080, 13.697536>,  <20.645309, 15.168036, 13.668123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043617, 15.190080, 13.697536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025679, -0.935222, 0.353130,
		0.088229, -0.349748, -0.932680,
		0.995769, 0.055107, 0.073533,
		21.342348, 15.206612, 13.719596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026634, 14.635634, 13.202624>,  <20.645309, 15.168036, 13.668123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026634, 14.635634, 13.202624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.267385, 14.730448, 13.507664>,  <21.411837, 14.787336, 13.690687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.267385, 14.730448, 13.507664>,  <21.026634, 14.635634, 13.202624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267385, 14.730448, 13.507664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010743, -0.952445, 0.304522,
		0.798515, -0.191477, -0.570710,
		0.601878, 0.237034, 0.762599,
		21.447948, 14.801558, 13.736444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.472874, 14.083937, 13.374194>,  <21.026634, 14.635634, 13.202624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.472874, 14.083937, 13.374194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504892, 14.282922, 13.719707>,  <21.524103, 14.402313, 13.927015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504892, 14.282922, 13.719707>,  <21.472874, 14.083937, 13.374194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504892, 14.282922, 13.719707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051201, -0.863369, 0.501969,
		0.995476, -0.084406, -0.043637,
		0.080044, 0.497464, 0.863784,
		21.528906, 14.432161, 13.978843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.982161, 13.800278, 13.759728>,  <21.472874, 14.083937, 13.374194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.982161, 13.800278, 13.759728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746983, 13.980867, 14.028203>,  <21.605877, 14.089221, 14.189288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746983, 13.980867, 14.028203>,  <21.982161, 13.800278, 13.759728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746983, 13.980867, 14.028203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079654, -0.793405, 0.603460,
		0.804970, 0.408263, 0.430516,
		-0.587944, 0.451475, 0.671187,
		21.570599, 14.116310, 14.229559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372660, 13.835787, 14.328383>,  <21.982161, 13.800278, 13.759728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372660, 13.835787, 14.328383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.984472, 13.805285, 14.419929>,  <21.751560, 13.786984, 14.474855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.984472, 13.805285, 14.419929>,  <22.372660, 13.835787, 14.328383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984472, 13.805285, 14.419929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223068, -0.644846, 0.731037,
		0.091837, 0.760499, 0.642812,
		-0.970467, -0.076254, 0.228864,
		21.693333, 13.782409, 14.488587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298656, 13.735110, 15.083996>,  <22.372660, 13.835787, 14.328383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298656, 13.735110, 15.083996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.948404, 13.616730, 14.931321>,  <21.738253, 13.545701, 14.839716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.948404, 13.616730, 14.931321>,  <22.298656, 13.735110, 15.083996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948404, 13.616730, 14.931321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073284, -0.699710, 0.710658,
		-0.477391, 0.650245, 0.590999,
		-0.875630, -0.295951, -0.381688,
		21.685715, 13.527945, 14.816814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999905, 13.250595, 14.767104>,  <22.298656, 13.735110, 15.083996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999905, 13.250595, 14.767104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.362183, 13.093602, 14.703007>,  <23.579550, 12.999407, 14.664548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.362183, 13.093602, 14.703007>,  <22.999905, 13.250595, 14.767104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.362183, 13.093602, 14.703007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143712, 0.639858, -0.754936,
		0.398832, 0.660712, 0.635919,
		0.905693, -0.392482, -0.160244,
		23.633890, 12.975858, 14.654934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.489477, 13.786358, 14.690887>,  <22.999905, 13.250595, 14.767104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.489477, 13.786358, 14.690887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.653820, 13.483678, 14.487475>,  <23.752426, 13.302070, 14.365428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.653820, 13.483678, 14.487475>,  <23.489477, 13.786358, 14.690887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.653820, 13.483678, 14.487475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129811, 0.600653, -0.788901,
		0.902411, 0.258112, 0.345011,
		0.410857, -0.756699, -0.508530,
		23.777077, 13.256668, 14.334916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028667, 14.124687, 14.386889>,  <23.489477, 13.786358, 14.690887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028667, 14.124687, 14.386889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967115, 13.798829, 14.163219>,  <23.930183, 13.603314, 14.029018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967115, 13.798829, 14.163219>,  <24.028667, 14.124687, 14.386889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.967115, 13.798829, 14.163219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094749, 0.551139, -0.829017,
		0.983536, -0.180550, -0.007622,
		-0.153880, -0.814646, -0.559172,
		23.920952, 13.554436, 13.995468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635914, 14.101962, 13.879490>,  <24.028667, 14.124687, 14.386889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635914, 14.101962, 13.879490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.342674, 13.883141, 13.717850>,  <24.166731, 13.751847, 13.620866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.342674, 13.883141, 13.717850>,  <24.635914, 14.101962, 13.879490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.342674, 13.883141, 13.717850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215252, 0.376993, -0.900857,
		0.645162, -0.747400, -0.158618,
		-0.733099, -0.547055, -0.404101,
		24.122746, 13.719024, 13.596620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919571, 13.658725, 13.331097>,  <24.635914, 14.101962, 13.879490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919571, 13.658725, 13.331097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.529371, 13.658286, 13.243098>,  <24.295252, 13.658023, 13.190299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.529371, 13.658286, 13.243098>,  <24.919571, 13.658725, 13.331097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529371, 13.658286, 13.243098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199038, 0.421603, -0.884666,
		0.093721, -0.906780, -0.411056,
		-0.975500, -0.001096, -0.219997,
		24.236721, 13.657957, 13.177099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725401, 13.281427, 12.610140>,  <24.919571, 13.658725, 13.331097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725401, 13.281427, 12.610140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.416479, 13.518746, 12.700951>,  <24.231125, 13.661138, 12.755437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.416479, 13.518746, 12.700951>,  <24.725401, 13.281427, 12.610140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.416479, 13.518746, 12.700951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063709, 0.427920, -0.901568,
		-0.632047, -0.681824, -0.368284,
		-0.772307, 0.593296, 0.227028,
		24.184788, 13.696735, 12.769059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.383545, 13.276104, 11.983886>,  <24.725401, 13.281427, 12.610140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.383545, 13.276104, 11.983886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205759, 13.576817, 12.178730>,  <24.099089, 13.757244, 12.295636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205759, 13.576817, 12.178730>,  <24.383545, 13.276104, 11.983886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205759, 13.576817, 12.178730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159896, 0.601621, -0.782615,
		-0.881411, -0.269957, -0.387605,
		-0.444464, 0.751782, 0.487110,
		24.072420, 13.802351, 12.324863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937057, 13.608850, 11.516651>,  <24.383545, 13.276104, 11.983886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937057, 13.608850, 11.516651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.021456, 13.880508, 11.797860>,  <24.072094, 14.043504, 11.966585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.021456, 13.880508, 11.797860>,  <23.937057, 13.608850, 11.516651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.021456, 13.880508, 11.797860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231756, 0.663949, -0.710957,
		-0.949616, 0.312937, -0.017308,
		0.210993, 0.679148, 0.703022,
		24.084753, 14.084252, 12.008767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.658747, 14.235126, 11.260443>,  <23.937057, 13.608850, 11.516651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.658747, 14.235126, 11.260443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.922960, 14.343597, 11.540487>,  <24.081490, 14.408680, 11.708514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.922960, 14.343597, 11.540487>,  <23.658747, 14.235126, 11.260443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.922960, 14.343597, 11.540487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209415, 0.828941, -0.518654,
		-0.720998, 0.489203, 0.490757,
		0.660535, 0.271177, 0.700112,
		24.121120, 14.424951, 11.750521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.511663, 14.973248, 11.477560>,  <23.658747, 14.235126, 11.260443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.511663, 14.973248, 11.477560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.894985, 14.905075, 11.569307>,  <24.124977, 14.864171, 11.624355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.894985, 14.905075, 11.569307>,  <23.511663, 14.973248, 11.477560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.894985, 14.905075, 11.569307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266144, 0.824570, -0.499251,
		-0.104040, 0.539478, 0.835547,
		0.958302, -0.170434, 0.229367,
		24.182476, 14.853945, 11.638118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.789150, 15.612723, 11.728548>,  <23.511663, 14.973248, 11.477560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.789150, 15.612723, 11.728548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.116489, 15.411460, 11.617456>,  <24.312893, 15.290702, 11.550801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.116489, 15.411460, 11.617456>,  <23.789150, 15.612723, 11.728548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116489, 15.411460, 11.617456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179972, 0.683293, -0.707616,
		0.545814, 0.529095, 0.649728,
		0.818350, -0.503160, -0.277729,
		24.361994, 15.260512, 11.534138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183592, 16.142403, 11.636932>,  <23.789150, 15.612723, 11.728548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183592, 16.142403, 11.636932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.381998, 15.845140, 11.457293>,  <24.501041, 15.666783, 11.349508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.381998, 15.845140, 11.457293>,  <24.183592, 16.142403, 11.636932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381998, 15.845140, 11.457293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410087, 0.656386, -0.633235,
		0.765374, 0.129924, 0.630335,
		0.496015, -0.743154, -0.449101,
		24.530802, 15.622194, 11.322562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746199, 16.404272, 11.561781>,  <24.183592, 16.142403, 11.636932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746199, 16.404272, 11.561781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.768673, 16.105686, 11.296561>,  <24.782158, 15.926535, 11.137429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.768673, 16.105686, 11.296561>,  <24.746199, 16.404272, 11.561781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768673, 16.105686, 11.296561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430910, 0.617192, -0.658324,
		0.900644, -0.248728, 0.356335,
		0.056184, -0.746464, -0.663050,
		24.785528, 15.881747, 11.097646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414192, 16.443115, 11.389911>,  <24.746199, 16.404272, 11.561781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414192, 16.443115, 11.389911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.205467, 16.252260, 11.107054>,  <25.080233, 16.137747, 10.937340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.205467, 16.252260, 11.107054>,  <25.414192, 16.443115, 11.389911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205467, 16.252260, 11.107054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282339, 0.685630, -0.670966,
		0.804983, -0.549771, -0.223054,
		-0.521811, -0.477140, -0.707143,
		25.048923, 16.109118, 10.894911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897840, 16.325491, 10.761662>,  <25.414192, 16.443115, 11.389911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897840, 16.325491, 10.761662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.518909, 16.315090, 10.633981>,  <25.291550, 16.308849, 10.557372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.518909, 16.315090, 10.633981>,  <25.897840, 16.325491, 10.761662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518909, 16.315090, 10.633981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244568, 0.584756, -0.773464,
		0.206767, -0.810792, -0.547597,
		-0.947330, -0.026003, -0.319202,
		25.234711, 16.307289, 10.538220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004211, 16.344906, 10.094939>,  <25.897840, 16.325491, 10.761662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004211, 16.344906, 10.094939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.624989, 16.461416, 10.146079>,  <25.397455, 16.531322, 10.176764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.624989, 16.461416, 10.146079>,  <26.004211, 16.344906, 10.094939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624989, 16.461416, 10.146079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170336, 0.804296, -0.569292,
		-0.268652, -0.517944, -0.812133,
		-0.948057, 0.291277, 0.127851,
		25.340572, 16.548800, 10.184434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826719, 16.246857, 9.462578>,  <26.004211, 16.344906, 10.094939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826719, 16.246857, 9.462578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.559109, 16.503952, 9.611864>,  <25.398542, 16.658209, 9.701436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.559109, 16.503952, 9.611864>,  <25.826719, 16.246857, 9.462578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559109, 16.503952, 9.611864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018711, 0.516554, -0.856050,
		-0.743001, -0.565739, -0.357616,
		-0.669029, 0.642737, 0.373215,
		25.358400, 16.696774, 9.723828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.771202, 18.335001, 19.339983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612778, 17.967722, 19.337217>,  <16.517723, 17.747355, 19.335558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612778, 17.967722, 19.337217>,  <16.771202, 18.335001, 19.339983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612778, 17.967722, 19.337217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718505, -0.305217, -0.624975,
		0.571740, -0.252497, 0.780615,
		-0.396061, -0.918198, -0.006915,
		16.493959, 17.692263, 19.335142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331532, 17.856096, 19.372520>,  <16.771202, 18.335001, 19.339983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.331532, 17.856096, 19.372520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039064, 17.638653, 19.207651>,  <16.863585, 17.508186, 19.108730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039064, 17.638653, 19.207651>,  <17.331532, 17.856096, 19.372520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039064, 17.638653, 19.207651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640224, -0.338114, -0.689777,
		0.235607, -0.768224, 0.595249,
		-0.731165, -0.543609, -0.412173,
		16.819715, 17.475571, 19.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664968, 17.278147, 19.177935>,  <17.331532, 17.856096, 19.372520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.664968, 17.278147, 19.177935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324148, 17.243429, 18.971449>,  <17.119656, 17.222599, 18.847557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.324148, 17.243429, 18.971449>,  <17.664968, 17.278147, 19.177935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324148, 17.243429, 18.971449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507135, -0.381247, -0.772959,
		-0.129718, -0.920390, 0.368858,
		-0.852049, -0.086794, -0.516216,
		17.068533, 17.217390, 18.816584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685684, 16.533567, 18.986944>,  <17.664968, 17.278147, 19.177935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685684, 16.533567, 18.986944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432487, 16.736355, 18.752916>,  <17.280569, 16.858027, 18.612499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432487, 16.736355, 18.752916>,  <17.685684, 16.533567, 18.986944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432487, 16.736355, 18.752916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397219, -0.435989, -0.807546,
		-0.664485, -0.743569, 0.074599,
		-0.632990, 0.506970, -0.585069,
		17.242590, 16.888445, 18.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458431, 16.062439, 18.465427>,  <17.685684, 16.533567, 18.986944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458431, 16.062439, 18.465427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388718, 16.428923, 18.321100>,  <17.346889, 16.648813, 18.234505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388718, 16.428923, 18.321100>,  <17.458431, 16.062439, 18.465427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388718, 16.428923, 18.321100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367247, -0.279509, -0.887133,
		-0.913649, -0.287123, -0.287761,
		-0.174284, 0.916207, -0.360818,
		17.336432, 16.703785, 18.212854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065355, 16.002291, 17.856182>,  <17.458431, 16.062439, 18.465427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065355, 16.002291, 17.856182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216801, 16.363575, 17.775320>,  <17.307667, 16.580345, 17.726803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216801, 16.363575, 17.775320>,  <17.065355, 16.002291, 17.856182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216801, 16.363575, 17.775320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281227, -0.320350, -0.904593,
		-0.881796, 0.285638, -0.375295,
		0.378612, 0.903209, -0.202154,
		17.330383, 16.634539, 17.714674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812723, 16.149899, 17.206963>,  <17.065355, 16.002291, 17.856182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812723, 16.149899, 17.206963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133690, 16.383495, 17.256094>,  <17.326269, 16.523653, 17.285572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133690, 16.383495, 17.256094>,  <16.812723, 16.149899, 17.206963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133690, 16.383495, 17.256094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405149, -0.381983, -0.830628,
		-0.438161, 0.716272, -0.543112,
		0.802415, 0.583990, 0.122827,
		17.374414, 16.558693, 17.292942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811485, 16.420532, 16.555809>,  <16.812723, 16.149899, 17.206963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811485, 16.420532, 16.555809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177242, 16.499300, 16.697290>,  <17.396696, 16.546560, 16.782179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177242, 16.499300, 16.697290>,  <16.811485, 16.420532, 16.555809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177242, 16.499300, 16.697290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404687, -0.467455, -0.785948,
		0.010570, 0.861805, -0.507129,
		0.914394, 0.196921, 0.353702,
		17.451561, 16.558376, 16.803402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151606, 16.874861, 16.082972>,  <16.811485, 16.420532, 16.555809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151606, 16.874861, 16.082972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404222, 16.657684, 16.304375>,  <17.555792, 16.527378, 16.437216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404222, 16.657684, 16.304375>,  <17.151606, 16.874861, 16.082972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404222, 16.657684, 16.304375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424313, -0.355474, -0.832824,
		0.648932, 0.760824, 0.005881,
		0.631542, -0.542941, 0.553506,
		17.593685, 16.494802, 16.470427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759003, 16.798475, 15.687643>,  <17.151606, 16.874861, 16.082972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759003, 16.798475, 15.687643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832600, 16.516485, 15.961623>,  <17.876759, 16.347292, 16.126011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832600, 16.516485, 15.961623>,  <17.759003, 16.798475, 15.687643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832600, 16.516485, 15.961623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460221, -0.553958, -0.693778,
		0.868529, 0.442879, 0.222519,
		0.183993, -0.704974, 0.684951,
		17.887798, 16.304993, 16.167109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418774, 16.552105, 15.560478>,  <17.759003, 16.798475, 15.687643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418774, 16.552105, 15.560478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218061, 16.265583, 15.754436>,  <18.097633, 16.093670, 15.870811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218061, 16.265583, 15.754436>,  <18.418774, 16.552105, 15.560478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218061, 16.265583, 15.754436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305828, -0.671285, -0.675164,
		0.809125, -0.190490, 0.555904,
		-0.501782, -0.716303, 0.484897,
		18.067526, 16.050692, 15.899905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878283, 15.940253, 15.550702>,  <18.418774, 16.552105, 15.560478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878283, 15.940253, 15.550702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.510609, 15.806165, 15.633385>,  <18.290005, 15.725712, 15.682994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.510609, 15.806165, 15.633385>,  <18.878283, 15.940253, 15.550702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510609, 15.806165, 15.633385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061970, -0.641437, -0.764668,
		0.388923, -0.690061, 0.610373,
		-0.919184, -0.335222, 0.206706,
		18.234854, 15.705598, 15.695396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552423, 15.481123, 16.162064>,  <18.878283, 15.940253, 15.550702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552423, 15.481123, 16.162064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749001, 15.324429, 15.850930>,  <18.866947, 15.230412, 15.664249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749001, 15.324429, 15.850930>,  <18.552423, 15.481123, 16.162064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749001, 15.324429, 15.850930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197936, -0.819517, 0.537785,
		-0.848120, -0.418252, -0.325206,
		0.491441, -0.391736, -0.777836,
		18.896433, 15.206908, 15.617579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454044, 14.800411, 15.936983>,  <18.552423, 15.481123, 16.162064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454044, 14.800411, 15.936983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217014, 14.531579, 16.114595>,  <18.074797, 14.370279, 16.221163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217014, 14.531579, 16.114595>,  <18.454044, 14.800411, 15.936983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217014, 14.531579, 16.114595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803643, -0.455699, 0.382748,
		-0.054892, 0.583649, 0.810148,
		-0.592574, -0.672080, 0.444032,
		18.039242, 14.329955, 16.247805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987516, 14.607418, 16.518976>,  <18.454044, 14.800411, 15.936983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987516, 14.607418, 16.518976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.264479, 14.419047, 16.737629>,  <19.430656, 14.306025, 16.868820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.264479, 14.419047, 16.737629>,  <18.987516, 14.607418, 16.518976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264479, 14.419047, 16.737629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596508, 0.052583, 0.800883,
		-0.405901, -0.880603, -0.244504,
		0.692403, -0.470928, 0.546630,
		19.472200, 14.277769, 16.901619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661110, 13.988712, 16.869709>,  <18.987516, 14.607418, 16.518976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661110, 13.988712, 16.869709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984657, 14.106210, 17.073454>,  <19.178785, 14.176708, 17.195700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984657, 14.106210, 17.073454>,  <18.661110, 13.988712, 16.869709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984657, 14.106210, 17.073454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456160, -0.233120, 0.858821,
		0.371016, -0.927022, -0.054569,
		0.808867, 0.293745, 0.509361,
		19.227318, 14.194333, 17.226263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689856, 13.433729, 17.316824>,  <18.661110, 13.988712, 16.869709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689856, 13.433729, 17.316824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916641, 13.727078, 17.466871>,  <19.052713, 13.903088, 17.556900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916641, 13.727078, 17.466871>,  <18.689856, 13.433729, 17.316824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916641, 13.727078, 17.466871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347662, -0.199801, 0.916084,
		0.746780, -0.649803, 0.141686,
		0.566965, 0.733373, 0.375119,
		19.086731, 13.947090, 17.579407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882994, 13.213282, 17.973341>,  <18.689856, 13.433729, 17.316824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882994, 13.213282, 17.973341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961132, 13.605452, 17.983200>,  <19.008015, 13.840754, 17.989117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961132, 13.605452, 17.983200>,  <18.882994, 13.213282, 17.973341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961132, 13.605452, 17.983200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383989, 0.053334, 0.921796,
		0.902437, -0.189534, 0.386891,
		0.195346, 0.980425, 0.024649,
		19.019735, 13.899579, 17.990595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887823, 13.187670, 18.674595>,  <18.882994, 13.213282, 17.973341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887823, 13.187670, 18.674595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889885, 13.571588, 18.562330>,  <18.891123, 13.801938, 18.494972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889885, 13.571588, 18.562330>,  <18.887823, 13.187670, 18.674595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889885, 13.571588, 18.562330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236660, 0.273861, 0.932198,
		0.971579, 0.061615, 0.228557,
		0.005156, 0.959794, -0.280660,
		18.891432, 13.859526, 18.478132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215988, 13.524839, 19.294870>,  <18.887823, 13.187670, 18.674595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215988, 13.524839, 19.294870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010265, 13.765191, 19.050108>,  <18.886831, 13.909402, 18.903250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010265, 13.765191, 19.050108>,  <19.215988, 13.524839, 19.294870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010265, 13.765191, 19.050108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537746, 0.329868, 0.775897,
		0.668069, 0.728101, 0.153466,
		-0.514308, 0.600879, -0.611908,
		18.855972, 13.945455, 18.866535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274607, 14.149262, 19.642479>,  <19.215988, 13.524839, 19.294870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274607, 14.149262, 19.642479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947945, 14.127691, 19.412638>,  <18.751947, 14.114749, 19.274733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947945, 14.127691, 19.412638>,  <19.274607, 14.149262, 19.642479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.947945, 14.127691, 19.412638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577122, 0.080646, 0.812666,
		0.002514, 0.995283, -0.096983,
		-0.816654, -0.053928, -0.574603,
		18.702948, 14.111513, 19.240257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905617, 14.755959, 19.934612>,  <19.274607, 14.149262, 19.642479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905617, 14.755959, 19.934612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637121, 14.526625, 19.746685>,  <18.476025, 14.389025, 19.633928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637121, 14.526625, 19.746685>,  <18.905617, 14.755959, 19.934612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637121, 14.526625, 19.746685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684931, 0.237426, 0.688838,
		-0.283388, 0.784166, -0.552065,
		-0.671238, -0.573335, -0.469816,
		18.435749, 14.354624, 19.605740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229870, 15.183473, 19.915583>,  <18.905617, 14.755959, 19.934612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229870, 15.183473, 19.915583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125881, 14.802614, 19.851292>,  <18.063488, 14.574100, 19.812717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125881, 14.802614, 19.851292>,  <18.229870, 15.183473, 19.915583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125881, 14.802614, 19.851292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815816, 0.127529, 0.564075,
		-0.516585, 0.277767, -0.809929,
		-0.259971, -0.952146, -0.160727,
		18.047890, 14.516971, 19.803074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595676, 15.233760, 19.737719>,  <18.229870, 15.183473, 19.915583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595676, 15.233760, 19.737719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620859, 14.851188, 19.851755>,  <17.635969, 14.621644, 19.920177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620859, 14.851188, 19.851755>,  <17.595676, 15.233760, 19.737719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620859, 14.851188, 19.851755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864671, 0.090375, 0.494143,
		-0.498378, -0.277621, -0.821307,
		0.062959, -0.956430, 0.285092,
		17.639748, 14.564259, 19.937283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972198, 14.941732, 19.561708>,  <17.595676, 15.233760, 19.737719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972198, 14.941732, 19.561708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127693, 14.726624, 19.860958>,  <17.220989, 14.597560, 20.040508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127693, 14.726624, 19.860958>,  <16.972198, 14.941732, 19.561708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.127693, 14.726624, 19.860958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858492, 0.083359, 0.506006,
		-0.334477, -0.838961, -0.429267,
		0.388736, -0.537769, 0.748123,
		17.244314, 14.565294, 20.085396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391520, 14.579155, 19.943756>,  <16.972198, 14.941732, 19.561708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391520, 14.579155, 19.943756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689137, 14.557732, 20.210150>,  <16.867706, 14.544878, 20.369986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689137, 14.557732, 20.210150>,  <16.391520, 14.579155, 19.943756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689137, 14.557732, 20.210150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649552, 0.175464, 0.739794,
		-0.156479, -0.983028, 0.095763,
		0.744041, -0.053559, 0.665984,
		16.912348, 14.541664, 20.409945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054665, 14.384228, 20.498007>,  <16.391520, 14.579155, 19.943756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054665, 14.384228, 20.498007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396885, 14.482945, 20.680052>,  <16.602217, 14.542176, 20.789278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396885, 14.482945, 20.680052>,  <16.054665, 14.384228, 20.498007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396885, 14.482945, 20.680052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514659, 0.309961, 0.799406,
		0.056222, -0.918160, 0.392201,
		0.855549, 0.246794, 0.455113,
		16.653549, 14.556984, 20.816586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081520, 13.963389, 21.173191>,  <16.054665, 14.384228, 20.498007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081520, 13.963389, 21.173191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305405, 14.293333, 21.205019>,  <16.439735, 14.491299, 21.224115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305405, 14.293333, 21.205019>,  <16.081520, 13.963389, 21.173191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305405, 14.293333, 21.205019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425280, 0.203503, 0.881886,
		0.711238, -0.527442, 0.464699,
		0.559712, 0.824858, 0.079572,
		16.473318, 14.540791, 21.228891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848292, 13.327138, 21.223698>,  <16.081520, 13.963389, 21.173191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848292, 13.327138, 21.223698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489958, 13.149593, 21.232332>,  <15.274958, 13.043067, 21.237513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489958, 13.149593, 21.232332>,  <15.848292, 13.327138, 21.223698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489958, 13.149593, 21.232332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147183, -0.342190, -0.928032,
		0.419304, -0.828187, 0.371875,
		-0.895836, -0.443861, 0.021587,
		15.221207, 13.016435, 21.238808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904959, 12.622487, 21.069407>,  <15.848292, 13.327138, 21.223698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904959, 12.622487, 21.069407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522595, 12.707067, 20.987894>,  <15.293178, 12.757815, 20.938986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522595, 12.707067, 20.987894>,  <15.904959, 12.622487, 21.069407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522595, 12.707067, 20.987894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144561, -0.265200, -0.953295,
		-0.255590, -0.940728, 0.222945,
		-0.955916, 0.211424, -0.203775,
		15.235823, 12.770503, 20.926760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676154, 12.022842, 20.639336>,  <15.904959, 12.622487, 21.069407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676154, 12.022842, 20.639336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405934, 12.309426, 20.569685>,  <15.243803, 12.481377, 20.527895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.405934, 12.309426, 20.569685>,  <15.676154, 12.022842, 20.639336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.405934, 12.309426, 20.569685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018145, -0.219940, -0.975345,
		-0.737092, -0.662053, 0.135579,
		-0.675549, 0.716459, -0.174129,
		15.203270, 12.524364, 20.517447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188396, 11.770688, 20.228117>,  <15.676154, 12.022842, 20.639336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188396, 11.770688, 20.228117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099636, 12.155934, 20.167233>,  <15.046380, 12.387082, 20.130701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099636, 12.155934, 20.167233>,  <15.188396, 11.770688, 20.228117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.099636, 12.155934, 20.167233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071881, -0.171835, -0.982500,
		-0.972417, -0.207074, 0.107360,
		-0.221899, 0.963116, -0.152211,
		15.033067, 12.444869, 20.121569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516672, 11.719536, 19.982290>,  <15.188396, 11.770688, 20.228117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516672, 11.719536, 19.982290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688158, 12.065167, 19.876787>,  <14.791050, 12.272547, 19.813486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688158, 12.065167, 19.876787>,  <14.516672, 11.719536, 19.982290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688158, 12.065167, 19.876787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117532, -0.236124, -0.964589,
		-0.895762, 0.444534, 0.000326,
		0.428716, 0.864080, -0.263758,
		14.816772, 12.324391, 19.797659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236256, 11.897317, 19.287876>,  <14.516672, 11.719536, 19.982290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236256, 11.897317, 19.287876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554308, 12.139038, 19.308210>,  <14.745139, 12.284071, 19.320412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554308, 12.139038, 19.308210>,  <14.236256, 11.897317, 19.287876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554308, 12.139038, 19.308210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140874, -0.102521, -0.984705,
		-0.589848, 0.790132, -0.166648,
		0.795132, 0.604302, 0.050837,
		14.792848, 12.320329, 19.323462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133954, 12.370391, 18.861830>,  <14.236256, 11.897317, 19.287876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133954, 12.370391, 18.861830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530797, 12.405286, 18.897854>,  <14.768903, 12.426223, 18.919468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530797, 12.405286, 18.897854>,  <14.133954, 12.370391, 18.861830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530797, 12.405286, 18.897854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090953, -0.006280, -0.995835,
		-0.086308, 0.996168, -0.014165,
		0.992108, 0.087237, 0.090063,
		14.828429, 12.431458, 18.924873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301727, 12.891227, 18.367836>,  <14.133954, 12.370391, 18.861830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301727, 12.891227, 18.367836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630600, 12.671873, 18.428883>,  <14.827924, 12.540261, 18.465511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630600, 12.671873, 18.428883>,  <14.301727, 12.891227, 18.367836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630600, 12.671873, 18.428883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136289, -0.070671, -0.988145,
		0.552668, 0.833235, 0.016634,
		0.822182, -0.548383, 0.152619,
		14.877254, 12.507358, 18.474669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846896, 13.228295, 17.926832>,  <14.301727, 12.891227, 18.367836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.846896, 13.228295, 17.926832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964827, 12.853980, 18.004168>,  <15.035584, 12.629391, 18.050570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964827, 12.853980, 18.004168>,  <14.846896, 13.228295, 17.926832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964827, 12.853980, 18.004168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157086, -0.152114, -0.975800,
		0.942551, 0.318061, 0.102152,
		0.294825, -0.935788, 0.193338,
		15.053274, 12.573244, 18.062168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522377, 13.210829, 17.665331>,  <14.846896, 13.228295, 17.926832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.522377, 13.210829, 17.665331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391442, 12.834272, 17.697910>,  <15.312881, 12.608338, 17.717457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391442, 12.834272, 17.697910>,  <15.522377, 13.210829, 17.665331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391442, 12.834272, 17.697910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145327, -0.135328, -0.980085,
		0.933665, -0.308982, 0.181108,
		-0.327338, -0.941391, 0.081448,
		15.293241, 12.551855, 17.722345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.048254, 12.899377, 17.226471>,  <15.522377, 13.210829, 17.665331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.048254, 12.899377, 17.226471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.734733, 12.653957, 17.264860>,  <15.546619, 12.506705, 17.287893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.734733, 12.653957, 17.264860>,  <16.048254, 12.899377, 17.226471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734733, 12.653957, 17.264860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041705, -0.206197, -0.977622,
		0.619607, -0.762260, 0.187206,
		-0.783804, -0.613549, 0.095971,
		15.499592, 12.469893, 17.293652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283110, 12.327950, 16.796335>,  <16.048254, 12.899377, 17.226471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283110, 12.327950, 16.796335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885641, 12.320589, 16.840662>,  <15.647161, 12.316172, 16.867258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885641, 12.320589, 16.840662>,  <16.283110, 12.327950, 16.796335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885641, 12.320589, 16.840662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100543, -0.294246, -0.950426,
		0.050100, -0.955552, 0.290534,
		-0.993670, -0.018405, 0.110816,
		15.587540, 12.315068, 16.873907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.125638, 15.059467, 25.472208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.415799, 14.917761, 25.708271>,  <12.589896, 14.832737, 25.849909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.415799, 14.917761, 25.708271>,  <12.125638, 15.059467, 25.472208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415799, 14.917761, 25.708271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471065, -0.369642, -0.800914,
		0.501884, 0.858987, -0.101257,
		0.725404, -0.354267, 0.590156,
		12.633420, 14.811481, 25.885319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810788, 15.171266, 25.135847>,  <12.125638, 15.059467, 25.472208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.810788, 15.171266, 25.135847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.892972, 14.885907, 25.403833>,  <12.942283, 14.714692, 25.564625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.892972, 14.885907, 25.403833>,  <12.810788, 15.171266, 25.135847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892972, 14.885907, 25.403833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538445, -0.489246, -0.686087,
		0.817229, 0.501703, 0.283604,
		0.205460, -0.713395, 0.669965,
		12.954610, 14.671888, 25.604822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.542426, 15.089333, 25.143202>,  <12.810788, 15.171266, 25.135847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.542426, 15.089333, 25.143202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.393443, 14.742383, 25.275227>,  <13.304053, 14.534213, 25.354441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.393443, 14.742383, 25.275227>,  <13.542426, 15.089333, 25.143202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.393443, 14.742383, 25.275227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667465, -0.497464, -0.554094,
		0.644799, 0.013927, 0.764225,
		-0.372457, -0.867373, 0.330060,
		13.281706, 14.482171, 25.374245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183776, 14.664740, 25.457691>,  <13.542426, 15.089333, 25.143202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183776, 14.664740, 25.457691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.870131, 14.443171, 25.345734>,  <13.681945, 14.310229, 25.278559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.870131, 14.443171, 25.345734>,  <14.183776, 14.664740, 25.457691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870131, 14.443171, 25.345734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565365, -0.451512, -0.690289,
		0.255993, -0.699504, 0.667205,
		-0.784111, -0.553923, -0.279892,
		13.634898, 14.276994, 25.261766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525723, 14.056288, 25.262987>,  <14.183776, 14.664740, 25.457691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525723, 14.056288, 25.262987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.167143, 14.014161, 25.090807>,  <13.951995, 13.988885, 24.987499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.167143, 14.014161, 25.090807>,  <14.525723, 14.056288, 25.262987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167143, 14.014161, 25.090807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410570, -0.562930, -0.717316,
		-0.166769, -0.819767, 0.547877,
		-0.896449, -0.105316, -0.430451,
		13.898209, 13.982567, 24.961672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358483, 13.375299, 25.321800>,  <14.525723, 14.056288, 25.262987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358483, 13.375299, 25.321800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.173656, 13.551045, 25.013657>,  <14.062760, 13.656493, 24.828772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.173656, 13.551045, 25.013657>,  <14.358483, 13.375299, 25.321800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173656, 13.551045, 25.013657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482837, -0.603987, -0.634089,
		-0.743883, -0.664949, 0.066940,
		-0.462068, 0.439367, -0.770357,
		14.035036, 13.682856, 24.782549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392833, 12.904758, 24.903147>,  <14.358483, 13.375299, 25.321800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392833, 12.904758, 24.903147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.285422, 13.182348, 24.635925>,  <14.220976, 13.348902, 24.475592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.285422, 13.182348, 24.635925>,  <14.392833, 12.904758, 24.903147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285422, 13.182348, 24.635925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313436, -0.592836, -0.741824,
		-0.910852, -0.408591, -0.058325,
		-0.268526, 0.693973, -0.668053,
		14.204865, 13.390540, 24.435509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.035154, 12.584339, 24.364756>,  <14.392833, 12.904758, 24.903147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.035154, 12.584339, 24.364756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.196539, 12.917823, 24.213945>,  <14.293369, 13.117913, 24.123459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.196539, 12.917823, 24.213945>,  <14.035154, 12.584339, 24.364756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196539, 12.917823, 24.213945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271878, -0.502675, -0.820610,
		-0.873671, 0.228579, -0.429477,
		0.403461, 0.833708, -0.377027,
		14.317577, 13.167935, 24.100838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086782, 12.400688, 23.699348>,  <14.035154, 12.584339, 24.364756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086782, 12.400688, 23.699348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.282276, 12.747195, 23.657938>,  <14.399572, 12.955100, 23.633093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.282276, 12.747195, 23.657938>,  <14.086782, 12.400688, 23.699348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282276, 12.747195, 23.657938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409787, -0.332696, -0.849346,
		-0.770204, 0.372681, -0.517586,
		0.488734, 0.866269, -0.103524,
		14.428896, 13.007076, 23.626881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894539, 12.697821, 23.012762>,  <14.086782, 12.400688, 23.699348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.894539, 12.697821, 23.012762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.238750, 12.872930, 23.116955>,  <14.445276, 12.977995, 23.179470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.238750, 12.872930, 23.116955>,  <13.894539, 12.697821, 23.012762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.238750, 12.872930, 23.116955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304574, -0.032277, -0.951942,
		-0.408325, 0.898507, -0.161108,
		0.860526, 0.437771, 0.260482,
		14.496907, 13.004261, 23.195099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887881, 13.332852, 22.522856>,  <13.894539, 12.697821, 23.012762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887881, 13.332852, 22.522856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.263465, 13.258198, 22.638456>,  <14.488815, 13.213406, 22.707817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.263465, 13.258198, 22.638456>,  <13.887881, 13.332852, 22.522856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263465, 13.258198, 22.638456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307817, 0.080623, -0.948024,
		0.153635, 0.979116, 0.133151,
		0.938960, -0.186635, 0.289002,
		14.545153, 13.202208, 22.725157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194094, 13.776163, 22.187771>,  <13.887881, 13.332852, 22.522856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194094, 13.776163, 22.187771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.471910, 13.511681, 22.301205>,  <14.638599, 13.352991, 22.369265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.471910, 13.511681, 22.301205>,  <14.194094, 13.776163, 22.187771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471910, 13.511681, 22.301205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285043, -0.109018, -0.952295,
		0.660579, 0.742241, 0.112755,
		0.694540, -0.661206, 0.283586,
		14.680271, 13.313319, 22.386280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906794, 14.029843, 21.897985>,  <14.194094, 13.776163, 22.187771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906794, 14.029843, 21.897985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.920801, 13.634272, 21.955662>,  <14.929206, 13.396929, 21.990269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.920801, 13.634272, 21.955662>,  <14.906794, 14.029843, 21.897985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920801, 13.634272, 21.955662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403184, -0.118039, -0.907474,
		0.914449, 0.089915, 0.394587,
		0.035019, -0.988930, 0.144193,
		14.931307, 13.337593, 21.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596611, 13.743643, 21.745886>,  <14.906794, 14.029843, 21.897985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596611, 13.743643, 21.745886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.347485, 13.432143, 21.715811>,  <15.198009, 13.245244, 21.697765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.347485, 13.432143, 21.715811>,  <15.596611, 13.743643, 21.745886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347485, 13.432143, 21.715811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288788, -0.139514, -0.947173,
		0.727120, -0.611627, 0.311785,
		-0.622815, -0.778748, -0.075187,
		15.160640, 13.198519, 21.693254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289240, 13.890390, 21.934904>,  <15.596611, 13.743643, 21.745886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289240, 13.890390, 21.934904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.383932, 14.257444, 21.807215>,  <16.440748, 14.477676, 21.730600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.383932, 14.257444, 21.807215>,  <16.289240, 13.890390, 21.934904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383932, 14.257444, 21.807215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291608, 0.380523, 0.877591,
		0.926781, -0.114666, 0.357672,
		0.236733, 0.917635, -0.319224,
		16.454952, 14.532735, 21.711447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616842, 14.247585, 22.460159>,  <16.289240, 13.890390, 21.934904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616842, 14.247585, 22.460159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.479202, 14.553677, 22.242529>,  <16.396618, 14.737331, 22.111950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.479202, 14.553677, 22.242529>,  <16.616842, 14.247585, 22.460159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479202, 14.553677, 22.242529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394241, 0.408156, 0.823397,
		0.852155, 0.497830, 0.161237,
		-0.344103, 0.765228, -0.544077,
		16.375971, 14.783245, 22.079306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850025, 14.929154, 22.766159>,  <16.616842, 14.247585, 22.460159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850025, 14.929154, 22.766159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.518511, 15.014055, 22.559059>,  <16.319603, 15.064996, 22.434799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.518511, 15.014055, 22.559059>,  <16.850025, 14.929154, 22.766159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518511, 15.014055, 22.559059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293753, 0.622486, 0.725411,
		0.476262, 0.753300, -0.453557,
		-0.828784, 0.212252, -0.517751,
		16.269875, 15.077731, 22.403734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618801, 15.634175, 23.008951>,  <16.850025, 14.929154, 22.766159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618801, 15.634175, 23.008951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298471, 15.532508, 22.792036>,  <16.106274, 15.471507, 22.661888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298471, 15.532508, 22.792036>,  <16.618801, 15.634175, 23.008951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298471, 15.532508, 22.792036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578160, 0.564308, 0.589312,
		0.156232, 0.785465, -0.598863,
		-0.800827, -0.254169, -0.542287,
		16.058224, 15.456257, 22.629351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249609, 16.261484, 22.707691>,  <16.618801, 15.634175, 23.008951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249609, 16.261484, 22.707691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.980245, 15.967916, 22.743195>,  <15.818625, 15.791776, 22.764498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.980245, 15.967916, 22.743195>,  <16.249609, 16.261484, 22.707691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980245, 15.967916, 22.743195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557003, 0.582656, 0.591828,
		-0.486070, 0.349104, -0.801163,
		-0.673412, -0.733920, 0.088760,
		15.778221, 15.747741, 22.769823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634762, 16.566969, 22.618431>,  <16.249609, 16.261484, 22.707691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634762, 16.566969, 22.618431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.525756, 16.221287, 22.787609>,  <15.460352, 16.013878, 22.889116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.525756, 16.221287, 22.787609>,  <15.634762, 16.566969, 22.618431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.525756, 16.221287, 22.787609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519611, 0.502156, 0.691263,
		-0.809778, -0.031387, -0.585897,
		-0.272515, -0.864207, 0.422943,
		15.444001, 15.962025, 22.914492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.838329, 16.531664, 22.614243>,  <15.634762, 16.566969, 22.618431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.838329, 16.531664, 22.614243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.020611, 16.322992, 22.902739>,  <15.129980, 16.197790, 23.075836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.020611, 16.322992, 22.902739>,  <14.838329, 16.531664, 22.614243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020611, 16.322992, 22.902739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547038, 0.475058, 0.689252,
		-0.702199, -0.708640, -0.068893,
		0.455704, -0.521679, 0.721238,
		15.157322, 16.166489, 23.119110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.273713, 16.557339, 23.140703>,  <14.838329, 16.531664, 22.614243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.273713, 16.557339, 23.140703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.610804, 16.440622, 23.321667>,  <14.813058, 16.370592, 23.430244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.610804, 16.440622, 23.321667>,  <14.273713, 16.557339, 23.140703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610804, 16.440622, 23.321667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252848, 0.527375, 0.811137,
		-0.475271, -0.797956, 0.370654,
		0.842725, -0.291791, 0.452408,
		14.863621, 16.353085, 23.457390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067284, 16.602448, 23.763777>,  <14.273713, 16.557339, 23.140703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067284, 16.602448, 23.763777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.460086, 16.572262, 23.833023>,  <14.695767, 16.554150, 23.874571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.460086, 16.572262, 23.833023>,  <14.067284, 16.602448, 23.763777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460086, 16.572262, 23.833023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124845, 0.428384, 0.894931,
		-0.141695, -0.900440, 0.411255,
		0.982006, -0.075464, 0.173115,
		14.754687, 16.549623, 23.884958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.118341, 16.273987, 24.415556>,  <14.067284, 16.602448, 23.763777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.118341, 16.273987, 24.415556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.456752, 16.481586, 24.366762>,  <14.659799, 16.606146, 24.337486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.456752, 16.481586, 24.366762>,  <14.118341, 16.273987, 24.415556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456752, 16.481586, 24.366762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189358, 0.506400, 0.841250,
		0.498396, -0.688611, 0.526702,
		0.846017, 0.519012, -0.121994,
		14.710560, 16.637285, 24.330166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501096, 16.136522, 25.062767>,  <14.118341, 16.273987, 24.415556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501096, 16.136522, 25.062767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.652427, 16.462702, 24.887537>,  <14.743225, 16.658409, 24.782398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.652427, 16.462702, 24.887537>,  <14.501096, 16.136522, 25.062767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652427, 16.462702, 24.887537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167907, 0.525853, 0.833838,
		0.910317, -0.241907, 0.335864,
		0.378327, 0.815450, -0.438075,
		14.765924, 16.707336, 24.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921787, 16.421671, 25.543674>,  <14.501096, 16.136522, 25.062767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921787, 16.421671, 25.543674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.856602, 16.725168, 25.291405>,  <14.817491, 16.907267, 25.140043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.856602, 16.725168, 25.291405>,  <14.921787, 16.421671, 25.543674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.856602, 16.725168, 25.291405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039634, 0.643739, 0.764218,
		0.985836, 0.099544, -0.134978,
		-0.162964, 0.758743, -0.630676,
		14.807713, 16.952791, 25.102201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275039, 16.970322, 25.974257>,  <14.921787, 16.421671, 25.543674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275039, 16.970322, 25.974257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.059088, 17.134930, 25.680540>,  <14.929517, 17.233696, 25.504311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.059088, 17.134930, 25.680540>,  <15.275039, 16.970322, 25.974257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059088, 17.134930, 25.680540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378470, 0.660516, 0.648443,
		0.751859, 0.627987, -0.200849,
		-0.539878, 0.411522, -0.734290,
		14.897124, 17.258387, 25.460253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455424, 17.737432, 25.935032>,  <15.275039, 16.970322, 25.974257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455424, 17.737432, 25.935032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.081010, 17.671076, 25.810892>,  <14.856361, 17.631262, 25.736408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.081010, 17.671076, 25.810892>,  <15.455424, 17.737432, 25.935032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081010, 17.671076, 25.810892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341323, 0.642615, 0.685963,
		0.085640, 0.748015, -0.658133,
		-0.936037, -0.165890, -0.310348,
		14.800199, 17.621309, 25.717787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.255552, 15.635900, 22.062160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.451052, 15.518711, 22.390865>,  <8.568351, 15.448398, 22.588089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.451052, 15.518711, 22.390865>,  <8.255552, 15.635900, 22.062160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.451052, 15.518711, 22.390865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693792, -0.440557, -0.569703,
		0.528940, 0.848573, -0.012059,
		0.488748, -0.292972, 0.821762,
		8.597676, 15.430820, 22.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.887609, 15.934298, 21.949883>,  <8.255552, 15.635900, 22.062160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.887609, 15.934298, 21.949883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.932556, 15.635330, 22.211796>,  <8.959524, 15.455950, 22.368944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.932556, 15.635330, 22.211796>,  <8.887609, 15.934298, 21.949883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.932556, 15.635330, 22.211796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776313, -0.345290, -0.527365,
		0.620251, 0.567575, 0.541431,
		0.112369, -0.747418, 0.654782,
		8.966267, 15.411105, 22.408230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.654957, 15.853895, 22.105267>,  <8.887609, 15.934298, 21.949883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.654957, 15.853895, 22.105267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.483692, 15.502778, 22.191204>,  <9.380933, 15.292108, 22.242765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.483692, 15.502778, 22.191204>,  <9.654957, 15.853895, 22.105267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.483692, 15.502778, 22.191204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714904, -0.474426, -0.513647,
		0.552802, -0.066333, 0.830668,
		-0.428162, -0.877793, 0.214842,
		9.355244, 15.239440, 22.255657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.201186, 15.462782, 22.285913>,  <9.654957, 15.853895, 22.105267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.201186, 15.462782, 22.285913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.901395, 15.207334, 22.216120>,  <9.721519, 15.054065, 22.174244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.901395, 15.207334, 22.216120>,  <10.201186, 15.462782, 22.285913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.901395, 15.207334, 22.216120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628784, -0.604207, -0.489453,
		0.207152, -0.476546, 0.854395,
		-0.749479, -0.638621, -0.174482,
		9.676551, 15.015747, 22.163774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.547887, 14.767487, 22.405388>,  <10.201186, 15.462782, 22.285913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.547887, 14.767487, 22.405388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.211059, 14.737812, 22.191690>,  <10.008962, 14.720007, 22.063473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.211059, 14.737812, 22.191690>,  <10.547887, 14.767487, 22.405388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.211059, 14.737812, 22.191690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475350, -0.570125, -0.670074,
		-0.254874, -0.818201, 0.515350,
		-0.842070, -0.074187, -0.534243,
		9.958438, 14.715556, 22.031418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.637384, 14.123302, 22.122511>,  <10.547887, 14.767487, 22.405388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.637384, 14.123302, 22.122511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.365173, 14.301586, 21.889883>,  <10.201847, 14.408557, 21.750307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.365173, 14.301586, 21.889883>,  <10.637384, 14.123302, 22.122511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.365173, 14.301586, 21.889883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185455, -0.663092, -0.725200,
		-0.708865, -0.601374, 0.368592,
		-0.680527, 0.445712, -0.581571,
		10.161015, 14.435299, 21.715412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.533004, 13.632999, 21.692081>,  <10.637384, 14.123302, 22.122511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.533004, 13.632999, 21.692081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.365737, 13.941923, 21.500801>,  <10.265377, 14.127277, 21.386032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.365737, 13.941923, 21.500801>,  <10.533004, 13.632999, 21.692081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.365737, 13.941923, 21.500801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271663, -0.396018, -0.877137,
		-0.866797, -0.496698, -0.044206,
		-0.418166, 0.772308, -0.478202,
		10.240287, 14.173615, 21.357340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.247503, 13.350541, 21.086679>,  <10.533004, 13.632999, 21.692081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.247503, 13.350541, 21.086679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.310896, 13.738718, 21.013880>,  <10.348931, 13.971624, 20.970200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.310896, 13.738718, 21.013880>,  <10.247503, 13.350541, 21.086679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.310896, 13.738718, 21.013880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339295, -0.226630, -0.912972,
		-0.927234, 0.082938, -0.365184,
		0.158482, 0.970443, -0.181999,
		10.358440, 14.029851, 20.959280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.277704, 13.331407, 20.373093>,  <10.247503, 13.350541, 21.086679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.277704, 13.331407, 20.373093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.424609, 13.696432, 20.445030>,  <10.512753, 13.915447, 20.488194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.424609, 13.696432, 20.445030>,  <10.277704, 13.331407, 20.373093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.424609, 13.696432, 20.445030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498052, -0.029648, -0.866640,
		-0.785533, 0.407856, -0.465394,
		0.367262, 0.912565, 0.179844,
		10.534788, 13.970201, 20.498983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.157471, 13.668581, 19.692577>,  <10.277704, 13.331407, 20.373093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.157471, 13.668581, 19.692577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.438075, 13.886213, 19.876690>,  <10.606438, 14.016792, 19.987158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.438075, 13.886213, 19.876690>,  <10.157471, 13.668581, 19.692577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.438075, 13.886213, 19.876690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488890, 0.102524, -0.866300,
		-0.518526, 0.832746, -0.194074,
		0.701510, 0.544080, 0.460283,
		10.648528, 14.049438, 20.014774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.206923, 14.253683, 19.383623>,  <10.157471, 13.668581, 19.692577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.206923, 14.253683, 19.383623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.574797, 14.213745, 19.535526>,  <10.795521, 14.189782, 19.626669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.574797, 14.213745, 19.535526>,  <10.206923, 14.253683, 19.383623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574797, 14.213745, 19.535526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375270, -0.061168, -0.924895,
		0.115574, 0.993121, -0.018787,
		0.919682, -0.099844, 0.379758,
		10.850701, 14.183792, 19.649454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587244, 14.441239, 18.868917>,  <10.206923, 14.253683, 19.383623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.587244, 14.441239, 18.868917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.885138, 14.284105, 19.084715>,  <11.063873, 14.189825, 19.214193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.885138, 14.284105, 19.084715>,  <10.587244, 14.441239, 18.868917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885138, 14.284105, 19.084715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521047, -0.162846, -0.837849,
		0.416991, 0.905075, 0.083409,
		0.744733, -0.392836, 0.539493,
		11.108558, 14.166254, 19.246563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190631, 14.772680, 18.634224>,  <10.587244, 14.441239, 18.868917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190631, 14.772680, 18.634224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.286948, 14.424603, 18.806170>,  <11.344739, 14.215757, 18.909336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.286948, 14.424603, 18.806170>,  <11.190631, 14.772680, 18.634224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286948, 14.424603, 18.806170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618633, -0.203665, -0.758824,
		0.747871, 0.448648, 0.489289,
		0.240794, -0.870193, 0.429864,
		11.359186, 14.163546, 18.935129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905333, 14.658966, 18.681271>,  <11.190631, 14.772680, 18.634224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905333, 14.658966, 18.681271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759921, 14.286812, 18.662378>,  <11.672674, 14.063519, 18.651043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759921, 14.286812, 18.662378>,  <11.905333, 14.658966, 18.681271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759921, 14.286812, 18.662378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458829, -0.134694, -0.878256,
		0.810755, -0.340940, 0.475853,
		-0.363527, -0.930385, -0.047229,
		11.650863, 14.007696, 18.648211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688420, 14.796642, 18.912027>,  <11.905333, 14.658966, 18.681271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688420, 14.796642, 18.912027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.887132, 15.143454, 18.896687>,  <13.006359, 15.351541, 18.887482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.887132, 15.143454, 18.896687>,  <12.688420, 14.796642, 18.912027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887132, 15.143454, 18.896687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466448, 0.304002, 0.830668,
		0.731872, -0.394770, 0.555446,
		0.496779, 0.867029, -0.038351,
		13.036165, 15.403563, 18.885181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062002, 14.927592, 19.654919>,  <12.688420, 14.796642, 18.912027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062002, 14.927592, 19.654919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.015018, 15.278953, 19.469612>,  <12.986828, 15.489769, 19.358427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.015018, 15.278953, 19.469612>,  <13.062002, 14.927592, 19.654919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.015018, 15.278953, 19.469612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291008, 0.415573, 0.861750,
		0.949483, 0.236036, 0.206808,
		-0.117460, 0.878400, -0.463268,
		12.979780, 15.542473, 19.330631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.274955, 15.404157, 20.168188>,  <13.062002, 14.927592, 19.654919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.274955, 15.404157, 20.168188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.078218, 15.636191, 19.908468>,  <12.960176, 15.775413, 19.752636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.078218, 15.636191, 19.908468>,  <13.274955, 15.404157, 20.168188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078218, 15.636191, 19.908468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283114, 0.598660, 0.749302,
		0.823371, 0.552363, -0.130215,
		-0.491841, 0.580088, -0.649300,
		12.930666, 15.810218, 19.713678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510150, 16.086151, 20.283478>,  <13.274955, 15.404157, 20.168188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510150, 16.086151, 20.283478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.161374, 16.098639, 20.088032>,  <12.952108, 16.106131, 19.970764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.161374, 16.098639, 20.088032>,  <13.510150, 16.086151, 20.283478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161374, 16.098639, 20.088032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396958, 0.539110, 0.742822,
		0.286610, 0.841656, -0.457679,
		-0.871940, 0.031221, -0.488616,
		12.899792, 16.108006, 19.941446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329473, 16.782391, 20.362272>,  <13.510150, 16.086151, 20.283478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329473, 16.782391, 20.362272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.983804, 16.599228, 20.278822>,  <12.776402, 16.489330, 20.228752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.983804, 16.599228, 20.278822>,  <13.329473, 16.782391, 20.362272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.983804, 16.599228, 20.278822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457338, 0.541819, 0.705177,
		-0.209868, 0.704808, -0.677644,
		-0.864174, -0.457906, -0.208625,
		12.724551, 16.461857, 20.216234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703417, 17.263952, 20.399239>,  <13.329473, 16.782391, 20.362272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703417, 17.263952, 20.399239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.556768, 16.897303, 20.462975>,  <12.468780, 16.677313, 20.501217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.556768, 16.897303, 20.462975>,  <12.703417, 17.263952, 20.399239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.556768, 16.897303, 20.462975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556397, 0.353278, 0.752075,
		-0.745662, 0.187069, -0.639526,
		-0.366620, -0.916624, 0.159341,
		12.446782, 16.622314, 20.510777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.962267, 17.391998, 20.504930>,  <12.703417, 17.263952, 20.399239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.962267, 17.391998, 20.504930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.016407, 17.024761, 20.653948>,  <12.048891, 16.804419, 20.743359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.016407, 17.024761, 20.653948>,  <11.962267, 17.391998, 20.504930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016407, 17.024761, 20.653948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545981, 0.244650, 0.801281,
		-0.826792, -0.311855, -0.468147,
		0.135351, -0.918092, 0.372542,
		12.057013, 16.749334, 20.765711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.259179, 17.194199, 20.788071>,  <11.962267, 17.391998, 20.504930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.259179, 17.194199, 20.788071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.505226, 16.926256, 20.954407>,  <11.652854, 16.765490, 21.054209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.505226, 16.926256, 20.954407>,  <11.259179, 17.194199, 20.788071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.505226, 16.926256, 20.954407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381359, 0.208841, 0.900528,
		-0.690070, -0.712513, -0.126994,
		0.615117, -0.669858, 0.415839,
		11.689761, 16.725298, 21.079159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.848982, 16.771460, 21.249590>,  <11.259179, 17.194199, 20.788071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.848982, 16.771460, 21.249590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.231416, 16.716265, 21.353022>,  <11.460876, 16.683147, 21.415081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.231416, 16.716265, 21.353022>,  <10.848982, 16.771460, 21.249590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231416, 16.716265, 21.353022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261310, -0.001751, 0.965253,
		-0.132738, -0.990433, -0.037731,
		0.956085, -0.137985, 0.258578,
		11.518241, 16.674870, 21.430595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.865299, 16.142576, 21.747734>,  <10.848982, 16.771460, 21.249590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.865299, 16.142576, 21.747734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.184847, 16.376219, 21.805185>,  <11.376575, 16.516405, 21.839655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.184847, 16.376219, 21.805185>,  <10.865299, 16.142576, 21.747734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.184847, 16.376219, 21.805185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365288, 0.281406, 0.887342,
		0.477886, -0.761333, 0.438174,
		0.798868, 0.584108, 0.143626,
		11.424507, 16.551451, 21.848272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.049168, 16.070967, 22.386208>,  <10.865299, 16.142576, 21.747734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.049168, 16.070967, 22.386208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.209194, 16.423769, 22.286600>,  <11.305210, 16.635450, 22.226835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.209194, 16.423769, 22.286600>,  <11.049168, 16.070967, 22.386208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209194, 16.423769, 22.286600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245155, 0.364797, 0.898233,
		0.883088, -0.298306, 0.362172,
		0.400067, 0.882007, -0.249017,
		11.329214, 16.688372, 22.211895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463439, 16.261190, 22.994370>,  <11.049168, 16.070967, 22.386208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463439, 16.261190, 22.994370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.349461, 16.571056, 22.768555>,  <11.281074, 16.756975, 22.633066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.349461, 16.571056, 22.768555>,  <11.463439, 16.261190, 22.994370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.349461, 16.571056, 22.768555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235773, 0.514214, 0.824618,
		0.929094, 0.368074, 0.036122,
		-0.284946, 0.774665, -0.564535,
		11.263977, 16.803455, 22.599194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626388, 16.857513, 23.365553>,  <11.463439, 16.261190, 22.994370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626388, 16.857513, 23.365553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.343069, 16.994247, 23.118502>,  <11.173078, 17.076288, 22.970270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.343069, 16.994247, 23.118502>,  <11.626388, 16.857513, 23.365553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.343069, 16.994247, 23.118502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316357, 0.628444, 0.710617,
		0.631057, 0.698720, -0.336983,
		-0.708297, 0.341833, -0.617629,
		11.130580, 17.096798, 22.933212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.690110, 17.637289, 23.390587>,  <11.626388, 16.857513, 23.365553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.690110, 17.637289, 23.390587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.310860, 17.565451, 23.285666>,  <11.083309, 17.522348, 23.222712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.310860, 17.565451, 23.285666>,  <11.690110, 17.637289, 23.390587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.310860, 17.565451, 23.285666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312697, 0.675505, 0.667768,
		0.057261, 0.715150, -0.696622,
		-0.948125, -0.179595, -0.262305,
		11.026423, 17.511572, 23.206974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.166141, 18.105310, 22.872763>,  <11.690110, 17.637289, 23.390587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.166141, 18.105310, 22.872763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.363718, 18.396938, 23.062279>,  <12.482265, 18.571915, 23.175989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.363718, 18.396938, 23.062279>,  <12.166141, 18.105310, 22.872763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.363718, 18.396938, 23.062279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804726, -0.176952, -0.566660,
		-0.329296, 0.661171, -0.674105,
		0.493943, 0.729069, 0.473792,
		12.511901, 18.615660, 23.204416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402939, 18.630865, 22.391663>,  <12.166141, 18.105310, 22.872763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402939, 18.630865, 22.391663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.653492, 18.670013, 22.701002>,  <12.803823, 18.693502, 22.886606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.653492, 18.670013, 22.701002>,  <12.402939, 18.630865, 22.391663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653492, 18.670013, 22.701002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776942, -0.158934, -0.609180,
		0.063290, 0.982426, -0.175594,
		0.626383, 0.097871, 0.773347,
		12.841407, 18.699375, 22.933006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.939282, 19.224495, 22.280487>,  <12.402939, 18.630865, 22.391663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.939282, 19.224495, 22.280487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.113826, 18.972534, 22.537489>,  <13.218552, 18.821358, 22.691690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.113826, 18.972534, 22.537489>,  <12.939282, 19.224495, 22.280487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.113826, 18.972534, 22.537489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753944, -0.133760, -0.643177,
		0.491080, 0.765069, 0.416544,
		0.436358, -0.629903, 0.642506,
		13.244733, 18.783564, 22.730240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.584963, 19.438816, 22.411333>,  <12.939282, 19.224495, 22.280487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.584963, 19.438816, 22.411333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.573644, 19.041636, 22.457371>,  <13.566852, 18.803328, 22.484993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.573644, 19.041636, 22.457371>,  <13.584963, 19.438816, 22.411333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573644, 19.041636, 22.457371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683601, -0.103229, -0.722519,
		0.729307, 0.058231, 0.681704,
		-0.028299, -0.992951, 0.115093,
		13.565154, 18.743750, 22.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279020, 19.245995, 22.301159>,  <13.584963, 19.438816, 22.411333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279020, 19.245995, 22.301159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.088054, 18.894646, 22.291880>,  <13.973474, 18.683836, 22.286312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.088054, 18.894646, 22.291880>,  <14.279020, 19.245995, 22.301159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088054, 18.894646, 22.291880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618146, -0.316979, -0.719319,
		0.624476, -0.357754, 0.694292,
		-0.477416, -0.878371, -0.023199,
		13.944829, 18.631134, 22.284920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729621, 18.677147, 22.422754>,  <14.279020, 19.245995, 22.301159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729621, 18.677147, 22.422754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.426888, 18.522388, 22.212034>,  <14.245249, 18.429533, 22.085602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.426888, 18.522388, 22.212034>,  <14.729621, 18.677147, 22.422754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.426888, 18.522388, 22.212034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650122, -0.362434, -0.667819,
		0.067446, -0.847911, 0.525831,
		-0.756830, -0.386896, -0.526801,
		14.199840, 18.406321, 22.053993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007903, 18.077829, 22.192059>,  <14.729621, 18.677147, 22.422754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007903, 18.077829, 22.192059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.697525, 18.144384, 21.948675>,  <14.511298, 18.184317, 21.802645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.697525, 18.144384, 21.948675>,  <15.007903, 18.077829, 22.192059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697525, 18.144384, 21.948675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561486, -0.257409, -0.786431,
		-0.287479, -0.951869, 0.106309,
		-0.775944, 0.166391, -0.608461,
		14.464742, 18.194300, 21.766136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971279, 17.461035, 21.751863>,  <15.007903, 18.077829, 22.192059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971279, 17.461035, 21.751863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.767718, 17.749870, 21.564415>,  <14.645581, 17.923172, 21.451946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.767718, 17.749870, 21.564415>,  <14.971279, 17.461035, 21.751863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.767718, 17.749870, 21.564415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547122, -0.148965, -0.823691,
		-0.664586, -0.675571, -0.319263,
		-0.508903, 0.722089, -0.468620,
		14.615047, 17.966497, 21.423828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734062, 17.044861, 21.188272>,  <14.971279, 17.461035, 21.751863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734062, 17.044861, 21.188272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.707358, 17.436342, 21.110626>,  <14.691337, 17.671232, 21.064039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.707358, 17.436342, 21.110626>,  <14.734062, 17.044861, 21.188272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707358, 17.436342, 21.110626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278121, -0.168586, -0.945636,
		-0.958223, -0.117117, -0.260943,
		-0.066759, 0.978704, -0.194116,
		14.687331, 17.729954, 21.052391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.359589, 17.153629, 20.543343>,  <14.734062, 17.044861, 21.188272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.359589, 17.153629, 20.543343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.595365, 17.470821, 20.604980>,  <14.736830, 17.661137, 20.641964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.595365, 17.470821, 20.604980>,  <14.359589, 17.153629, 20.543343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595365, 17.470821, 20.604980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461024, -0.173579, -0.870245,
		-0.663339, 0.583998, -0.467897,
		0.589439, 0.792979, 0.154096,
		14.772197, 17.708715, 20.651209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603268, 17.147379, 19.938515>,  <14.359589, 17.153629, 20.543343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.603268, 17.147379, 19.938515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.806243, 17.440613, 20.119663>,  <14.928028, 17.616554, 20.228352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.806243, 17.440613, 20.119663>,  <14.603268, 17.147379, 19.938515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.806243, 17.440613, 20.119663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603947, 0.072290, -0.793739,
		-0.614617, 0.676283, -0.406063,
		0.507438, 0.733086, 0.452870,
		14.958474, 17.660540, 20.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819985, 17.779520, 19.408628>,  <14.603268, 17.147379, 19.938515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819985, 17.779520, 19.408628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.097170, 17.776897, 19.697006>,  <15.263480, 17.775324, 19.870033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.097170, 17.776897, 19.697006>,  <14.819985, 17.779520, 19.408628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.097170, 17.776897, 19.697006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717537, 0.103806, -0.688742,
		-0.070321, 0.994576, 0.076639,
		0.692961, -0.006558, 0.720945,
		15.305058, 17.774929, 19.913290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368636, 18.019567, 19.061529>,  <14.819985, 17.779520, 19.408628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368636, 18.019567, 19.061529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.534195, 17.889282, 19.401552>,  <15.633530, 17.811111, 19.605566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.534195, 17.889282, 19.401552>,  <15.368636, 18.019567, 19.061529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534195, 17.889282, 19.401552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859611, -0.167482, -0.482721,
		0.299599, 0.930516, 0.210667,
		0.413896, -0.325714, 0.850059,
		15.658364, 17.791569, 19.656570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907084, 18.410002, 19.211767>,  <15.368636, 18.019567, 19.061529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907084, 18.410002, 19.211767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.973701, 18.053659, 19.380831>,  <16.013672, 17.839853, 19.482269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.973701, 18.053659, 19.380831>,  <15.907084, 18.410002, 19.211767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973701, 18.053659, 19.380831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797907, -0.130079, -0.588578,
		0.579317, 0.435266, 0.689155,
		0.166544, -0.890855, 0.422658,
		16.023664, 17.786404, 19.507627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<6.956230, 22.163887, 6.949340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.995306, 21.997345, 6.587765>,  <7.018751, 21.897419, 6.370820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.995306, 21.997345, 6.587765>,  <6.956230, 22.163887, 6.949340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.995306, 21.997345, 6.587765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696405, 0.677462, -0.236780,
		0.710969, -0.606376, 0.356134,
		0.097690, -0.416357, -0.903938,
		7.024612, 21.872438, 6.316584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.719363, 22.026075, 6.765635>,  <6.956230, 22.163887, 6.949340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.719363, 22.026075, 6.765635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.489335, 22.098164, 6.446432>,  <7.351318, 22.141417, 6.254910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.489335, 22.098164, 6.446432>,  <7.719363, 22.026075, 6.765635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.489335, 22.098164, 6.446432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543015, 0.813668, -0.207555,
		0.611907, -0.552688, -0.565778,
		-0.575069, 0.180223, -0.798007,
		7.316814, 22.152231, 6.207030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.073107, 22.147526, 6.150517>,  <7.719363, 22.026075, 6.765635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.073107, 22.147526, 6.150517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.728756, 22.332575, 6.065784>,  <7.522147, 22.443605, 6.014944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.728756, 22.332575, 6.065784>,  <8.073107, 22.147526, 6.150517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.728756, 22.332575, 6.065784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497091, 0.853546, -0.156074,
		0.108606, -0.239660, -0.964763,
		-0.860875, 0.462624, -0.211833,
		7.470494, 22.471363, 6.002234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.426418, 22.115656, 6.854155>,  <8.073107, 22.147526, 6.150517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.426418, 22.115656, 6.854155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.699689, 22.048271, 7.138378>,  <8.863651, 22.007841, 7.308911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.699689, 22.048271, 7.138378>,  <8.426418, 22.115656, 6.854155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.699689, 22.048271, 7.138378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726005, 0.261487, -0.636035,
		-0.078654, 0.950392, 0.300946,
		0.683176, -0.168462, 0.710557,
		8.904642, 21.997732, 7.351545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.584481, 21.506418, 6.898102>,  <8.426418, 22.115656, 6.854155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.584481, 21.506418, 6.898102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.342046, 21.227760, 7.051644>,  <8.196585, 21.060566, 7.143769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.342046, 21.227760, 7.051644>,  <8.584481, 21.506418, 6.898102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.342046, 21.227760, 7.051644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785693, 0.449204, -0.425327,
		0.123872, -0.559378, -0.819605,
		-0.606088, -0.696644, 0.383855,
		8.160219, 21.018766, 7.166800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.010160, 21.125353, 6.396716>,  <8.584481, 21.506418, 6.898102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.010160, 21.125353, 6.396716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.171933, 20.769157, 6.480106>,  <9.268996, 20.555439, 6.530140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.171933, 20.769157, 6.480106>,  <9.010160, 21.125353, 6.396716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.171933, 20.769157, 6.480106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820624, -0.252703, 0.512560,
		-0.403747, -0.378375, -0.832959,
		0.404431, -0.890491, 0.208476,
		9.293262, 20.502010, 6.542649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.482817, 20.596109, 6.212056>,  <9.010160, 21.125353, 6.396716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.482817, 20.596109, 6.212056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.744667, 20.463953, 6.484028>,  <8.901777, 20.384659, 6.647211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.744667, 20.463953, 6.484028>,  <8.482817, 20.596109, 6.212056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.744667, 20.463953, 6.484028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754514, -0.230101, 0.614624,
		-0.046615, -0.915365, -0.399916,
		0.654627, -0.330393, 0.679929,
		8.941055, 20.364836, 6.688007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.165959, 20.027353, 6.542799>,  <8.482817, 20.596109, 6.212056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.165959, 20.027353, 6.542799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.459387, 20.140162, 6.790133>,  <8.635444, 20.207846, 6.938535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.459387, 20.140162, 6.790133>,  <8.165959, 20.027353, 6.542799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.459387, 20.140162, 6.790133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581794, -0.209674, 0.785845,
		0.351273, -0.936217, 0.010266,
		0.733569, 0.282019, 0.618338,
		8.679458, 20.224768, 6.975635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339965, 19.461063, 6.982737>,  <8.165959, 20.027353, 6.542799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339965, 19.461063, 6.982737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.419540, 19.799673, 7.180250>,  <8.467286, 20.002838, 7.298758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.419540, 19.799673, 7.180250>,  <8.339965, 19.461063, 6.982737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.419540, 19.799673, 7.180250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589260, -0.299275, 0.750471,
		0.783068, -0.440265, 0.439284,
		0.198939, 0.846523, 0.493783,
		8.479222, 20.053631, 7.328385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.479181, 19.251287, 7.563792>,  <8.339965, 19.461063, 6.982737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.479181, 19.251287, 7.563792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.340270, 19.623262, 7.612152>,  <8.256924, 19.846447, 7.641168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.340270, 19.623262, 7.612152>,  <8.479181, 19.251287, 7.563792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.340270, 19.623262, 7.612152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565943, -0.310634, 0.763685,
		0.747734, 0.196788, 0.634167,
		-0.347278, 0.929936, 0.120901,
		8.236087, 19.902243, 7.648422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.577735, 19.339722, 8.272446>,  <8.479181, 19.251287, 7.563792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.577735, 19.339722, 8.272446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.292746, 19.582159, 8.131006>,  <8.121752, 19.727621, 8.046143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.292746, 19.582159, 8.131006>,  <8.577735, 19.339722, 8.272446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.292746, 19.582159, 8.131006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641745, -0.359009, 0.677698,
		0.283803, 0.709763, 0.644742,
		-0.712474, 0.606093, -0.353600,
		8.079003, 19.763987, 8.024926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.352784, 19.822474, 8.917521>,  <8.577735, 19.339722, 8.272446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.352784, 19.822474, 8.917521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.059006, 19.839159, 8.646567>,  <7.882739, 19.849171, 8.483994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.059006, 19.839159, 8.646567>,  <8.352784, 19.822474, 8.917521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.059006, 19.839159, 8.646567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610806, -0.475678, 0.632966,
		-0.295814, 0.878630, 0.374838,
		-0.734445, 0.041713, -0.677385,
		7.838672, 19.851673, 8.443352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.743503, 20.124298, 9.207170>,  <8.352784, 19.822474, 8.917521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.743503, 20.124298, 9.207170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.642375, 19.873672, 8.912281>,  <7.581697, 19.723297, 8.735347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.642375, 19.873672, 8.912281>,  <7.743503, 20.124298, 9.207170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.642375, 19.873672, 8.912281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593112, -0.501641, 0.629742,
		-0.764395, 0.596468, -0.244797,
		-0.252821, -0.626564, -0.737224,
		7.566528, 19.685703, 8.691113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.983224, 20.050411, 9.244619>,  <7.743503, 20.124298, 9.207170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.983224, 20.050411, 9.244619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.118577, 19.742296, 9.028414>,  <7.199788, 19.557426, 8.898690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.118577, 19.742296, 9.028414>,  <6.983224, 20.050411, 9.244619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.118577, 19.742296, 9.028414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647961, -0.607261, 0.459762,
		-0.682382, 0.194657, -0.704602,
		0.338381, -0.770288, -0.540514,
		7.220091, 19.511209, 8.866260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.371858, 19.696838, 9.063548>,  <6.983224, 20.050411, 9.244619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.371858, 19.696838, 9.063548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.668767, 19.434908, 9.006650>,  <6.846913, 19.277750, 8.972511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.668767, 19.434908, 9.006650>,  <6.371858, 19.696838, 9.063548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.668767, 19.434908, 9.006650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577478, -0.732783, 0.359927,
		-0.339924, -0.185021, -0.922073,
		0.742274, -0.654825, -0.142245,
		6.891449, 19.238461, 8.963977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.046337, 19.141140, 8.812392>,  <6.371858, 19.696838, 9.063548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.046337, 19.141140, 8.812392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.392479, 18.996181, 8.950859>,  <6.600164, 18.909206, 9.033939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.392479, 18.996181, 8.950859>,  <6.046337, 19.141140, 8.812392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.392479, 18.996181, 8.950859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500714, -0.654346, 0.566672,
		0.021153, -0.663702, -0.747698,
		0.865354, -0.362396, 0.346166,
		6.652085, 18.887463, 9.054708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.133860, 18.386774, 8.722595>,  <6.046337, 19.141140, 8.812392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.133860, 18.386774, 8.722595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.376786, 18.483068, 9.025439>,  <6.522542, 18.540846, 9.207146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.376786, 18.483068, 9.025439>,  <6.133860, 18.386774, 8.722595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.376786, 18.483068, 9.025439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507528, -0.615611, 0.602858,
		0.611214, -0.750380, -0.251690,
		0.607316, 0.240736, 0.757109,
		6.558981, 18.555288, 9.252572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.141385, 17.747416, 9.066995>,  <6.133860, 18.386774, 8.722595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.141385, 17.747416, 9.066995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.293307, 18.020800, 9.316355>,  <6.384461, 18.184830, 9.465971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.293307, 18.020800, 9.316355>,  <6.141385, 17.747416, 9.066995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.293307, 18.020800, 9.316355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287510, -0.553310, 0.781784,
		0.879252, -0.476160, -0.013649,
		0.379807, 0.683461, 0.623399,
		6.407249, 18.225838, 9.503375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.473136, 17.289131, 9.455948>,  <6.141385, 17.747416, 9.066995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.473136, 17.289131, 9.455948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.448723, 17.637537, 9.650929>,  <6.434076, 17.846581, 9.767919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.448723, 17.637537, 9.650929>,  <6.473136, 17.289131, 9.455948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.448723, 17.637537, 9.650929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112029, -0.491256, 0.863780,
		0.991829, -0.001891, 0.127561,
		-0.061032, 0.871013, 0.487454,
		6.430414, 17.898840, 9.797166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.850086, 17.254951, 10.096208>,  <6.473136, 17.289131, 9.455948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.850086, 17.254951, 10.096208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.606430, 17.562996, 10.171969>,  <6.460236, 17.747824, 10.217426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.606430, 17.562996, 10.171969>,  <6.850086, 17.254951, 10.096208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.606430, 17.562996, 10.171969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269864, -0.425854, 0.863610,
		0.745736, 0.474946, 0.467230,
		-0.609140, 0.770113, 0.189404,
		6.423687, 17.794029, 10.228790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.848333, 17.069103, 10.752481>,  <6.850086, 17.254951, 10.096208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.848333, 17.069103, 10.752481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.567205, 17.350338, 10.709188>,  <6.398528, 17.519079, 10.683211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.567205, 17.350338, 10.709188>,  <6.848333, 17.069103, 10.752481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.567205, 17.350338, 10.709188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392858, -0.256776, 0.883022,
		0.593048, 0.663127, 0.456680,
		-0.702821, 0.703085, -0.108234,
		6.356359, 17.561264, 10.676718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.741061, 17.399385, 11.434315>,  <6.848333, 17.069103, 10.752481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.741061, 17.399385, 11.434315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.410061, 17.463278, 11.219007>,  <6.211462, 17.501614, 11.089824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.410061, 17.463278, 11.219007>,  <6.741061, 17.399385, 11.434315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.410061, 17.463278, 11.219007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560405, -0.176008, 0.809301,
		0.034531, 0.971343, 0.235160,
		-0.827499, 0.159731, -0.538268,
		6.161812, 17.511196, 11.057528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.216475, 17.791546, 11.871235>,  <6.741061, 17.399385, 11.434315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.216475, 17.791546, 11.871235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.984391, 17.627825, 11.589574>,  <5.845140, 17.529593, 11.420577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.984391, 17.627825, 11.589574>,  <6.216475, 17.791546, 11.871235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.984391, 17.627825, 11.589574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527991, -0.469264, 0.707825,
		-0.620147, 0.782473, 0.056165,
		-0.580210, -0.409301, -0.704151,
		5.810328, 17.505035, 11.378328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.552603, 17.975300, 12.117739>,  <6.216475, 17.791546, 11.871235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.552603, 17.975300, 12.117739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543088, 17.662113, 11.869096>,  <5.537380, 17.474201, 11.719910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543088, 17.662113, 11.869096>,  <5.552603, 17.975300, 12.117739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.543088, 17.662113, 11.869096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658125, -0.455782, 0.599279,
		-0.752533, 0.423349, -0.504449,
		-0.023785, -0.782968, -0.621607,
		5.535953, 17.427223, 11.682613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.855285, 17.829165, 12.087667>,  <5.552603, 17.975300, 12.117739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.855285, 17.829165, 12.087667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084968, 17.512274, 12.005047>,  <5.222778, 17.322140, 11.955475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084968, 17.512274, 12.005047>,  <4.855285, 17.829165, 12.087667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084968, 17.512274, 12.005047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497759, -0.538118, 0.680195,
		-0.650018, -0.287759, -0.703329,
		0.574207, -0.792227, -0.206551,
		5.257230, 17.274607, 11.943082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.467501, 17.311014, 12.360145>,  <4.855285, 17.829165, 12.087667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.467501, 17.311014, 12.360145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.818935, 17.124561, 12.318554>,  <5.029795, 17.012690, 12.293600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.818935, 17.124561, 12.318554>,  <4.467501, 17.311014, 12.360145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818935, 17.124561, 12.318554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299067, -0.706717, 0.641178,
		-0.372354, -0.532234, -0.760315,
		0.878585, -0.466131, -0.103975,
		5.082510, 16.984722, 12.287361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.359047, 16.600473, 12.277197>,  <4.467501, 17.311014, 12.360145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.359047, 16.600473, 12.277197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.732301, 16.623972, 12.419075>,  <4.956253, 16.638071, 12.504202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.732301, 16.623972, 12.419075>,  <4.359047, 16.600473, 12.277197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.732301, 16.623972, 12.419075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252518, -0.595163, 0.762900,
		0.255919, -0.801455, -0.540532,
		0.933135, 0.058746, 0.354695,
		5.012241, 16.641596, 12.525483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.543377, 15.844784, 12.526635>,  <4.359047, 16.600473, 12.277197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.543377, 15.844784, 12.526635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.770633, 16.116127, 12.712988>,  <4.906987, 16.278933, 12.824800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.770633, 16.116127, 12.712988>,  <4.543377, 15.844784, 12.526635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.770633, 16.116127, 12.712988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067299, -0.525930, 0.847861,
		0.820175, -0.513058, -0.253149,
		0.568140, 0.678358, 0.465883,
		4.941075, 16.319633, 12.852753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939611, 15.503417, 12.870635>,  <4.543377, 15.844784, 12.526635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939611, 15.503417, 12.870635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973943, 15.849442, 13.068342>,  <4.994542, 16.057056, 13.186967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973943, 15.849442, 13.068342>,  <4.939611, 15.503417, 12.870635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.973943, 15.849442, 13.068342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030578, -0.493579, 0.869163,
		0.995840, -0.089713, -0.015912,
		0.085829, 0.865062, 0.494269,
		4.999692, 16.108959, 13.216623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.431937, 15.401275, 13.358168>,  <4.939611, 15.503417, 12.870635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.431937, 15.401275, 13.358168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.215318, 15.711150, 13.488756>,  <5.085346, 15.897076, 13.567109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.215318, 15.711150, 13.488756>,  <5.431937, 15.401275, 13.358168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.215318, 15.711150, 13.488756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020554, -0.376028, 0.926380,
		0.840419, 0.508389, 0.187714,
		-0.541548, 0.774689, 0.326471,
		5.052854, 15.943557, 13.586698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.654764, 15.659927, 14.042162>,  <5.431937, 15.401275, 13.358168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.654764, 15.659927, 14.042162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.281783, 15.801185, 14.011631>,  <5.057995, 15.885939, 13.993312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.281783, 15.801185, 14.011631>,  <5.654764, 15.659927, 14.042162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.281783, 15.801185, 14.011631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229715, -0.416417, 0.879675,
		0.278866, 0.837787, 0.469410,
		-0.932451, 0.353142, -0.076328,
		5.002048, 15.907127, 13.988732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.235133, 15.148682, 14.106635>,  <5.654764, 15.659927, 14.042162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.235133, 15.148682, 14.106635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.596109, 14.977232, 14.123999>,  <6.812695, 14.874362, 14.134417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.596109, 14.977232, 14.123999>,  <6.235133, 15.148682, 14.106635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.596109, 14.977232, 14.123999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418537, 0.848371, -0.324182,
		0.102125, 0.310722, 0.944998,
		0.902440, -0.428624, 0.043409,
		6.866841, 14.848645, 14.137021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.637228, 15.567867, 14.484859>,  <6.235133, 15.148682, 14.106635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.637228, 15.567867, 14.484859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.893806, 15.388387, 14.235951>,  <7.047753, 15.280699, 14.086607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.893806, 15.388387, 14.235951>,  <6.637228, 15.567867, 14.484859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.893806, 15.388387, 14.235951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487949, 0.864528, -0.120401,
		0.591991, -0.226404, 0.773490,
		0.641445, -0.448700, -0.622267,
		7.086239, 15.253777, 14.049272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.274577, 15.907451, 14.647658>,  <6.637228, 15.567867, 14.484859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.274577, 15.907451, 14.647658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.311578, 15.742083, 14.285327>,  <7.333779, 15.642861, 14.067928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.311578, 15.742083, 14.285327>,  <7.274577, 15.907451, 14.647658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.311578, 15.742083, 14.285327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699774, 0.674174, -0.236232,
		0.708350, -0.612024, 0.351664,
		0.092503, -0.413420, -0.905829,
		7.339329, 15.618056, 14.013578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.921337, 15.917845, 14.651935>,  <7.274577, 15.907451, 14.647658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.921337, 15.917845, 14.651935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.780520, 15.873579, 14.280167>,  <7.696030, 15.847019, 14.057106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.780520, 15.873579, 14.280167>,  <7.921337, 15.917845, 14.651935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.780520, 15.873579, 14.280167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709700, 0.615843, -0.342146,
		0.610238, -0.780059, -0.138269,
		-0.352046, -0.110661, -0.929418,
		7.674907, 15.840380, 14.001341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.507527, 15.969835, 14.272653>,  <7.921337, 15.917845, 14.651935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.507527, 15.969835, 14.272653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.236474, 16.033310, 13.985422>,  <8.073842, 16.071396, 13.813084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.236474, 16.033310, 13.985422>,  <8.507527, 15.969835, 14.272653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.236474, 16.033310, 13.985422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592231, 0.696632, -0.404927,
		0.435977, -0.699659, -0.566041,
		-0.677633, 0.158688, -0.718075,
		8.033184, 16.080915, 13.770000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.837194, 15.936805, 13.611244>,  <8.507527, 15.969835, 14.272653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.837194, 15.936805, 13.611244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.508713, 16.147875, 13.524359>,  <8.311624, 16.274517, 13.472227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.508713, 16.147875, 13.524359>,  <8.837194, 15.936805, 13.611244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.508713, 16.147875, 13.524359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563938, 0.692335, -0.450162,
		-0.087155, -0.492170, -0.866125,
		-0.821205, 0.527674, -0.217213,
		8.262351, 16.306177, 13.459195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965517, 16.082079, 13.015696>,  <8.837194, 15.936805, 13.611244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965517, 16.082079, 13.015696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.670183, 16.343082, 13.083923>,  <8.492983, 16.499685, 13.124860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.670183, 16.343082, 13.083923>,  <8.965517, 16.082079, 13.015696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.670183, 16.343082, 13.083923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462668, 0.674052, -0.575840,
		-0.490714, -0.346246, -0.799571,
		-0.738334, 0.652509, 0.170569,
		8.448683, 16.538836, 13.135094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.866847, 16.382622, 12.383284>,  <8.965517, 16.082079, 13.015696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.866847, 16.382622, 12.383284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.731124, 16.644371, 12.653592>,  <8.649690, 16.801420, 12.815778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.731124, 16.644371, 12.653592>,  <8.866847, 16.382622, 12.383284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.731124, 16.644371, 12.653592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442470, 0.744981, -0.499223,
		-0.830115, 0.129618, -0.542318,
		-0.339308, 0.654372, 0.675772,
		8.629332, 16.840683, 12.856323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.534478, 16.923267, 12.025067>,  <8.866847, 16.382622, 12.383284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.534478, 16.923267, 12.025067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.607433, 17.078724, 12.386330>,  <8.651207, 17.171997, 12.603087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.607433, 17.078724, 12.386330>,  <8.534478, 16.923267, 12.025067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.607433, 17.078724, 12.386330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313046, 0.847809, -0.428044,
		-0.932060, 0.360800, 0.032968,
		0.182389, 0.388642, 0.903156,
		8.662149, 17.195316, 12.657276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.080288, 17.590803, 12.049365>,  <8.534478, 16.923267, 12.025067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.080288, 17.590803, 12.049365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.390639, 17.609100, 12.301054>,  <8.576850, 17.620079, 12.452067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.390639, 17.609100, 12.301054>,  <8.080288, 17.590803, 12.049365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.390639, 17.609100, 12.301054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280260, 0.868560, -0.408727,
		-0.565215, 0.493468, 0.661076,
		0.775878, 0.045745, 0.629223,
		8.623403, 17.622824, 12.489820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.025392, 18.232544, 12.242040>,  <8.080288, 17.590803, 12.049365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.025392, 18.232544, 12.242040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.396132, 18.123947, 12.345764>,  <8.618575, 18.058788, 12.407999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.396132, 18.123947, 12.345764>,  <8.025392, 18.232544, 12.242040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.396132, 18.123947, 12.345764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349989, 0.874767, -0.335097,
		-0.135861, 0.401340, 0.905797,
		0.926849, -0.271492, 0.259311,
		8.674187, 18.042500, 12.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.280703, 18.701265, 12.653543>,  <8.025392, 18.232544, 12.242040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.280703, 18.701265, 12.653543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.615501, 18.537109, 12.508759>,  <8.816381, 18.438616, 12.421888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.615501, 18.537109, 12.508759>,  <8.280703, 18.701265, 12.653543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.615501, 18.537109, 12.508759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278163, 0.888723, -0.364414,
		0.471235, 0.204329, 0.858013,
		0.836996, -0.410392, -0.361961,
		8.866600, 18.413992, 12.400171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.682379, 19.269157, 12.597917>,  <8.280703, 18.701265, 12.653543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.682379, 19.269157, 12.597917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.903813, 19.016876, 12.380383>,  <9.036674, 18.865507, 12.249864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.903813, 19.016876, 12.380383>,  <8.682379, 19.269157, 12.597917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.903813, 19.016876, 12.380383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471718, 0.775640, -0.419362,
		0.686311, -0.024382, 0.726899,
		0.553587, -0.630704, -0.543832,
		9.069890, 18.827665, 12.217234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.323227, 19.584597, 12.604081>,  <8.682379, 19.269157, 12.597917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.323227, 19.584597, 12.604081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.390519, 19.337742, 12.296616>,  <9.430894, 19.189629, 12.112137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.390519, 19.337742, 12.296616>,  <9.323227, 19.584597, 12.604081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.390519, 19.337742, 12.296616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499597, 0.725587, -0.473209,
		0.849766, -0.304414, 0.430384,
		0.168229, -0.617135, -0.768663,
		9.440988, 19.152601, 12.066017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069349, 19.550848, 12.449073>,  <9.323227, 19.584597, 12.604081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069349, 19.550848, 12.449073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.880062, 19.439646, 12.114700>,  <9.766490, 19.372925, 11.914077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.880062, 19.439646, 12.114700>,  <10.069349, 19.550848, 12.449073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.880062, 19.439646, 12.114700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506950, 0.690103, -0.516488,
		0.720464, -0.668186, -0.185633,
		-0.473216, -0.278004, -0.835931,
		9.738097, 19.356245, 11.863921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.542162, 19.458904, 11.894585>,  <10.069349, 19.550848, 12.449073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.542162, 19.458904, 11.894585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197216, 19.543957, 11.710796>,  <9.990249, 19.594988, 11.600523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197216, 19.543957, 11.710796>,  <10.542162, 19.458904, 11.894585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197216, 19.543957, 11.710796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491957, 0.566314, -0.661261,
		0.119600, -0.796289, -0.592976,
		-0.862366, 0.212632, -0.459471,
		9.938506, 19.607746, 11.572955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591823, 19.266470, 11.196407>,  <10.542162, 19.458904, 11.894585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591823, 19.266470, 11.196407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.288946, 19.527744, 11.195325>,  <10.107220, 19.684509, 11.194675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.288946, 19.527744, 11.195325>,  <10.591823, 19.266470, 11.196407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.288946, 19.527744, 11.195325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445008, 0.512823, -0.734153,
		-0.478150, -0.557099, -0.678979,
		-0.757192, 0.653187, -0.002707,
		10.061789, 19.723700, 11.194512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.406105, 19.447208, 10.470146>,  <10.591823, 19.266470, 11.196407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.406105, 19.447208, 10.470146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.257818, 19.747854, 10.688375>,  <10.168846, 19.928242, 10.819312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.257818, 19.747854, 10.688375>,  <10.406105, 19.447208, 10.470146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257818, 19.747854, 10.688375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234990, 0.644223, -0.727844,
		-0.898526, -0.141619, -0.415445,
		-0.370716, 0.751612, 0.545572,
		10.146604, 19.973337, 10.852046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.018687, 19.852619, 9.988194>,  <10.406105, 19.447208, 10.470146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.018687, 19.852619, 9.988194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.070488, 20.084940, 10.309666>,  <10.101568, 20.224333, 10.502549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.070488, 20.084940, 10.309666>,  <10.018687, 19.852619, 9.988194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.070488, 20.084940, 10.309666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399531, 0.711238, -0.578373,
		-0.907527, 0.395995, -0.139941,
		0.129501, 0.580800, 0.803680,
		10.109339, 20.259180, 10.550770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.712593, 20.490080, 9.761164>,  <10.018687, 19.852619, 9.988194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.712593, 20.490080, 9.761164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.963904, 20.558210, 10.064809>,  <10.114692, 20.599089, 10.246996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.963904, 20.558210, 10.064809>,  <9.712593, 20.490080, 9.761164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.963904, 20.558210, 10.064809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383917, 0.780781, -0.492939,
		-0.676663, 0.601140, 0.425157,
		0.628280, 0.170329, 0.759113,
		10.152389, 20.609308, 10.292542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.639435, 21.208857, 9.896751>,  <9.712593, 20.490080, 9.761164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.639435, 21.208857, 9.896751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.991340, 21.066256, 10.022560>,  <10.202482, 20.980694, 10.098045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.991340, 21.066256, 10.022560>,  <9.639435, 21.208857, 9.896751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.991340, 21.066256, 10.022560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474796, 0.692583, -0.543045,
		-0.024235, 0.627084, 0.778575,
		0.879762, -0.356504, 0.314521,
		10.255268, 20.959305, 10.116917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.059434, 18.440290, 26.004412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.781712, 18.158617, 25.944998>,  <14.615078, 17.989613, 25.909349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.781712, 18.158617, 25.944998>,  <15.059434, 18.440290, 26.004412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781712, 18.158617, 25.944998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701565, 0.616244, 0.357839,
		-0.160453, 0.352656, -0.921894,
		-0.694306, -0.704185, -0.148533,
		14.573420, 17.947361, 25.900438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.348442, 18.728960, 25.727825>,  <15.059434, 18.440290, 26.004412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.348442, 18.728960, 25.727825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.270131, 18.384611, 25.915686>,  <14.223145, 18.178001, 26.028402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.270131, 18.384611, 25.915686>,  <14.348442, 18.728960, 25.727825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270131, 18.384611, 25.915686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750589, 0.439757, 0.493184,
		-0.631100, -0.255961, -0.732255,
		-0.195778, -0.860870, 0.469652,
		14.211397, 18.126350, 26.056581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727725, 18.770147, 25.709385>,  <14.348442, 18.728960, 25.727825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727725, 18.770147, 25.709385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.758007, 18.484022, 25.987261>,  <13.776176, 18.312347, 26.153986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.758007, 18.484022, 25.987261>,  <13.727725, 18.770147, 25.709385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758007, 18.484022, 25.987261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849800, 0.318183, 0.420237,
		-0.521640, -0.622164, -0.583784,
		0.075706, -0.715313, 0.694692,
		13.780719, 18.269428, 26.195669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095559, 18.481470, 25.746029>,  <13.727725, 18.770147, 25.709385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095559, 18.481470, 25.746029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.288855, 18.403006, 26.087320>,  <13.404832, 18.355927, 26.292095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.288855, 18.403006, 26.087320>,  <13.095559, 18.481470, 25.746029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288855, 18.403006, 26.087320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866508, 0.032074, 0.498132,
		-0.125080, -0.980047, -0.154476,
		0.483238, -0.196161, 0.853230,
		13.433826, 18.344158, 26.343290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833330, 17.885946, 26.009623>,  <13.095559, 18.481470, 25.746029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833330, 17.885946, 26.009623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.008997, 18.056770, 26.325787>,  <13.114397, 18.159266, 26.515486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.008997, 18.056770, 26.325787>,  <12.833330, 17.885946, 26.009623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008997, 18.056770, 26.325787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891957, 0.312483, 0.326754,
		-0.107447, -0.848513, 0.518151,
		0.439168, 0.427060, 0.790412,
		13.140747, 18.184889, 26.562910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329469, 17.713943, 26.592266>,  <12.833330, 17.885946, 26.009623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329469, 17.713943, 26.592266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.573887, 18.015402, 26.689133>,  <12.720538, 18.196276, 26.747252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.573887, 18.015402, 26.689133>,  <12.329469, 17.713943, 26.592266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.573887, 18.015402, 26.689133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742568, 0.439730, 0.505203,
		0.274255, -0.488527, 0.828327,
		0.611046, 0.753643, 0.242166,
		12.757200, 18.241495, 26.761782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.269890, 17.763313, 27.294725>,  <12.329469, 17.713943, 26.592266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.269890, 17.763313, 27.294725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.385700, 18.128038, 27.178261>,  <12.455186, 18.346872, 27.108381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.385700, 18.128038, 27.178261>,  <12.269890, 17.763313, 27.294725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.385700, 18.128038, 27.178261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700181, 0.409160, 0.585094,
		0.652627, 0.034466, 0.756895,
		0.289525, 0.911811, -0.291162,
		12.472558, 18.401583, 27.090912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180083, 18.269976, 27.813496>,  <12.269890, 17.763313, 27.294725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180083, 18.269976, 27.813496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.248377, 18.555647, 27.541965>,  <12.289352, 18.727049, 27.379047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.248377, 18.555647, 27.541965>,  <12.180083, 18.269976, 27.813496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248377, 18.555647, 27.541965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660717, 0.594074, 0.458835,
		0.730961, 0.370172, 0.573296,
		0.170732, 0.714177, -0.678824,
		12.299597, 18.769899, 27.338318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346266, 18.897781, 28.089258>,  <12.180083, 18.269976, 27.813496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346266, 18.897781, 28.089258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.193970, 19.031803, 27.744520>,  <12.102592, 19.112215, 27.537678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.193970, 19.031803, 27.744520>,  <12.346266, 18.897781, 28.089258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.193970, 19.031803, 27.744520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395590, 0.783424, 0.479327,
		0.835791, 0.523436, -0.165737,
		-0.380740, 0.335053, -0.861845,
		12.079748, 19.132318, 27.485968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.424295, 19.631140, 28.042051>,  <12.346266, 18.897781, 28.089258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.424295, 19.631140, 28.042051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.139456, 19.566397, 27.768784>,  <11.968553, 19.527550, 27.604824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.139456, 19.566397, 27.768784>,  <12.424295, 19.631140, 28.042051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139456, 19.566397, 27.768784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552245, 0.729982, 0.402681,
		0.433522, 0.664024, -0.609205,
		-0.712098, -0.161859, -0.683167,
		11.925826, 19.517839, 27.563833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.115552, 20.294928, 27.929302>,  <12.424295, 19.631140, 28.042051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.115552, 20.294928, 27.929302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.842255, 20.049061, 27.771637>,  <11.678276, 19.901541, 27.677038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.842255, 20.049061, 27.771637>,  <12.115552, 20.294928, 27.929302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.842255, 20.049061, 27.771637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719306, 0.659434, 0.218508,
		0.125616, 0.432819, -0.892686,
		-0.683242, -0.614666, -0.394165,
		11.637282, 19.864660, 27.653387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.678807, 20.716820, 27.538229>,  <12.115552, 20.294928, 27.929302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.678807, 20.716820, 27.538229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.490475, 20.384890, 27.658031>,  <11.377475, 20.185732, 27.729912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.490475, 20.384890, 27.658031>,  <11.678807, 20.716820, 27.538229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.490475, 20.384890, 27.658031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800574, 0.544522, 0.250156,
		-0.370673, -0.121995, -0.920716,
		-0.470832, -0.829827, 0.299505,
		11.349225, 20.135941, 27.747883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.032781, 20.776644, 27.251364>,  <11.678807, 20.716820, 27.538229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.032781, 20.776644, 27.251364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.013584, 20.541969, 27.574720>,  <11.002067, 20.401165, 27.768734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.013584, 20.541969, 27.574720>,  <11.032781, 20.776644, 27.251364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.013584, 20.541969, 27.574720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757063, 0.549308, 0.353716,
		-0.651577, -0.595027, -0.470522,
		-0.047991, -0.586688, 0.808390,
		10.999187, 20.365963, 27.817238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.310641, 20.595470, 27.348106>,  <11.032781, 20.776644, 27.251364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.310641, 20.595470, 27.348106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.481377, 20.545704, 27.706398>,  <10.583817, 20.515844, 27.921373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.481377, 20.545704, 27.706398>,  <10.310641, 20.595470, 27.348106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.481377, 20.545704, 27.706398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799115, 0.411795, 0.437996,
		-0.423350, -0.902743, 0.076347,
		0.426837, -0.124416, 0.895729,
		10.609428, 20.508379, 27.975117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.119940, 21.255693, 27.093897>,  <10.310641, 20.595470, 27.348106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.119940, 21.255693, 27.093897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.773133, 21.366722, 26.928373>,  <9.565049, 21.433340, 26.829060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.773133, 21.366722, 26.928373>,  <10.119940, 21.255693, 27.093897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.773133, 21.366722, 26.928373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048734, -0.779251, -0.624814,
		-0.495891, -0.561890, 0.662096,
		-0.867016, 0.277573, -0.413807,
		9.513028, 21.449995, 26.804232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.631949, 20.644276, 27.082304>,  <10.119940, 21.255693, 27.093897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.631949, 20.644276, 27.082304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.556014, 20.915300, 26.798088>,  <9.510453, 21.077915, 26.627558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.556014, 20.915300, 26.798088>,  <9.631949, 20.644276, 27.082304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556014, 20.915300, 26.798088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154601, -0.694043, -0.703138,
		-0.969567, -0.243332, 0.027004,
		-0.189838, 0.677564, -0.710541,
		9.499063, 21.118570, 26.584927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.088839, 20.301239, 26.618467>,  <9.631949, 20.644276, 27.082304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.088839, 20.301239, 26.618467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.253865, 20.602396, 26.413355>,  <9.352881, 20.783091, 26.290287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.253865, 20.602396, 26.413355>,  <9.088839, 20.301239, 26.618467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.253865, 20.602396, 26.413355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224854, -0.629673, -0.743608,
		-0.882740, 0.191488, -0.429072,
		0.412567, 0.752891, -0.512780,
		9.377635, 20.828264, 26.259521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.144992, 20.024185, 25.999176>,  <9.088839, 20.301239, 26.618467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.144992, 20.024185, 25.999176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.365365, 20.356192, 25.964426>,  <9.497589, 20.555395, 25.943575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.365365, 20.356192, 25.964426>,  <9.144992, 20.024185, 25.999176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.365365, 20.356192, 25.964426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508040, -0.416152, -0.754131,
		-0.662094, 0.371338, -0.650953,
		0.550933, 0.830015, -0.086877,
		9.530644, 20.605196, 25.938362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.136121, 20.087481, 25.298704>,  <9.144992, 20.024185, 25.999176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.136121, 20.087481, 25.298704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.442278, 20.281284, 25.468138>,  <9.625973, 20.397566, 25.569798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.442278, 20.281284, 25.468138>,  <9.136121, 20.087481, 25.298704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.442278, 20.281284, 25.468138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599178, -0.296298, -0.743769,
		-0.234857, 0.823078, -0.517092,
		0.765394, 0.484510, 0.423583,
		9.671896, 20.426638, 25.595213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.445429, 20.464279, 24.769871>,  <9.136121, 20.087481, 25.298704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.445429, 20.464279, 24.769871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.730295, 20.439075, 25.049541>,  <9.901215, 20.423954, 25.217344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.730295, 20.439075, 25.049541>,  <9.445429, 20.464279, 24.769871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730295, 20.439075, 25.049541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676815, -0.202813, -0.707664,
		0.186392, 0.977188, -0.101791,
		0.712165, -0.063009, 0.699179,
		9.943945, 20.420172, 25.259295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.079989, 20.862650, 24.375309>,  <9.445429, 20.464279, 24.769871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.079989, 20.862650, 24.375309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.245524, 20.660450, 24.678152>,  <10.344845, 20.539131, 24.859858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.245524, 20.660450, 24.678152>,  <10.079989, 20.862650, 24.375309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.245524, 20.660450, 24.678152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703202, -0.350664, -0.618500,
		0.578140, 0.788357, 0.210349,
		0.413837, -0.505497, 0.757107,
		10.369676, 20.508801, 24.905285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.852538, 21.077278, 24.327860>,  <10.079989, 20.862650, 24.375309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.852538, 21.077278, 24.327860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.802511, 20.740673, 24.538084>,  <10.772495, 20.538710, 24.664219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.802511, 20.740673, 24.538084>,  <10.852538, 21.077278, 24.327860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802511, 20.740673, 24.538084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750970, -0.426471, -0.504149,
		0.648385, 0.331627, 0.685289,
		-0.125067, -0.841514, 0.525559,
		10.764991, 20.488218, 24.695751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.524769, 20.928091, 24.621807>,  <10.852538, 21.077278, 24.327860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.524769, 20.928091, 24.621807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.326884, 20.581964, 24.654022>,  <11.208154, 20.374289, 24.673351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.326884, 20.581964, 24.654022>,  <11.524769, 20.928091, 24.621807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326884, 20.581964, 24.654022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744539, -0.469803, -0.474286,
		0.448245, -0.174671, 0.876679,
		-0.494711, -0.865318, 0.080537,
		11.178471, 20.322369, 24.678183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.085021, 20.355227, 24.791069>,  <11.524769, 20.928091, 24.621807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.085021, 20.355227, 24.791069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.757880, 20.159338, 24.670212>,  <11.561596, 20.041805, 24.597696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.757880, 20.159338, 24.670212>,  <12.085021, 20.355227, 24.791069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.757880, 20.159338, 24.670212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574323, -0.727242, -0.375863,
		-0.035664, -0.480929, 0.876034,
		-0.817852, -0.489721, -0.302145,
		11.512525, 20.012423, 24.579569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.126444, 19.671885, 25.140993>,  <12.085021, 20.355227, 24.791069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.126444, 19.671885, 25.140993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.908007, 19.659920, 24.806116>,  <11.776944, 19.652740, 24.605190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.908007, 19.659920, 24.806116>,  <12.126444, 19.671885, 25.140993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908007, 19.659920, 24.806116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528817, -0.787391, -0.316809,
		-0.649720, -0.615727, 0.445807,
		-0.546093, -0.029913, -0.837191,
		11.744179, 19.650946, 24.554958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086803, 18.978170, 25.010847>,  <12.126444, 19.671885, 25.140993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086803, 18.978170, 25.010847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.989383, 19.159105, 24.667669>,  <11.930930, 19.267666, 24.461761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.989383, 19.159105, 24.667669>,  <12.086803, 18.978170, 25.010847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989383, 19.159105, 24.667669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319707, -0.797700, -0.511333,
		-0.915680, -0.398828, 0.049665,
		-0.243552, 0.452339, -0.857946,
		11.916317, 19.294807, 24.410286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945543, 18.359007, 24.580980>,  <12.086803, 18.978170, 25.010847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945543, 18.359007, 24.580980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.042590, 18.664181, 24.341290>,  <12.100819, 18.847284, 24.197475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.042590, 18.664181, 24.341290>,  <11.945543, 18.359007, 24.580980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.042590, 18.664181, 24.341290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559372, -0.614677, -0.556125,
		-0.792615, -0.200264, -0.575895,
		0.242618, 0.762933, -0.599225,
		12.115376, 18.893061, 24.161522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838203, 18.113991, 23.934664>,  <11.945543, 18.359007, 24.580980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838203, 18.113991, 23.934664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.112468, 18.401909, 23.891283>,  <12.277026, 18.574659, 23.865255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.112468, 18.401909, 23.891283>,  <11.838203, 18.113991, 23.934664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112468, 18.401909, 23.891283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548296, -0.608698, -0.573462,
		-0.478790, 0.333737, -0.812022,
		0.685661, 0.719796, -0.108452,
		12.318166, 18.617847, 23.858747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.189759, 18.436905, 23.533493>,  <11.838203, 18.113991, 23.934664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.189759, 18.436905, 23.533493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.946355, 18.123222, 23.484940>,  <10.800312, 17.935013, 23.455807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.946355, 18.123222, 23.484940>,  <11.189759, 18.436905, 23.533493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.946355, 18.123222, 23.484940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671676, 0.427543, 0.605028,
		-0.422570, 0.449697, -0.786897,
		-0.608511, -0.784207, -0.121384,
		10.763802, 17.887960, 23.448524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613447, 18.755001, 23.285156>,  <11.189759, 18.436905, 23.533493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613447, 18.755001, 23.285156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.516150, 18.393578, 23.426245>,  <10.457770, 18.176723, 23.510899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.516150, 18.393578, 23.426245>,  <10.613447, 18.755001, 23.285156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516150, 18.393578, 23.426245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687993, 0.417057, 0.593911,
		-0.683738, -0.098204, -0.723089,
		-0.243245, -0.903559, 0.352721,
		10.443176, 18.122509, 23.532061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.846830, 18.708876, 23.204370>,  <10.613447, 18.755001, 23.285156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.846830, 18.708876, 23.204370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.928368, 18.411945, 23.459682>,  <9.977290, 18.233788, 23.612869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.928368, 18.411945, 23.459682>,  <9.846830, 18.708876, 23.204370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928368, 18.411945, 23.459682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899598, 0.115181, 0.421256,
		-0.386227, -0.660065, -0.644316,
		0.203843, -0.742326, 0.638279,
		9.989520, 18.189247, 23.651167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.140440, 18.453390, 23.294773>,  <9.846830, 18.708876, 23.204370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.140440, 18.453390, 23.294773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.354216, 18.320509, 23.605646>,  <9.482481, 18.240780, 23.792170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.354216, 18.320509, 23.605646>,  <9.140440, 18.453390, 23.294773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.354216, 18.320509, 23.605646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825162, -0.006004, 0.564865,
		-0.182985, -0.943188, -0.277332,
		0.534438, -0.332205, 0.777184,
		9.514547, 18.220848, 23.838802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.727082, 17.904285, 23.640985>,  <9.140440, 18.453390, 23.294773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.727082, 17.904285, 23.640985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.007914, 18.000185, 23.909195>,  <9.176413, 18.057726, 24.070122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.007914, 18.000185, 23.909195>,  <8.727082, 17.904285, 23.640985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.007914, 18.000185, 23.909195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676063, -0.071335, 0.733383,
		0.223661, -0.968210, 0.112004,
		0.702079, 0.239751, 0.670526,
		9.218537, 18.072111, 24.110353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.532979, 17.425674, 24.185255>,  <8.727082, 17.904285, 23.640985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.532979, 17.425674, 24.185255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.752254, 17.713577, 24.355639>,  <8.883818, 17.886320, 24.457869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.752254, 17.713577, 24.355639>,  <8.532979, 17.425674, 24.185255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.752254, 17.713577, 24.355639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680566, 0.087854, 0.727401,
		0.486130, -0.688643, 0.538003,
		0.548186, 0.719758, 0.425958,
		8.916709, 17.929504, 24.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.420735, 17.285833, 24.934551>,  <8.532979, 17.425674, 24.185255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.420735, 17.285833, 24.934551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.538866, 17.666264, 24.898249>,  <8.609744, 17.894522, 24.876467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.538866, 17.666264, 24.898249>,  <8.420735, 17.285833, 24.934551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.538866, 17.666264, 24.898249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685980, 0.277207, 0.672747,
		0.664992, -0.136421, 0.734285,
		0.295326, 0.951076, -0.090758,
		8.627464, 17.951586, 24.871021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.327956, 16.681881, 25.276579>,  <8.420735, 17.285833, 24.934551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.327956, 16.681881, 25.276579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.958839, 16.530453, 25.247911>,  <7.737369, 16.439596, 25.230711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.958839, 16.530453, 25.247911>,  <8.327956, 16.681881, 25.276579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.958839, 16.530453, 25.247911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250997, -0.449520, -0.857282,
		0.292326, -0.809083, 0.509834,
		-0.922793, -0.378572, -0.071671,
		7.682001, 16.416882, 25.226410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.338811, 15.903368, 25.260004>,  <8.327956, 16.681881, 25.276579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.338811, 15.903368, 25.260004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.006404, 16.034460, 25.080225>,  <7.806960, 16.113115, 24.972357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.006404, 16.034460, 25.080225>,  <8.338811, 15.903368, 25.260004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.006404, 16.034460, 25.080225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189056, -0.593490, -0.782322,
		-0.523130, -0.735095, 0.431243,
		-0.831019, 0.327727, -0.449447,
		7.757099, 16.132778, 24.945391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.950394, 15.305123, 24.958405>,  <8.338811, 15.903368, 25.260004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.950394, 15.305123, 24.958405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.839890, 15.631433, 24.755154>,  <7.773588, 15.827218, 24.633204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.839890, 15.631433, 24.755154>,  <7.950394, 15.305123, 24.958405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.839890, 15.631433, 24.755154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276771, -0.438777, -0.854911,
		-0.920369, -0.376812, -0.104567,
		-0.276259, 0.815774, -0.508128,
		7.757012, 15.876164, 24.602715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.993494, 15.048924, 24.335413>,  <7.950394, 15.305123, 24.958405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.993494, 15.048924, 24.335413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.926274, 15.425720, 24.219196>,  <7.885943, 15.651798, 24.149466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.926274, 15.425720, 24.219196>,  <7.993494, 15.048924, 24.335413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.926274, 15.425720, 24.219196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244584, -0.245674, -0.937989,
		-0.954955, -0.228688, -0.189111,
		-0.168048, 0.941991, -0.290541,
		7.875860, 15.708318, 24.132034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.535512, 15.011632, 23.861624>,  <7.993494, 15.048924, 24.335413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.535512, 15.011632, 23.861624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.714940, 15.358698, 23.775887>,  <7.822596, 15.566937, 23.724443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.714940, 15.358698, 23.775887>,  <7.535512, 15.011632, 23.861624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.714940, 15.358698, 23.775887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267652, -0.359230, -0.894045,
		-0.852731, 0.343671, -0.393371,
		0.448568, 0.867666, -0.214343,
		7.849510, 15.618998, 23.711584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.443111, 15.141294, 23.139948>,  <7.535512, 15.011632, 23.861624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.443111, 15.141294, 23.139948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.766770, 15.348744, 23.250446>,  <7.960965, 15.473214, 23.316746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.766770, 15.348744, 23.250446>,  <7.443111, 15.141294, 23.139948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.766770, 15.348744, 23.250446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439851, -0.222847, -0.869983,
		-0.389634, 0.825450, -0.408433,
		0.809146, 0.518624, 0.276246,
		8.009514, 15.504332, 23.333321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.727270, 15.321856, 22.515635>,  <7.443111, 15.141294, 23.139948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.727270, 15.321856, 22.515635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.049587, 15.403037, 22.738169>,  <8.242978, 15.451745, 22.871689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.049587, 15.403037, 22.738169>,  <7.727270, 15.321856, 22.515635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.049587, 15.403037, 22.738169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587422, -0.154877, -0.794322,
		-0.075046, 0.966863, -0.244017,
		0.805793, 0.202952, 0.556334,
		8.291326, 15.463923, 22.905069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<10.536506, 17.259520, 26.720114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.695981, 17.501040, 26.444006>,  <10.791666, 17.645952, 26.278341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.695981, 17.501040, 26.444006>,  <10.536506, 17.259520, 26.720114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695981, 17.501040, 26.444006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790272, -0.608091, -0.075469,
		-0.465316, -0.515412, -0.719605,
		0.398688, 0.603801, -0.690270,
		10.815587, 17.682180, 26.236925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.105127, 17.384302, 27.471378>,  <10.536506, 17.259520, 26.720114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.105127, 17.384302, 27.471378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.000550, 17.095749, 27.214861>,  <9.937804, 16.922617, 27.060951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.000550, 17.095749, 27.214861>,  <10.105127, 17.384302, 27.471378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.000550, 17.095749, 27.214861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963703, -0.157866, -0.215303,
		0.054078, -0.674305, 0.736470,
		-0.261443, -0.721381, -0.641293,
		9.922117, 16.879335, 27.022472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.516638, 18.017374, 27.444027>,  <10.105127, 17.384302, 27.471378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.516638, 18.017374, 27.444027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.765483, 17.790806, 27.660229>,  <10.914790, 17.654865, 27.789949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.765483, 17.790806, 27.660229>,  <10.516638, 18.017374, 27.444027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765483, 17.790806, 27.660229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239182, -0.794856, -0.557670,
		0.745498, 0.217655, -0.629968,
		0.622114, -0.566419, 0.540504,
		10.952117, 17.620880, 27.822380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.058923, 17.729717, 27.059151>,  <10.516638, 18.017374, 27.444027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.058923, 17.729717, 27.059151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.998718, 17.482531, 27.367815>,  <10.962595, 17.334219, 27.553015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.998718, 17.482531, 27.367815>,  <11.058923, 17.729717, 27.059151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.998718, 17.482531, 27.367815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310196, -0.711615, -0.630383,
		0.938682, -0.334247, -0.084584,
		-0.150512, -0.617967, 0.771662,
		10.953565, 17.297140, 27.599314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.667377, 17.245741, 26.910116>,  <11.058923, 17.729717, 27.059151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.667377, 17.245741, 26.910116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.546289, 17.070366, 27.248615>,  <11.473638, 16.965141, 27.451715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.546289, 17.070366, 27.248615>,  <11.667377, 17.245741, 26.910116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.546289, 17.070366, 27.248615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399221, -0.864591, -0.305133,
		0.865439, 0.245471, 0.436760,
		-0.302717, -0.438437, 0.846247,
		11.455474, 16.938835, 27.502489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211336, 16.839972, 27.145319>,  <11.667377, 17.245741, 26.910116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211336, 16.839972, 27.145319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.894197, 16.685860, 27.334188>,  <11.703913, 16.593393, 27.447510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.894197, 16.685860, 27.334188>,  <12.211336, 16.839972, 27.145319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.894197, 16.685860, 27.334188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356003, -0.921664, -0.154267,
		0.494622, 0.045785, 0.867901,
		-0.792850, -0.385279, 0.472175,
		11.656342, 16.570276, 27.475842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.473680, 16.462307, 27.753181>,  <12.211336, 16.839972, 27.145319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.473680, 16.462307, 27.753181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.133151, 16.283913, 27.642660>,  <11.928833, 16.176876, 27.576347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.133151, 16.283913, 27.642660>,  <12.473680, 16.462307, 27.753181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.133151, 16.283913, 27.642660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501050, -0.847302, -0.176147,
		-0.155553, -0.288400, 0.944790,
		-0.851324, -0.445987, -0.276303,
		11.877754, 16.150116, 27.559769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.640262, 15.788177, 27.895773>,  <12.473680, 16.462307, 27.753181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.640262, 15.788177, 27.895773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.309191, 15.761177, 27.672920>,  <12.110548, 15.744978, 27.539209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.309191, 15.761177, 27.672920>,  <12.640262, 15.788177, 27.895773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309191, 15.761177, 27.672920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308539, -0.883975, -0.351271,
		-0.468780, -0.462635, 0.752471,
		-0.827677, -0.067498, -0.557131,
		12.060887, 15.740928, 27.505781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554819, 15.030135, 27.903008>,  <12.640262, 15.788177, 27.895773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554819, 15.030135, 27.903008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.318896, 15.158925, 27.606775>,  <12.177342, 15.236199, 27.429035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.318896, 15.158925, 27.606775>,  <12.554819, 15.030135, 27.903008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318896, 15.158925, 27.606775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218918, -0.818986, -0.530412,
		-0.777305, -0.474967, 0.412557,
		-0.589806, 0.321976, -0.740581,
		12.141954, 15.255518, 27.384602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185604, 14.403095, 27.701330>,  <12.554819, 15.030135, 27.903008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185604, 14.403095, 27.701330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.154861, 14.662747, 27.398617>,  <12.136415, 14.818539, 27.216988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.154861, 14.662747, 27.398617>,  <12.185604, 14.403095, 27.701330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.154861, 14.662747, 27.398617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138079, -0.744786, -0.652862,
		-0.987435, -0.154673, -0.032389,
		-0.076857, 0.649130, -0.756785,
		12.131804, 14.857487, 27.171581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.824790, 14.001827, 27.195913>,  <12.185604, 14.403095, 27.701330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.824790, 14.001827, 27.195913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.970330, 14.305228, 26.979658>,  <12.057654, 14.487268, 26.849905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.970330, 14.305228, 26.979658>,  <11.824790, 14.001827, 27.195913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970330, 14.305228, 26.979658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209234, -0.632143, -0.746068,
		-0.907654, 0.158337, -0.388709,
		0.363849, 0.758502, -0.540637,
		12.079485, 14.532779, 26.817467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.525469, 13.926505, 26.461815>,  <11.824790, 14.001827, 27.195913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.525469, 13.926505, 26.461815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.860985, 14.143600, 26.444530>,  <12.062295, 14.273856, 26.434160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.860985, 14.143600, 26.444530>,  <11.525469, 13.926505, 26.461815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.860985, 14.143600, 26.444530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397245, -0.664344, -0.633122,
		-0.372327, 0.513891, -0.772844,
		0.838790, 0.542737, -0.043213,
		12.112622, 14.306420, 26.431566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333933, 13.732029, 25.845518>,  <11.525469, 13.926505, 26.461815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333933, 13.732029, 25.845518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.112640, 13.401053, 25.884050>,  <10.979865, 13.202468, 25.907169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.112640, 13.401053, 25.884050>,  <11.333933, 13.732029, 25.845518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.112640, 13.401053, 25.884050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690335, 0.520111, 0.502913,
		-0.466232, 0.211728, -0.858952,
		-0.553232, -0.827439, 0.096329,
		10.946671, 13.152822, 25.912949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.682122, 13.943057, 25.904146>,  <11.333933, 13.732029, 25.845518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.682122, 13.943057, 25.904146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.668656, 13.566860, 26.039404>,  <10.660577, 13.341142, 26.120558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.668656, 13.566860, 26.039404>,  <10.682122, 13.943057, 25.904146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.668656, 13.566860, 26.039404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831667, 0.213990, 0.512384,
		-0.554253, -0.263973, -0.789381,
		-0.033664, -0.940492, 0.338142,
		10.658557, 13.284713, 26.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.973151, 13.551970, 25.692690>,  <10.682122, 13.943057, 25.904146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.973151, 13.551970, 25.692690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.122988, 13.404236, 26.032871>,  <10.212890, 13.315595, 26.236980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.122988, 13.404236, 26.032871>,  <9.973151, 13.551970, 25.692690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122988, 13.404236, 26.032871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815239, 0.305725, 0.491852,
		-0.441664, -0.877566, -0.186577,
		0.374591, -0.369338, 0.850454,
		10.235365, 13.293434, 26.288008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.383337, 13.195361, 26.046083>,  <9.973151, 13.551970, 25.692690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.383337, 13.195361, 26.046083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.656981, 13.298086, 26.319151>,  <9.821168, 13.359721, 26.482992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.656981, 13.298086, 26.319151>,  <9.383337, 13.195361, 26.046083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.656981, 13.298086, 26.319151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729272, 0.256820, 0.634197,
		-0.012454, -0.931714, 0.362980,
		0.684111, 0.256813, 0.682671,
		9.862215, 13.375130, 26.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.056801, 13.160743, 26.593985>,  <9.383337, 13.195361, 26.046083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.056801, 13.160743, 26.593985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.379960, 13.361454, 26.717609>,  <9.573855, 13.481881, 26.791784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.379960, 13.361454, 26.717609>,  <9.056801, 13.160743, 26.593985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.379960, 13.361454, 26.717609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563180, 0.502897, 0.655685,
		0.173581, -0.703785, 0.688880,
		0.807898, 0.501778, 0.309065,
		9.622329, 13.511988, 26.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.120493, 13.020881, 27.367664>,  <9.056801, 13.160743, 26.593985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.120493, 13.020881, 27.367664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.310041, 13.356597, 27.261053>,  <9.423771, 13.558026, 27.197086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.310041, 13.356597, 27.261053>,  <9.120493, 13.020881, 27.367664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.310041, 13.356597, 27.261053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531197, 0.513844, 0.673643,
		0.702337, -0.177640, 0.689324,
		0.473870, 0.839291, -0.266530,
		9.452203, 13.608384, 27.181095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.191334, 13.360183, 28.017191>,  <9.120493, 13.020881, 27.367664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.191334, 13.360183, 28.017191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.243799, 13.635418, 27.731722>,  <9.275278, 13.800559, 27.560440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.243799, 13.635418, 27.731722>,  <9.191334, 13.360183, 28.017191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.243799, 13.635418, 27.731722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484643, 0.672511, 0.559330,
		0.864822, 0.272514, 0.421686,
		0.131163, 0.688087, -0.713674,
		9.283149, 13.841845, 27.517620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.413858, 13.896747, 28.430977>,  <9.191334, 13.360183, 28.017191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.413858, 13.896747, 28.430977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.302554, 14.033690, 28.072010>,  <9.235771, 14.115857, 27.856630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.302554, 14.033690, 28.072010>,  <9.413858, 13.896747, 28.430977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.302554, 14.033690, 28.072010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451352, 0.778129, 0.436802,
		0.847851, 0.526597, -0.061999,
		-0.278262, 0.342360, -0.897418,
		9.219075, 14.136398, 27.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.513606, 14.548987, 28.463165>,  <9.413858, 13.896747, 28.430977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.513606, 14.548987, 28.463165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.259825, 14.542295, 28.154053>,  <9.107556, 14.538279, 27.968586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.259825, 14.542295, 28.154053>,  <9.513606, 14.548987, 28.463165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.259825, 14.542295, 28.154053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601958, 0.637861, 0.480395,
		0.484888, 0.769969, -0.414765,
		-0.634452, -0.016733, -0.772781,
		9.069489, 14.537274, 27.922218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253237, 15.192569, 28.459234>,  <9.513606, 14.548987, 28.463165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253237, 15.192569, 28.459234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.989006, 14.994755, 28.233288>,  <8.830467, 14.876066, 28.097719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.989006, 14.994755, 28.233288>,  <9.253237, 15.192569, 28.459234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.989006, 14.994755, 28.233288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708823, 0.658767, 0.252183,
		0.247401, 0.566976, -0.785704,
		-0.660577, -0.494535, -0.564865,
		8.790833, 14.846395, 28.063828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.957466, 15.727026, 28.237261>,  <9.253237, 15.192569, 28.459234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.957466, 15.727026, 28.237261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.710615, 15.412731, 28.220440>,  <8.562504, 15.224154, 28.210346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.710615, 15.412731, 28.220440>,  <8.957466, 15.727026, 28.237261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.710615, 15.412731, 28.220440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748788, 0.570004, 0.338248,
		-0.241803, 0.240232, -0.940117,
		-0.617129, -0.785738, -0.042054,
		8.525476, 15.177010, 28.207823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.311095, 16.096216, 27.967920>,  <8.957466, 15.727026, 28.237261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.311095, 16.096216, 27.967920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.201433, 15.731367, 28.089817>,  <8.135636, 15.512457, 28.162954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.201433, 15.731367, 28.089817>,  <8.311095, 16.096216, 27.967920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.201433, 15.731367, 28.089817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804476, 0.391147, 0.447016,
		-0.526933, -0.122606, -0.841017,
		-0.274155, -0.912125, 0.304741,
		8.119186, 15.457729, 28.181240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.663582, 15.941339, 27.684233>,  <8.311095, 16.096216, 27.967920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.663582, 15.941339, 27.684233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.681094, 15.704957, 28.006439>,  <7.691602, 15.563128, 28.199762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.681094, 15.704957, 28.006439>,  <7.663582, 15.941339, 27.684233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.681094, 15.704957, 28.006439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796904, 0.465611, 0.384903,
		-0.602517, -0.658769, -0.450551,
		0.043781, -0.590957, 0.805514,
		7.694229, 15.527670, 28.248093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.957072, 15.600634, 27.734625>,  <7.663582, 15.941339, 27.684233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.957072, 15.600634, 27.734625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.157406, 15.609351, 28.080732>,  <7.277607, 15.614582, 28.288397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.157406, 15.609351, 28.080732>,  <6.957072, 15.600634, 27.734625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.157406, 15.609351, 28.080732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740398, 0.528567, 0.415244,
		-0.448302, -0.848612, 0.280862,
		0.500835, 0.021795, 0.865268,
		7.307657, 15.615890, 28.340313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.232807, 15.800951, 27.788471>,  <6.957072, 15.600634, 27.734625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.232807, 15.800951, 27.788471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.074885, 16.152706, 27.682035>,  <5.980132, 16.363760, 27.618174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.074885, 16.152706, 27.682035>,  <6.232807, 15.800951, 27.788471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.074885, 16.152706, 27.682035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520995, -0.024268, -0.853215,
		-0.756765, -0.475486, -0.448576,
		-0.394805, 0.879389, -0.266091,
		5.956443, 16.416523, 27.602209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.031686, 15.724829, 27.123615>,  <6.232807, 15.800951, 27.788471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.031686, 15.724829, 27.123615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.137984, 16.103285, 27.197584>,  <6.201763, 16.330359, 27.241966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.137984, 16.103285, 27.197584>,  <6.031686, 15.724829, 27.123615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.137984, 16.103285, 27.197584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526384, 0.018295, -0.850050,
		-0.807650, 0.323237, -0.493172,
		0.265745, 0.946141, 0.184923,
		6.217708, 16.387127, 27.253061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.910533, 16.041016, 26.526003>,  <6.031686, 15.724829, 27.123615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.910533, 16.041016, 26.526003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.154377, 16.295265, 26.715467>,  <6.300683, 16.447815, 26.829145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.154377, 16.295265, 26.715467>,  <5.910533, 16.041016, 26.526003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.154377, 16.295265, 26.715467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485815, 0.172586, -0.856853,
		-0.626386, 0.752458, -0.203587,
		0.609610, 0.635626, 0.473661,
		6.337260, 16.485952, 26.857565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.863369, 16.717213, 26.128019>,  <5.910533, 16.041016, 26.526003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.863369, 16.717213, 26.128019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.206109, 16.678621, 26.330603>,  <6.411753, 16.655466, 26.452152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.206109, 16.678621, 26.330603>,  <5.863369, 16.717213, 26.128019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.206109, 16.678621, 26.330603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514760, 0.105205, -0.850855,
		0.028808, 0.989759, 0.139808,
		0.856850, -0.096479, 0.506458,
		6.463164, 16.649677, 26.482540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.290547, 17.343756, 25.885969>,  <5.863369, 16.717213, 26.128019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.290547, 17.343756, 25.885969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.536394, 17.070150, 26.043129>,  <6.683902, 16.905987, 26.137424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.536394, 17.070150, 26.043129>,  <6.290547, 17.343756, 25.885969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.536394, 17.070150, 26.043129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561601, 0.029664, -0.826877,
		0.553941, 0.728865, 0.402375,
		0.614617, -0.684015, 0.392899,
		6.720779, 16.864946, 26.160999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.977094, 17.559387, 25.579548>,  <6.290547, 17.343756, 25.885969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.977094, 17.559387, 25.579548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.024603, 17.186481, 25.716240>,  <7.053108, 16.962738, 25.798256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.024603, 17.186481, 25.716240>,  <6.977094, 17.559387, 25.579548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.024603, 17.186481, 25.716240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532147, -0.230799, -0.814587,
		0.838280, 0.278601, 0.468688,
		0.118772, -0.932262, 0.341731,
		7.060235, 16.906803, 25.818760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.704276, 17.382351, 25.535727>,  <6.977094, 17.559387, 25.579548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.704276, 17.382351, 25.535727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.502940, 17.036718, 25.534513>,  <7.382138, 16.829338, 25.533785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.502940, 17.036718, 25.534513>,  <7.704276, 17.382351, 25.535727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.502940, 17.036718, 25.534513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478621, -0.275878, -0.833554,
		0.719424, -0.421012, 0.552429,
		-0.503340, -0.864083, -0.003032,
		7.351938, 16.777493, 25.533604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.486645, 17.515985, 25.647507>,  <7.704276, 17.382351, 25.535727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.486645, 17.515985, 25.647507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.418035, 17.823997, 25.401701>,  <8.376868, 18.008804, 25.254217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.418035, 17.823997, 25.401701>,  <8.486645, 17.515985, 25.647507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.418035, 17.823997, 25.401701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598169, 0.414222, 0.686013,
		0.782798, 0.485252, 0.389560,
		-0.171525, 0.770032, -0.614516,
		8.366577, 18.055008, 25.217346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.597855, 18.098871, 26.158104>,  <8.486645, 17.515985, 25.647507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.597855, 18.098871, 26.158104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.415612, 18.266233, 25.843815>,  <8.306267, 18.366652, 25.655241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.415612, 18.266233, 25.843815>,  <8.597855, 18.098871, 26.158104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.415612, 18.266233, 25.843815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408871, 0.685679, 0.602220,
		0.790726, 0.595633, -0.141325,
		-0.455606, 0.418408, -0.785721,
		8.278931, 18.391756, 25.608099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.806693, 18.827541, 26.126768>,  <8.597855, 18.098871, 26.158104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.806693, 18.827541, 26.126768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.462686, 18.800791, 25.924423>,  <8.256281, 18.784740, 25.803017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.462686, 18.800791, 25.924423>,  <8.806693, 18.827541, 26.126768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.462686, 18.800791, 25.924423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447895, 0.573888, 0.685597,
		0.244459, 0.816199, -0.523507,
		-0.860018, -0.066876, -0.505863,
		8.204680, 18.780727, 25.772665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.572638, 19.503136, 25.905291>,  <8.806693, 18.827541, 26.126768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.572638, 19.503136, 25.905291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.242578, 19.280064, 25.941338>,  <8.044541, 19.146221, 25.962965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.242578, 19.280064, 25.941338>,  <8.572638, 19.503136, 25.905291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.242578, 19.280064, 25.941338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416326, 0.708153, 0.570256,
		-0.381838, 0.433028, -0.816509,
		-0.825150, -0.557679, 0.090118,
		7.995033, 19.112761, 25.968372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.048140, 19.950010, 25.618986>,  <8.572638, 19.503136, 25.905291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.048140, 19.950010, 25.618986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.869514, 19.691881, 25.866901>,  <7.762338, 19.537003, 26.015650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.869514, 19.691881, 25.866901>,  <8.048140, 19.950010, 25.618986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.869514, 19.691881, 25.866901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272122, 0.757833, 0.592991,
		-0.852367, 0.096151, -0.514029,
		-0.446565, -0.645324, 0.619787,
		7.735544, 19.498283, 26.052837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.450947, 20.394995, 25.939489>,  <8.048140, 19.950010, 25.618986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.450947, 20.394995, 25.939489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.457142, 20.037020, 26.117859>,  <7.460859, 19.822235, 26.224880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.457142, 20.037020, 26.117859>,  <7.450947, 20.394995, 25.939489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.457142, 20.037020, 26.117859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155143, 0.438425, 0.885276,
		-0.987771, -0.082892, -0.132053,
		0.015487, -0.894937, 0.445923,
		7.461788, 19.768539, 26.251637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.849385, 20.382792, 26.289133>,  <7.450947, 20.394995, 25.939489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.849385, 20.382792, 26.289133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.074312, 20.101124, 26.462545>,  <7.209268, 19.932123, 26.566593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.074312, 20.101124, 26.462545>,  <6.849385, 20.382792, 26.289133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.074312, 20.101124, 26.462545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301976, 0.313198, 0.900398,
		-0.769812, -0.637224, -0.036526,
		0.562316, -0.704167, 0.433530,
		7.243007, 19.889874, 26.592604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.539470, 20.170732, 26.967754>,  <6.849385, 20.382792, 26.289133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.539470, 20.170732, 26.967754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.898640, 20.005257, 27.027872>,  <7.114142, 19.905972, 27.063942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.898640, 20.005257, 27.027872>,  <6.539470, 20.170732, 26.967754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.898640, 20.005257, 27.027872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055322, 0.232680, 0.970979,
		-0.436657, -0.880181, 0.186043,
		0.897926, -0.413692, 0.150295,
		7.168018, 19.881149, 27.072960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.542485, 19.755322, 27.626583>,  <6.539470, 20.170732, 26.967754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.542485, 19.755322, 27.626583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.915470, 19.888290, 27.569996>,  <7.139260, 19.968071, 27.536043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.915470, 19.888290, 27.569996>,  <6.542485, 19.755322, 27.626583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.915470, 19.888290, 27.569996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048669, 0.272426, 0.960945,
		0.357978, -0.902929, 0.237848,
		0.932461, 0.332422, -0.141467,
		7.195208, 19.988016, 27.527555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.466539, 14.155591, 14.497096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.681409, 14.254726, 14.819592>,  <15.810330, 14.314207, 15.013089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.681409, 14.254726, 14.819592>,  <15.466539, 14.155591, 14.497096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.681409, 14.254726, 14.819592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830220, -0.013410, 0.557275,
		0.148927, -0.968708, 0.198559,
		0.537174, 0.247841, 0.806238,
		15.842561, 14.329078, 15.061463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188243, 13.855092, 15.059654>,  <15.466539, 14.155591, 14.497096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188243, 13.855092, 15.059654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415167, 14.127907, 15.244256>,  <15.551321, 14.291595, 15.355017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415167, 14.127907, 15.244256>,  <15.188243, 13.855092, 15.059654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415167, 14.127907, 15.244256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684500, 0.078973, 0.724723,
		0.457841, -0.727042, 0.511656,
		0.567310, 0.682036, 0.461503,
		15.585361, 14.332518, 15.382708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219695, 13.664156, 15.742103>,  <15.188243, 13.855092, 15.059654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219695, 13.664156, 15.742103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300192, 14.055790, 15.754082>,  <15.348490, 14.290771, 15.761269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300192, 14.055790, 15.754082>,  <15.219695, 13.664156, 15.742103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300192, 14.055790, 15.754082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608445, 0.100984, 0.787145,
		0.767657, -0.176627, 0.616041,
		0.201241, 0.979084, 0.029947,
		15.360564, 14.349515, 15.763066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422693, 13.756876, 16.372852>,  <15.219695, 13.664156, 15.742103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422693, 13.756876, 16.372852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.325314, 14.125822, 16.252869>,  <15.266886, 14.347190, 16.180880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.325314, 14.125822, 16.252869>,  <15.422693, 13.756876, 16.372852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.325314, 14.125822, 16.252869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499434, 0.145897, 0.853979,
		0.831443, 0.357710, 0.425142,
		-0.243450, 0.922365, -0.299958,
		15.252278, 14.402532, 16.162882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514460, 14.184706, 16.941557>,  <15.422693, 13.756876, 16.372852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514460, 14.184706, 16.941557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276067, 14.407058, 16.709763>,  <15.133031, 14.540469, 16.570686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276067, 14.407058, 16.709763>,  <15.514460, 14.184706, 16.941557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276067, 14.407058, 16.709763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458146, 0.357278, 0.813913,
		0.659475, 0.750567, 0.041742,
		-0.595983, 0.555879, -0.579485,
		15.097272, 14.573822, 16.535917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598656, 14.750208, 17.273634>,  <15.514460, 14.184706, 16.941557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598656, 14.750208, 17.273634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255157, 14.762527, 17.069042>,  <15.049059, 14.769917, 16.946287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255157, 14.762527, 17.069042>,  <15.598656, 14.750208, 17.273634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255157, 14.762527, 17.069042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436528, 0.478755, 0.761733,
		0.268330, 0.877408, -0.397685,
		-0.858744, 0.030795, -0.511478,
		14.997534, 14.771765, 16.915598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.307950, 15.390026, 17.419176>,  <15.598656, 14.750208, 17.273634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.307950, 15.390026, 17.419176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003291, 15.153679, 17.312767>,  <14.820496, 15.011870, 17.248922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003291, 15.153679, 17.312767>,  <15.307950, 15.390026, 17.419176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003291, 15.153679, 17.312767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562176, 0.398361, 0.724753,
		-0.322260, 0.701557, -0.635582,
		-0.761647, -0.590869, -0.266023,
		14.774797, 14.976418, 17.232960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791080, 15.899815, 17.364775>,  <15.307950, 15.390026, 17.419176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791080, 15.899815, 17.364775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595024, 15.551635, 17.383024>,  <14.477391, 15.342727, 17.393974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595024, 15.551635, 17.383024>,  <14.791080, 15.899815, 17.364775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595024, 15.551635, 17.383024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689353, 0.419134, 0.590863,
		-0.533439, 0.258154, -0.805481,
		-0.490138, -0.870450, 0.045623,
		14.447983, 15.290500, 17.396711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.029753, 15.996559, 17.196041>,  <14.791080, 15.899815, 17.364775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.029753, 15.996559, 17.196041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059752, 15.659624, 17.409525>,  <14.077752, 15.457463, 17.537615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059752, 15.659624, 17.409525>,  <14.029753, 15.996559, 17.196041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059752, 15.659624, 17.409525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821910, 0.250849, 0.511409,
		-0.564659, -0.477015, -0.673511,
		0.075000, -0.842337, 0.533707,
		14.082253, 15.406923, 17.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383584, 15.756745, 17.283968>,  <14.029753, 15.996559, 17.196041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383584, 15.756745, 17.283968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565979, 15.576664, 17.591055>,  <13.675416, 15.468615, 17.775307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565979, 15.576664, 17.591055>,  <13.383584, 15.756745, 17.283968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.565979, 15.576664, 17.591055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737981, 0.290888, 0.608907,
		-0.497453, -0.844216, -0.199601,
		0.455987, -0.450205, 0.767718,
		13.702775, 15.441603, 17.821371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.822777, 15.444986, 17.669989>,  <13.383584, 15.756745, 17.283968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.822777, 15.444986, 17.669989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.128809, 15.451343, 17.927485>,  <13.312428, 15.455156, 18.081982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.128809, 15.451343, 17.927485>,  <12.822777, 15.444986, 17.669989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.128809, 15.451343, 17.927485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642274, 0.090558, 0.761106,
		-0.046202, -0.995764, 0.079490,
		0.765081, 0.015890, 0.643738,
		13.358334, 15.456110, 18.120605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.668755, 14.974460, 18.186174>,  <12.822777, 15.444986, 17.669989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.668755, 14.974460, 18.186174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943501, 15.218651, 18.343924>,  <13.108348, 15.365166, 18.438574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943501, 15.218651, 18.343924>,  <12.668755, 14.974460, 18.186174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943501, 15.218651, 18.343924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564486, 0.106316, 0.818567,
		0.457789, -0.784865, 0.417632,
		0.686866, 0.610479, 0.394375,
		13.149560, 15.401794, 18.462236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467231, 14.235092, 18.244373>,  <12.668755, 14.974460, 18.186174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467231, 14.235092, 18.244373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139426, 14.006701, 18.263899>,  <11.942743, 13.869665, 18.275614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.139426, 14.006701, 18.263899>,  <12.467231, 14.235092, 18.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139426, 14.006701, 18.263899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312743, -0.516993, -0.796813,
		0.480201, -0.637730, 0.602251,
		-0.819511, -0.570980, 0.048815,
		11.893573, 13.835406, 18.278543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701323, 13.554404, 18.145216>,  <12.467231, 14.235092, 18.244373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701323, 13.554404, 18.145216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317799, 13.583832, 18.035473>,  <12.087685, 13.601488, 17.969627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317799, 13.583832, 18.035473>,  <12.701323, 13.554404, 18.145216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317799, 13.583832, 18.035473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218484, -0.426220, -0.877839,
		-0.181518, -0.901623, 0.392590,
		-0.958810, 0.073569, -0.274357,
		12.030156, 13.605903, 17.953165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490580, 12.878386, 17.860136>,  <12.701323, 13.554404, 18.145216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490580, 12.878386, 17.860136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.204537, 13.110368, 17.704046>,  <12.032912, 13.249557, 17.610392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.204537, 13.110368, 17.704046>,  <12.490580, 12.878386, 17.860136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.204537, 13.110368, 17.704046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098620, -0.468961, -0.877696,
		-0.692026, -0.666128, 0.278161,
		-0.715104, 0.579956, -0.390227,
		11.990006, 13.284354, 17.586979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920437, 12.500795, 17.608791>,  <12.490580, 12.878386, 17.860136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920437, 12.500795, 17.608791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932817, 12.839913, 17.397024>,  <11.940246, 13.043385, 17.269964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.932817, 12.839913, 17.397024>,  <11.920437, 12.500795, 17.608791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.932817, 12.839913, 17.397024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065607, -0.530254, -0.845297,
		-0.997365, -0.008569, -0.072034,
		0.030953, 0.847796, -0.529419,
		11.942103, 13.094252, 17.238199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498736, 12.396183, 17.084270>,  <11.920437, 12.500795, 17.608791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498736, 12.396183, 17.084270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713041, 12.714231, 16.970612>,  <11.841624, 12.905061, 16.902416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713041, 12.714231, 16.970612>,  <11.498736, 12.396183, 17.084270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713041, 12.714231, 16.970612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072667, -0.378693, -0.922665,
		-0.841236, 0.473680, -0.260668,
		0.535762, 0.795122, -0.284149,
		11.873770, 12.952768, 16.885366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365350, 12.436782, 16.373245>,  <11.498736, 12.396183, 17.084270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365350, 12.436782, 16.373245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666653, 12.698027, 16.404356>,  <11.847434, 12.854774, 16.423021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666653, 12.698027, 16.404356>,  <11.365350, 12.436782, 16.373245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666653, 12.698027, 16.404356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242422, -0.165760, -0.955905,
		-0.611422, 0.738896, -0.283189,
		0.753256, 0.653113, 0.077776,
		11.892630, 12.893960, 16.427689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.238545, 13.006046, 15.845250>,  <11.365350, 12.436782, 16.373245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.238545, 13.006046, 15.845250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.622499, 12.949148, 15.941902>,  <11.852872, 12.915009, 15.999893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.622499, 12.949148, 15.941902>,  <11.238545, 13.006046, 15.845250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.622499, 12.949148, 15.941902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204542, -0.234213, -0.950425,
		0.191786, 0.961723, -0.195722,
		0.959886, -0.142245, 0.241631,
		11.910465, 12.906475, 16.014391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.650138, 13.488111, 15.415847>,  <11.238545, 13.006046, 15.845250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.650138, 13.488111, 15.415847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901602, 13.202460, 15.539011>,  <12.052480, 13.031070, 15.612909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901602, 13.202460, 15.539011>,  <11.650138, 13.488111, 15.415847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901602, 13.202460, 15.539011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002338, -0.397668, -0.917526,
		0.777678, 0.576091, -0.251667,
		0.628659, -0.714128, 0.307911,
		12.090199, 12.988222, 15.631384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942812, 13.410316, 14.842999>,  <11.650138, 13.488111, 15.415847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942812, 13.410316, 14.842999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.052492, 13.091091, 15.057630>,  <12.118300, 12.899557, 15.186408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.052492, 13.091091, 15.057630>,  <11.942812, 13.410316, 14.842999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.052492, 13.091091, 15.057630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232630, -0.486345, -0.842230,
		0.933111, 0.355764, 0.052297,
		0.274201, -0.798060, 0.536576,
		12.134752, 12.851673, 15.218602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503439, 13.218880, 14.488967>,  <11.942812, 13.410316, 14.842999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503439, 13.218880, 14.488967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437373, 12.891541, 14.709161>,  <12.397734, 12.695139, 14.841277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.437373, 12.891541, 14.709161>,  <12.503439, 13.218880, 14.488967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.437373, 12.891541, 14.709161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258199, -0.574561, -0.776668,
		0.951869, 0.013857, 0.306193,
		-0.165164, -0.818345, 0.550484,
		12.387824, 12.646038, 14.874306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.017258, 12.736186, 14.383273>,  <12.503439, 13.218880, 14.488967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.017258, 12.736186, 14.383273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733067, 12.484617, 14.509561>,  <12.562552, 12.333675, 14.585333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733067, 12.484617, 14.509561>,  <13.017258, 12.736186, 14.383273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733067, 12.484617, 14.509561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218673, -0.623741, -0.750420,
		0.668883, -0.464117, 0.580682,
		-0.710478, -0.628922, 0.315719,
		12.519923, 12.295940, 14.604277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303020, 12.043611, 14.386037>,  <13.017258, 12.736186, 14.383273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303020, 12.043611, 14.386037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905520, 12.061271, 14.345018>,  <12.667021, 12.071867, 14.320408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905520, 12.061271, 14.345018>,  <13.303020, 12.043611, 14.386037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905520, 12.061271, 14.345018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044420, -0.686307, -0.725955,
		-0.102429, -0.725971, 0.680055,
		-0.993748, 0.044151, -0.102546,
		12.607396, 12.074516, 14.314255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.100814, 11.365674, 14.186641>,  <13.303020, 12.043611, 14.386037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.100814, 11.365674, 14.186641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800743, 11.600624, 14.065167>,  <12.620701, 11.741594, 13.992284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800743, 11.600624, 14.065167>,  <13.100814, 11.365674, 14.186641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800743, 11.600624, 14.065167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020144, -0.479353, -0.877391,
		-0.660929, -0.652082, 0.371431,
		-0.750178, 0.587375, -0.303683,
		12.575689, 11.776836, 13.974063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645692, 11.094885, 14.707803>,  <13.100814, 11.365674, 14.186641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645692, 11.094885, 14.707803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788144, 10.723413, 14.666378>,  <13.873615, 10.500529, 14.641523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788144, 10.723413, 14.666378>,  <13.645692, 11.094885, 14.707803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788144, 10.723413, 14.666378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601091, 0.142820, 0.786315,
		-0.715445, -0.342280, 0.609084,
		0.356130, -0.928680, -0.103562,
		13.894983, 10.444809, 14.635309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672156, 11.430579, 15.415807>,  <13.645692, 11.094885, 14.707803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672156, 11.430579, 15.415807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896505, 11.127649, 15.549601>,  <14.031115, 10.945891, 15.629877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896505, 11.127649, 15.549601>,  <13.672156, 11.430579, 15.415807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896505, 11.127649, 15.549601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393157, 0.111910, 0.912635,
		-0.728595, -0.643377, -0.234981,
		0.560872, -0.757325, 0.334485,
		14.064767, 10.900452, 15.649946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459620, 10.728838, 15.765328>,  <13.672156, 11.430579, 15.415807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459620, 10.728838, 15.765328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801043, 10.823091, 15.951196>,  <14.005897, 10.879642, 16.062716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801043, 10.823091, 15.951196>,  <13.459620, 10.728838, 15.765328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801043, 10.823091, 15.951196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464148, -0.061205, 0.883640,
		0.236655, -0.969913, 0.057127,
		0.853558, 0.235634, 0.464668,
		14.057110, 10.893781, 16.090595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.608903, 10.165250, 16.316996>,  <13.459620, 10.728838, 15.765328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.608903, 10.165250, 16.316996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751513, 10.531592, 16.390858>,  <13.837078, 10.751398, 16.435175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751513, 10.531592, 16.390858>,  <13.608903, 10.165250, 16.316996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751513, 10.531592, 16.390858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335107, -0.059136, 0.940322,
		0.872120, -0.397127, 0.285826,
		0.356525, 0.915857, 0.184654,
		13.858470, 10.806350, 16.446255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031282, 10.149700, 16.930475>,  <13.608903, 10.165250, 16.316996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031282, 10.149700, 16.930475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875763, 10.516471, 16.894516>,  <13.782451, 10.736533, 16.872940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875763, 10.516471, 16.894516>,  <14.031282, 10.149700, 16.930475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.875763, 10.516471, 16.894516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148894, 0.033759, 0.988277,
		0.909212, 0.397626, 0.123399,
		-0.388799, 0.916926, -0.089898,
		13.759123, 10.791549, 16.867546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228245, 10.393569, 17.438490>,  <14.031282, 10.149700, 16.930475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228245, 10.393569, 17.438490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.929797, 10.637839, 17.332373>,  <13.750729, 10.784401, 17.268702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.929797, 10.637839, 17.332373>,  <14.228245, 10.393569, 17.438490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929797, 10.637839, 17.332373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384513, -0.069917, 0.920468,
		0.543558, 0.788788, 0.286980,
		-0.746119, 0.610675, -0.265296,
		13.705961, 10.821042, 17.252785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331490, 10.894929, 17.843039>,  <14.228245, 10.393569, 17.438490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.331490, 10.894929, 17.843039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.952076, 10.883236, 17.716909>,  <13.724427, 10.876221, 17.641232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.952076, 10.883236, 17.716909>,  <14.331490, 10.894929, 17.843039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.952076, 10.883236, 17.716909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315335, 0.178620, 0.932019,
		0.029078, 0.983484, -0.178645,
		-0.948535, -0.029232, -0.315321,
		13.667516, 10.874466, 17.622313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.008281, 11.329505, 18.177076>,  <14.331490, 10.894929, 17.843039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.008281, 11.329505, 18.177076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.678487, 11.134439, 18.062250>,  <13.480610, 11.017400, 17.993355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.678487, 11.134439, 18.062250>,  <14.008281, 11.329505, 18.177076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.678487, 11.134439, 18.062250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439980, 0.233422, 0.867140,
		-0.355866, 0.841248, -0.407016,
		-0.824486, -0.487664, -0.287065,
		13.431141, 10.988140, 17.976131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.487167, 11.745712, 18.574593>,  <14.008281, 11.329505, 18.177076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.487167, 11.745712, 18.574593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295042, 11.406310, 18.485743>,  <13.179767, 11.202669, 18.432432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295042, 11.406310, 18.485743>,  <13.487167, 11.745712, 18.574593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295042, 11.406310, 18.485743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498603, 0.055794, 0.865032,
		-0.721592, 0.526238, -0.449866,
		-0.480312, -0.848505, -0.222124,
		13.150949, 11.151758, 18.419106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.882628, 11.866060, 18.816687>,  <13.487167, 11.745712, 18.574593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.882628, 11.866060, 18.816687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862945, 11.470519, 18.760475>,  <12.851134, 11.233194, 18.726749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862945, 11.470519, 18.760475>,  <12.882628, 11.866060, 18.816687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862945, 11.470519, 18.760475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614692, -0.080912, 0.784606,
		-0.787231, 0.124991, -0.603858,
		-0.049210, -0.988853, -0.140528,
		12.848182, 11.173863, 18.718317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159865, 11.751013, 18.939030>,  <12.882628, 11.866060, 18.816687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159865, 11.751013, 18.939030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329838, 11.389150, 18.951851>,  <12.431821, 11.172031, 18.959543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329838, 11.389150, 18.951851>,  <12.159865, 11.751013, 18.939030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329838, 11.389150, 18.951851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523125, -0.216512, 0.824296,
		-0.738765, -0.367037, -0.565252,
		0.424931, -0.904658, 0.032054,
		12.457317, 11.117752, 18.961468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702559, 11.407185, 19.309811>,  <12.159865, 11.751013, 18.939030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702559, 11.407185, 19.309811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040971, 11.198126, 19.351902>,  <12.244019, 11.072691, 19.377157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040971, 11.198126, 19.351902>,  <11.702559, 11.407185, 19.309811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040971, 11.198126, 19.351902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214347, -0.152736, 0.964742,
		-0.488148, -0.838756, -0.241248,
		0.846030, -0.522647, 0.105227,
		12.294780, 11.041332, 19.383471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.527215, 10.901942, 19.795561>,  <11.702559, 11.407185, 19.309811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.527215, 10.901942, 19.795561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925076, 10.939510, 19.812729>,  <12.163794, 10.962051, 19.823030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925076, 10.939510, 19.812729>,  <11.527215, 10.901942, 19.795561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925076, 10.939510, 19.812729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030208, -0.132833, 0.990678,
		0.098747, -0.986678, -0.129285,
		0.994654, 0.093921, 0.042922,
		12.223473, 10.967687, 19.825605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.758729, 10.360970, 20.149687>,  <11.527215, 10.901942, 19.795561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.758729, 10.360970, 20.149687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.030320, 10.652959, 20.181005>,  <12.193274, 10.828152, 20.199797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.030320, 10.652959, 20.181005>,  <11.758729, 10.360970, 20.149687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.030320, 10.652959, 20.181005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019536, -0.088647, 0.995872,
		0.733899, -0.677704, -0.045929,
		0.678977, 0.729972, 0.078297,
		12.234014, 10.871950, 20.204494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.302362, 10.045428, 20.575306>,  <11.758729, 10.360970, 20.149687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.302362, 10.045428, 20.575306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329528, 10.443640, 20.601564>,  <12.345827, 10.682567, 20.617319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329528, 10.443640, 20.601564>,  <12.302362, 10.045428, 20.575306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329528, 10.443640, 20.601564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120884, -0.057101, 0.991023,
		0.990341, -0.075240, 0.116465,
		0.067914, 0.995529, 0.065645,
		12.349902, 10.742298, 20.621258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714730, 10.150249, 21.149775>,  <12.302362, 10.045428, 20.575306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714730, 10.150249, 21.149775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567219, 10.520688, 21.117903>,  <12.478712, 10.742951, 21.098780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567219, 10.520688, 21.117903>,  <12.714730, 10.150249, 21.149775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567219, 10.520688, 21.117903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025569, 0.075581, 0.996812,
		0.929166, 0.369640, -0.004193,
		-0.368778, 0.926096, -0.079679,
		12.456585, 10.798517, 21.094000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969833, 10.463365, 21.723005>,  <12.714730, 10.150249, 21.149775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969833, 10.463365, 21.723005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672621, 10.709976, 21.618856>,  <12.494293, 10.857944, 21.556368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672621, 10.709976, 21.618856>,  <12.969833, 10.463365, 21.723005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672621, 10.709976, 21.618856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219337, 0.143228, 0.965079,
		0.632292, 0.774194, 0.028805,
		-0.743033, 0.616530, -0.260372,
		12.449711, 10.894936, 21.540745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054901, 11.201153, 22.029261>,  <12.969833, 10.463365, 21.723005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054901, 11.201153, 22.029261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665187, 11.129221, 21.974962>,  <12.431358, 11.086062, 21.942383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665187, 11.129221, 21.974962>,  <13.054901, 11.201153, 22.029261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665187, 11.129221, 21.974962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181503, 0.269426, 0.945762,
		-0.133502, 0.946082, -0.295137,
		-0.974286, -0.179829, -0.135748,
		12.372901, 11.075273, 21.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774301, 11.776277, 22.354462>,  <13.054901, 11.201153, 22.029261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774301, 11.776277, 22.354462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.480474, 11.504966, 22.346928>,  <12.304179, 11.342179, 22.342407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.480474, 11.504966, 22.346928>,  <12.774301, 11.776277, 22.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.480474, 11.504966, 22.346928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327829, 0.330456, 0.885057,
		-0.594090, 0.656307, -0.465100,
		-0.734565, -0.678277, -0.018836,
		12.260105, 11.301482, 22.341276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121476, 12.215528, 22.305010>,  <12.774301, 11.776277, 22.354462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121476, 12.215528, 22.305010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994677, 11.859303, 22.435495>,  <11.918596, 11.645569, 22.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994677, 11.859303, 22.435495>,  <12.121476, 12.215528, 22.305010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994677, 11.859303, 22.435495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168875, 0.391456, 0.904568,
		-0.933270, 0.231658, -0.274485,
		-0.316999, -0.890560, 0.326212,
		11.899577, 11.592135, 22.533360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453292, 12.311742, 22.622656>,  <12.121476, 12.215528, 22.305010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453292, 12.311742, 22.622656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596738, 11.969819, 22.772696>,  <11.682806, 11.764666, 22.862720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596738, 11.969819, 22.772696>,  <11.453292, 12.311742, 22.622656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596738, 11.969819, 22.772696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333045, 0.258223, 0.906864,
		-0.872053, -0.450141, -0.192087,
		0.358615, -0.854806, 0.375101,
		11.704323, 11.713377, 22.885225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.000993, 12.217108, 23.080206>,  <11.453292, 12.311742, 22.622656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.000993, 12.217108, 23.080206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256004, 11.927385, 23.185228>,  <11.409011, 11.753551, 23.248241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256004, 11.927385, 23.185228>,  <11.000993, 12.217108, 23.080206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.256004, 11.927385, 23.185228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289743, 0.090367, 0.952829,
		-0.713868, -0.683529, -0.152251,
		0.637528, -0.724308, 0.262558,
		11.447263, 11.710093, 23.263996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.699862, 11.738006, 23.670586>,  <11.000993, 12.217108, 23.080206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.699862, 11.738006, 23.670586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099115, 11.741372, 23.694778>,  <11.338668, 11.743392, 23.709293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099115, 11.741372, 23.694778>,  <10.699862, 11.738006, 23.670586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099115, 11.741372, 23.694778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060766, 0.234706, 0.970165,
		-0.006031, -0.972030, 0.234780,
		0.998134, 0.008415, 0.060482,
		11.398556, 11.743897, 23.712923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.793133, 11.394810, 24.309511>,  <10.699862, 11.738006, 23.670586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.793133, 11.394810, 24.309511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.145458, 11.569412, 24.236156>,  <11.356853, 11.674173, 24.192144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.145458, 11.569412, 24.236156>,  <10.793133, 11.394810, 24.309511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.145458, 11.569412, 24.236156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037807, 0.321246, 0.946241,
		0.471953, -0.840394, 0.266455,
		0.880813, 0.436507, -0.183386,
		11.409702, 11.700364, 24.181141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.247363, 11.154461, 24.766672>,  <10.793133, 11.394810, 24.309511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.247363, 11.154461, 24.766672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.380574, 11.512063, 24.646774>,  <11.460501, 11.726624, 24.574835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.380574, 11.512063, 24.646774>,  <11.247363, 11.154461, 24.766672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.380574, 11.512063, 24.646774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133783, 0.359475, 0.923515,
		0.933378, -0.267455, 0.239318,
		0.333028, 0.894005, -0.299745,
		11.480483, 11.780265, 24.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.726813, 11.431655, 25.226879>,  <11.247363, 11.154461, 24.766672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.726813, 11.431655, 25.226879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.611301, 11.767743, 25.043299>,  <11.541994, 11.969396, 24.933151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.611301, 11.767743, 25.043299>,  <11.726813, 11.431655, 25.226879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.611301, 11.767743, 25.043299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103559, 0.449148, 0.887435,
		0.951778, 0.303801, -0.042692,
		-0.288779, 0.840221, -0.458951,
		11.524668, 12.019810, 24.905613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.996777, 11.877269, 25.695475>,  <11.726813, 11.431655, 25.226879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.996777, 11.877269, 25.695475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746359, 12.089621, 25.467007>,  <11.596107, 12.217031, 25.329926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.746359, 12.089621, 25.467007>,  <11.996777, 11.877269, 25.695475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.746359, 12.089621, 25.467007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219221, 0.583106, 0.782259,
		0.748338, 0.614942, -0.248671,
		-0.626046, 0.530880, -0.571168,
		11.558545, 12.248884, 25.295656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159680, 12.582302, 25.765646>,  <11.996777, 11.877269, 25.695475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159680, 12.582302, 25.765646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.786303, 12.587293, 25.622244>,  <11.562276, 12.590287, 25.536201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.786303, 12.587293, 25.622244>,  <12.159680, 12.582302, 25.765646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.786303, 12.587293, 25.622244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259563, 0.666336, 0.699016,
		0.247608, 0.745547, -0.618749,
		-0.933444, 0.012478, -0.358506,
		11.506269, 12.591036, 25.514692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.883790, 13.298272, 25.942087>,  <12.159680, 12.582302, 25.765646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.883790, 13.298272, 25.942087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561086, 13.090419, 25.829575>,  <11.367463, 12.965707, 25.762068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561086, 13.090419, 25.829575>,  <11.883790, 13.298272, 25.942087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.561086, 13.090419, 25.829575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575702, 0.584071, 0.572214,
		-0.133054, 0.623573, -0.770359,
		-0.806762, -0.519632, -0.281280,
		11.319057, 12.934529, 25.745192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
