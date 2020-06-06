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
	<3.996544, 15.321766, 15.308102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.177891, 15.129704, 15.007726>,  <4.286699, 15.014468, 14.827500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.177891, 15.129704, 15.007726>,  <3.996544, 15.321766, 15.308102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.177891, 15.129704, 15.007726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502143, 0.558490, -0.660259,
		0.736418, 0.676419, 0.012095,
		0.453367, -0.480153, -0.750941,
		4.313901, 14.985659, 14.782444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.772266, 15.560764, 14.646640>,  <3.996544, 15.321766, 15.308102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.772266, 15.560764, 14.646640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.060418, 15.324223, 14.501670>,  <4.233309, 15.182298, 14.414688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.060418, 15.324223, 14.501670>,  <3.772266, 15.560764, 14.646640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.060418, 15.324223, 14.501670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103145, 0.425393, -0.899112,
		0.685867, 0.685084, 0.245449,
		0.720380, -0.591355, -0.362426,
		4.276532, 15.146816, 14.392942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.180296, 16.058702, 14.241584>,  <3.772266, 15.560764, 14.646640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.180296, 16.058702, 14.241584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267776, 15.681395, 14.141657>,  <4.320263, 15.455009, 14.081700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267776, 15.681395, 14.141657>,  <4.180296, 16.058702, 14.241584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.267776, 15.681395, 14.141657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320719, 0.311278, -0.894565,
		0.921580, 0.115518, 0.370601,
		0.218698, -0.943272, -0.249819,
		4.333385, 15.398413, 14.066711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.437027, 16.353071, 13.609117>,  <4.180296, 16.058702, 14.241584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.437027, 16.353071, 13.609117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.769937, 16.440357, 13.812960>,  <4.969683, 16.492729, 13.935266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.769937, 16.440357, 13.812960>,  <4.437027, 16.353071, 13.609117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.769937, 16.440357, 13.812960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096178, 0.962166, -0.254926,
		-0.545956, 0.163155, 0.821774,
		0.832275, 0.218215, 0.509608,
		5.019619, 16.505821, 13.965842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.330072, 16.961678, 13.999987>,  <4.437027, 16.353071, 13.609117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.330072, 16.961678, 13.999987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.716274, 16.913223, 13.907792>,  <4.947996, 16.884151, 13.852475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.716274, 16.913223, 13.907792>,  <4.330072, 16.961678, 13.999987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.716274, 16.913223, 13.907792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061647, 0.966371, -0.249654,
		0.252976, 0.226834, 0.940505,
		0.965506, -0.121136, -0.230485,
		5.005926, 16.876883, 13.838647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.603441, 17.609270, 14.393777>,  <4.330072, 16.961678, 13.999987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.603441, 17.609270, 14.393777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.891185, 17.471979, 14.152210>,  <5.063832, 17.389605, 14.007271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.891185, 17.471979, 14.152210>,  <4.603441, 17.609270, 14.393777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.891185, 17.471979, 14.152210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337137, 0.932648, -0.128474,
		0.607337, -0.111183, 0.786625,
		0.719361, -0.343228, -0.603916,
		5.106994, 17.369011, 13.971035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.209205, 17.887396, 14.593405>,  <4.603441, 17.609270, 14.393777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.209205, 17.887396, 14.593405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.304349, 17.792513, 14.216649>,  <5.361435, 17.735582, 13.990596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.304349, 17.792513, 14.216649>,  <5.209205, 17.887396, 14.593405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.304349, 17.792513, 14.216649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632163, 0.774031, -0.035291,
		0.737422, -0.587033, 0.334067,
		0.237861, -0.237209, -0.941888,
		5.375707, 17.721350, 13.934082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.882684, 17.847216, 14.587675>,  <5.209205, 17.887396, 14.593405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.882684, 17.847216, 14.587675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.759855, 17.934784, 14.217210>,  <5.686157, 17.987326, 13.994930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.759855, 17.934784, 14.217210>,  <5.882684, 17.847216, 14.587675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.759855, 17.934784, 14.217210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488695, 0.871348, 0.043936,
		0.816629, -0.439120, -0.374554,
		-0.307073, 0.218922, -0.926164,
		5.667733, 18.000460, 13.939361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.456475, 18.219604, 14.199656>,  <5.882684, 17.847216, 14.587675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.456475, 18.219604, 14.199656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.112907, 18.304701, 14.013322>,  <5.906767, 18.355759, 13.901522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.112907, 18.304701, 14.013322>,  <6.456475, 18.219604, 14.199656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.112907, 18.304701, 14.013322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246192, 0.969155, -0.011335,
		0.449053, -0.124420, -0.884800,
		-0.858919, 0.212741, -0.465833,
		5.855232, 18.368523, 13.873572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.524573, 18.859827, 13.951444>,  <6.456475, 18.219604, 14.199656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.524573, 18.859827, 13.951444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.142242, 18.862741, 13.833907>,  <5.912844, 18.864491, 13.763385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.142242, 18.862741, 13.833907>,  <6.524573, 18.859827, 13.951444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.142242, 18.862741, 13.833907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072324, 0.974789, -0.211084,
		0.284896, -0.223012, -0.932255,
		-0.955826, 0.007288, -0.293842,
		5.855494, 18.864927, 13.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.520299, 19.086607, 13.203660>,  <6.524573, 18.859827, 13.951444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.520299, 19.086607, 13.203660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183040, 19.184769, 13.395025>,  <5.980685, 19.243666, 13.509845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183040, 19.184769, 13.395025>,  <6.520299, 19.086607, 13.203660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.183040, 19.184769, 13.395025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088680, 0.941054, -0.326426,
		-0.530318, -0.232800, -0.815210,
		-0.843148, 0.245402, 0.478413,
		5.930096, 19.258389, 13.538549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.300885, 19.646914, 12.786936>,  <6.520299, 19.086607, 13.203660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.300885, 19.646914, 12.786936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.071310, 19.660599, 13.114209>,  <5.933565, 19.668810, 13.310574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.071310, 19.660599, 13.114209>,  <6.300885, 19.646914, 12.786936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.071310, 19.660599, 13.114209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033839, 0.997283, -0.065441,
		-0.818200, -0.065245, -0.571220,
		-0.573938, 0.034214, 0.818184,
		5.899129, 19.670862, 13.359664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.671257, 20.021809, 12.579662>,  <6.300885, 19.646914, 12.786936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.671257, 20.021809, 12.579662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.736294, 20.045876, 12.973605>,  <5.775316, 20.060316, 13.209970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.736294, 20.045876, 12.973605>,  <5.671257, 20.021809, 12.579662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.736294, 20.045876, 12.973605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004169, 0.998172, -0.060295,
		-0.986684, 0.005698, 0.162547,
		0.162593, 0.060170, 0.984857,
		5.785072, 20.063927, 13.269062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.196788, 20.503544, 12.721402>,  <5.671257, 20.021809, 12.579662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.196788, 20.503544, 12.721402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.453419, 20.477829, 13.027146>,  <5.607397, 20.462400, 13.210593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.453419, 20.477829, 13.027146>,  <5.196788, 20.503544, 12.721402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.453419, 20.477829, 13.027146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071152, 0.997173, 0.024145,
		-0.763752, 0.038895, 0.644337,
		0.641576, -0.064286, 0.764361,
		5.645892, 20.458544, 13.256454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.762439, 20.853207, 13.218972>,  <5.196788, 20.503544, 12.721402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.762439, 20.853207, 13.218972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.151891, 20.846317, 13.309965>,  <5.385562, 20.842184, 13.364561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.151891, 20.846317, 13.309965>,  <4.762439, 20.853207, 13.218972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.151891, 20.846317, 13.309965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011982, 0.991910, 0.126373,
		-0.227819, -0.125766, 0.965547,
		0.973630, -0.017221, 0.227483,
		5.443980, 20.841150, 13.378210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828872, 21.366156, 13.781785>,  <4.762439, 20.853207, 13.218972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828872, 21.366156, 13.781785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.203856, 21.320620, 13.650202>,  <5.428845, 21.293297, 13.571252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.203856, 21.320620, 13.650202>,  <4.828872, 21.366156, 13.781785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.203856, 21.320620, 13.650202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139197, 0.988764, 0.054501,
		0.319056, -0.096883, 0.942771,
		0.937458, -0.113842, -0.328957,
		5.485093, 21.286467, 13.551515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.155493, 21.909761, 14.127725>,  <4.828872, 21.366156, 13.781785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.155493, 21.909761, 14.127725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.404687, 21.808258, 13.831753>,  <5.554204, 21.747356, 13.654170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.404687, 21.808258, 13.831753>,  <5.155493, 21.909761, 14.127725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.404687, 21.808258, 13.831753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297622, 0.951671, -0.075792,
		0.723402, -0.173002, 0.668402,
		0.622986, -0.253759, -0.739929,
		5.591583, 21.732130, 13.609774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.792504, 22.230158, 14.346678>,  <5.155493, 21.909761, 14.127725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.792504, 22.230158, 14.346678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.800003, 22.165550, 13.952002>,  <5.804502, 22.126785, 13.715196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.800003, 22.165550, 13.952002>,  <5.792504, 22.230158, 14.346678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.800003, 22.165550, 13.952002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333930, 0.931208, -0.146091,
		0.942412, -0.326746, 0.071394,
		0.018748, -0.161518, -0.986692,
		5.805627, 22.117094, 13.655994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.394941, 22.506037, 14.107866>,  <5.792504, 22.230158, 14.346678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.394941, 22.506037, 14.107866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190303, 22.485317, 13.764801>,  <6.067521, 22.472885, 13.558962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190303, 22.485317, 13.764801>,  <6.394941, 22.506037, 14.107866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.190303, 22.485317, 13.764801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267418, 0.939007, -0.216225,
		0.816552, -0.339975, -0.466540,
		-0.511595, -0.051798, -0.857664,
		6.036825, 22.469778, 13.507502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.935243, 22.748699, 13.454322>,  <6.394941, 22.506037, 14.107866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.935243, 22.748699, 13.454322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.571943, 22.760286, 13.287354>,  <6.353962, 22.767239, 13.187173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.571943, 22.760286, 13.287354>,  <6.935243, 22.748699, 13.454322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.571943, 22.760286, 13.287354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305106, 0.728531, -0.613313,
		0.286338, -0.684400, -0.670527,
		-0.908251, 0.028967, -0.417421,
		6.299468, 22.768976, 13.162127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.997070, 22.694389, 12.668325>,  <6.935243, 22.748699, 13.454322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.997070, 22.694389, 12.668325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.675743, 22.885855, 12.810063>,  <6.482947, 23.000734, 12.895106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.675743, 22.885855, 12.810063>,  <6.997070, 22.694389, 12.668325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.675743, 22.885855, 12.810063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230605, 0.798580, -0.555959,
		-0.549091, -0.364898, -0.751897,
		-0.803318, 0.478663, 0.354346,
		6.434748, 23.029453, 12.916368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.744225, 23.048149, 12.121684>,  <6.997070, 22.694389, 12.668325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.744225, 23.048149, 12.121684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.585007, 23.225182, 12.443102>,  <6.489476, 23.331400, 12.635953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.585007, 23.225182, 12.443102>,  <6.744225, 23.048149, 12.121684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.585007, 23.225182, 12.443102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413032, 0.868583, -0.273802,
		-0.819125, 0.222905, -0.528534,
		-0.398044, 0.442579, 0.803545,
		6.465593, 23.357956, 12.684165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.457892, 23.711214, 11.881652>,  <6.744225, 23.048149, 12.121684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.457892, 23.711214, 11.881652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.491807, 23.742756, 12.278961>,  <6.512156, 23.761681, 12.517347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.491807, 23.742756, 12.278961>,  <6.457892, 23.711214, 11.881652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.491807, 23.742756, 12.278961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503586, 0.856784, -0.111004,
		-0.859774, 0.509611, 0.032935,
		0.084787, 0.078852, 0.993274,
		6.517242, 23.766411, 12.576943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.388173, 24.406487, 12.043202>,  <6.457892, 23.711214, 11.881652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.388173, 24.406487, 12.043202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575225, 24.246017, 12.358259>,  <6.687456, 24.149736, 12.547294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575225, 24.246017, 12.358259>,  <6.388173, 24.406487, 12.043202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.575225, 24.246017, 12.358259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623861, 0.781054, 0.027425,
		-0.626194, 0.478555, 0.615522,
		0.467631, -0.401174, 0.787643,
		6.715514, 24.125666, 12.594552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.479657, 25.028605, 12.536250>,  <6.388173, 24.406487, 12.043202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.479657, 25.028605, 12.536250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752227, 24.750525, 12.627777>,  <6.915769, 24.583675, 12.682693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752227, 24.750525, 12.627777>,  <6.479657, 25.028605, 12.536250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752227, 24.750525, 12.627777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651506, 0.718623, 0.243147,
		-0.333470, -0.016610, 0.942614,
		0.681423, -0.695201, 0.228817,
		6.956654, 24.541964, 12.696423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.675077, 25.273716, 13.229803>,  <6.479657, 25.028605, 12.536250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.675077, 25.273716, 13.229803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.909446, 25.076935, 12.972221>,  <7.050067, 24.958866, 12.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.909446, 25.076935, 12.972221>,  <6.675077, 25.273716, 13.229803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.909446, 25.076935, 12.972221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735659, 0.656168, 0.168078,
		0.339855, -0.572210, 0.746374,
		0.585922, -0.491955, -0.643953,
		7.085223, 24.929348, 12.779036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.862277, 25.424782, 14.002522>,  <6.675077, 25.273716, 13.229803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.862277, 25.424782, 14.002522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.168603, 25.171572, 13.957253>,  <7.352399, 25.019646, 13.930091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.168603, 25.171572, 13.957253>,  <6.862277, 25.424782, 14.002522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.168603, 25.171572, 13.957253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447702, -0.651176, 0.612807,
		-0.461615, -0.418631, -0.782087,
		0.765817, -0.633023, -0.113171,
		7.398348, 24.981665, 13.923301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.251267, 25.277832, 14.683674>,  <6.862277, 25.424782, 14.002522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.251267, 25.277832, 14.683674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.349854, 25.610376, 14.882909>,  <7.409005, 25.809904, 15.002450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.349854, 25.610376, 14.882909>,  <7.251267, 25.277832, 14.683674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.349854, 25.610376, 14.882909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930665, -0.346423, 0.117701,
		0.270401, 0.434544, -0.859101,
		0.246466, 0.831362, 0.498088,
		7.423793, 25.859785, 15.032335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.846300, 25.650488, 14.392139>,  <7.251267, 25.277832, 14.683674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.846300, 25.650488, 14.392139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.829732, 25.643625, 14.791738>,  <7.819791, 25.639507, 15.031496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.829732, 25.643625, 14.791738>,  <7.846300, 25.650488, 14.392139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.829732, 25.643625, 14.791738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912915, -0.406982, 0.030862,
		0.406043, 0.913275, 0.032518,
		-0.041419, -0.017155, 0.998995,
		7.817306, 25.638479, 15.091436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.293457, 26.085600, 14.641083>,  <7.846300, 25.650488, 14.392139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.293457, 26.085600, 14.641083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.272743, 25.819601, 14.939102>,  <8.260315, 25.660002, 15.117914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.272743, 25.819601, 14.939102>,  <8.293457, 26.085600, 14.641083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.272743, 25.819601, 14.939102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965156, -0.224944, -0.133691,
		0.256499, 0.712165, 0.653475,
		-0.051785, -0.664997, 0.745049,
		8.257208, 25.620102, 15.162617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.839965, 26.209408, 15.171926>,  <8.293457, 26.085600, 14.641083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.839965, 26.209408, 15.171926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.719899, 25.829540, 15.207776>,  <8.647860, 25.601620, 15.229286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.719899, 25.829540, 15.207776>,  <8.839965, 26.209408, 15.171926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.719899, 25.829540, 15.207776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940065, -0.310444, -0.141078,
		0.161800, 0.041906, 0.985933,
		-0.300165, -0.949667, 0.089624,
		8.629849, 25.544640, 15.234663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.254269, 25.781700, 15.651172>,  <8.839965, 26.209408, 15.171926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.254269, 25.781700, 15.651172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.116285, 25.577637, 15.336023>,  <9.033496, 25.455198, 15.146935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.116285, 25.577637, 15.336023>,  <9.254269, 25.781700, 15.651172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.116285, 25.577637, 15.336023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916644, -0.363668, -0.165857,
		-0.201910, -0.779411, 0.593086,
		-0.344957, -0.510161, -0.787871,
		9.012798, 25.424589, 15.099662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.425824, 25.223909, 15.945948>,  <9.254269, 25.781700, 15.651172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.425824, 25.223909, 15.945948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524887, 25.050808, 16.292679>,  <9.584325, 24.946947, 16.500717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.524887, 25.050808, 16.292679>,  <9.425824, 25.223909, 15.945948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524887, 25.050808, 16.292679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350569, -0.874102, -0.336224,
		0.903199, -0.220615, -0.368187,
		0.247657, -0.432752, 0.866829,
		9.599184, 24.920982, 16.552727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.969498, 24.620132, 15.826931>,  <9.425824, 25.223909, 15.945948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.969498, 24.620132, 15.826931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.738341, 24.571695, 16.149763>,  <9.599648, 24.542633, 16.343462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.738341, 24.571695, 16.149763>,  <9.969498, 24.620132, 15.826931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.738341, 24.571695, 16.149763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322468, -0.874577, -0.362117,
		0.749705, -0.469522, 0.466360,
		-0.577890, -0.121095, 0.807081,
		9.564975, 24.535366, 16.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.273485, 23.999140, 16.303122>,  <9.969498, 24.620132, 15.826931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.273485, 23.999140, 16.303122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.887677, 24.104002, 16.290621>,  <9.656193, 24.166920, 16.283121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.887677, 24.104002, 16.290621>,  <10.273485, 23.999140, 16.303122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.887677, 24.104002, 16.290621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222501, -0.870867, -0.438274,
		-0.142111, -0.415771, 0.898298,
		-0.964519, 0.262155, -0.031250,
		9.598321, 24.182648, 16.281246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.903213, 23.597532, 16.680937>,  <10.273485, 23.999140, 16.303122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.903213, 23.597532, 16.680937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.720201, 23.743078, 16.356401>,  <9.610394, 23.830406, 16.161680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.720201, 23.743078, 16.356401>,  <9.903213, 23.597532, 16.680937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.720201, 23.743078, 16.356401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038882, -0.919756, -0.390561,
		-0.888344, -0.147146, 0.434963,
		-0.457529, 0.363865, -0.811338,
		9.582943, 23.852238, 16.112999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.449444, 23.095541, 16.614714>,  <9.903213, 23.597532, 16.680937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.449444, 23.095541, 16.614714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485250, 23.295572, 16.270178>,  <9.506735, 23.415590, 16.063456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.485250, 23.295572, 16.270178>,  <9.449444, 23.095541, 16.614714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.485250, 23.295572, 16.270178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092206, -0.856938, -0.507105,
		-0.991708, 0.124816, -0.030601,
		0.089518, 0.500079, -0.861341,
		9.512106, 23.445597, 16.011776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.974434, 22.748907, 16.209751>,  <9.449444, 23.095541, 16.614714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.974434, 22.748907, 16.209751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.211539, 22.955494, 15.962562>,  <9.353803, 23.079447, 15.814247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.211539, 22.955494, 15.962562>,  <8.974434, 22.748907, 16.209751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.211539, 22.955494, 15.962562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080249, -0.801369, -0.592763,
		-0.801369, 0.301776, -0.516468,
		0.592763, 0.516468, -0.617975,
		9.389368, 23.110434, 15.777169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.652462, 22.770107, 15.536366>,  <8.974434, 22.748907, 16.209751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.652462, 22.770107, 15.536366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.047664, 22.817602, 15.496876>,  <9.284785, 22.846100, 15.473182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.047664, 22.817602, 15.496876>,  <8.652462, 22.770107, 15.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.047664, 22.817602, 15.496876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030891, -0.778383, -0.627029,
		-0.151300, 0.616459, -0.772714,
		0.988005, 0.118739, -0.098726,
		9.344066, 22.853224, 15.467257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.683241, 22.785196, 14.876672>,  <8.652462, 22.770107, 15.536366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.683241, 22.785196, 14.876672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.050039, 22.680967, 14.997484>,  <9.270118, 22.618429, 15.069972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.050039, 22.680967, 14.997484>,  <8.683241, 22.785196, 14.876672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050039, 22.680967, 14.997484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027989, -0.713265, -0.700336,
		0.397916, 0.650658, -0.646767,
		0.916995, -0.260572, 0.302031,
		9.325138, 22.602797, 15.088094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991560, 22.652760, 14.358226>,  <8.683241, 22.785196, 14.876672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991560, 22.652760, 14.358226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.220037, 22.438526, 14.607027>,  <9.357123, 22.309986, 14.756308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.220037, 22.438526, 14.607027>,  <8.991560, 22.652760, 14.358226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.220037, 22.438526, 14.607027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035284, -0.741065, -0.670505,
		0.820057, 0.404934, -0.404394,
		0.571193, -0.535584, 0.622003,
		9.391396, 22.277851, 14.793628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.564460, 22.322083, 13.914139>,  <8.991560, 22.652760, 14.358226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.564460, 22.322083, 13.914139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535295, 22.107277, 14.250305>,  <9.517796, 21.978394, 14.452005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.535295, 22.107277, 14.250305>,  <9.564460, 22.322083, 13.914139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.535295, 22.107277, 14.250305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102914, -0.842212, -0.529233,
		0.992014, 0.047903, 0.116674,
		-0.072912, -0.537014, 0.840416,
		9.513421, 21.946173, 14.502430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.829310, 21.745274, 13.655771>,  <9.564460, 22.322083, 13.914139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.829310, 21.745274, 13.655771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.727400, 21.658001, 14.032597>,  <9.666253, 21.605637, 14.258692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.727400, 21.658001, 14.032597>,  <9.829310, 21.745274, 13.655771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.727400, 21.658001, 14.032597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021147, -0.975237, -0.220147,
		0.966769, -0.036167, 0.253081,
		-0.254776, -0.218184, 0.942064,
		9.650967, 21.592546, 14.315216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.108441, 21.132547, 13.794323>,  <9.829310, 21.745274, 13.655771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.108441, 21.132547, 13.794323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840962, 21.096169, 14.089503>,  <9.680475, 21.074341, 14.266612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840962, 21.096169, 14.089503>,  <10.108441, 21.132547, 13.794323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.840962, 21.096169, 14.089503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271653, -0.893995, -0.356339,
		0.692134, -0.438750, 0.573105,
		-0.668697, -0.090948, 0.737952,
		9.640353, 21.068884, 14.310889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.143306, 20.424337, 14.000144>,  <10.108441, 21.132547, 13.794323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.143306, 20.424337, 14.000144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802058, 20.571747, 14.147862>,  <9.597310, 20.660192, 14.236494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802058, 20.571747, 14.147862>,  <10.143306, 20.424337, 14.000144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.802058, 20.571747, 14.147862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456601, -0.869845, -0.186777,
		0.252399, -0.327964, 0.910348,
		-0.853118, 0.368523, 0.369297,
		9.546123, 20.682304, 14.258652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.021087, 19.999990, 14.594465>,  <10.143306, 20.424337, 14.000144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.021087, 19.999990, 14.594465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.669066, 20.154667, 14.484206>,  <9.457854, 20.247473, 14.418051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.669066, 20.154667, 14.484206>,  <10.021087, 19.999990, 14.594465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.669066, 20.154667, 14.484206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447941, -0.868686, 0.211503,
		-0.157665, 0.309607, 0.937702,
		-0.880051, 0.386689, -0.275647,
		9.405051, 20.270674, 14.401512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.458149, 19.652006, 15.015369>,  <10.021087, 19.999990, 14.594465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.458149, 19.652006, 15.015369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286453, 19.793907, 14.683127>,  <9.183436, 19.879047, 14.483782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286453, 19.793907, 14.683127>,  <9.458149, 19.652006, 15.015369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.286453, 19.793907, 14.683127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609547, -0.792404, -0.023435,
		-0.666489, 0.496234, 0.556368,
		-0.429239, 0.354751, -0.830606,
		9.157681, 19.900333, 14.433946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.721107, 19.697025, 15.184827>,  <9.458149, 19.652006, 15.015369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.721107, 19.697025, 15.184827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.810501, 19.670378, 14.795856>,  <8.864137, 19.654390, 14.562472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.810501, 19.670378, 14.795856>,  <8.721107, 19.697025, 15.184827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.810501, 19.670378, 14.795856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579721, -0.811105, -0.077665,
		-0.783568, 0.581094, -0.219888,
		0.223483, -0.066618, -0.972428,
		8.877546, 19.650393, 14.504127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.140684, 19.472925, 14.892727>,  <8.721107, 19.697025, 15.184827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.140684, 19.472925, 14.892727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.357461, 19.404375, 14.563624>,  <8.487527, 19.363245, 14.366162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.357461, 19.404375, 14.563624>,  <8.140684, 19.472925, 14.892727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.357461, 19.404375, 14.563624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557574, -0.805819, -0.199420,
		-0.628817, 0.566822, -0.532262,
		0.541942, -0.171376, -0.822757,
		8.520043, 19.352962, 14.316797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.715768, 19.189693, 14.370114>,  <8.140684, 19.472925, 14.892727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.715768, 19.189693, 14.370114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.084588, 19.089306, 14.252241>,  <8.305880, 19.029074, 14.181518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.084588, 19.089306, 14.252241>,  <7.715768, 19.189693, 14.370114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.084588, 19.089306, 14.252241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285516, -0.955029, -0.080005,
		-0.261352, 0.157905, -0.952240,
		0.922050, -0.250970, -0.294683,
		8.361203, 19.014015, 14.163836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.638408, 18.891743, 13.742330>,  <7.715768, 19.189693, 14.370114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.638408, 18.891743, 13.742330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.995829, 18.762962, 13.867493>,  <8.210281, 18.685694, 13.942591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.995829, 18.762962, 13.867493>,  <7.638408, 18.891743, 13.742330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.995829, 18.762962, 13.867493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280904, -0.944605, -0.169747,
		0.350225, 0.063781, -0.934492,
		0.893552, -0.321952, 0.312908,
		8.263894, 18.666376, 13.961365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.858842, 18.332512, 13.251644>,  <7.638408, 18.891743, 13.742330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.858842, 18.332512, 13.251644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.076018, 18.273703, 13.582364>,  <8.206324, 18.238417, 13.780796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.076018, 18.273703, 13.582364>,  <7.858842, 18.332512, 13.251644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.076018, 18.273703, 13.582364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305786, -0.951576, 0.031590,
		0.782119, -0.269976, -0.561607,
		0.542940, -0.147025, 0.826801,
		8.238900, 18.229595, 13.830404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.053529, 17.664730, 13.084517>,  <7.858842, 18.332512, 13.251644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.053529, 17.664730, 13.084517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.081045, 17.738384, 13.476713>,  <8.097555, 17.782578, 13.712031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.081045, 17.738384, 13.476713>,  <8.053529, 17.664730, 13.084517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.081045, 17.738384, 13.476713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321874, -0.926163, 0.196517,
		0.944280, -0.329113, -0.004443,
		0.068791, 0.184137, 0.980491,
		8.101683, 17.793625, 13.770861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.351288, 17.155228, 13.262220>,  <8.053529, 17.664730, 13.084517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.351288, 17.155228, 13.262220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.206989, 17.286940, 13.611261>,  <8.120410, 17.365967, 13.820686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.206989, 17.286940, 13.611261>,  <8.351288, 17.155228, 13.262220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.206989, 17.286940, 13.611261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387031, -0.904095, 0.181161,
		0.848569, -0.272371, 0.453591,
		-0.360746, 0.329281, 0.872603,
		8.098765, 17.385723, 13.873042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.477686, 16.678261, 13.748476>,  <8.351288, 17.155228, 13.262220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.477686, 16.678261, 13.748476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.174125, 16.874527, 13.919735>,  <7.991988, 16.992287, 14.022491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.174125, 16.874527, 13.919735>,  <8.477686, 16.678261, 13.748476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.174125, 16.874527, 13.919735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334896, -0.857936, 0.389603,
		0.558489, 0.152286, 0.815413,
		-0.758904, 0.490668, 0.428148,
		7.946454, 17.021727, 14.048180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.446392, 16.466366, 14.470457>,  <8.477686, 16.678261, 13.748476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.446392, 16.466366, 14.470457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.089043, 16.622580, 14.381583>,  <7.874633, 16.716307, 14.328259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.089043, 16.622580, 14.381583>,  <8.446392, 16.466366, 14.470457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.089043, 16.622580, 14.381583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446602, -0.717586, 0.534431,
		0.049277, 0.576675, 0.815486,
		-0.893375, 0.390533, -0.222184,
		7.821030, 16.739740, 14.314928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.631161, 15.810225, 14.164616>,  <8.446392, 16.466366, 14.470457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.631161, 15.810225, 14.164616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.660477, 15.817513, 13.765758>,  <8.678066, 15.821885, 13.526443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.660477, 15.817513, 13.765758>,  <8.631161, 15.810225, 14.164616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.660477, 15.817513, 13.765758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003530, 0.999832, 0.018010,
		0.997305, 0.002200, 0.073342,
		0.073290, 0.018220, -0.997144,
		8.682464, 15.822979, 13.466615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965181, 15.332300, 13.656441>,  <8.631161, 15.810225, 14.164616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965181, 15.332300, 13.656441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114061, 14.999930, 13.821865>,  <9.203389, 14.800508, 13.921120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114061, 14.999930, 13.821865>,  <8.965181, 15.332300, 13.656441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114061, 14.999930, 13.821865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886284, -0.450496, -0.107493,
		0.275626, -0.326523, -0.904109,
		0.372199, -0.830925, 0.413561,
		9.225721, 14.750653, 13.945933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.580529, 14.850588, 13.492033>,  <8.965181, 15.332300, 13.656441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.580529, 14.850588, 13.492033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.796211, 14.624210, 13.242564>,  <9.925620, 14.488384, 13.092883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.796211, 14.624210, 13.242564>,  <9.580529, 14.850588, 13.492033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.796211, 14.624210, 13.242564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544196, -0.331036, 0.770887,
		-0.642736, -0.755066, 0.129487,
		0.539205, -0.565942, -0.623672,
		9.957973, 14.454428, 13.055463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781270, 14.209291, 13.784159>,  <9.580529, 14.850588, 13.492033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781270, 14.209291, 13.784159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.059055, 14.229776, 13.497077>,  <10.225726, 14.242067, 13.324828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.059055, 14.229776, 13.497077>,  <9.781270, 14.209291, 13.784159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.059055, 14.229776, 13.497077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660588, -0.440755, 0.607748,
		-0.285208, -0.896165, -0.339919,
		0.694464, 0.051212, -0.717703,
		10.267394, 14.245140, 13.281766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.057629, 13.533338, 13.553102>,  <9.781270, 14.209291, 13.784159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.057629, 13.533338, 13.553102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312385, 13.841475, 13.540810>,  <10.465238, 14.026357, 13.533434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312385, 13.841475, 13.540810>,  <10.057629, 13.533338, 13.553102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.312385, 13.841475, 13.540810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552008, -0.427827, 0.715717,
		0.538200, -0.472796, -0.697714,
		0.636889, 0.770343, -0.030731,
		10.503451, 14.072577, 13.531590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710476, 13.232610, 13.421501>,  <10.057629, 13.533338, 13.553102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710476, 13.232610, 13.421501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.714190, 13.579785, 13.620135>,  <10.716417, 13.788091, 13.739316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.714190, 13.579785, 13.620135>,  <10.710476, 13.232610, 13.421501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.714190, 13.579785, 13.620135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341216, -0.469550, 0.814306,
		0.939939, 0.161883, -0.300513,
		0.009284, 0.867938, 0.496586,
		10.716974, 13.840167, 13.769111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.403785, 13.261465, 13.791195>,  <10.710476, 13.232610, 13.421501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.403785, 13.261465, 13.791195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.125726, 13.472337, 13.986685>,  <10.958890, 13.598860, 14.103978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.125726, 13.472337, 13.986685>,  <11.403785, 13.261465, 13.791195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.125726, 13.472337, 13.986685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199091, -0.512073, 0.835550,
		0.690748, 0.678131, 0.251009,
		-0.695148, 0.527180, 0.488724,
		10.917181, 13.630491, 14.133302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.787588, 13.660103, 14.395542>,  <11.403785, 13.261465, 13.791195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.787588, 13.660103, 14.395542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.423708, 13.493998, 14.396094>,  <11.205379, 13.394334, 14.396425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.423708, 13.493998, 14.396094>,  <11.787588, 13.660103, 14.395542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.423708, 13.493998, 14.396094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195610, -0.425578, 0.883527,
		-0.366310, 0.804014, 0.468378,
		-0.909700, -0.415264, 0.001379,
		11.150798, 13.369418, 14.396508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.749971, 13.394344, 15.170729>,  <11.787588, 13.660103, 14.395542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.749971, 13.394344, 15.170729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905609, 13.029200, 15.121268>,  <11.998992, 12.810113, 15.091592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905609, 13.029200, 15.121268>,  <11.749971, 13.394344, 15.170729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905609, 13.029200, 15.121268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193992, -0.050022, 0.979727,
		-0.900540, -0.405194, 0.157625,
		0.389095, -0.912861, -0.123651,
		12.022338, 12.755342, 15.084173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.343652, 12.821379, 15.544206>,  <11.749971, 13.394344, 15.170729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.343652, 12.821379, 15.544206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.740810, 12.790537, 15.507960>,  <11.979106, 12.772032, 15.486213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.740810, 12.790537, 15.507960>,  <11.343652, 12.821379, 15.544206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.740810, 12.790537, 15.507960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085532, -0.066847, 0.994090,
		-0.082716, -0.994779, -0.059777,
		0.992896, -0.077114, -0.090615,
		12.038679, 12.767406, 15.480776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.589828, 12.275774, 15.980844>,  <11.343652, 12.821379, 15.544206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.589828, 12.275774, 15.980844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882257, 12.543817, 15.929468>,  <12.057714, 12.704642, 15.898643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882257, 12.543817, 15.929468>,  <11.589828, 12.275774, 15.980844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882257, 12.543817, 15.929468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081144, 0.101519, 0.991519,
		0.677461, -0.735291, 0.019842,
		0.731069, 0.670106, -0.128440,
		12.101577, 12.744848, 15.890936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111894, 12.021894, 16.487980>,  <11.589828, 12.275774, 15.980844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.111894, 12.021894, 16.487980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222235, 12.397472, 16.405729>,  <12.288440, 12.622820, 16.356379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222235, 12.397472, 16.405729>,  <12.111894, 12.021894, 16.487980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222235, 12.397472, 16.405729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027479, 0.206136, 0.978137,
		0.960807, -0.275473, 0.031062,
		0.275853, 0.938948, -0.205626,
		12.304991, 12.679156, 16.344042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700036, 12.182301, 16.913420>,  <12.111894, 12.021894, 16.487980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700036, 12.182301, 16.913420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.573050, 12.549594, 16.818710>,  <12.496858, 12.769970, 16.761885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.573050, 12.549594, 16.818710>,  <12.700036, 12.182301, 16.913420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.573050, 12.549594, 16.818710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103759, 0.214552, 0.971186,
		0.942576, 0.332887, 0.027162,
		-0.317467, 0.918234, -0.236772,
		12.477810, 12.825064, 16.747679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051358, 12.632727, 17.301008>,  <12.700036, 12.182301, 16.913420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051358, 12.632727, 17.301008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.738048, 12.859694, 17.199409>,  <12.550061, 12.995875, 17.138451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.738048, 12.859694, 17.199409>,  <13.051358, 12.632727, 17.301008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.738048, 12.859694, 17.199409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072714, 0.322143, 0.943895,
		0.617406, 0.757800, -0.211068,
		-0.783277, 0.567419, -0.253995,
		12.503064, 13.029921, 17.123211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097343, 13.243701, 17.791677>,  <13.051358, 12.632727, 17.301008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097343, 13.243701, 17.791677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.727058, 13.237497, 17.640514>,  <12.504888, 13.233775, 17.549816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.727058, 13.237497, 17.640514>,  <13.097343, 13.243701, 17.791677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.727058, 13.237497, 17.640514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372252, 0.214239, 0.903067,
		0.066957, 0.976658, -0.204098,
		-0.925713, -0.015509, -0.377908,
		12.449345, 13.232844, 17.527142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724073, 13.709670, 18.303268>,  <13.097343, 13.243701, 17.791677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724073, 13.709670, 18.303268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.445490, 13.486018, 18.123348>,  <12.278339, 13.351827, 18.015396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.445490, 13.486018, 18.123348>,  <12.724073, 13.709670, 18.303268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445490, 13.486018, 18.123348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488549, -0.089664, 0.867917,
		-0.525609, 0.824217, -0.210715,
		-0.696459, -0.559130, -0.449799,
		12.236552, 13.318279, 17.988409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125708, 14.041263, 18.290770>,  <12.724073, 13.709670, 18.303268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125708, 14.041263, 18.290770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.031143, 13.652785, 18.278812>,  <11.974404, 13.419699, 18.271639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.031143, 13.652785, 18.278812>,  <12.125708, 14.041263, 18.290770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.031143, 13.652785, 18.278812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483816, 0.090982, 0.870427,
		-0.842633, 0.220242, -0.491388,
		-0.236412, -0.971193, -0.029892,
		11.960219, 13.361427, 18.269844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431588, 14.046362, 18.559523>,  <12.125708, 14.041263, 18.290770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431588, 14.046362, 18.559523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550119, 13.665494, 18.589352>,  <11.621238, 13.436973, 18.607248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550119, 13.665494, 18.589352>,  <11.431588, 14.046362, 18.559523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.550119, 13.665494, 18.589352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487875, -0.083784, 0.868883,
		-0.821077, -0.293855, -0.489368,
		0.296327, -0.952171, 0.074571,
		11.639017, 13.379843, 18.611723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.803881, 13.667179, 18.823942>,  <11.431588, 14.046362, 18.559523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.803881, 13.667179, 18.823942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113873, 13.428697, 18.907793>,  <11.299868, 13.285607, 18.958103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113873, 13.428697, 18.907793>,  <10.803881, 13.667179, 18.823942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113873, 13.428697, 18.907793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303557, -0.060240, 0.950907,
		-0.554309, -0.800568, -0.227667,
		0.774980, -0.596206, 0.209627,
		11.346367, 13.249835, 18.970680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.470557, 13.114218, 19.065523>,  <10.803881, 13.667179, 18.823942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.470557, 13.114218, 19.065523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839190, 13.124058, 19.220484>,  <11.060370, 13.129962, 19.313459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839190, 13.124058, 19.220484>,  <10.470557, 13.114218, 19.065523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.839190, 13.124058, 19.220484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380486, -0.140475, 0.914055,
		0.076908, -0.989778, -0.120099,
		0.921583, 0.024602, 0.387400,
		11.115665, 13.131438, 19.336704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.313927, 12.908157, 19.744766>,  <10.470557, 13.114218, 19.065523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.313927, 12.908157, 19.744766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.709931, 12.929767, 19.796852>,  <10.947535, 12.942733, 19.828104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.709931, 12.929767, 19.796852>,  <10.313927, 12.908157, 19.744766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.709931, 12.929767, 19.796852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114841, -0.226690, 0.967173,
		0.081769, -0.972468, -0.218222,
		0.990013, 0.054024, 0.130215,
		11.006935, 12.945973, 19.835917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.593502, 12.358287, 20.085772>,  <10.313927, 12.908157, 19.744766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.593502, 12.358287, 20.085772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.816047, 12.678619, 20.174433>,  <10.949574, 12.870819, 20.227629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.816047, 12.678619, 20.174433>,  <10.593502, 12.358287, 20.085772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.816047, 12.678619, 20.174433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101098, -0.199528, 0.974663,
		0.824767, -0.564674, -0.030047,
		0.556362, 0.800832, 0.221651,
		10.982955, 12.918869, 20.240929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.013866, 12.178731, 20.648643>,  <10.593502, 12.358287, 20.085772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.013866, 12.178731, 20.648643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.051558, 12.576285, 20.671663>,  <11.074172, 12.814818, 20.685476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.051558, 12.576285, 20.671663>,  <11.013866, 12.178731, 20.648643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.051558, 12.576285, 20.671663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173815, -0.040496, 0.983945,
		0.980260, -0.102719, 0.168936,
		0.094229, 0.993886, 0.057550,
		11.079826, 12.874451, 20.688929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381035, 12.243853, 21.249838>,  <11.013866, 12.178731, 20.648643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381035, 12.243853, 21.249838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220398, 12.605490, 21.191406>,  <11.124016, 12.822472, 21.156347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220398, 12.605490, 21.191406>,  <11.381035, 12.243853, 21.249838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220398, 12.605490, 21.191406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258070, 0.041329, 0.965242,
		0.878706, 0.425333, 0.216722,
		-0.401592, 0.904093, -0.146081,
		11.099920, 12.876718, 21.147581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491494, 12.543288, 21.799944>,  <11.381035, 12.243853, 21.249838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491494, 12.543288, 21.799944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.208987, 12.772143, 21.633165>,  <11.039483, 12.909456, 21.533098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.208987, 12.772143, 21.633165>,  <11.491494, 12.543288, 21.799944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.208987, 12.772143, 21.633165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385911, 0.182616, 0.904281,
		0.593515, 0.799569, 0.091819,
		-0.706267, 0.572138, -0.416947,
		10.997108, 12.943785, 21.508081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.610704, 13.136119, 22.183393>,  <11.491494, 12.543288, 21.799944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.610704, 13.136119, 22.183393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.234653, 13.171061, 22.051619>,  <11.009022, 13.192025, 21.972553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.234653, 13.171061, 22.051619>,  <11.610704, 13.136119, 22.183393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.234653, 13.171061, 22.051619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309960, 0.182776, 0.933015,
		0.141715, 0.979266, -0.144757,
		-0.940129, 0.087353, -0.329435,
		10.952614, 13.197267, 21.952787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.323614, 13.699853, 22.543798>,  <11.610704, 13.136119, 22.183393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.323614, 13.699853, 22.543798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028583, 13.447267, 22.448111>,  <10.851563, 13.295714, 22.390697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028583, 13.447267, 22.448111>,  <11.323614, 13.699853, 22.543798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028583, 13.447267, 22.448111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446765, 0.190704, 0.874090,
		-0.506338, 0.751587, -0.422776,
		-0.737580, -0.631466, -0.239222,
		10.807309, 13.257827, 22.376345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.729254, 13.982904, 22.824087>,  <11.323614, 13.699853, 22.543798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.729254, 13.982904, 22.824087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614595, 13.608016, 22.744637>,  <10.545800, 13.383083, 22.696966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614595, 13.608016, 22.744637>,  <10.729254, 13.982904, 22.824087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.614595, 13.608016, 22.744637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425152, -0.061353, 0.903040,
		-0.858534, 0.343299, -0.380874,
		-0.286645, -0.937220, -0.198627,
		10.528602, 13.326850, 22.685049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.053271, 13.943973, 23.032541>,  <10.729254, 13.982904, 22.824087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.053271, 13.943973, 23.032541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166038, 13.561175, 23.005157>,  <10.233697, 13.331497, 22.988728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166038, 13.561175, 23.005157>,  <10.053271, 13.943973, 23.032541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.166038, 13.561175, 23.005157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449293, -0.194726, 0.871904,
		-0.847738, -0.215046, -0.484867,
		0.281916, -0.956994, -0.068458,
		10.250612, 13.274077, 22.984621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.516806, 13.572718, 23.179800>,  <10.053271, 13.943973, 23.032541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.516806, 13.572718, 23.179800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.804855, 13.309031, 23.266386>,  <9.977685, 13.150820, 23.318338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.804855, 13.309031, 23.266386>,  <9.516806, 13.572718, 23.179800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.804855, 13.309031, 23.266386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475426, -0.241574, 0.845939,
		-0.505365, -0.712093, -0.487372,
		0.720123, -0.659217, 0.216464,
		10.020892, 13.111267, 23.331326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.194000, 12.921592, 23.617916>,  <9.516806, 13.572718, 23.179800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.194000, 12.921592, 23.617916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.587775, 12.900051, 23.684826>,  <9.824040, 12.887127, 23.724972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.587775, 12.900051, 23.684826>,  <9.194000, 12.921592, 23.617916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.587775, 12.900051, 23.684826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175601, -0.338052, 0.924600,
		0.006757, -0.939585, -0.342248,
		0.984438, -0.053852, 0.167277,
		9.883106, 12.883896, 23.735008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261701, 12.272912, 23.932013>,  <9.194000, 12.921592, 23.617916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261701, 12.272912, 23.932013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.592242, 12.473672, 24.034178>,  <9.790567, 12.594128, 24.095478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.592242, 12.473672, 24.034178>,  <9.261701, 12.272912, 23.932013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.592242, 12.473672, 24.034178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142975, -0.251705, 0.957185,
		0.544699, -0.827491, -0.136238,
		0.826354, 0.501899, 0.255414,
		9.840149, 12.624242, 24.110802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.677671, 11.769028, 24.400391>,  <9.261701, 12.272912, 23.932013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.677671, 11.769028, 24.400391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.811265, 12.139206, 24.471949>,  <9.891421, 12.361313, 24.514883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.811265, 12.139206, 24.471949>,  <9.677671, 11.769028, 24.400391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.811265, 12.139206, 24.471949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209518, -0.257936, 0.943171,
		0.918997, -0.277522, -0.280045,
		0.333985, 0.925446, 0.178897,
		9.911461, 12.416840, 24.525618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.331548, 11.669117, 24.702772>,  <9.677671, 11.769028, 24.400391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.331548, 11.669117, 24.702772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258723, 12.048739, 24.805649>,  <10.215029, 12.276513, 24.867374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258723, 12.048739, 24.805649>,  <10.331548, 11.669117, 24.702772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258723, 12.048739, 24.805649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267065, -0.204004, 0.941838,
		0.946325, 0.240159, -0.216318,
		-0.182061, 0.949055, 0.257192,
		10.204105, 12.333456, 24.882807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903523, 11.815176, 25.074343>,  <10.331548, 11.669117, 24.702772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903523, 11.815176, 25.074343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.623169, 12.080965, 25.178062>,  <10.454956, 12.240438, 25.240294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.623169, 12.080965, 25.178062>,  <10.903523, 11.815176, 25.074343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.623169, 12.080965, 25.178062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224722, -0.139307, 0.964414,
		0.676949, 0.734213, -0.051683,
		-0.700885, 0.664473, 0.259297,
		10.412903, 12.280307, 25.255852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.138191, 12.355296, 25.553171>,  <10.903523, 11.815176, 25.074343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.138191, 12.355296, 25.553171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.746055, 12.300724, 25.610188>,  <10.510773, 12.267981, 25.644398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.746055, 12.300724, 25.610188>,  <11.138191, 12.355296, 25.553171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.746055, 12.300724, 25.610188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174032, -0.257471, 0.950485,
		-0.092974, 0.956606, 0.276152,
		-0.980341, -0.136429, 0.142542,
		10.451952, 12.259795, 25.652950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.010592, 12.667949, 26.194563>,  <11.138191, 12.355296, 25.553171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.010592, 12.667949, 26.194563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.677927, 12.447743, 26.165514>,  <10.478328, 12.315620, 26.148085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.677927, 12.447743, 26.165514>,  <11.010592, 12.667949, 26.194563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.677927, 12.447743, 26.165514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094199, -0.268763, 0.958589,
		-0.547234, 0.790381, 0.275378,
		-0.831662, -0.550513, -0.072624,
		10.428429, 12.282590, 26.143726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.526372, 12.910368, 26.748100>,  <11.010592, 12.667949, 26.194563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.526372, 12.910368, 26.748100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449926, 12.533703, 26.637287>,  <10.404059, 12.307704, 26.570799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.449926, 12.533703, 26.637287>,  <10.526372, 12.910368, 26.748100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449926, 12.533703, 26.637287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014391, -0.279516, 0.960033,
		-0.981462, 0.187463, 0.039868,
		-0.191114, -0.941663, -0.277032,
		10.392592, 12.251204, 26.554178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058763, 12.650037, 27.142000>,  <10.526372, 12.910368, 26.748100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058763, 12.650037, 27.142000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.216025, 12.312695, 26.995480>,  <10.310383, 12.110289, 26.907566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.216025, 12.312695, 26.995480>,  <10.058763, 12.650037, 27.142000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.216025, 12.312695, 26.995480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044631, -0.380411, 0.923740,
		-0.918388, -0.379523, -0.111922,
		0.393156, -0.843356, -0.366304,
		10.333972, 12.059688, 26.885588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.709519, 12.132226, 27.519373>,  <10.058763, 12.650037, 27.142000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.709519, 12.132226, 27.519373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029037, 11.941242, 27.372969>,  <10.220747, 11.826652, 27.285126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029037, 11.941242, 27.372969>,  <9.709519, 12.132226, 27.519373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.029037, 11.941242, 27.372969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108066, -0.484613, 0.868028,
		-0.591822, -0.732927, -0.335507,
		0.798792, -0.477460, -0.366009,
		10.268674, 11.798004, 27.263166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.577676, 11.405077, 27.642155>,  <9.709519, 12.132226, 27.519373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.577676, 11.405077, 27.642155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972201, 11.441151, 27.586941>,  <10.208917, 11.462795, 27.553812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972201, 11.441151, 27.586941>,  <9.577676, 11.405077, 27.642155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972201, 11.441151, 27.586941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164878, -0.532519, 0.830204,
		0.001366, -0.841599, -0.540100,
		0.986313, 0.090185, -0.138034,
		10.268095, 11.468206, 27.545530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.826822, 10.669627, 27.704071>,  <9.577676, 11.405077, 27.642155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.826822, 10.669627, 27.704071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.142767, 10.904217, 27.775812>,  <10.332334, 11.044971, 27.818857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.142767, 10.904217, 27.775812>,  <9.826822, 10.669627, 27.704071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.142767, 10.904217, 27.775812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261764, -0.586864, 0.766205,
		0.554616, -0.558247, -0.617058,
		0.789861, 0.586473, 0.179355,
		10.379725, 11.080158, 27.829618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318564, 10.190000, 27.827362>,  <9.826822, 10.669627, 27.704071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318564, 10.190000, 27.827362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.433495, 10.526821, 28.009960>,  <10.502453, 10.728914, 28.119520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.433495, 10.526821, 28.009960>,  <10.318564, 10.190000, 27.827362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433495, 10.526821, 28.009960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188430, -0.516971, 0.835006,
		0.939116, -0.153901, -0.307206,
		0.287324, 0.842054, 0.456496,
		10.519692, 10.779437, 28.146910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108604, 10.130079, 28.076759>,  <10.318564, 10.190000, 27.827362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108604, 10.130079, 28.076759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907929, 10.412276, 28.276995>,  <10.787524, 10.581594, 28.397137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907929, 10.412276, 28.276995>,  <11.108604, 10.130079, 28.076759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907929, 10.412276, 28.276995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206064, -0.464561, 0.861232,
		0.840147, 0.535223, 0.087688,
		-0.501688, 0.705492, 0.500589,
		10.757423, 10.623924, 28.427172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431585, 10.235930, 28.720356>,  <11.108604, 10.130079, 28.076759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431585, 10.235930, 28.720356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.103065, 10.443638, 28.814865>,  <10.905952, 10.568262, 28.871571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.103065, 10.443638, 28.814865>,  <11.431585, 10.235930, 28.720356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.103065, 10.443638, 28.814865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001622, -0.412025, 0.911171,
		0.570492, 0.748729, 0.337555,
		-0.821301, 0.519269, 0.236271,
		10.856674, 10.599419, 28.885746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.601286, 10.663811, 29.306133>,  <11.431585, 10.235930, 28.720356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.601286, 10.663811, 29.306133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209217, 10.587126, 29.286106>,  <10.973975, 10.541115, 29.274090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209217, 10.587126, 29.286106>,  <11.601286, 10.663811, 29.306133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209217, 10.587126, 29.286106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036113, -0.421300, 0.906202,
		-0.194824, 0.886427, 0.419870,
		-0.980173, -0.191713, -0.050068,
		10.915165, 10.529612, 29.271086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.310782, 10.985873, 29.876995>,  <11.601286, 10.663811, 29.306133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.310782, 10.985873, 29.876995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030823, 10.724583, 29.761454>,  <10.862847, 10.567808, 29.692129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030823, 10.724583, 29.761454>,  <11.310782, 10.985873, 29.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.030823, 10.724583, 29.761454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045641, -0.362690, 0.930792,
		-0.712782, 0.664644, 0.224032,
		-0.699899, -0.653226, -0.288854,
		10.820853, 10.528615, 29.674797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863881, 11.049815, 30.414221>,  <11.310782, 10.985873, 29.876995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863881, 11.049815, 30.414221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753863, 10.704056, 30.245857>,  <10.687853, 10.496600, 30.144838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753863, 10.704056, 30.245857>,  <10.863881, 11.049815, 30.414221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753863, 10.704056, 30.245857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123886, -0.466008, 0.876064,
		-0.953417, 0.188811, 0.235260,
		-0.275044, -0.864399, -0.420909,
		10.671350, 10.444736, 30.119585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.206920, 10.783880, 30.520327>,  <10.863881, 11.049815, 30.414221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.206920, 10.783880, 30.520327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441998, 10.466296, 30.458050>,  <10.583046, 10.275745, 30.420685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441998, 10.466296, 30.458050>,  <10.206920, 10.783880, 30.520327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441998, 10.466296, 30.458050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026654, -0.211323, 0.977053,
		-0.808642, -0.570061, -0.145356,
		0.587697, -0.793960, -0.155690,
		10.618308, 10.228108, 30.411343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928306, 10.400039, 31.023460>,  <10.206920, 10.783880, 30.520327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928306, 10.400039, 31.023460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.284666, 10.239138, 30.939091>,  <10.498483, 10.142597, 30.888470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.284666, 10.239138, 30.939091>,  <9.928306, 10.400039, 31.023460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.284666, 10.239138, 30.939091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128512, -0.222165, 0.966503,
		-0.435637, -0.888165, -0.146233,
		0.890901, -0.402252, -0.210923,
		10.551936, 10.118462, 30.875814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.105708, 9.712603, 31.111509>,  <9.928306, 10.400039, 31.023460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.105708, 9.712603, 31.111509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.443874, 9.915271, 31.179108>,  <10.646774, 10.036872, 31.219667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.443874, 9.915271, 31.179108>,  <10.105708, 9.712603, 31.111509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.443874, 9.915271, 31.179108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083405, -0.437758, 0.895216,
		0.527559, -0.742733, -0.412345,
		0.845414, 0.506671, 0.168996,
		10.697498, 10.067272, 31.229807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707963, 9.230282, 31.266714>,  <10.105708, 9.712603, 31.111509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707963, 9.230282, 31.266714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687985, 9.582978, 31.454348>,  <10.675999, 9.794596, 31.566927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687985, 9.582978, 31.454348>,  <10.707963, 9.230282, 31.266714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.687985, 9.582978, 31.454348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078724, -0.471684, 0.878247,
		0.995644, 0.006935, 0.092971,
		-0.049944, 0.881740, 0.469083,
		10.673002, 9.847501, 31.595072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.151808, 9.303163, 31.954746>,  <10.707963, 9.230282, 31.266714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.151808, 9.303163, 31.954746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815772, 9.518406, 31.982141>,  <10.614151, 9.647552, 31.998579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815772, 9.518406, 31.982141>,  <11.151808, 9.303163, 31.954746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815772, 9.518406, 31.982141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225840, -0.461754, 0.857776,
		0.493202, 0.705140, 0.509440,
		-0.840088, 0.538109, 0.068489,
		10.563745, 9.679838, 32.002689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.739762, 9.234677, 32.515884>,  <11.151808, 9.303163, 31.954746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.739762, 9.234677, 32.515884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.835281, 8.860489, 32.411674>,  <10.892593, 8.635976, 32.349148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.835281, 8.860489, 32.411674>,  <10.739762, 9.234677, 32.515884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.835281, 8.860489, 32.411674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751363, 0.008041, 0.659840,
		-0.615166, -0.353315, 0.704798,
		0.238798, -0.935470, -0.260521,
		10.906921, 8.579848, 32.333519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708106, 8.742183, 33.078892>,  <10.739762, 9.234677, 32.515884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708106, 8.742183, 33.078892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990377, 8.670369, 32.804729>,  <11.159740, 8.627281, 32.640232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990377, 8.670369, 32.804729>,  <10.708106, 8.742183, 33.078892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.990377, 8.670369, 32.804729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707986, 0.140646, 0.692080,
		-0.027853, -0.973646, 0.226360,
		0.705678, -0.179536, -0.685410,
		11.202081, 8.616508, 32.599106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.217094, 8.295950, 33.315487>,  <10.708106, 8.742183, 33.078892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.217094, 8.295950, 33.315487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407167, 8.443395, 32.995907>,  <11.521211, 8.531861, 32.804157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407167, 8.443395, 32.995907>,  <11.217094, 8.295950, 33.315487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407167, 8.443395, 32.995907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851119, 0.037730, 0.523615,
		0.223155, -0.928818, -0.295804,
		0.475182, 0.368611, -0.798954,
		11.549722, 8.553978, 32.756222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.817622, 7.844989, 32.906445>,  <11.217094, 8.295950, 33.315487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.817622, 7.844989, 32.906445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.842125, 8.242969, 32.938259>,  <11.856827, 8.481756, 32.957348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.842125, 8.242969, 32.938259>,  <11.817622, 7.844989, 32.906445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.842125, 8.242969, 32.938259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868311, -0.092419, 0.487334,
		0.492223, 0.039211, -0.869585,
		0.061257, 0.994948, 0.079538,
		11.860502, 8.541453, 32.962120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.476748, 8.227288, 32.672344>,  <11.817622, 7.844989, 32.906445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.476748, 8.227288, 32.672344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286285, 8.369511, 32.994053>,  <12.172008, 8.454844, 33.187077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286285, 8.369511, 32.994053>,  <12.476748, 8.227288, 32.672344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286285, 8.369511, 32.994053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773738, -0.265206, 0.575322,
		0.417857, 0.896240, -0.148827,
		-0.476157, 0.355555, 0.804273,
		12.143438, 8.476177, 33.235336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.187094, 8.258080, 31.857477>,  <12.476748, 8.227288, 32.672344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.187094, 8.258080, 31.857477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925699, 8.099766, 31.599388>,  <11.768863, 8.004777, 31.444534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925699, 8.099766, 31.599388>,  <12.187094, 8.258080, 31.857477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925699, 8.099766, 31.599388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714509, -0.041159, -0.698414,
		0.249866, -0.917420, 0.309690,
		-0.653486, -0.395786, -0.645221,
		11.729653, 7.981030, 31.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.491055, 7.613126, 31.526217>,  <12.187094, 8.258080, 31.857477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.491055, 7.613126, 31.526217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.202646, 7.760440, 31.291443>,  <12.029601, 7.848829, 31.150578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.202646, 7.760440, 31.291443>,  <12.491055, 7.613126, 31.526217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.202646, 7.760440, 31.291443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597603, -0.098215, -0.795754,
		-0.350710, -0.924511, -0.149273,
		-0.721023, 0.368285, -0.586935,
		11.986340, 7.870926, 31.115362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434452, 7.115994, 31.017183>,  <12.491055, 7.613126, 31.526217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434452, 7.115994, 31.017183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.291371, 7.465361, 30.885008>,  <12.205523, 7.674981, 30.805702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.291371, 7.465361, 30.885008>,  <12.434452, 7.115994, 31.017183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.291371, 7.465361, 30.885008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452009, -0.147700, -0.879700,
		-0.817152, -0.464033, -0.341960,
		-0.357702, 0.873418, -0.330440,
		12.184061, 7.727386, 30.785875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.243668, 7.022524, 30.332590>,  <12.434452, 7.115994, 31.017183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.243668, 7.022524, 30.332590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307706, 7.416504, 30.358639>,  <12.346128, 7.652893, 30.374268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.307706, 7.416504, 30.358639>,  <12.243668, 7.022524, 30.332590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.307706, 7.416504, 30.358639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373761, 0.000571, -0.927525,
		-0.913604, 0.172832, -0.368045,
		0.160096, 0.984951, 0.065120,
		12.355735, 7.711990, 30.378174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.126383, 7.215420, 29.695181>,  <12.243668, 7.022524, 30.332590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.126383, 7.215420, 29.695181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328306, 7.520221, 29.857426>,  <12.449460, 7.703102, 29.954773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328306, 7.520221, 29.857426>,  <12.126383, 7.215420, 29.695181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328306, 7.520221, 29.857426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379312, 0.226276, -0.897174,
		-0.775429, 0.606755, -0.174810,
		0.504809, 0.762002, 0.405610,
		12.479749, 7.748822, 29.979109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945142, 7.910174, 29.328360>,  <12.126383, 7.215420, 29.695181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945142, 7.910174, 29.328360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301087, 7.970347, 29.500643>,  <12.514655, 8.006452, 29.604013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301087, 7.970347, 29.500643>,  <11.945142, 7.910174, 29.328360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301087, 7.970347, 29.500643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365779, 0.328981, -0.870619,
		-0.272666, 0.932277, 0.237722,
		0.889864, 0.150434, 0.430710,
		12.568047, 8.015478, 29.629856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183062, 8.481834, 29.026833>,  <11.945142, 7.910174, 29.328360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183062, 8.481834, 29.026833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.513266, 8.352265, 29.211702>,  <12.711389, 8.274524, 29.322624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.513266, 8.352265, 29.211702>,  <12.183062, 8.481834, 29.026833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.513266, 8.352265, 29.211702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557975, 0.345331, -0.754593,
		0.084826, 0.880807, 0.465814,
		0.825511, -0.323922, 0.462175,
		12.760919, 8.255089, 29.350355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.639696, 8.961433, 28.826391>,  <12.183062, 8.481834, 29.026833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.639696, 8.961433, 28.826391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.842840, 8.630556, 28.922583>,  <12.964726, 8.432030, 28.980297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.842840, 8.630556, 28.922583>,  <12.639696, 8.961433, 28.826391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.842840, 8.630556, 28.922583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659196, 0.193466, -0.726658,
		0.554562, 0.527564, 0.643535,
		0.507860, -0.827193, 0.240479,
		12.995198, 8.382399, 28.994726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320112, 9.190063, 28.903111>,  <12.639696, 8.961433, 28.826391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320112, 9.190063, 28.903111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326518, 8.800723, 28.811607>,  <13.330361, 8.567119, 28.756706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326518, 8.800723, 28.811607>,  <13.320112, 9.190063, 28.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326518, 8.800723, 28.811607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621721, 0.188873, -0.760125,
		0.783075, -0.130050, 0.608178,
		0.016014, -0.973352, -0.228756,
		13.331322, 8.508718, 28.742981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.981953, 9.070391, 28.559786>,  <13.320112, 9.190063, 28.903111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.981953, 9.070391, 28.559786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765487, 8.757182, 28.437136>,  <13.635607, 8.569257, 28.363546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765487, 8.757182, 28.437136>,  <13.981953, 9.070391, 28.559786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765487, 8.757182, 28.437136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366097, 0.108883, -0.924185,
		0.757042, -0.612391, 0.227738,
		-0.541166, -0.783021, -0.306624,
		13.603137, 8.522276, 28.345148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398083, 8.750464, 28.131609>,  <13.981953, 9.070391, 28.559786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398083, 8.750464, 28.131609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075797, 8.536802, 28.029236>,  <13.882425, 8.408605, 27.967812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075797, 8.536802, 28.029236>,  <14.398083, 8.750464, 28.131609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075797, 8.536802, 28.029236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273483, 0.047780, -0.960689,
		0.525386, -0.844035, 0.107586,
		-0.805715, -0.534155, -0.255932,
		13.834083, 8.376555, 27.952456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574989, 8.293299, 27.527000>,  <14.398083, 8.750464, 28.131609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.574989, 8.293299, 27.527000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180355, 8.358490, 27.530687>,  <13.943574, 8.397605, 27.532900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180355, 8.358490, 27.530687>,  <14.574989, 8.293299, 27.527000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180355, 8.358490, 27.530687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013721, 0.139054, -0.990190,
		-0.162661, -0.976781, -0.139425,
		-0.986586, 0.162979, 0.009216,
		13.884379, 8.407383, 27.533453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349907, 7.803419, 27.051256>,  <14.574989, 8.293299, 27.527000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349907, 7.803419, 27.051256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089621, 8.106547, 27.070337>,  <13.933449, 8.288424, 27.081787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089621, 8.106547, 27.070337>,  <14.349907, 7.803419, 27.051256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089621, 8.106547, 27.070337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078965, 0.130020, -0.988362,
		-0.755205, -0.639376, -0.144448,
		-0.650715, 0.757822, 0.047704,
		13.894406, 8.333894, 27.084648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801553, 7.620712, 26.565687>,  <14.349907, 7.803419, 27.051256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801553, 7.620712, 26.565687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785975, 8.014098, 26.636429>,  <13.776628, 8.250130, 26.678873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785975, 8.014098, 26.636429>,  <13.801553, 7.620712, 26.565687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785975, 8.014098, 26.636429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034036, 0.175580, -0.983877,
		-0.998662, -0.044335, 0.026636,
		-0.038944, 0.983466, 0.176854,
		13.774292, 8.309138, 26.689486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314320, 7.816297, 26.135252>,  <13.801553, 7.620712, 26.565687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314320, 7.816297, 26.135252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.558302, 8.131511, 26.168612>,  <13.704691, 8.320640, 26.188627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.558302, 8.131511, 26.168612>,  <13.314320, 7.816297, 26.135252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558302, 8.131511, 26.168612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023116, 0.122894, -0.992151,
		-0.792099, 0.603239, 0.093176,
		0.609955, 0.788035, 0.083400,
		13.741288, 8.367921, 26.193632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.020309, 8.334925, 25.720009>,  <13.314320, 7.816297, 26.135252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.020309, 8.334925, 25.720009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412194, 8.398596, 25.768715>,  <13.647326, 8.436798, 25.797939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412194, 8.398596, 25.768715>,  <13.020309, 8.334925, 25.720009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412194, 8.398596, 25.768715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105294, 0.108131, -0.988545,
		-0.170521, 0.981310, 0.089177,
		0.979712, 0.159178, 0.121765,
		13.706108, 8.446349, 25.805244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201464, 9.049698, 25.364464>,  <13.020309, 8.334925, 25.720009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201464, 9.049698, 25.364464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502169, 8.785925, 25.363831>,  <13.682591, 8.627661, 25.363451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502169, 8.785925, 25.363831>,  <13.201464, 9.049698, 25.364464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502169, 8.785925, 25.363831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076002, 0.089027, -0.993125,
		0.655040, 0.746473, 0.117046,
		0.751762, -0.659433, -0.001583,
		13.727697, 8.588095, 25.363356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.666186, 9.449842, 24.999207>,  <13.201464, 9.049698, 25.364464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.666186, 9.449842, 24.999207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769018, 9.063635, 24.982800>,  <13.830717, 8.831910, 24.972956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769018, 9.063635, 24.982800>,  <13.666186, 9.449842, 24.999207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769018, 9.063635, 24.982800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044534, 0.030562, -0.998540,
		0.965363, 0.258532, -0.035142,
		0.257081, -0.965519, -0.041017,
		13.846143, 8.773979, 24.970495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.246083, 9.402966, 24.495382>,  <13.666186, 9.449842, 24.999207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.246083, 9.402966, 24.495382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121563, 9.024506, 24.530905>,  <14.046851, 8.797429, 24.552217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.121563, 9.024506, 24.530905>,  <14.246083, 9.402966, 24.495382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121563, 9.024506, 24.530905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061347, -0.073247, -0.995425,
		0.948329, -0.315324, -0.035242,
		-0.311300, -0.946153, 0.088806,
		14.028172, 8.740660, 24.557547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432444, 9.125224, 23.830576>,  <14.246083, 9.402966, 24.495382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432444, 9.125224, 23.830576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197816, 8.833801, 23.972076>,  <14.057039, 8.658947, 24.056976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197816, 8.833801, 23.972076>,  <14.432444, 9.125224, 23.830576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197816, 8.833801, 23.972076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168858, -0.317171, -0.933215,
		0.792100, -0.607129, 0.063020,
		-0.586570, -0.728558, 0.353750,
		14.021845, 8.615234, 24.078201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720829, 8.468839, 23.611677>,  <14.432444, 9.125224, 23.830576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720829, 8.468839, 23.611677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334831, 8.399408, 23.690321>,  <14.103232, 8.357750, 23.737507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334831, 8.399408, 23.690321>,  <14.720829, 8.468839, 23.611677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334831, 8.399408, 23.690321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179258, -0.110702, -0.977554,
		0.191447, -0.978579, 0.075712,
		-0.964995, -0.173578, 0.196612,
		14.045333, 8.347336, 23.749304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498299, 7.916802, 23.219971>,  <14.720829, 8.468839, 23.611677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498299, 7.916802, 23.219971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141253, 8.080790, 23.294979>,  <13.927025, 8.179182, 23.339985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141253, 8.080790, 23.294979>,  <14.498299, 7.916802, 23.219971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141253, 8.080790, 23.294979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189203, 0.036881, -0.981245,
		-0.409197, -0.911353, 0.044646,
		-0.892614, 0.409969, 0.187522,
		13.873468, 8.203780, 23.351236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022657, 7.505271, 22.891624>,  <14.498299, 7.916802, 23.219971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022657, 7.505271, 22.891624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821894, 7.848971, 22.931171>,  <13.701435, 8.055192, 22.954899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821894, 7.848971, 22.931171>,  <14.022657, 7.505271, 22.891624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821894, 7.848971, 22.931171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263014, -0.042730, -0.963845,
		-0.823961, -0.509766, 0.247442,
		-0.501909, 0.859251, 0.098868,
		13.671321, 8.106747, 22.960833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434582, 7.433031, 22.496904>,  <14.022657, 7.505271, 22.891624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434582, 7.433031, 22.496904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.460311, 7.828557, 22.550734>,  <13.475749, 8.065872, 22.583031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.460311, 7.828557, 22.550734>,  <13.434582, 7.433031, 22.496904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.460311, 7.828557, 22.550734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181276, 0.144185, -0.972805,
		-0.981326, 0.038180, 0.188523,
		0.064324, 0.988814, 0.134571,
		13.479609, 8.125200, 22.591105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917402, 7.655795, 22.086966>,  <13.434582, 7.433031, 22.496904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917402, 7.655795, 22.086966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.135250, 7.985548, 22.148651>,  <13.265959, 8.183400, 22.185663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.135250, 7.985548, 22.148651>,  <12.917402, 7.655795, 22.086966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.135250, 7.985548, 22.148651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196561, 0.304220, -0.932102,
		-0.815324, 0.477328, 0.327726,
		0.544619, 0.824383, 0.154214,
		13.298635, 8.232863, 22.194916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.586086, 8.105336, 21.603065>,  <12.917402, 7.655795, 22.086966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.586086, 8.105336, 21.603065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953562, 8.245838, 21.675323>,  <13.174047, 8.330139, 21.718678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953562, 8.245838, 21.675323>,  <12.586086, 8.105336, 21.603065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953562, 8.245838, 21.675323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075186, 0.293466, -0.953008,
		-0.387762, 0.889099, 0.243194,
		0.918688, 0.351256, 0.180643,
		13.229168, 8.351215, 21.729517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.668089, 8.835477, 21.407970>,  <12.586086, 8.105336, 21.603065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.668089, 8.835477, 21.407970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022842, 8.652500, 21.382090>,  <13.235694, 8.542714, 21.366562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022842, 8.652500, 21.382090>,  <12.668089, 8.835477, 21.407970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022842, 8.652500, 21.382090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226274, 0.552196, -0.802421,
		0.402789, 0.697013, 0.593240,
		0.886883, -0.457441, -0.064702,
		13.288907, 8.515268, 21.362679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.035891, 9.396585, 21.275520>,  <12.668089, 8.835477, 21.407970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.035891, 9.396585, 21.275520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260244, 9.079435, 21.180222>,  <13.394856, 8.889146, 21.123043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260244, 9.079435, 21.180222>,  <13.035891, 9.396585, 21.275520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260244, 9.079435, 21.180222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334948, 0.480492, -0.810517,
		0.757112, 0.374805, 0.535071,
		0.560884, -0.792873, -0.238246,
		13.428510, 8.841574, 21.108747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582291, 9.780958, 21.056730>,  <13.035891, 9.396585, 21.275520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582291, 9.780958, 21.056730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618666, 9.412847, 20.904510>,  <13.640491, 9.191979, 20.813179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618666, 9.412847, 20.904510>,  <13.582291, 9.780958, 21.056730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618666, 9.412847, 20.904510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410396, 0.382808, -0.827667,
		0.907362, -0.080911, 0.412490,
		0.090937, -0.920278, -0.380551,
		13.645947, 9.136764, 20.790344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.348336, 9.759171, 20.830542>,  <13.582291, 9.780958, 21.056730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.348336, 9.759171, 20.830542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.114542, 9.501966, 20.632589>,  <13.974265, 9.347642, 20.513817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.114542, 9.501966, 20.632589>,  <14.348336, 9.759171, 20.830542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.114542, 9.501966, 20.632589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256962, 0.431831, -0.864576,
		0.769641, -0.632499, -0.087169,
		-0.584486, -0.643014, -0.494883,
		13.939196, 9.309061, 20.484125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635942, 9.703201, 20.242901>,  <14.348336, 9.759171, 20.830542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635942, 9.703201, 20.242901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.302331, 9.502535, 20.151052>,  <14.102164, 9.382134, 20.095943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.302331, 9.502535, 20.151052>,  <14.635942, 9.703201, 20.242901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.302331, 9.502535, 20.151052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059794, 0.331548, -0.941542,
		0.548471, -0.799003, -0.246523,
		-0.834029, -0.501667, -0.229620,
		14.052122, 9.352035, 20.082167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779607, 9.482070, 19.516541>,  <14.635942, 9.703201, 20.242901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779607, 9.482070, 19.516541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393579, 9.506945, 19.618345>,  <14.161963, 9.521870, 19.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393579, 9.506945, 19.618345>,  <14.779607, 9.482070, 19.516541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.393579, 9.506945, 19.618345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237916, 0.198842, -0.950714,
		-0.109731, -0.978056, -0.177100,
		-0.965068, 0.062188, 0.254514,
		14.104059, 9.525600, 19.694700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.428199, 9.168935, 18.945255>,  <14.779607, 9.482070, 19.516541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.428199, 9.168935, 18.945255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145183, 9.384570, 19.128021>,  <13.975372, 9.513951, 19.237680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145183, 9.384570, 19.128021>,  <14.428199, 9.168935, 18.945255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145183, 9.384570, 19.128021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344929, 0.300863, -0.889104,
		-0.616774, -0.786680, -0.026926,
		-0.707541, 0.539088, 0.456913,
		13.932920, 9.546297, 19.265095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793325, 9.004007, 18.625204>,  <14.428199, 9.168935, 18.945255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793325, 9.004007, 18.625204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.695572, 9.343338, 18.813084>,  <13.636920, 9.546937, 18.925812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.695572, 9.343338, 18.813084>,  <13.793325, 9.004007, 18.625204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.695572, 9.343338, 18.813084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410908, 0.348146, -0.842585,
		-0.878312, -0.398917, 0.263503,
		-0.244384, 0.848327, 0.469699,
		13.622256, 9.597836, 18.953993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243760, 9.134825, 18.326828>,  <13.793325, 9.004007, 18.625204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243760, 9.134825, 18.326828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392581, 9.480859, 18.461412>,  <13.481874, 9.688479, 18.542164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392581, 9.480859, 18.461412>,  <13.243760, 9.134825, 18.326828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.392581, 9.480859, 18.461412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067493, 0.386736, -0.919717,
		-0.925755, 0.319473, 0.202273,
		0.372051, 0.865085, 0.336460,
		13.504196, 9.740384, 18.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.772506, 9.651603, 18.058815>,  <13.243760, 9.134825, 18.326828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.772506, 9.651603, 18.058815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.128498, 9.814596, 18.140684>,  <13.342093, 9.912392, 18.189806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.128498, 9.814596, 18.140684>,  <12.772506, 9.651603, 18.058815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.128498, 9.814596, 18.140684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001840, 0.452056, -0.891988,
		-0.455994, 0.793475, 0.403071,
		0.889981, 0.407483, 0.204675,
		13.395493, 9.936841, 18.202087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724436, 10.372411, 17.961866>,  <12.772506, 9.651603, 18.058815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724436, 10.372411, 17.961866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121116, 10.326265, 17.939152>,  <13.359123, 10.298578, 17.925522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121116, 10.326265, 17.939152>,  <12.724436, 10.372411, 17.961866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.121116, 10.326265, 17.939152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013543, 0.345475, -0.938330,
		0.127868, 0.931310, 0.341045,
		0.991699, -0.115363, -0.056788,
		13.418625, 10.291656, 17.922115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.968090, 10.968256, 17.744745>,  <12.724436, 10.372411, 17.961866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.968090, 10.968256, 17.744745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269214, 10.721102, 17.653975>,  <13.449888, 10.572809, 17.599512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269214, 10.721102, 17.653975>,  <12.968090, 10.968256, 17.744745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269214, 10.721102, 17.653975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072779, 0.420768, -0.904244,
		0.654203, 0.664208, 0.361727,
		0.752809, -0.617885, -0.226927,
		13.495056, 10.535736, 17.585896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.370161, 11.304220, 17.361797>,  <12.968090, 10.968256, 17.744745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.370161, 11.304220, 17.361797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554021, 10.963049, 17.262814>,  <13.664337, 10.758346, 17.203424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554021, 10.963049, 17.262814>,  <13.370161, 11.304220, 17.361797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554021, 10.963049, 17.262814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422368, 0.455054, -0.783920,
		0.781235, 0.255810, 0.569415,
		0.459649, -0.852929, -0.247458,
		13.691916, 10.707170, 17.188576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078479, 11.432225, 17.235991>,  <13.370161, 11.304220, 17.361797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078479, 11.432225, 17.235991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941180, 11.133922, 17.007595>,  <13.858801, 10.954940, 16.870558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941180, 11.133922, 17.007595>,  <14.078479, 11.432225, 17.235991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.941180, 11.133922, 17.007595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117053, 0.569218, -0.813811,
		0.931924, -0.346173, -0.108089,
		-0.343245, -0.745758, -0.570988,
		13.838206, 10.910194, 16.836298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441504, 11.741873, 16.699482>,  <14.078479, 11.432225, 17.235991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441504, 11.741873, 16.699482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.575763, 11.405122, 16.868519>,  <14.656318, 11.203071, 16.969940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.575763, 11.405122, 16.868519>,  <14.441504, 11.741873, 16.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575763, 11.405122, 16.868519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629019, -0.133629, -0.765819,
		0.701196, 0.522862, 0.484705,
		0.335647, -0.841878, 0.422590,
		14.676456, 11.152558, 16.995296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958531, 11.747373, 17.125715>,  <14.441504, 11.741873, 16.699482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958531, 11.747373, 17.125715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307892, 11.926906, 17.050116>,  <15.517508, 12.034625, 17.004755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307892, 11.926906, 17.050116>,  <14.958531, 11.747373, 17.125715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307892, 11.926906, 17.050116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466507, -0.659663, 0.589251,
		0.139798, -0.602822, -0.785533,
		0.873400, 0.448833, -0.189001,
		15.569912, 12.061556, 16.993416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394335, 11.219723, 16.998827>,  <14.958531, 11.747373, 17.125715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.394335, 11.219723, 16.998827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633373, 11.526268, 17.093117>,  <15.776796, 11.710196, 17.149691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633373, 11.526268, 17.093117>,  <15.394335, 11.219723, 16.998827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633373, 11.526268, 17.093117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553534, -0.607021, 0.570198,
		0.580068, -0.210267, -0.786962,
		0.597596, 0.766364, 0.235724,
		15.812653, 11.756177, 17.163834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044260, 10.975674, 17.181070>,  <15.394335, 11.219723, 16.998827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044260, 10.975674, 17.181070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.121937, 11.341706, 17.322443>,  <16.168543, 11.561326, 17.407267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.121937, 11.341706, 17.322443>,  <16.044260, 10.975674, 17.181070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121937, 11.341706, 17.322443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675430, -0.386014, 0.628322,
		0.711396, 0.116704, -0.693034,
		0.194194, 0.915081, 0.353434,
		16.180195, 11.616231, 17.428473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.831434, 11.042984, 17.246319>,  <16.044260, 10.975674, 17.181070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.831434, 11.042984, 17.246319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645672, 11.296992, 17.493244>,  <16.534214, 11.449397, 17.641399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645672, 11.296992, 17.493244>,  <16.831434, 11.042984, 17.246319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645672, 11.296992, 17.493244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570413, -0.318731, 0.756994,
		0.677464, 0.703675, -0.214204,
		-0.464404, 0.635021, 0.617314,
		16.506351, 11.487498, 17.678438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413050, 11.332066, 17.732330>,  <16.831434, 11.042984, 17.246319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413050, 11.332066, 17.732330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068296, 11.408245, 17.920326>,  <16.861444, 11.453953, 18.033123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068296, 11.408245, 17.920326>,  <17.413050, 11.332066, 17.732330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068296, 11.408245, 17.920326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474203, -0.025733, 0.880039,
		0.179697, 0.981360, -0.068133,
		-0.861882, 0.190450, 0.469988,
		16.809732, 11.465380, 18.061323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599405, 11.835734, 18.223824>,  <17.413050, 11.332066, 17.732330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599405, 11.835734, 18.223824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.268089, 11.661764, 18.365116>,  <17.069300, 11.557383, 18.449892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.268089, 11.661764, 18.365116>,  <17.599405, 11.835734, 18.223824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268089, 11.661764, 18.365116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445479, -0.128830, 0.885975,
		-0.339825, 0.891203, 0.300458,
		-0.828292, -0.434925, 0.353233,
		17.019602, 11.531286, 18.471087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538956, 12.080935, 18.949409>,  <17.599405, 11.835734, 18.223824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.538956, 12.080935, 18.949409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.280283, 11.777054, 18.976698>,  <17.125080, 11.594725, 18.993071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.280283, 11.777054, 18.976698>,  <17.538956, 12.080935, 18.949409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.280283, 11.777054, 18.976698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156386, -0.044515, 0.986692,
		-0.746557, 0.648743, 0.147594,
		-0.646680, -0.759704, 0.068221,
		17.086279, 11.549143, 18.997164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100306, 12.251537, 19.609194>,  <17.538956, 12.080935, 18.949409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100306, 12.251537, 19.609194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030478, 11.867667, 19.521057>,  <16.988581, 11.637345, 19.468174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030478, 11.867667, 19.521057>,  <17.100306, 12.251537, 19.609194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030478, 11.867667, 19.521057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131766, -0.244535, 0.960646,
		-0.975789, 0.138665, 0.169141,
		-0.174569, -0.959674, -0.220343,
		16.978107, 11.579765, 19.454954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.607038, 12.043047, 20.059145>,  <17.100306, 12.251537, 19.609194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.607038, 12.043047, 20.059145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773472, 11.701765, 19.933340>,  <16.873331, 11.496996, 19.857857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773472, 11.701765, 19.933340>,  <16.607038, 12.043047, 20.059145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773472, 11.701765, 19.933340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086865, -0.306996, 0.947738,
		-0.905169, -0.421656, -0.053622,
		0.416082, -0.853205, -0.314511,
		16.898296, 11.445804, 19.838987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156982, 11.440269, 20.379869>,  <16.607038, 12.043047, 20.059145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156982, 11.440269, 20.379869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535854, 11.346136, 20.292725>,  <16.763178, 11.289656, 20.240438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535854, 11.346136, 20.292725>,  <16.156982, 11.440269, 20.379869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535854, 11.346136, 20.292725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144046, -0.294756, 0.944653,
		-0.286516, -0.926143, -0.245291,
		0.947185, -0.235325, -0.217860,
		16.820009, 11.275536, 20.227365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.288382, 10.822148, 20.802366>,  <16.156982, 11.440269, 20.379869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.288382, 10.822148, 20.802366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.666670, 10.944347, 20.758028>,  <16.893642, 11.017667, 20.731424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.666670, 10.944347, 20.758028>,  <16.288382, 10.822148, 20.802366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.666670, 10.944347, 20.758028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214530, -0.330648, 0.919048,
		0.244117, -0.892941, -0.378238,
		0.945719, 0.305499, -0.110846,
		16.950386, 11.035996, 20.724773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754074, 10.269142, 21.172394>,  <16.288382, 10.822148, 20.802366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754074, 10.269142, 21.172394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981247, 10.596411, 21.136507>,  <17.117550, 10.792772, 21.114975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981247, 10.596411, 21.136507>,  <16.754074, 10.269142, 21.172394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981247, 10.596411, 21.136507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310942, -0.112350, 0.943765,
		0.762082, -0.563890, -0.318211,
		0.567931, 0.818172, -0.089717,
		17.151627, 10.841863, 21.109592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344675, 10.111184, 21.345148>,  <16.754074, 10.269142, 21.172394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344675, 10.111184, 21.345148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366625, 10.504182, 21.416359>,  <17.379795, 10.739981, 21.459085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366625, 10.504182, 21.416359>,  <17.344675, 10.111184, 21.345148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366625, 10.504182, 21.416359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095667, -0.182649, 0.978513,
		0.993900, -0.036666, -0.104015,
		0.054877, 0.982494, 0.178027,
		17.383087, 10.798930, 21.469767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863773, 10.256688, 22.029041>,  <17.344675, 10.111184, 21.345148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863773, 10.256688, 22.029041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.622133, 10.571847, 21.981239>,  <17.477150, 10.760942, 21.952559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.622133, 10.571847, 21.981239>,  <17.863773, 10.256688, 22.029041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622133, 10.571847, 21.981239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147320, 0.036964, 0.988398,
		0.783173, 0.614697, 0.093743,
		-0.604100, 0.787897, -0.119507,
		17.440903, 10.808216, 21.945387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975393, 10.578843, 22.614372>,  <17.863773, 10.256688, 22.029041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975393, 10.578843, 22.614372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632513, 10.738105, 22.483723>,  <17.426785, 10.833662, 22.405333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632513, 10.738105, 22.483723>,  <17.975393, 10.578843, 22.614372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632513, 10.738105, 22.483723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323145, 0.077984, 0.943131,
		0.400982, 0.913998, 0.061814,
		-0.857199, 0.398154, -0.326624,
		17.375353, 10.857551, 22.385735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798464, 11.056605, 23.033270>,  <17.975393, 10.578843, 22.614372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798464, 11.056605, 23.033270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.442547, 11.017454, 22.854973>,  <17.228996, 10.993963, 22.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.442547, 11.017454, 22.854973>,  <17.798464, 11.056605, 23.033270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.442547, 11.017454, 22.854973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455687, 0.137348, 0.879480,
		-0.024859, 0.985675, -0.166813,
		-0.889793, -0.097878, -0.445745,
		17.175610, 10.988091, 22.721249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341942, 11.513643, 23.449354>,  <17.798464, 11.056605, 23.033270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341942, 11.513643, 23.449354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098194, 11.271074, 23.245031>,  <16.951946, 11.125533, 23.122438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098194, 11.271074, 23.245031>,  <17.341942, 11.513643, 23.449354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098194, 11.271074, 23.245031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633571, -0.014925, 0.773540,
		-0.476716, 0.795003, -0.375117,
		-0.609368, -0.606422, -0.510806,
		16.915384, 11.089148, 23.091789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576420, 11.786971, 23.473808>,  <17.341942, 11.513643, 23.449354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576420, 11.786971, 23.473808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.584072, 11.393681, 23.401255>,  <16.588663, 11.157706, 23.357721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.584072, 11.393681, 23.401255>,  <16.576420, 11.786971, 23.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584072, 11.393681, 23.401255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603954, -0.155943, 0.781615,
		-0.796790, 0.094596, -0.596806,
		0.019131, -0.983226, -0.181385,
		16.589811, 11.098713, 23.346840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856684, 11.525806, 23.547823>,  <16.576420, 11.786971, 23.473808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856684, 11.525806, 23.547823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102018, 11.212747, 23.590300>,  <16.249220, 11.024911, 23.615786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102018, 11.212747, 23.590300>,  <15.856684, 11.525806, 23.547823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102018, 11.212747, 23.590300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544611, -0.321701, 0.774537,
		-0.572028, -0.532887, -0.623551,
		0.613337, -0.782650, 0.106194,
		16.286020, 10.977952, 23.622158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449811, 10.937433, 23.581831>,  <15.856684, 11.525806, 23.547823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449811, 10.937433, 23.581831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788168, 10.855285, 23.778721>,  <15.991182, 10.805995, 23.896854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788168, 10.855285, 23.778721>,  <15.449811, 10.937433, 23.581831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788168, 10.855285, 23.778721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533351, -0.328201, 0.779629,
		0.001435, -0.922012, -0.387158,
		0.845893, -0.205373, 0.492227,
		16.041935, 10.793673, 23.926390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255777, 10.355153, 23.997154>,  <15.449811, 10.937433, 23.581831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255777, 10.355153, 23.997154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618465, 10.416057, 24.154470>,  <15.836079, 10.452599, 24.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618465, 10.416057, 24.154470>,  <15.255777, 10.355153, 23.997154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618465, 10.416057, 24.154470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329661, -0.325727, 0.886130,
		0.263027, -0.933123, -0.245149,
		0.906720, 0.152260, 0.393289,
		15.890481, 10.461735, 24.272457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420613, 9.674745, 24.321493>,  <15.255777, 10.355153, 23.997154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420613, 9.674745, 24.321493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641625, 9.960956, 24.492481>,  <15.774233, 10.132683, 24.595074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641625, 9.960956, 24.492481>,  <15.420613, 9.674745, 24.321493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641625, 9.960956, 24.492481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306884, -0.302193, 0.902498,
		0.774940, -0.629840, 0.052613,
		0.552530, 0.715528, 0.427469,
		15.807384, 10.175614, 24.620722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776410, 9.369336, 24.837360>,  <15.420613, 9.674745, 24.321493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776410, 9.369336, 24.837360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.760117, 9.749043, 24.962088>,  <15.750340, 9.976868, 25.036924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.760117, 9.749043, 24.962088>,  <15.776410, 9.369336, 24.837360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760117, 9.749043, 24.962088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333224, -0.307116, 0.891427,
		0.941968, -0.067593, 0.328829,
		-0.040734, 0.949269, 0.311817,
		15.747896, 10.033824, 25.055634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109524, 9.284567, 25.456005>,  <15.776410, 9.369336, 24.837360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109524, 9.284567, 25.456005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943835, 9.647441, 25.485497>,  <15.844422, 9.865165, 25.503191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943835, 9.647441, 25.485497>,  <16.109524, 9.284567, 25.456005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943835, 9.647441, 25.485497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064375, -0.110003, 0.991844,
		0.907896, 0.406098, 0.103966,
		-0.414222, 0.907184, 0.073729,
		15.819569, 9.919597, 25.507616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626776, 9.674282, 25.821093>,  <16.109524, 9.284567, 25.456005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626776, 9.674282, 25.821093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254580, 9.814626, 25.863209>,  <16.031261, 9.898832, 25.888477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254580, 9.814626, 25.863209>,  <16.626776, 9.674282, 25.821093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254580, 9.814626, 25.863209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027311, -0.220179, 0.975077,
		0.365297, 0.910175, 0.195292,
		-0.930490, 0.350859, 0.105288,
		15.975432, 9.919884, 25.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641150, 9.878852, 26.489735>,  <16.626776, 9.674282, 25.821093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641150, 9.878852, 26.489735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245892, 9.878709, 26.428326>,  <16.008738, 9.878623, 26.391481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245892, 9.878709, 26.428326>,  <16.641150, 9.878852, 26.489735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245892, 9.878709, 26.428326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153521, -0.000418, 0.988145,
		-0.000418, 1.000000, 0.000358,
		-0.988145, -0.000358, -0.153521,
		15.949448, 9.878601, 26.382269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441418, 10.423385, 26.938002>,  <16.641150, 9.878852, 26.489735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441418, 10.423385, 26.938002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117819, 10.208811, 26.841866>,  <15.923660, 10.080067, 26.784184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.117819, 10.208811, 26.841866>,  <16.441418, 10.423385, 26.938002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117819, 10.208811, 26.841866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271943, -0.020932, 0.962086,
		-0.521128, 0.843681, -0.128946,
		-0.808995, -0.536436, -0.240342,
		15.875120, 10.047880, 26.769764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922293, 10.801750, 27.293285>,  <16.441418, 10.423385, 26.938002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922293, 10.801750, 27.293285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.821259, 10.417728, 27.245127>,  <15.760638, 10.187315, 27.216230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.821259, 10.417728, 27.245127>,  <15.922293, 10.801750, 27.293285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.821259, 10.417728, 27.245127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360212, -0.022186, 0.932606,
		-0.898025, 0.278931, -0.340220,
		-0.252584, -0.960055, -0.120398,
		15.745483, 10.129712, 27.209007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433369, 10.747355, 27.750362>,  <15.922293, 10.801750, 27.293285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433369, 10.747355, 27.750362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.507834, 10.364434, 27.661892>,  <15.552514, 10.134683, 27.608809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.507834, 10.364434, 27.661892>,  <15.433369, 10.747355, 27.750362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.507834, 10.364434, 27.661892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195343, -0.256682, 0.946549,
		-0.962904, -0.133009, -0.234787,
		0.186165, -0.957300, -0.221178,
		15.563684, 10.077245, 27.595539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.830665, 10.378364, 27.850540>,  <15.433369, 10.747355, 27.750362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.830665, 10.378364, 27.850540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137620, 10.125379, 27.892696>,  <15.321794, 9.973588, 27.917990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137620, 10.125379, 27.892696>,  <14.830665, 10.378364, 27.850540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137620, 10.125379, 27.892696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378874, -0.314679, 0.870305,
		-0.517271, -0.707792, -0.481104,
		0.767388, -0.632462, 0.105390,
		15.367837, 9.935640, 27.924313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593990, 9.825334, 28.188145>,  <14.830665, 10.378364, 27.850540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593990, 9.825334, 28.188145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987636, 9.774080, 28.237301>,  <15.223823, 9.743328, 28.266794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987636, 9.774080, 28.237301>,  <14.593990, 9.825334, 28.188145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987636, 9.774080, 28.237301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127913, -0.031693, 0.991279,
		-0.123122, -0.991250, -0.047580,
		0.984113, -0.128134, 0.122892,
		15.282869, 9.735641, 28.274168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769964, 9.262019, 28.768721>,  <14.593990, 9.825334, 28.188145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769964, 9.262019, 28.768721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103059, 9.481077, 28.736135>,  <15.302916, 9.612512, 28.716583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103059, 9.481077, 28.736135>,  <14.769964, 9.262019, 28.768721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103059, 9.481077, 28.736135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157117, -0.092650, 0.983224,
		0.530910, -0.831565, -0.163197,
		0.832735, 0.547645, -0.081464,
		15.352880, 9.645370, 28.711697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265766, 8.963725, 29.261990>,  <14.769964, 9.262019, 28.768721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265766, 8.963725, 29.261990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.424681, 9.321131, 29.178278>,  <15.520029, 9.535574, 29.128052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.424681, 9.321131, 29.178278>,  <15.265766, 8.963725, 29.261990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424681, 9.321131, 29.178278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463080, 0.001690, 0.886315,
		0.792288, -0.449033, -0.413096,
		0.397287, 0.893514, -0.209277,
		15.543867, 9.589185, 29.115496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986397, 9.031646, 29.441235>,  <15.265766, 8.963725, 29.261990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986397, 9.031646, 29.441235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.865360, 9.412728, 29.429983>,  <15.792739, 9.641377, 29.423231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.865360, 9.412728, 29.429983>,  <15.986397, 9.031646, 29.441235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.865360, 9.412728, 29.429983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506539, 0.185743, 0.841972,
		0.807376, 0.240524, -0.538787,
		-0.302591, 0.952705, -0.028129,
		15.774583, 9.698540, 29.421545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547079, 9.520114, 29.648613>,  <15.986397, 9.031646, 29.441235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547079, 9.520114, 29.648613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208912, 9.730186, 29.687511>,  <16.006012, 9.856229, 29.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208912, 9.730186, 29.687511>,  <16.547079, 9.520114, 29.648613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208912, 9.730186, 29.687511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311304, 0.336571, 0.888712,
		0.434004, 0.781605, -0.448033,
		-0.845417, 0.525179, 0.097244,
		15.955287, 9.887739, 29.716684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840302, 10.202632, 29.730925>,  <16.547079, 9.520114, 29.648613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840302, 10.202632, 29.730925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468195, 10.205793, 29.877645>,  <16.244930, 10.207690, 29.965677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468195, 10.205793, 29.877645>,  <16.840302, 10.202632, 29.730925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468195, 10.205793, 29.877645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340591, 0.390277, 0.855384,
		-0.136394, 0.920663, -0.365753,
		-0.930266, 0.007903, 0.366801,
		16.189116, 10.208164, 29.987686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697708, 10.881387, 30.056849>,  <16.840302, 10.202632, 29.730925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697708, 10.881387, 30.056849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468046, 10.594019, 30.213932>,  <16.330248, 10.421598, 30.308182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468046, 10.594019, 30.213932>,  <16.697708, 10.881387, 30.056849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468046, 10.594019, 30.213932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434862, 0.138814, 0.889734,
		-0.693714, 0.681620, 0.232712,
		-0.574156, -0.718418, 0.392708,
		16.295799, 10.378493, 30.331745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416853, 11.514194, 30.470110>,  <16.697708, 10.881387, 30.056849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416853, 11.514194, 30.470110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291117, 11.801618, 30.718258>,  <16.215675, 11.974072, 30.867147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291117, 11.801618, 30.718258>,  <16.416853, 11.514194, 30.470110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.291117, 11.801618, 30.718258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224947, 0.691265, -0.686696,
		-0.922274, -0.076306, -0.378930,
		-0.314340, 0.718561, 0.620371,
		16.196814, 12.017186, 30.904369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894463, 11.697216, 30.140896>,  <16.416853, 11.514194, 30.470110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894463, 11.697216, 30.140896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046021, 11.981639, 30.377821>,  <16.136955, 12.152293, 30.519976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046021, 11.981639, 30.377821>,  <15.894463, 11.697216, 30.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046021, 11.981639, 30.377821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075621, 0.614105, -0.785593,
		-0.922345, 0.342449, 0.178911,
		0.378896, 0.711058, 0.592313,
		16.159689, 12.194956, 30.555515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519682, 12.363865, 29.942333>,  <15.894463, 11.697216, 30.140896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519682, 12.363865, 29.942333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870224, 12.438346, 30.120020>,  <16.080549, 12.483034, 30.226633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870224, 12.438346, 30.120020>,  <15.519682, 12.363865, 29.942333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870224, 12.438346, 30.120020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162444, 0.753967, -0.636511,
		-0.453445, 0.629971, 0.630496,
		0.876356, 0.186202, 0.444218,
		16.133131, 12.494206, 30.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541739, 13.009342, 29.942005>,  <15.519682, 12.363865, 29.942333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541739, 13.009342, 29.942005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.923933, 12.906960, 30.000702>,  <16.153250, 12.845531, 30.035919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.923933, 12.906960, 30.000702>,  <15.541739, 13.009342, 29.942005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923933, 12.906960, 30.000702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288969, 0.711540, -0.640474,
		0.059521, 0.654368, 0.753830,
		0.955486, -0.255955, 0.146741,
		16.210579, 12.830173, 30.044724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884980, 13.586631, 30.128983>,  <15.541739, 13.009342, 29.942005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884980, 13.586631, 30.128983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168976, 13.353526, 29.970840>,  <16.339373, 13.213663, 29.875956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168976, 13.353526, 29.970840>,  <15.884980, 13.586631, 30.128983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168976, 13.353526, 29.970840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346391, 0.777801, -0.524442,
		0.613131, 0.235401, 0.754094,
		0.709989, -0.582762, -0.395353,
		16.381973, 13.178698, 29.852234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290901, 14.051188, 29.777969>,  <15.884980, 13.586631, 30.128983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290901, 14.051188, 29.777969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467106, 13.720156, 29.638792>,  <16.572828, 13.521537, 29.555286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467106, 13.720156, 29.638792>,  <16.290901, 14.051188, 29.777969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467106, 13.720156, 29.638792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205826, 0.470351, -0.858141,
		0.873834, 0.306405, 0.377532,
		0.440511, -0.827579, -0.347942,
		16.599258, 13.471882, 29.534409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973572, 14.295504, 29.422804>,  <16.290901, 14.051188, 29.777969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973572, 14.295504, 29.422804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898211, 13.929927, 29.279018>,  <16.852995, 13.710581, 29.192747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898211, 13.929927, 29.279018>,  <16.973572, 14.295504, 29.422804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898211, 13.929927, 29.279018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411699, 0.258806, -0.873798,
		0.891633, -0.312615, 0.327510,
		-0.188401, -0.913943, -0.359463,
		16.841690, 13.655744, 29.171179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597372, 14.006673, 29.017710>,  <16.973572, 14.295504, 29.422804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597372, 14.006673, 29.017710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275406, 13.798364, 28.903934>,  <17.082226, 13.673378, 28.835669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275406, 13.798364, 28.903934>,  <17.597372, 14.006673, 29.017710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275406, 13.798364, 28.903934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319890, 0.022908, -0.947178,
		0.499780, -0.853388, 0.148151,
		-0.804917, -0.520772, -0.284439,
		17.033932, 13.642132, 28.818604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870121, 13.600043, 28.580755>,  <17.597372, 14.006673, 29.017710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870121, 13.600043, 28.580755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481709, 13.602097, 28.485195>,  <17.248661, 13.603329, 28.427858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481709, 13.602097, 28.485195>,  <17.870121, 13.600043, 28.580755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481709, 13.602097, 28.485195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238865, -0.006548, -0.971031,
		-0.006548, -0.999965, 0.005132,
		0.971031, -0.005132, 0.238900,
		17.190399, 13.603637, 28.413525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.828512, 13.149551, 28.078880>,  <17.870121, 13.600043, 28.580755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.828512, 13.149551, 28.078880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511442, 13.388976, 28.032598>,  <17.321199, 13.532631, 28.004829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.511442, 13.388976, 28.032598>,  <17.828512, 13.149551, 28.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511442, 13.388976, 28.032598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144966, 0.000713, -0.989436,
		-0.592156, -0.801077, -0.087336,
		-0.792677, 0.598561, -0.115707,
		17.273640, 13.568544, 27.997887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517630, 12.890293, 27.534710>,  <17.828512, 13.149551, 28.078880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517630, 12.890293, 27.534710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382689, 13.266026, 27.559511>,  <17.301723, 13.491467, 27.574392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382689, 13.266026, 27.559511>,  <17.517630, 12.890293, 27.534710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382689, 13.266026, 27.559511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095458, 0.099659, -0.990432,
		-0.936525, -0.328209, -0.123287,
		-0.337355, 0.939334, 0.062003,
		17.281483, 13.547827, 27.578112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029308, 12.865827, 27.014931>,  <17.517630, 12.890293, 27.534710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029308, 12.865827, 27.014931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.101671, 13.253435, 27.082184>,  <17.145090, 13.486000, 27.122536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.101671, 13.253435, 27.082184>,  <17.029308, 12.865827, 27.014931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101671, 13.253435, 27.082184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161161, 0.139435, -0.977029,
		-0.970206, 0.203850, -0.130944,
		0.180909, 0.969022, 0.168133,
		17.155943, 13.544142, 27.132624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531542, 13.216685, 26.658848>,  <17.029308, 12.865827, 27.014931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531542, 13.216685, 26.658848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.842344, 13.460566, 26.721489>,  <17.028826, 13.606894, 26.759073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.842344, 13.460566, 26.721489>,  <16.531542, 13.216685, 26.658848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842344, 13.460566, 26.721489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134512, 0.082218, -0.987495,
		-0.614953, 0.788355, -0.018128,
		0.777007, 0.609701, 0.156603,
		17.075447, 13.643476, 26.768471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372852, 13.759628, 26.242081>,  <16.531542, 13.216685, 26.658848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372852, 13.759628, 26.242081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.769073, 13.808467, 26.267052>,  <17.006805, 13.837770, 26.282034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.769073, 13.808467, 26.267052>,  <16.372852, 13.759628, 26.242081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769073, 13.808467, 26.267052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012773, 0.371102, -0.928504,
		-0.136533, 0.920530, 0.366037,
		0.990553, 0.122096, 0.062426,
		17.066240, 13.845096, 26.285780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481270, 14.370538, 25.938902>,  <16.372852, 13.759628, 26.242081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481270, 14.370538, 25.938902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.834850, 14.185310, 25.912989>,  <17.046999, 14.074174, 25.897440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.834850, 14.185310, 25.912989>,  <16.481270, 14.370538, 25.938902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834850, 14.185310, 25.912989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095095, 0.313698, -0.944749,
		0.457806, 0.828952, 0.321329,
		0.883952, -0.463069, -0.064783,
		17.100037, 14.046390, 25.893553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803247, 14.871856, 25.518591>,  <16.481270, 14.370538, 25.938902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803247, 14.871856, 25.518591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.052387, 14.559121, 25.507364>,  <17.201872, 14.371480, 25.500628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.052387, 14.559121, 25.507364>,  <16.803247, 14.871856, 25.518591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.052387, 14.559121, 25.507364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204450, 0.197293, -0.958789,
		0.755154, 0.591444, 0.282731,
		0.622851, -0.781837, -0.028066,
		17.239243, 14.324570, 25.498945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448658, 15.068541, 25.098682>,  <16.803247, 14.871856, 25.518591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448658, 15.068541, 25.098682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444105, 14.668764, 25.086115>,  <17.441374, 14.428898, 25.078575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444105, 14.668764, 25.086115>,  <17.448658, 15.068541, 25.098682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444105, 14.668764, 25.086115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339288, 0.025698, -0.940331,
		0.940614, -0.021361, 0.338806,
		-0.011380, -0.999441, -0.031419,
		17.440691, 14.368932, 25.076689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921749, 15.001247, 24.601641>,  <17.448658, 15.068541, 25.098682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.921749, 15.001247, 24.601641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765591, 14.633862, 24.626993>,  <17.671896, 14.413431, 24.642204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765591, 14.633862, 24.626993>,  <17.921749, 15.001247, 24.601641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765591, 14.633862, 24.626993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180673, -0.143940, -0.972954,
		0.902744, -0.368387, 0.222135,
		-0.390397, -0.918462, 0.063384,
		17.648472, 14.358324, 24.646008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279081, 14.502810, 24.221186>,  <17.921749, 15.001247, 24.601641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279081, 14.502810, 24.221186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.909664, 14.356668, 24.267813>,  <17.688015, 14.268984, 24.295790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.909664, 14.356668, 24.267813>,  <18.279081, 14.502810, 24.221186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.909664, 14.356668, 24.267813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012454, -0.332373, -0.943066,
		0.383295, -0.869509, 0.311510,
		-0.923542, -0.365352, 0.116568,
		17.632601, 14.247063, 24.302784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284945, 13.813967, 23.948545>,  <18.279081, 14.502810, 24.221186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284945, 13.813967, 23.948545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905924, 13.941787, 23.946245>,  <17.678511, 14.018479, 23.944864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905924, 13.941787, 23.946245>,  <18.284945, 13.813967, 23.948545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905924, 13.941787, 23.946245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059273, -0.193391, -0.979330,
		-0.314058, -0.927624, 0.202189,
		-0.947552, 0.319551, -0.005753,
		17.621658, 14.037652, 23.944519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863308, 13.306336, 23.707500>,  <18.284945, 13.813967, 23.948545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863308, 13.306336, 23.707500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660316, 13.641474, 23.627016>,  <17.538523, 13.842556, 23.578726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660316, 13.641474, 23.627016>,  <17.863308, 13.306336, 23.707500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660316, 13.641474, 23.627016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029713, -0.250390, -0.967689,
		-0.861153, -0.485101, 0.151961,
		-0.507476, 0.837844, -0.201210,
		17.508074, 13.892827, 23.566652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322084, 13.027716, 23.412655>,  <17.863308, 13.306336, 23.707500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322084, 13.027716, 23.412655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.363901, 13.409661, 23.301441>,  <17.388990, 13.638829, 23.234713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.363901, 13.409661, 23.301441>,  <17.322084, 13.027716, 23.412655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363901, 13.409661, 23.301441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092639, -0.269003, -0.958674,
		-0.990196, 0.125979, 0.060336,
		0.104542, 0.954865, -0.278036,
		17.395264, 13.696121, 23.218031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012556, 13.100768, 22.740730>,  <17.322084, 13.027716, 23.412655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012556, 13.100768, 22.740730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240143, 13.429668, 22.746122>,  <17.376696, 13.627008, 22.749357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240143, 13.429668, 22.746122>,  <17.012556, 13.100768, 22.740730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240143, 13.429668, 22.746122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062587, -0.026953, -0.997675,
		-0.819975, 0.568488, -0.066797,
		0.568967, 0.822250, 0.013479,
		17.410833, 13.676344, 22.750166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760920, 13.485983, 22.225111>,  <17.012556, 13.100768, 22.740730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760920, 13.485983, 22.225111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.134544, 13.610588, 22.294952>,  <17.358719, 13.685351, 22.336857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.134544, 13.610588, 22.294952>,  <16.760920, 13.485983, 22.225111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.134544, 13.610588, 22.294952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243258, -0.197084, -0.949728,
		-0.261442, 0.929579, -0.259867,
		0.934063, 0.311513, 0.174602,
		17.414762, 13.704042, 22.347332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002363, 13.971011, 21.791494>,  <16.760920, 13.485983, 22.225111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002363, 13.971011, 21.791494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336134, 13.784616, 21.909201>,  <17.536396, 13.672780, 21.979824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336134, 13.784616, 21.909201>,  <17.002363, 13.971011, 21.791494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336134, 13.784616, 21.909201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192371, -0.254086, -0.947857,
		0.516456, 0.847524, -0.122374,
		0.834425, -0.465986, 0.294264,
		17.586462, 13.644821, 21.997480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414841, 14.174551, 21.217163>,  <17.002363, 13.971011, 21.791494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414841, 14.174551, 21.217163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.612326, 13.874455, 21.393066>,  <17.730818, 13.694398, 21.498608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.612326, 13.874455, 21.393066>,  <17.414841, 14.174551, 21.217163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.612326, 13.874455, 21.393066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508877, -0.160824, -0.845683,
		0.705188, 0.641309, 0.302378,
		0.493714, -0.750239, 0.439759,
		17.760441, 13.649384, 21.524994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101595, 14.316965, 20.943741>,  <17.414841, 14.174551, 21.217163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101595, 14.316965, 20.943741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050222, 13.940752, 21.069538>,  <18.019400, 13.715024, 21.145016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050222, 13.940752, 21.069538>,  <18.101595, 14.316965, 20.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050222, 13.940752, 21.069538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482980, -0.336289, -0.808480,
		0.866162, 0.048062, 0.497448,
		-0.128429, -0.940532, 0.314493,
		18.011694, 13.658592, 21.163887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735107, 13.984954, 20.717287>,  <18.101595, 14.316965, 20.943741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735107, 13.984954, 20.717287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.483459, 13.680184, 20.778837>,  <18.332470, 13.497323, 20.815767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.483459, 13.680184, 20.778837>,  <18.735107, 13.984954, 20.717287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483459, 13.680184, 20.778837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296675, -0.418342, -0.858472,
		0.718463, -0.494432, 0.489232,
		-0.629122, -0.761924, 0.153877,
		18.294724, 13.451608, 20.825001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193920, 13.351629, 20.505098>,  <18.735107, 13.984954, 20.717287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193920, 13.351629, 20.505098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800196, 13.282864, 20.489222>,  <18.563961, 13.241604, 20.479694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800196, 13.282864, 20.489222>,  <19.193920, 13.351629, 20.505098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800196, 13.282864, 20.489222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060359, -0.116706, -0.991330,
		0.165793, -0.978174, 0.125252,
		-0.984311, -0.171916, -0.039693,
		18.504902, 13.231289, 20.477314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105749, 12.714227, 20.092056>,  <19.193920, 13.351629, 20.505098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105749, 12.714227, 20.092056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.749239, 12.880609, 20.019823>,  <18.535334, 12.980437, 19.976484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.749239, 12.880609, 20.019823>,  <19.105749, 12.714227, 20.092056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749239, 12.880609, 20.019823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185450, -0.029054, -0.982224,
		-0.413807, -0.908921, -0.051243,
		-0.891276, 0.415955, -0.180582,
		18.481855, 13.005395, 19.965649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696131, 12.291656, 19.536007>,  <19.105749, 12.714227, 20.092056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696131, 12.291656, 19.536007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.544868, 12.661665, 19.521421>,  <18.454111, 12.883671, 19.512671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.544868, 12.661665, 19.521421>,  <18.696131, 12.291656, 19.536007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544868, 12.661665, 19.521421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235396, 0.057988, -0.970168,
		-0.895314, -0.375457, -0.239676,
		-0.378155, 0.925024, -0.036464,
		18.431421, 12.939172, 19.510483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514532, 12.329073, 18.841702>,  <18.696131, 12.291656, 19.536007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514532, 12.329073, 18.841702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.462439, 12.709275, 18.954540>,  <18.431183, 12.937397, 19.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.462439, 12.709275, 18.954540>,  <18.514532, 12.329073, 18.841702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.462439, 12.709275, 18.954540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076784, 0.293333, -0.952922,
		-0.988506, -0.102442, -0.111185,
		-0.130234, 0.950506, 0.282096,
		18.423368, 12.994427, 19.039169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.987165, 12.630474, 18.399229>,  <18.514532, 12.329073, 18.841702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.987165, 12.630474, 18.399229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193506, 12.933822, 18.558615>,  <18.317310, 13.115830, 18.654245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193506, 12.933822, 18.558615>,  <17.987165, 12.630474, 18.399229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193506, 12.933822, 18.558615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236207, 0.321187, -0.917085,
		-0.823471, 0.567199, -0.013448,
		0.515850, 0.758370, 0.398465,
		18.348261, 13.161333, 18.678154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659107, 13.293676, 18.137596>,  <17.987165, 12.630474, 18.399229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659107, 13.293676, 18.137596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032562, 13.380174, 18.251833>,  <18.256636, 13.432072, 18.320375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032562, 13.380174, 18.251833>,  <17.659107, 13.293676, 18.137596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032562, 13.380174, 18.251833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160179, 0.461091, -0.872776,
		-0.320414, 0.860601, 0.395854,
		0.933637, 0.216242, 0.285590,
		18.312653, 13.445046, 18.337509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885376, 13.712632, 17.663971>,  <17.659107, 13.293676, 18.137596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885376, 13.712632, 17.663971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233099, 13.740414, 17.859718>,  <18.441732, 13.757083, 17.977167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233099, 13.740414, 17.859718>,  <17.885376, 13.712632, 17.663971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233099, 13.740414, 17.859718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401120, 0.479380, -0.780575,
		-0.288809, 0.874855, 0.388868,
		0.869306, 0.069455, 0.489371,
		18.493891, 13.761250, 18.006529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207701, 14.483871, 17.818338>,  <17.885376, 13.712632, 17.663971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207701, 14.483871, 17.818338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508392, 14.220733, 17.799814>,  <18.688807, 14.062850, 17.788700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508392, 14.220733, 17.799814>,  <18.207701, 14.483871, 17.818338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508392, 14.220733, 17.799814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506677, 0.621081, -0.597944,
		0.422116, 0.426027, 0.800199,
		0.751729, -0.657844, -0.046310,
		18.733912, 14.023379, 17.785921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.724789, 14.901170, 17.969841>,  <18.207701, 14.483871, 17.818338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.724789, 14.901170, 17.969841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.903723, 14.585953, 17.800665>,  <19.011084, 14.396822, 17.699160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.903723, 14.585953, 17.800665>,  <18.724789, 14.901170, 17.969841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.903723, 14.585953, 17.800665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457698, 0.607990, -0.648738,
		0.768376, 0.096627, 0.632663,
		0.447338, -0.788043, -0.422939,
		19.037924, 14.349540, 17.673782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396011, 15.079918, 17.924574>,  <18.724789, 14.901170, 17.969841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396011, 15.079918, 17.924574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404221, 14.788374, 17.650831>,  <19.409145, 14.613448, 17.486586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404221, 14.788374, 17.650831>,  <19.396011, 15.079918, 17.924574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.404221, 14.788374, 17.650831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443707, 0.620038, -0.647053,
		0.895937, -0.290375, 0.336124,
		0.020521, -0.728859, -0.684356,
		19.410378, 14.569716, 17.445524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995226, 15.146988, 17.611052>,  <19.396011, 15.079918, 17.924574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995226, 15.146988, 17.611052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.779087, 14.955141, 17.334503>,  <19.649405, 14.840033, 17.168573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.779087, 14.955141, 17.334503>,  <19.995226, 15.146988, 17.611052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.779087, 14.955141, 17.334503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410476, 0.567005, -0.714153,
		0.734531, -0.669681, -0.109508,
		-0.540346, -0.479617, -0.691370,
		19.616983, 14.811256, 17.127092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471764, 14.968724, 17.209576>,  <19.995226, 15.146988, 17.611052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471764, 14.968724, 17.209576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.129045, 14.967897, 17.003315>,  <19.923414, 14.967402, 16.879559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.129045, 14.967897, 17.003315>,  <20.471764, 14.968724, 17.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129045, 14.967897, 17.003315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421916, 0.572105, -0.703337,
		0.296461, -0.820178, -0.489305,
		-0.856795, -0.002066, -0.515653,
		19.872007, 14.967278, 16.848619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654858, 14.829117, 16.573433>,  <20.471764, 14.968724, 17.209576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654858, 14.829117, 16.573433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300564, 15.009301, 16.528603>,  <20.087988, 15.117412, 16.501705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300564, 15.009301, 16.528603>,  <20.654858, 14.829117, 16.573433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300564, 15.009301, 16.528603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388398, 0.586959, -0.710370,
		-0.254211, -0.672729, -0.694848,
		-0.885734, 0.450461, -0.112075,
		20.034843, 15.144440, 16.494980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406956, 14.840056, 15.921677>,  <20.654858, 14.829117, 16.573433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406956, 14.840056, 15.921677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.279293, 15.173046, 16.102840>,  <20.202696, 15.372840, 16.211538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.279293, 15.173046, 16.102840>,  <20.406956, 14.840056, 15.921677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279293, 15.173046, 16.102840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243865, 0.533950, -0.809584,
		-0.915789, -0.147934, -0.373424,
		-0.319155, 0.832474, 0.452910,
		20.183546, 15.422789, 16.238714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.814590, 15.271627, 15.492680>,  <20.406956, 14.840056, 15.921677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.814590, 15.271627, 15.492680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.030081, 15.485695, 15.752948>,  <20.159374, 15.614135, 15.909109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.030081, 15.485695, 15.752948>,  <19.814590, 15.271627, 15.492680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.030081, 15.485695, 15.752948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224107, 0.653468, -0.723018,
		-0.812128, 0.535327, 0.232104,
		0.538724, 0.535168, 0.650671,
		20.191698, 15.646245, 15.948149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141638, 15.747548, 14.954052>,  <19.814590, 15.271627, 15.492680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141638, 15.747548, 14.954052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.271908, 15.838946, 15.321034>,  <20.350071, 15.893785, 15.541224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.271908, 15.838946, 15.321034>,  <20.141638, 15.747548, 14.954052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.271908, 15.838946, 15.321034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591126, 0.708112, -0.386196,
		-0.737905, 0.668107, 0.095546,
		0.325677, 0.228496, 0.917455,
		20.369612, 15.907495, 15.596271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910130, 16.440252, 15.117401>,  <20.141638, 15.747548, 14.954052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910130, 16.440252, 15.117401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239079, 16.347067, 15.325029>,  <20.436447, 16.291157, 15.449606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239079, 16.347067, 15.325029>,  <19.910130, 16.440252, 15.117401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239079, 16.347067, 15.325029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528986, 0.648969, -0.546821,
		-0.209472, 0.724271, 0.656927,
		0.822372, -0.232961, 0.519070,
		20.485790, 16.277178, 15.480750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149652, 17.014744, 15.601457>,  <19.910130, 16.440252, 15.117401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149652, 17.014744, 15.601457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412964, 16.768879, 15.427627>,  <20.570951, 16.621359, 15.323329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412964, 16.768879, 15.427627>,  <20.149652, 17.014744, 15.601457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412964, 16.768879, 15.427627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334985, 0.756179, -0.562119,
		0.674131, 0.224456, 0.703681,
		0.658280, -0.614664, -0.434574,
		20.610447, 16.584480, 15.297255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514746, 17.504780, 15.391085>,  <20.149652, 17.014744, 15.601457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514746, 17.504780, 15.391085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708876, 17.177788, 15.267031>,  <20.825354, 16.981592, 15.192598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708876, 17.177788, 15.267031>,  <20.514746, 17.504780, 15.391085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708876, 17.177788, 15.267031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651151, 0.574657, -0.495753,
		0.583489, 0.038659, 0.811200,
		0.485327, -0.817481, -0.310134,
		20.854473, 16.932543, 15.173990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.150047, 17.651110, 15.616926>,  <20.514746, 17.504780, 15.391085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.150047, 17.651110, 15.616926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103657, 17.433537, 15.284496>,  <21.075823, 17.302992, 15.085038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103657, 17.433537, 15.284496>,  <21.150047, 17.651110, 15.616926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103657, 17.433537, 15.284496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440402, 0.721816, -0.533880,
		0.890279, -0.427924, 0.155838,
		-0.115974, -0.543933, -0.831075,
		21.068865, 17.270357, 15.035173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836832, 17.507208, 15.177361>,  <21.150047, 17.651110, 15.616926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836832, 17.507208, 15.177361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527275, 17.521648, 14.924448>,  <21.341541, 17.530312, 14.772699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527275, 17.521648, 14.924448>,  <21.836832, 17.507208, 15.177361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527275, 17.521648, 14.924448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451319, 0.731835, -0.510615,
		0.444295, -0.680525, -0.582656,
		-0.773895, 0.036100, -0.632284,
		21.295107, 17.532478, 14.734762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132282, 17.495317, 14.594739>,  <21.836832, 17.507208, 15.177361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132282, 17.495317, 14.594739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.762907, 17.632187, 14.525249>,  <21.541283, 17.714310, 14.483554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.762907, 17.632187, 14.525249>,  <22.132282, 17.495317, 14.594739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762907, 17.632187, 14.525249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380119, 0.753473, -0.536459,
		-0.052665, -0.561423, -0.825852,
		-0.923437, 0.342175, -0.173726,
		21.485876, 17.734838, 14.473130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.150738, 17.678551, 13.926960>,  <22.132282, 17.495317, 14.594739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.150738, 17.678551, 13.926960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844614, 17.878555, 14.089092>,  <21.660940, 17.998558, 14.186372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844614, 17.878555, 14.089092>,  <22.150738, 17.678551, 13.926960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844614, 17.878555, 14.089092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342156, 0.849408, -0.401790,
		-0.545191, -0.168806, -0.821140,
		-0.765307, 0.500011, 0.405331,
		21.615023, 18.028559, 14.210691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906979, 18.142426, 13.389014>,  <22.150738, 17.678551, 13.926960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906979, 18.142426, 13.389014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719963, 18.297434, 13.706816>,  <21.607754, 18.390438, 13.897497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.719963, 18.297434, 13.706816>,  <21.906979, 18.142426, 13.389014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719963, 18.297434, 13.706816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081197, 0.876161, -0.475130,
		-0.880236, -0.286652, -0.378173,
		-0.467537, 0.387520, 0.794504,
		21.579702, 18.413691, 13.945167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251278, 18.482224, 13.099845>,  <21.906979, 18.142426, 13.389014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251278, 18.482224, 13.099845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355619, 18.634186, 13.454838>,  <21.418224, 18.725363, 13.667833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355619, 18.634186, 13.454838>,  <21.251278, 18.482224, 13.099845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355619, 18.634186, 13.454838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041619, 0.914031, -0.403505,
		-0.964481, 0.142192, 0.222617,
		0.260854, 0.379907, 0.887483,
		21.433876, 18.748158, 13.721083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944818, 19.141453, 13.109054>,  <21.251278, 18.482224, 13.099845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.944818, 19.141453, 13.109054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209999, 19.179104, 13.406142>,  <21.369108, 19.201694, 13.584395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209999, 19.179104, 13.406142>,  <20.944818, 19.141453, 13.109054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209999, 19.179104, 13.406142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258272, 0.902409, -0.344896,
		-0.702702, 0.420473, 0.573945,
		0.662953, 0.094125, 0.742721,
		21.408884, 19.207342, 13.628959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761307, 19.761263, 13.440437>,  <20.944818, 19.141453, 13.109054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761307, 19.761263, 13.440437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137005, 19.689230, 13.557324>,  <21.362423, 19.646009, 13.627457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137005, 19.689230, 13.557324>,  <20.761307, 19.761263, 13.440437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137005, 19.689230, 13.557324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268431, 0.915937, -0.298335,
		-0.213928, 0.358650, 0.908628,
		0.939244, -0.180082, 0.292217,
		21.418777, 19.635206, 13.644990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976385, 20.387619, 13.491111>,  <20.761307, 19.761263, 13.440437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976385, 20.387619, 13.491111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307043, 20.162603, 13.496834>,  <21.505438, 20.027594, 13.500268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307043, 20.162603, 13.496834>,  <20.976385, 20.387619, 13.491111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307043, 20.162603, 13.496834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526423, 0.764085, -0.372897,
		0.198838, 0.315786, 0.927762,
		0.826645, -0.562541, 0.014307,
		21.555037, 19.993841, 13.501126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479576, 20.781340, 13.759246>,  <20.976385, 20.387619, 13.491111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479576, 20.781340, 13.759246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.700817, 20.510223, 13.565472>,  <21.833563, 20.347553, 13.449207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.700817, 20.510223, 13.565472>,  <21.479576, 20.781340, 13.759246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.700817, 20.510223, 13.565472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650712, 0.714572, -0.256829,
		0.520240, -0.173175, 0.836278,
		0.553104, -0.677788, -0.484436,
		21.866749, 20.306887, 13.420141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156673, 21.002028, 13.931023>,  <21.479576, 20.781340, 13.759246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156673, 21.002028, 13.931023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.180250, 20.776913, 13.601224>,  <22.194397, 20.641844, 13.403344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.180250, 20.776913, 13.601224>,  <22.156673, 21.002028, 13.931023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180250, 20.776913, 13.601224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691975, 0.618338, -0.372597,
		0.719511, -0.548570, 0.425881,
		0.058943, -0.562787, -0.824498,
		22.197933, 20.608076, 13.353874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.958811, 20.957478, 13.742402>,  <22.156673, 21.002028, 13.931023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.958811, 20.957478, 13.742402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.739702, 20.857950, 13.422894>,  <22.608236, 20.798233, 13.231189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.739702, 20.857950, 13.422894>,  <22.958811, 20.957478, 13.742402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.739702, 20.857950, 13.422894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576546, 0.579581, -0.575917,
		0.606252, -0.775999, -0.174021,
		-0.547770, -0.248820, -0.798772,
		22.575371, 20.783304, 13.183262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.428905, 20.649380, 13.273130>,  <22.958811, 20.957478, 13.742402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.428905, 20.649380, 13.273130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.113293, 20.767565, 13.057676>,  <22.923925, 20.838476, 12.928404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.113293, 20.767565, 13.057676>,  <23.428905, 20.649380, 13.273130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.113293, 20.767565, 13.057676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607531, 0.505531, -0.612654,
		0.091282, -0.810642, -0.578383,
		-0.789034, 0.295461, -0.538636,
		22.876583, 20.856203, 12.896086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.724688, 20.587820, 12.556686>,  <23.428905, 20.649380, 13.273130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.724688, 20.587820, 12.556686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.401363, 20.823320, 12.555458>,  <23.207369, 20.964621, 12.554721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.401363, 20.823320, 12.555458>,  <23.724688, 20.587820, 12.556686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.401363, 20.823320, 12.555458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477966, 0.653145, -0.587324,
		-0.343782, -0.476207, -0.809346,
		-0.808309, 0.588752, -0.003072,
		23.158871, 20.999947, 12.554537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.509672, 20.666430, 11.797555>,  <23.724688, 20.587820, 12.556686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.509672, 20.666430, 11.797555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.379160, 20.967375, 12.026463>,  <23.300852, 21.147942, 12.163807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.379160, 20.967375, 12.026463>,  <23.509672, 20.666430, 11.797555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.379160, 20.967375, 12.026463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456989, 0.655500, -0.601233,
		-0.827467, 0.065349, -0.557699,
		-0.326281, 0.752363, 0.572268,
		23.281275, 21.193083, 12.198143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.344414, 21.135059, 11.263669>,  <23.509672, 20.666430, 11.797555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.344414, 21.135059, 11.263669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.320284, 21.360098, 11.593480>,  <23.305805, 21.495121, 11.791367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.320284, 21.360098, 11.593480>,  <23.344414, 21.135059, 11.263669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.320284, 21.360098, 11.593480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364063, 0.781532, -0.506623,
		-0.929419, 0.269618, -0.251966,
		-0.060325, 0.562596, 0.824528,
		23.302187, 21.528877, 11.840838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.904718, 21.844692, 11.229926>,  <23.344414, 21.135059, 11.263669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.904718, 21.844692, 11.229926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.181126, 21.905010, 11.512700>,  <23.346970, 21.941200, 11.682364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.181126, 21.905010, 11.512700>,  <22.904718, 21.844692, 11.229926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181126, 21.905010, 11.512700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329514, 0.804754, -0.493753,
		-0.643364, 0.574136, 0.506409,
		0.691016, 0.150794, 0.706936,
		23.388430, 21.950249, 11.724781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809088, 22.526573, 11.467686>,  <22.904718, 21.844692, 11.229926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809088, 22.526573, 11.467686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.184406, 22.426645, 11.563341>,  <23.409597, 22.366688, 11.620734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.184406, 22.426645, 11.563341>,  <22.809088, 22.526573, 11.467686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.184406, 22.426645, 11.563341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328553, 0.859777, -0.390942,
		-0.107939, 0.445389, 0.888807,
		0.938297, -0.249822, 0.239138,
		23.465895, 22.351698, 11.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.183762, 23.181452, 11.382417>,  <22.809088, 22.526573, 11.467686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.183762, 23.181452, 11.382417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.488140, 22.932245, 11.454868>,  <23.670767, 22.782721, 11.498339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.488140, 22.932245, 11.454868>,  <23.183762, 23.181452, 11.382417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.488140, 22.932245, 11.454868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643742, 0.690152, -0.330584,
		0.080954, 0.368157, 0.926233,
		0.760948, -0.623017, 0.181128,
		23.716425, 22.745340, 11.509207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.681915, 23.620974, 11.793147>,  <23.183762, 23.181452, 11.382417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.681915, 23.620974, 11.793147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868732, 23.311754, 11.621443>,  <23.980824, 23.126223, 11.518420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868732, 23.311754, 11.621443>,  <23.681915, 23.620974, 11.793147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868732, 23.311754, 11.621443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611616, 0.633026, -0.474557,
		0.638589, -0.040903, 0.768461,
		0.467044, -0.773050, -0.429260,
		24.008846, 23.079840, 11.492664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468004, 23.667604, 11.941206>,  <23.681915, 23.620974, 11.793147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468004, 23.667604, 11.941206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433187, 23.427929, 11.622862>,  <24.412296, 23.284122, 11.431855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433187, 23.427929, 11.622862>,  <24.468004, 23.667604, 11.941206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433187, 23.427929, 11.622862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709848, 0.523212, -0.471555,
		0.698955, -0.605986, 0.379792,
		-0.087044, -0.599191, -0.795860,
		24.407074, 23.248171, 11.384104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149826, 23.715115, 11.579926>,  <24.468004, 23.667604, 11.941206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149826, 23.715115, 11.579926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882326, 23.577257, 11.316412>,  <24.721827, 23.494543, 11.158304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882326, 23.577257, 11.316412>,  <25.149826, 23.715115, 11.579926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882326, 23.577257, 11.316412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439844, 0.530987, -0.724286,
		0.599428, -0.774126, -0.203505,
		-0.668747, -0.344647, -0.658784,
		24.681702, 23.473864, 11.118777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529284, 23.325006, 11.002277>,  <25.149826, 23.715115, 11.579926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529284, 23.325006, 11.002277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174091, 23.465635, 10.883692>,  <24.960976, 23.550013, 10.812540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174091, 23.465635, 10.883692>,  <25.529284, 23.325006, 11.002277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174091, 23.465635, 10.883692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423621, 0.374401, -0.824845,
		-0.178997, -0.858033, -0.481394,
		-0.887978, 0.351574, -0.296464,
		24.907698, 23.571108, 10.794753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468548, 23.282707, 10.268031>,  <25.529284, 23.325006, 11.002277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468548, 23.282707, 10.268031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197523, 23.562675, 10.358383>,  <25.034908, 23.730656, 10.412595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197523, 23.562675, 10.358383>,  <25.468548, 23.282707, 10.268031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197523, 23.562675, 10.358383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295992, 0.540665, -0.787445,
		-0.673275, -0.466684, -0.573505,
		-0.677562, 0.699920, 0.225881,
		24.994255, 23.772652, 10.426147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994839, 22.853289, 9.796582>,  <25.468548, 23.282707, 10.268031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994839, 22.853289, 9.796582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983812, 22.883802, 9.397901>,  <25.977196, 22.902111, 9.158691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983812, 22.883802, 9.397901>,  <25.994839, 22.853289, 9.796582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983812, 22.883802, 9.397901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229120, -0.970057, -0.080584,
		-0.973008, -0.230587, 0.009263,
		-0.027567, 0.076286, -0.996705,
		25.975542, 22.906689, 9.098889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498091, 22.401119, 9.353235>,  <25.994839, 22.853289, 9.796582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498091, 22.401119, 9.353235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849380, 22.489210, 9.183423>,  <26.060154, 22.542065, 9.081536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849380, 22.489210, 9.183423>,  <25.498091, 22.401119, 9.353235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849380, 22.489210, 9.183423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227936, -0.973107, -0.033275,
		-0.420441, -0.067542, -0.904802,
		0.878222, 0.220227, -0.424530,
		26.112846, 22.555279, 9.056065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584812, 21.941061, 8.752337>,  <25.498091, 22.401119, 9.353235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584812, 21.941061, 8.752337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934563, 22.030394, 8.924656>,  <26.144413, 22.083992, 9.028048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934563, 22.030394, 8.924656>,  <25.584812, 21.941061, 8.752337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934563, 22.030394, 8.924656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155266, -0.969885, 0.187659,
		0.459735, -0.097196, -0.882721,
		0.874378, 0.223330, 0.430799,
		26.196877, 22.097393, 9.053895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105368, 21.592054, 8.511448>,  <25.584812, 21.941061, 8.752337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105368, 21.592054, 8.511448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216206, 21.653255, 8.890881>,  <26.282709, 21.689976, 9.118541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216206, 21.653255, 8.890881>,  <26.105368, 21.592054, 8.511448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216206, 21.653255, 8.890881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084819, -0.987281, 0.134466,
		0.957091, 0.043198, -0.286550,
		0.277097, 0.153001, 0.948582,
		26.299335, 21.699156, 9.175455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688009, 21.180376, 8.747993>,  <26.105368, 21.592054, 8.511448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688009, 21.180376, 8.747993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476105, 21.267147, 9.075968>,  <26.348963, 21.319210, 9.272753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476105, 21.267147, 9.075968>,  <26.688009, 21.180376, 8.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476105, 21.267147, 9.075968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124940, -0.936233, 0.328417,
		0.838895, 0.276425, 0.468876,
		-0.529760, 0.216926, 0.819938,
		26.317177, 21.332226, 9.321949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116991, 21.319899, 9.336346>,  <26.688009, 21.180376, 8.747993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116991, 21.319899, 9.336346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763779, 21.205175, 9.484938>,  <26.551851, 21.136341, 9.574093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763779, 21.205175, 9.484938>,  <27.116991, 21.319899, 9.336346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763779, 21.205175, 9.484938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377357, -0.904510, 0.198651,
		0.279033, 0.315596, 0.906940,
		-0.883030, -0.286810, 0.371481,
		26.498869, 21.119133, 9.596382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792625, 20.549374, 9.193769>,  <27.116991, 21.319899, 9.336346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792625, 20.549374, 9.193769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435490, 20.711937, 9.271402>,  <26.221209, 20.809475, 9.317982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435490, 20.711937, 9.271402>,  <26.792625, 20.549374, 9.193769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435490, 20.711937, 9.271402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301175, -0.859184, 0.413639,
		0.334859, 0.310861, 0.889514,
		-0.892840, 0.406410, 0.194082,
		26.167637, 20.833860, 9.329627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816940, 20.557365, 9.908388>,  <26.792625, 20.549374, 9.193769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816940, 20.557365, 9.908388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452036, 20.549950, 9.744714>,  <26.233093, 20.545500, 9.646509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452036, 20.549950, 9.744714>,  <26.816940, 20.557365, 9.908388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452036, 20.549950, 9.744714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191305, -0.864043, 0.465651,
		-0.362187, 0.503076, 0.784688,
		-0.912262, -0.018538, -0.409187,
		26.178358, 20.544388, 9.621958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240429, 20.528658, 10.409120>,  <26.816940, 20.557365, 9.908388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240429, 20.528658, 10.409120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095016, 20.370771, 10.071589>,  <26.007769, 20.276039, 9.869070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095016, 20.370771, 10.071589>,  <26.240429, 20.528658, 10.409120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095016, 20.370771, 10.071589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378857, -0.764872, 0.520997,
		-0.851066, 0.509088, 0.128514,
		-0.363530, -0.394715, -0.843828,
		25.985958, 20.252357, 9.818440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513098, 20.398218, 10.621629>,  <26.240429, 20.528658, 10.409120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513098, 20.398218, 10.621629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593822, 20.182102, 10.294860>,  <25.642258, 20.052433, 10.098799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593822, 20.182102, 10.294860>,  <25.513098, 20.398218, 10.621629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593822, 20.182102, 10.294860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567192, -0.744458, 0.352244,
		-0.798478, 0.392265, -0.456685,
		0.201810, -0.540287, -0.816922,
		25.654366, 20.020016, 10.049784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896894, 20.016926, 10.493937>,  <25.513098, 20.398218, 10.621629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896894, 20.016926, 10.493937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180752, 19.823175, 10.289278>,  <25.351067, 19.706924, 10.166483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180752, 19.823175, 10.289278>,  <24.896894, 20.016926, 10.493937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180752, 19.823175, 10.289278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364462, -0.873857, 0.321777,
		-0.602968, -0.041872, -0.796666,
		0.709646, -0.484376, -0.511647,
		25.393646, 19.677862, 10.135784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.514631, 19.461323, 10.173112>,  <24.896894, 20.016926, 10.493937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.514631, 19.461323, 10.173112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903162, 19.366238, 10.171334>,  <25.136280, 19.309187, 10.170267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.903162, 19.366238, 10.171334>,  <24.514631, 19.461323, 10.173112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903162, 19.366238, 10.171334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226023, -0.929045, 0.292896,
		-0.073755, -0.283493, -0.956134,
		0.971326, -0.237711, -0.004445,
		25.194559, 19.294924, 10.170001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491623, 18.878181, 9.787778>,  <24.514631, 19.461323, 10.173112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491623, 18.878181, 9.787778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804865, 18.894859, 10.035973>,  <24.992811, 18.904865, 10.184890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804865, 18.894859, 10.035973>,  <24.491623, 18.878181, 9.787778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804865, 18.894859, 10.035973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270939, -0.875207, 0.400756,
		0.559764, -0.481949, -0.674084,
		0.783107, 0.041693, 0.620488,
		25.039797, 18.907368, 10.222119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430824, 18.251017, 10.152715>,  <24.491623, 18.878181, 9.787778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430824, 18.251017, 10.152715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739761, 18.396790, 10.360822>,  <24.925123, 18.484253, 10.485686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739761, 18.396790, 10.360822>,  <24.430824, 18.251017, 10.152715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739761, 18.396790, 10.360822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108024, -0.731766, 0.672940,
		0.625955, -0.575941, -0.525806,
		0.772341, 0.364431, 0.520268,
		24.971464, 18.506119, 10.516902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962658, 17.675802, 10.214586>,  <24.430824, 18.251017, 10.152715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962658, 17.675802, 10.214586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994524, 17.933689, 10.518690>,  <25.013643, 18.088421, 10.701153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994524, 17.933689, 10.518690>,  <24.962658, 17.675802, 10.214586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994524, 17.933689, 10.518690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101383, -0.753490, 0.649596,
		0.991653, -0.128826, 0.005337,
		0.079663, 0.644715, 0.760261,
		25.018423, 18.127104, 10.746768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532619, 17.396135, 10.724092>,  <24.962658, 17.675802, 10.214586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532619, 17.396135, 10.724092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314238, 17.653704, 10.938492>,  <25.183208, 17.808245, 11.067132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314238, 17.653704, 10.938492>,  <25.532619, 17.396135, 10.724092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314238, 17.653704, 10.938492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122599, -0.694277, 0.709189,
		0.828796, 0.321472, 0.457988,
		-0.545955, 0.643922, 0.536001,
		25.150452, 17.846880, 11.099292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814077, 17.327127, 11.444977>,  <25.532619, 17.396135, 10.724092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814077, 17.327127, 11.444977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451122, 17.495001, 11.454055>,  <25.233349, 17.595724, 11.459501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451122, 17.495001, 11.454055>,  <25.814077, 17.327127, 11.444977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451122, 17.495001, 11.454055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258671, -0.600196, 0.756871,
		0.331268, 0.680904, 0.653170,
		-0.907387, 0.419684, 0.022695,
		25.178905, 17.620907, 11.460863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595432, 17.490704, 12.197413>,  <25.814077, 17.327127, 11.444977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595432, 17.490704, 12.197413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243383, 17.483381, 12.007657>,  <25.032154, 17.478987, 11.893804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243383, 17.483381, 12.007657>,  <25.595432, 17.490704, 12.197413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243383, 17.483381, 12.007657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419669, -0.437156, 0.795470,
		-0.221946, 0.899199, 0.377068,
		-0.880124, -0.018308, -0.474391,
		24.979345, 17.477888, 11.865339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188450, 17.524654, 12.707088>,  <25.595432, 17.490704, 12.197413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188450, 17.524654, 12.707088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969851, 17.364918, 12.412643>,  <24.838690, 17.269075, 12.235976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969851, 17.364918, 12.412643>,  <25.188450, 17.524654, 12.707088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969851, 17.364918, 12.412643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583443, -0.449010, 0.676746,
		-0.600776, 0.799322, 0.012390,
		-0.546501, -0.399343, -0.736113,
		24.805901, 17.245115, 12.191810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506779, 17.626715, 12.922232>,  <25.188450, 17.524654, 12.707088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506779, 17.626715, 12.922232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494837, 17.334612, 12.649223>,  <24.487673, 17.159351, 12.485418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494837, 17.334612, 12.649223>,  <24.506779, 17.626715, 12.922232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494837, 17.334612, 12.649223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697587, -0.473817, 0.537466,
		-0.715878, 0.492163, -0.495272,
		-0.029853, -0.730255, -0.682522,
		24.485882, 17.115536, 12.444467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.824831, 17.539146, 12.673330>,  <24.506779, 17.626715, 12.922232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.824831, 17.539146, 12.673330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.976171, 17.185652, 12.563161>,  <24.066977, 16.973555, 12.497060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.976171, 17.185652, 12.563161>,  <23.824831, 17.539146, 12.673330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.976171, 17.185652, 12.563161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655885, -0.465904, 0.593926,
		-0.653196, -0.044068, -0.755906,
		0.378352, -0.883738, -0.275423,
		24.089678, 16.920530, 12.480534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189087, 17.122721, 12.481712>,  <23.824831, 17.539146, 12.673330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189087, 17.122721, 12.481712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487490, 16.867426, 12.557742>,  <23.666531, 16.714249, 12.603360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487490, 16.867426, 12.557742>,  <23.189087, 17.122721, 12.481712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.487490, 16.867426, 12.557742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596960, -0.514416, 0.615642,
		-0.295148, -0.572740, -0.764759,
		0.746007, -0.638236, 0.190075,
		23.711292, 16.675955, 12.614764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.980385, 16.392885, 12.238636>,  <23.189087, 17.122721, 12.481712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.980385, 16.392885, 12.238636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.263842, 16.384094, 12.520726>,  <23.433916, 16.378820, 12.689981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.263842, 16.384094, 12.520726>,  <22.980385, 16.392885, 12.238636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.263842, 16.384094, 12.520726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594583, -0.556722, 0.580113,
		0.379867, -0.830408, -0.407583,
		0.708641, -0.021976, 0.705227,
		23.476435, 16.377501, 12.732294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832384, 15.806093, 12.449303>,  <22.980385, 16.392885, 12.238636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832384, 15.806093, 12.449303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.076574, 15.955435, 12.728709>,  <23.223089, 16.045040, 12.896353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.076574, 15.955435, 12.728709>,  <22.832384, 15.806093, 12.449303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.076574, 15.955435, 12.728709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508311, -0.491656, 0.707032,
		0.607403, -0.786690, -0.110364,
		0.610476, 0.373354, 0.698517,
		23.259718, 16.067442, 12.938264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.112658, 15.220947, 12.922688>,  <22.832384, 15.806093, 12.449303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.112658, 15.220947, 12.922688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.141853, 15.552203, 13.144988>,  <23.159370, 15.750957, 13.278368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.141853, 15.552203, 13.144988>,  <23.112658, 15.220947, 12.922688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.141853, 15.552203, 13.144988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396214, -0.487297, 0.778175,
		0.915253, -0.276994, 0.292553,
		0.072990, 0.828140, 0.555748,
		23.163750, 15.800645, 13.311712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495180, 15.094967, 13.635197>,  <23.112658, 15.220947, 12.922688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495180, 15.094967, 13.635197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254997, 15.410287, 13.688910>,  <23.110888, 15.599479, 13.721139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254997, 15.410287, 13.688910>,  <23.495180, 15.094967, 13.635197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.254997, 15.410287, 13.688910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419128, -0.453266, 0.786691,
		0.681015, 0.416092, 0.602566,
		-0.600458, 0.788301, 0.134285,
		23.074860, 15.646777, 13.729196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445011, 15.242095, 14.377902>,  <23.495180, 15.094967, 13.635197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445011, 15.242095, 14.377902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.147757, 15.476008, 14.247808>,  <22.969404, 15.616357, 14.169752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.147757, 15.476008, 14.247808>,  <23.445011, 15.242095, 14.377902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147757, 15.476008, 14.247808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651531, -0.521583, 0.550871,
		0.152504, 0.621272, 0.768612,
		-0.743135, 0.584785, -0.325234,
		22.924816, 15.651443, 14.150238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055229, 15.210524, 14.052865>,  <23.445011, 15.242095, 14.377902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055229, 15.210524, 14.052865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318144, 15.253098, 13.754431>,  <24.475893, 15.278644, 13.575370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318144, 15.253098, 13.754431>,  <24.055229, 15.210524, 14.052865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318144, 15.253098, 13.754431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709704, 0.245658, 0.660282,
		0.253571, -0.963494, 0.085918,
		0.657283, 0.106452, -0.746087,
		24.515329, 15.285029, 13.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693308, 14.671859, 14.101139>,  <24.055229, 15.210524, 14.052865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693308, 14.671859, 14.101139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729942, 15.035165, 13.937840>,  <24.751923, 15.253148, 13.839860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729942, 15.035165, 13.937840>,  <24.693308, 14.671859, 14.101139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729942, 15.035165, 13.937840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625934, 0.266348, 0.732984,
		0.774480, -0.322668, -0.544120,
		0.091586, 0.908264, -0.408250,
		24.757418, 15.307644, 13.815365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383076, 14.785075, 14.162807>,  <24.693308, 14.671859, 14.101139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383076, 14.785075, 14.162807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191486, 15.132307, 14.110617>,  <25.076532, 15.340646, 14.079303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191486, 15.132307, 14.110617>,  <25.383076, 14.785075, 14.162807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191486, 15.132307, 14.110617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549757, 0.412509, 0.726363,
		0.684363, 0.276177, -0.674813,
		-0.478972, 0.868080, -0.130476,
		25.047794, 15.392731, 14.071474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823097, 15.183771, 14.236192>,  <25.383076, 14.785075, 14.162807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823097, 15.183771, 14.236192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532400, 15.453110, 14.290524>,  <25.357983, 15.614713, 14.323124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532400, 15.453110, 14.290524>,  <25.823097, 15.183771, 14.236192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532400, 15.453110, 14.290524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504051, 0.388408, 0.771409,
		0.466667, 0.629082, -0.621674,
		-0.726742, 0.673346, 0.135832,
		25.314377, 15.655113, 14.331274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157230, 15.750948, 14.481891>,  <25.823097, 15.183771, 14.236192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157230, 15.750948, 14.481891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789442, 15.814181, 14.625883>,  <25.568769, 15.852121, 14.712278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789442, 15.814181, 14.625883>,  <26.157230, 15.750948, 14.481891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789442, 15.814181, 14.625883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393126, 0.357239, 0.847250,
		0.005338, 0.920538, -0.390617,
		-0.919469, 0.158084, 0.359980,
		25.513601, 15.861607, 14.733877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723291, 15.223201, 14.610684>,  <26.157230, 15.750948, 14.481891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723291, 15.223201, 14.610684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873833, 15.163558, 14.976444>,  <26.964157, 15.127772, 15.195900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873833, 15.163558, 14.976444>,  <26.723291, 15.223201, 14.610684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873833, 15.163558, 14.976444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640332, -0.755156, 0.140411,
		0.669578, -0.638363, -0.379681,
		0.376351, -0.149106, 0.914400,
		26.986738, 15.118826, 15.250764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.242872, 14.585006, 24.642460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.851155, 14.562633, 24.564632>,  <12.616125, 14.549209, 24.517937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.851155, 14.562633, 24.564632>,  <13.242872, 14.585006, 24.642460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.851155, 14.562633, 24.564632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201140, -0.159769, -0.966446,
		0.022971, -0.985569, 0.167711,
		-0.979293, -0.055934, -0.194567,
		12.557367, 14.545853, 24.506262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191624, 14.024170, 24.188856>,  <13.242872, 14.585006, 24.642460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191624, 14.024170, 24.188856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.844301, 14.217075, 24.142437>,  <12.635908, 14.332818, 24.114586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.844301, 14.217075, 24.142437>,  <13.191624, 14.024170, 24.188856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844301, 14.217075, 24.142437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090921, -0.075250, -0.993011,
		-0.487626, -0.872788, 0.021492,
		-0.868306, 0.482264, -0.116048,
		12.583810, 14.361754, 24.107622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.932661, 13.721500, 23.642506>,  <13.191624, 14.024170, 24.188856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.932661, 13.721500, 23.642506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.711163, 14.054562, 23.645395>,  <12.578263, 14.254398, 23.647129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.711163, 14.054562, 23.645395>,  <12.932661, 13.721500, 23.642506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.711163, 14.054562, 23.645395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044542, 0.038283, -0.998274,
		-0.831493, -0.552469, -0.058287,
		-0.553746, 0.832654, 0.007225,
		12.545038, 14.304358, 23.647562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.406301, 13.551519, 23.218336>,  <12.932661, 13.721500, 23.642506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.406301, 13.551519, 23.218336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.427491, 13.950941, 23.221933>,  <12.440206, 14.190595, 23.224092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.427491, 13.950941, 23.221933>,  <12.406301, 13.551519, 23.218336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427491, 13.950941, 23.221933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115759, 0.002806, -0.993274,
		-0.991864, 0.053662, -0.115443,
		0.052977, 0.998555, 0.008995,
		12.443384, 14.250507, 23.224632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234477, 13.658062, 22.545286>,  <12.406301, 13.551519, 23.218336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234477, 13.658062, 22.545286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.366301, 14.023054, 22.642258>,  <12.445395, 14.242049, 22.700439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.366301, 14.023054, 22.642258>,  <12.234477, 13.658062, 22.545286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366301, 14.023054, 22.642258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152673, 0.201886, -0.967436,
		-0.931709, 0.355840, -0.072778,
		0.329559, 0.912480, 0.242427,
		12.465168, 14.296798, 22.714985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.853315, 14.146855, 22.186647>,  <12.234477, 13.658062, 22.545286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.853315, 14.146855, 22.186647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.205466, 14.313666, 22.276999>,  <12.416758, 14.413753, 22.331209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.205466, 14.313666, 22.276999>,  <11.853315, 14.146855, 22.186647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.205466, 14.313666, 22.276999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081080, 0.336914, -0.938038,
		-0.467290, 0.844143, 0.262799,
		0.880379, 0.417028, 0.225879,
		12.469580, 14.438775, 22.344763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.861449, 14.773056, 21.907839>,  <11.853315, 14.146855, 22.186647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.861449, 14.773056, 21.907839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.250169, 14.699400, 21.966763>,  <12.483400, 14.655207, 22.002117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.250169, 14.699400, 21.966763>,  <11.861449, 14.773056, 21.907839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.250169, 14.699400, 21.966763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165957, 0.090260, -0.981994,
		0.167528, 0.978747, 0.118273,
		0.971799, -0.184140, 0.147308,
		12.541708, 14.644158, 22.010956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150656, 15.358518, 21.580772>,  <11.861449, 14.773056, 21.907839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150656, 15.358518, 21.580772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.413320, 15.057070, 21.592470>,  <12.570918, 14.876201, 21.599489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.413320, 15.057070, 21.592470>,  <12.150656, 15.358518, 21.580772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.413320, 15.057070, 21.592470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199612, 0.136275, -0.970353,
		0.727292, 0.643029, 0.239918,
		0.656660, -0.753620, 0.029244,
		12.610317, 14.830984, 21.601244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.658068, 15.673073, 21.250372>,  <12.150656, 15.358518, 21.580772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.658068, 15.673073, 21.250372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.773780, 15.290558, 21.233246>,  <12.843207, 15.061049, 21.222971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.773780, 15.290558, 21.233246>,  <12.658068, 15.673073, 21.250372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.773780, 15.290558, 21.233246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362543, 0.150847, -0.919678,
		0.885934, 0.250523, 0.390332,
		0.289281, -0.956286, -0.042815,
		12.860564, 15.003672, 21.220402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243534, 15.774272, 20.783506>,  <12.658068, 15.673073, 21.250372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243534, 15.774272, 20.783506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.172233, 15.380679, 20.782505>,  <13.129452, 15.144524, 20.781904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.172233, 15.380679, 20.782505>,  <13.243534, 15.774272, 20.783506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172233, 15.380679, 20.782505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259076, -0.044479, -0.964832,
		0.949265, -0.172635, 0.262855,
		-0.178255, -0.983981, -0.002504,
		13.118756, 15.085485, 20.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904088, 15.460675, 20.550058>,  <13.243534, 15.774272, 20.783506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904088, 15.460675, 20.550058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.601570, 15.213136, 20.465164>,  <13.420059, 15.064611, 20.414227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.601570, 15.213136, 20.465164>,  <13.904088, 15.460675, 20.550058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601570, 15.213136, 20.465164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247949, 0.029077, -0.968337,
		0.605426, -0.784971, 0.131452,
		-0.756294, -0.618850, -0.212237,
		13.374681, 15.027481, 20.401493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180647, 14.842783, 20.113901>,  <13.904088, 15.460675, 20.550058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180647, 14.842783, 20.113901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.788878, 14.910820, 20.070448>,  <13.553817, 14.951642, 20.044376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.788878, 14.910820, 20.070448>,  <14.180647, 14.842783, 20.113901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788878, 14.910820, 20.070448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116448, 0.036643, -0.992521,
		-0.164841, -0.984746, -0.055696,
		-0.979422, 0.170094, -0.108632,
		13.495051, 14.961848, 20.037859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034980, 14.476811, 19.588484>,  <14.180647, 14.842783, 20.113901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034980, 14.476811, 19.588484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.709564, 14.709375, 19.592815>,  <13.514315, 14.848914, 19.595415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.709564, 14.709375, 19.592815>,  <14.034980, 14.476811, 19.588484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709564, 14.709375, 19.592815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005186, 0.011367, -0.999922,
		-0.581488, -0.813531, -0.006232,
		-0.813538, 0.581411, 0.010828,
		13.465503, 14.883799, 19.596064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758571, 14.263083, 18.961267>,  <14.034980, 14.476811, 19.588484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758571, 14.263083, 18.961267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.586863, 14.608974, 19.065557>,  <13.483837, 14.816507, 19.128132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.586863, 14.608974, 19.065557>,  <13.758571, 14.263083, 18.961267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586863, 14.608974, 19.065557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155937, 0.213382, -0.964444,
		-0.889612, -0.454664, 0.043244,
		-0.429271, 0.864724, 0.260727,
		13.458081, 14.868391, 19.143776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.163115, 14.350420, 18.454937>,  <13.758571, 14.263083, 18.961267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.163115, 14.350420, 18.454937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.248045, 14.716990, 18.590633>,  <13.299004, 14.936932, 18.672052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.248045, 14.716990, 18.590633>,  <13.163115, 14.350420, 18.454937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248045, 14.716990, 18.590633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116336, 0.368395, -0.922362,
		-0.970249, 0.156375, 0.184833,
		0.212326, 0.916424, 0.339242,
		13.311743, 14.991917, 18.692406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672345, 14.789039, 18.174482>,  <13.163115, 14.350420, 18.454937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672345, 14.789039, 18.174482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.989460, 15.012234, 18.272573>,  <13.179729, 15.146151, 18.331429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.989460, 15.012234, 18.272573>,  <12.672345, 14.789039, 18.174482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989460, 15.012234, 18.272573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021425, 0.376586, -0.926134,
		-0.609120, 0.739482, 0.286598,
		0.792788, 0.557987, 0.245229,
		13.227297, 15.179630, 18.346142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.539715, 15.426779, 17.799334>,  <12.672345, 14.789039, 18.174482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.539715, 15.426779, 17.799334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.924989, 15.440814, 17.905949>,  <13.156153, 15.449235, 17.969917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.924989, 15.440814, 17.905949>,  <12.539715, 15.426779, 17.799334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924989, 15.440814, 17.905949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234137, 0.377734, -0.895822,
		-0.132115, 0.925249, 0.355612,
		0.963185, 0.035089, 0.266539,
		13.213944, 15.451341, 17.985910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794851, 16.091736, 17.610777>,  <12.539715, 15.426779, 17.799334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794851, 16.091736, 17.610777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.120078, 15.863622, 17.657591>,  <13.315214, 15.726753, 17.685678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.120078, 15.863622, 17.657591>,  <12.794851, 16.091736, 17.610777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.120078, 15.863622, 17.657591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398951, 0.399402, -0.825419,
		0.423981, 0.717812, 0.552256,
		0.813067, -0.570285, 0.117033,
		13.363998, 15.692536, 17.692701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350000, 16.597544, 17.376165>,  <12.794851, 16.091736, 17.610777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350000, 16.597544, 17.376165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.498971, 16.226583, 17.362167>,  <13.588353, 16.004007, 17.353769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.498971, 16.226583, 17.362167>,  <13.350000, 16.597544, 17.376165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498971, 16.226583, 17.362167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512520, 0.236959, -0.825332,
		0.773707, 0.289441, 0.563562,
		0.372426, -0.927402, -0.034993,
		13.610699, 15.948363, 17.351669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144441, 16.579401, 17.391489>,  <13.350000, 16.597544, 17.376165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144441, 16.579401, 17.391489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.030194, 16.235756, 17.221617>,  <13.961647, 16.029570, 17.119694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.030194, 16.235756, 17.221617>,  <14.144441, 16.579401, 17.391489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030194, 16.235756, 17.221617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552013, 0.214760, -0.805704,
		0.783394, -0.464550, 0.412902,
		-0.285615, -0.859111, -0.424679,
		13.944510, 15.978023, 17.094213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.685147, 16.384855, 16.913980>,  <14.144441, 16.579401, 17.391489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.685147, 16.384855, 16.913980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.386212, 16.138786, 16.813541>,  <14.206851, 15.991145, 16.753279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.386212, 16.138786, 16.813541>,  <14.685147, 16.384855, 16.913980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386212, 16.138786, 16.813541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250753, 0.088842, -0.963966,
		0.615312, -0.783372, 0.087861,
		-0.747338, -0.615171, -0.251098,
		14.162011, 15.954235, 16.738213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969148, 15.899618, 16.604677>,  <14.685147, 16.384855, 16.913980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969148, 15.899618, 16.604677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.588678, 15.936537, 16.486864>,  <14.360396, 15.958688, 16.416176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.588678, 15.936537, 16.486864>,  <14.969148, 15.899618, 16.604677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588678, 15.936537, 16.486864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302629, 0.091242, -0.948731,
		-0.060693, -0.991542, -0.114719,
		-0.951174, 0.092299, -0.294532,
		14.303326, 15.964226, 16.398504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703926, 15.950924, 16.322252>,  <14.969148, 15.899618, 16.604677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.703926, 15.950924, 16.322252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.057379, 16.112591, 16.416780>,  <16.269449, 16.209591, 16.473497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.057379, 16.112591, 16.416780>,  <15.703926, 15.950924, 16.322252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057379, 16.112591, 16.416780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149920, -0.233915, 0.960629,
		0.443532, -0.884270, -0.146102,
		0.883631, 0.404166, 0.236319,
		16.322468, 16.233841, 16.487677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079271, 15.407034, 16.719856>,  <15.703926, 15.950924, 16.322252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079271, 15.407034, 16.719856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.207310, 15.777868, 16.797884>,  <16.284132, 16.000368, 16.844700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.207310, 15.777868, 16.797884>,  <16.079271, 15.407034, 16.719856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.207310, 15.777868, 16.797884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014436, -0.210649, 0.977455,
		0.947276, -0.310062, -0.080811,
		0.320094, 0.927086, 0.195067,
		16.303337, 16.055994, 16.856403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590427, 15.277524, 17.217808>,  <16.079271, 15.407034, 16.719856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590427, 15.277524, 17.217808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.494057, 15.664688, 17.246378>,  <16.436234, 15.896987, 17.263519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.494057, 15.664688, 17.246378>,  <16.590427, 15.277524, 17.217808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494057, 15.664688, 17.246378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003538, -0.072717, 0.997346,
		0.970537, 0.240542, 0.014096,
		-0.240928, 0.967911, 0.071425,
		16.421778, 15.955062, 17.267805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978531, 15.446376, 17.797667>,  <16.590427, 15.277524, 17.217808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978531, 15.446376, 17.797667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.701551, 15.732235, 17.758078>,  <16.535364, 15.903750, 17.734324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.701551, 15.732235, 17.758078>,  <16.978531, 15.446376, 17.797667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701551, 15.732235, 17.758078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160622, -0.018964, 0.986834,
		0.703361, 0.699228, 0.127920,
		-0.692447, 0.714647, -0.098973,
		16.493816, 15.946630, 17.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169886, 15.987096, 18.238420>,  <16.978531, 15.446376, 17.797667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169886, 15.987096, 18.238420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.783529, 16.068470, 18.174335>,  <16.551716, 16.117294, 18.135885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.783529, 16.068470, 18.174335>,  <17.169886, 15.987096, 18.238420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783529, 16.068470, 18.174335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129315, 0.157082, 0.979083,
		0.224346, 0.966405, -0.125417,
		-0.965892, 0.203434, -0.160212,
		16.493761, 16.129499, 18.126272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068474, 16.425463, 18.750200>,  <17.169886, 15.987096, 18.238420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068474, 16.425463, 18.750200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.710991, 16.286255, 18.636942>,  <16.496502, 16.202730, 18.568987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.710991, 16.286255, 18.636942>,  <17.068474, 16.425463, 18.750200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710991, 16.286255, 18.636942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359701, 0.178603, 0.915814,
		-0.268152, 0.920316, -0.284802,
		-0.893705, -0.348021, -0.283146,
		16.442879, 16.181849, 18.551998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.654715, 16.903620, 18.963049>,  <17.068474, 16.425463, 18.750200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.654715, 16.903620, 18.963049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.439455, 16.567148, 18.941818>,  <16.310299, 16.365265, 18.929079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.439455, 16.567148, 18.941818>,  <16.654715, 16.903620, 18.963049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439455, 16.567148, 18.941818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343034, 0.161067, 0.925411,
		-0.769886, 0.516215, -0.375231,
		-0.538148, -0.841177, -0.053076,
		16.278011, 16.314795, 18.925896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989621, 17.034246, 19.251461>,  <16.654715, 16.903620, 18.963049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989621, 17.034246, 19.251461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.034325, 16.637112, 19.268364>,  <16.061146, 16.398830, 19.278505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.034325, 16.637112, 19.268364>,  <15.989621, 17.034246, 19.251461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034325, 16.637112, 19.268364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134953, 0.026965, 0.990485,
		-0.984529, -0.116398, -0.130973,
		0.111758, -0.992836, 0.042256,
		16.067852, 16.339260, 19.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407153, 16.761953, 19.752789>,  <15.989621, 17.034246, 19.251461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407153, 16.761953, 19.752789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.660914, 16.452909, 19.742950>,  <15.813171, 16.267483, 19.737047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.660914, 16.452909, 19.742950>,  <15.407153, 16.761953, 19.752789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660914, 16.452909, 19.742950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319624, -0.291151, 0.901705,
		-0.703828, -0.564184, -0.431652,
		0.634403, -0.772611, -0.024594,
		15.851235, 16.221127, 19.735573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973837, 16.228886, 19.849150>,  <15.407153, 16.761953, 19.752789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.973837, 16.228886, 19.849150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338081, 16.122299, 19.975504>,  <15.556628, 16.058348, 20.051315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338081, 16.122299, 19.975504>,  <14.973837, 16.228886, 19.849150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338081, 16.122299, 19.975504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358655, -0.129821, 0.924399,
		-0.205315, -0.955061, -0.213787,
		0.910611, -0.266469, 0.315883,
		15.611264, 16.042358, 20.070269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822104, 15.576241, 20.199938>,  <14.973837, 16.228886, 19.849150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822104, 15.576241, 20.199938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.178904, 15.687530, 20.342445>,  <15.392983, 15.754303, 20.427950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.178904, 15.687530, 20.342445>,  <14.822104, 15.576241, 20.199938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178904, 15.687530, 20.342445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313683, -0.186515, 0.931029,
		0.325482, -0.942234, -0.079098,
		0.892000, 0.278222, 0.356270,
		15.446504, 15.770996, 20.449326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042396, 14.979947, 20.559435>,  <14.822104, 15.576241, 20.199938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042396, 14.979947, 20.559435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.216458, 15.307659, 20.708790>,  <15.320896, 15.504287, 20.798403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.216458, 15.307659, 20.708790>,  <15.042396, 14.979947, 20.559435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216458, 15.307659, 20.708790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300217, -0.258944, 0.918051,
		0.848828, -0.511593, 0.133281,
		0.435156, 0.819281, 0.373388,
		15.347005, 15.553443, 20.820807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352582, 14.802532, 21.091444>,  <15.042396, 14.979947, 20.559435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352582, 14.802532, 21.091444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.382729, 15.196056, 21.156483>,  <15.400817, 15.432171, 21.195507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.382729, 15.196056, 21.156483>,  <15.352582, 14.802532, 21.091444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382729, 15.196056, 21.156483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026515, -0.161028, 0.986594,
		0.996803, -0.078668, 0.013950,
		0.075367, 0.983810, 0.162599,
		15.405339, 15.491199, 21.205263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822039, 14.931116, 21.714277>,  <15.352582, 14.802532, 21.091444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822039, 14.931116, 21.714277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.611552, 15.265767, 21.653416>,  <15.485260, 15.466558, 21.616899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.611552, 15.265767, 21.653416>,  <15.822039, 14.931116, 21.714277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611552, 15.265767, 21.653416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157261, 0.080096, 0.984304,
		0.835682, 0.541885, 0.089421,
		-0.526217, 0.836628, -0.152152,
		15.453688, 15.516755, 21.607769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157274, 15.583803, 22.112465>,  <15.822039, 14.931116, 21.714277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157274, 15.583803, 22.112465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.769397, 15.635784, 22.029707>,  <15.536670, 15.666973, 21.980053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.769397, 15.635784, 22.029707>,  <16.157274, 15.583803, 22.112465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.769397, 15.635784, 22.029707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195072, 0.098055, 0.975875,
		0.147104, 0.986660, -0.069733,
		-0.969694, 0.129952, -0.206894,
		15.478488, 15.674769, 21.967638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942789, 16.132822, 22.468800>,  <16.157274, 15.583803, 22.112465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942789, 16.132822, 22.468800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.603810, 15.934746, 22.392254>,  <15.400423, 15.815901, 22.346327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.603810, 15.934746, 22.392254>,  <15.942789, 16.132822, 22.468800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603810, 15.934746, 22.392254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242734, 0.040847, 0.969232,
		-0.472137, 0.867824, -0.154815,
		-0.847447, -0.495189, -0.191366,
		15.349576, 15.786189, 22.334845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342986, 16.521568, 22.743977>,  <15.942789, 16.132822, 22.468800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342986, 16.521568, 22.743977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.262011, 16.129984, 22.733742>,  <15.213426, 15.895033, 22.727600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.262011, 16.129984, 22.733742>,  <15.342986, 16.521568, 22.743977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262011, 16.129984, 22.733742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174616, 0.010374, 0.984582,
		-0.963601, 0.203786, -0.173042,
		-0.202439, -0.978960, -0.025588,
		15.201279, 15.836296, 22.726065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861588, 16.536226, 23.206472>,  <15.342986, 16.521568, 22.743977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861588, 16.536226, 23.206472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.948757, 16.148422, 23.161650>,  <15.001059, 15.915739, 23.134756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.948757, 16.148422, 23.161650>,  <14.861588, 16.536226, 23.206472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948757, 16.148422, 23.161650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138083, -0.144291, 0.979854,
		-0.966148, -0.198059, -0.165318,
		0.217923, -0.969512, -0.112057,
		15.014134, 15.857569, 23.128033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.272873, 16.181889, 23.585472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.548393, 15.895810, 23.538061>,  <14.713706, 15.724163, 23.509615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.548393, 15.895810, 23.538061>,  <14.272873, 16.181889, 23.585472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548393, 15.895810, 23.538061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201527, -0.345954, 0.916353,
		-0.696377, -0.607298, -0.382425,
		0.688800, -0.715196, -0.118527,
		14.755033, 15.681252, 23.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923489, 15.497317, 23.748022>,  <14.272873, 16.181889, 23.585472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923489, 15.497317, 23.748022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.316959, 15.435891, 23.785545>,  <14.553041, 15.399035, 23.808060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.316959, 15.435891, 23.785545>,  <13.923489, 15.497317, 23.748022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316959, 15.435891, 23.785545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158397, -0.491523, 0.856338,
		-0.085396, -0.857218, -0.507824,
		0.983676, -0.153565, 0.093806,
		14.612062, 15.389821, 23.813686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018655, 14.815805, 23.922459>,  <13.923489, 15.497317, 23.748022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018655, 14.815805, 23.922459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.351858, 14.988070, 24.061384>,  <14.551781, 15.091428, 24.144739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.351858, 14.988070, 24.061384>,  <14.018655, 14.815805, 23.922459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351858, 14.988070, 24.061384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134911, -0.450694, 0.882425,
		0.536559, -0.781924, -0.317332,
		0.833009, 0.430661, 0.347314,
		14.601761, 15.117268, 24.165579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531359, 14.253746, 24.136108>,  <14.018655, 14.815805, 23.922459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531359, 14.253746, 24.136108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.614520, 14.600969, 24.316442>,  <14.664416, 14.809303, 24.424643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.614520, 14.600969, 24.316442>,  <14.531359, 14.253746, 24.136108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614520, 14.600969, 24.316442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072229, -0.473272, 0.877950,
		0.975479, -0.149964, -0.161093,
		0.207902, 0.868058, 0.450835,
		14.676890, 14.861386, 24.451693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813064, 14.049178, 24.748808>,  <14.531359, 14.253746, 24.136108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813064, 14.049178, 24.748808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.770568, 14.437835, 24.833309>,  <14.745070, 14.671028, 24.884010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.770568, 14.437835, 24.833309>,  <14.813064, 14.049178, 24.748808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.770568, 14.437835, 24.833309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098633, -0.201108, 0.974591,
		0.989437, 0.124376, -0.074470,
		-0.106239, 0.971641, 0.211251,
		14.738696, 14.729327, 24.896685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199593, 14.181481, 25.293753>,  <14.813064, 14.049178, 24.748808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199593, 14.181481, 25.293753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.979589, 14.514372, 25.321720>,  <14.847586, 14.714107, 25.338501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.979589, 14.514372, 25.321720>,  <15.199593, 14.181481, 25.293753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979589, 14.514372, 25.321720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016412, -0.094476, 0.995392,
		0.834997, 0.546328, 0.065621,
		-0.550010, 0.832226, 0.069920,
		14.814586, 14.764040, 25.342697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613586, 14.650002, 25.730534>,  <15.199593, 14.181481, 25.293753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613586, 14.650002, 25.730534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.233395, 14.774305, 25.728790>,  <15.005280, 14.848887, 25.727745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.233395, 14.774305, 25.728790>,  <15.613586, 14.650002, 25.730534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233395, 14.774305, 25.728790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072426, -0.207843, 0.975477,
		0.302232, 0.927486, 0.220057,
		-0.950479, 0.310758, -0.004357,
		14.948251, 14.867533, 25.727484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544920, 15.226633, 26.245630>,  <15.613586, 14.650002, 25.730534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544920, 15.226633, 26.245630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.197193, 15.034582, 26.198702>,  <14.988557, 14.919352, 26.170544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.197193, 15.034582, 26.198702>,  <15.544920, 15.226633, 26.245630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197193, 15.034582, 26.198702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091136, -0.077590, 0.992811,
		-0.485778, 0.873761, 0.023693,
		-0.869318, -0.480127, -0.117322,
		14.936398, 14.890544, 26.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.160615, 15.690359, 26.598871>,  <15.544920, 15.226633, 26.245630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.160615, 15.690359, 26.598871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.939861, 15.357031, 26.586229>,  <14.807409, 15.157034, 26.578644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.939861, 15.357031, 26.586229>,  <15.160615, 15.690359, 26.598871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939861, 15.357031, 26.586229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226699, 0.113451, 0.967335,
		-0.802515, 0.541022, -0.251525,
		-0.551885, -0.833321, -0.031603,
		14.774296, 15.107035, 26.576748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590874, 15.819151, 27.174339>,  <15.160615, 15.690359, 26.598871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590874, 15.819151, 27.174339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.571675, 15.429534, 27.085854>,  <14.560156, 15.195764, 27.032763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.571675, 15.429534, 27.085854>,  <14.590874, 15.819151, 27.174339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571675, 15.429534, 27.085854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150484, -0.211890, 0.965638,
		-0.987447, 0.079637, -0.136408,
		-0.047997, -0.974043, -0.221214,
		14.557277, 15.137321, 27.019489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925842, 15.532533, 27.466747>,  <14.590874, 15.819151, 27.174339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925842, 15.532533, 27.466747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.156668, 15.206889, 27.440748>,  <14.295163, 15.011503, 27.425148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.156668, 15.206889, 27.440748>,  <13.925842, 15.532533, 27.466747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156668, 15.206889, 27.440748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239384, -0.244699, 0.939584,
		-0.780829, -0.526639, -0.336091,
		0.577063, -0.814109, -0.064999,
		14.329786, 14.962657, 27.421249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.561417, 14.890449, 27.633577>,  <13.925842, 15.532533, 27.466747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.561417, 14.890449, 27.633577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.947480, 14.806233, 27.695728>,  <14.179118, 14.755704, 27.733019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.947480, 14.806233, 27.695728>,  <13.561417, 14.890449, 27.633577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947480, 14.806233, 27.695728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214803, -0.298398, 0.929956,
		-0.149426, -0.930931, -0.333225,
		0.965159, -0.210537, 0.155378,
		14.237028, 14.743073, 27.742342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543522, 14.378947, 28.066635>,  <13.561417, 14.890449, 27.633577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543522, 14.378947, 28.066635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.922881, 14.498918, 28.107790>,  <14.150496, 14.570900, 28.132483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.922881, 14.498918, 28.107790>,  <13.543522, 14.378947, 28.066635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922881, 14.498918, 28.107790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009187, -0.298351, 0.954412,
		0.316951, -0.906107, -0.280200,
		0.948398, 0.299927, 0.102887,
		14.207400, 14.588896, 28.138657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824670, 13.816518, 28.389820>,  <13.543522, 14.378947, 28.066635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824670, 13.816518, 28.389820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.087567, 14.110801, 28.455259>,  <14.245306, 14.287371, 28.494524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.087567, 14.110801, 28.455259>,  <13.824670, 13.816518, 28.389820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087567, 14.110801, 28.455259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009768, -0.208736, 0.977923,
		0.753615, -0.644331, -0.130004,
		0.657243, 0.735708, 0.163600,
		14.284740, 14.331513, 28.504339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.291129, 13.512599, 28.757948>,  <13.824670, 13.816518, 28.389820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.291129, 13.512599, 28.757948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.316898, 13.905701, 28.827282>,  <14.332359, 14.141562, 28.868883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.316898, 13.905701, 28.827282>,  <14.291129, 13.512599, 28.757948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316898, 13.905701, 28.827282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057224, -0.177048, 0.982537,
		0.996281, -0.053378, -0.067643,
		0.064422, 0.982754, 0.173335,
		14.336225, 14.200527, 28.879282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809297, 13.483272, 29.217310>,  <14.291129, 13.512599, 28.757948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809297, 13.483272, 29.217310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.612148, 13.826010, 29.277834>,  <14.493859, 14.031652, 29.314148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.612148, 13.826010, 29.277834>,  <14.809297, 13.483272, 29.217310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612148, 13.826010, 29.277834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188470, -0.064638, 0.979949,
		0.849445, 0.511507, -0.129631,
		-0.492871, 0.856845, 0.151310,
		14.464287, 14.083063, 29.323227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114832, 13.823442, 29.777948>,  <14.809297, 13.483272, 29.217310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114832, 13.823442, 29.777948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.768395, 14.023233, 29.769859>,  <14.560534, 14.143107, 29.765005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.768395, 14.023233, 29.769859>,  <15.114832, 13.823442, 29.777948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768395, 14.023233, 29.769859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104467, -0.141284, 0.984442,
		0.488848, 0.854729, 0.174543,
		-0.866092, 0.499476, -0.020224,
		14.508568, 14.173077, 29.763792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.165415, 14.237986, 30.369547>,  <15.114832, 13.823442, 29.777948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.165415, 14.237986, 30.369547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.781929, 14.217957, 30.257574>,  <14.551838, 14.205940, 30.190390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.781929, 14.217957, 30.257574>,  <15.165415, 14.237986, 30.369547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781929, 14.217957, 30.257574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259270, -0.250488, 0.932756,
		-0.116823, 0.966824, 0.227165,
		-0.958714, -0.050070, -0.279931,
		14.494315, 14.202936, 30.173595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.721149, 14.774571, 30.736414>,  <15.165415, 14.237986, 30.369547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.721149, 14.774571, 30.736414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.452545, 14.504313, 30.614710>,  <14.291383, 14.342157, 30.541687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.452545, 14.504313, 30.614710>,  <14.721149, 14.774571, 30.736414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452545, 14.504313, 30.614710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279178, -0.149667, 0.948504,
		-0.686391, 0.721874, -0.088123,
		-0.671511, -0.675646, -0.304262,
		14.251092, 14.301619, 30.523432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.168399, 14.849349, 31.174314>,  <14.721149, 14.774571, 30.736414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.168399, 14.849349, 31.174314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.122910, 14.487995, 31.008923>,  <14.095616, 14.271183, 30.909687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.122910, 14.487995, 31.008923>,  <14.168399, 14.849349, 31.174314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122910, 14.487995, 31.008923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249488, -0.376876, 0.892031,
		-0.961677, 0.204603, -0.182524,
		-0.113723, -0.903384, -0.413479,
		14.088793, 14.216980, 30.884878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547070, 14.582625, 31.607311>,  <14.168399, 14.849349, 31.174314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547070, 14.582625, 31.607311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.717043, 14.264038, 31.435232>,  <13.819027, 14.072886, 31.331984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.717043, 14.264038, 31.435232>,  <13.547070, 14.582625, 31.607311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717043, 14.264038, 31.435232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014934, -0.481343, 0.876405,
		-0.905101, -0.365990, -0.216434,
		0.424935, -0.796467, -0.430198,
		13.844523, 14.025098, 31.306173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.138997, 13.986284, 31.836082>,  <13.547070, 14.582625, 31.607311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.138997, 13.986284, 31.836082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.502715, 13.848757, 31.742298>,  <13.720945, 13.766240, 31.686028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.502715, 13.848757, 31.742298>,  <13.138997, 13.986284, 31.836082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502715, 13.848757, 31.742298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020848, -0.600327, 0.799483,
		-0.415630, -0.722077, -0.553042,
		0.909295, -0.343819, -0.234460,
		13.775503, 13.745611, 31.671961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.200743, 13.315273, 31.990076>,  <13.138997, 13.986284, 31.836082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.200743, 13.315273, 31.990076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.412395, 13.029231, 31.807365>,  <13.539388, 12.857606, 31.697739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.412395, 13.029231, 31.807365>,  <13.200743, 13.315273, 31.990076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412395, 13.029231, 31.807365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129234, -0.464112, 0.876298,
		-0.838640, -0.522708, -0.153161,
		0.529132, -0.715106, -0.456775,
		13.571136, 12.814699, 31.670334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546346, 12.842691, 32.263668>,  <13.200743, 13.315273, 31.990076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546346, 12.842691, 32.263668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.629515, 12.460213, 32.181248>,  <12.679417, 12.230725, 32.131798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.629515, 12.460213, 32.181248>,  <12.546346, 12.842691, 32.263668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.629515, 12.460213, 32.181248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618061, 0.034837, -0.785358,
		0.758135, 0.290644, -0.583745,
		0.207924, -0.956197, -0.206046,
		12.691892, 12.173353, 32.119434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823887, 12.619405, 31.500921>,  <12.546346, 12.842691, 32.263668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823887, 12.619405, 31.500921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.577206, 12.333274, 31.632366>,  <12.429196, 12.161595, 31.711233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.577206, 12.333274, 31.632366>,  <12.823887, 12.619405, 31.500921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.577206, 12.333274, 31.632366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560382, 0.105757, -0.821455,
		0.552855, -0.690741, -0.466076,
		-0.616704, -0.715326, 0.328610,
		12.392195, 12.118676, 31.730949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859095, 12.127021, 30.959616>,  <12.823887, 12.619405, 31.500921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859095, 12.127021, 30.959616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.529248, 12.138560, 31.185598>,  <12.331340, 12.145484, 31.321188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.529248, 12.138560, 31.185598>,  <12.859095, 12.127021, 30.959616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.529248, 12.138560, 31.185598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551194, 0.183676, -0.813909,
		-0.127250, -0.982563, -0.135560,
		-0.824616, 0.028850, 0.564956,
		12.281863, 12.147215, 31.355085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.404103, 11.701297, 30.564009>,  <12.859095, 12.127021, 30.959616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.404103, 11.701297, 30.564009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.203934, 11.956615, 30.797985>,  <12.083832, 12.109806, 30.938370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.203934, 11.956615, 30.797985>,  <12.404103, 11.701297, 30.564009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.203934, 11.956615, 30.797985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500783, 0.337732, -0.796965,
		-0.706253, -0.691748, 0.150638,
		-0.500423, 0.638296, 0.584940,
		12.053806, 12.148105, 30.973467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683687, 11.587598, 30.331030>,  <12.404103, 11.701297, 30.564009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683687, 11.587598, 30.331030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.719782, 11.951852, 30.492327>,  <11.741439, 12.170404, 30.589104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.719782, 11.951852, 30.492327>,  <11.683687, 11.587598, 30.331030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719782, 11.951852, 30.492327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401951, 0.403751, -0.821839,
		-0.911204, -0.087924, 0.402463,
		0.090236, 0.910634, 0.403241,
		11.746853, 12.225042, 30.613298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142590, 11.893075, 30.127518>,  <11.683687, 11.587598, 30.331030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142590, 11.893075, 30.127518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.357488, 12.208681, 30.246733>,  <11.486426, 12.398045, 30.318262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.357488, 12.208681, 30.246733>,  <11.142590, 11.893075, 30.127518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357488, 12.208681, 30.246733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167722, 0.446248, -0.879052,
		-0.826582, 0.422279, 0.372079,
		0.537245, 0.789014, 0.298035,
		11.518661, 12.445385, 30.336143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.778790, 12.455252, 29.851194>,  <11.142590, 11.893075, 30.127518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.778790, 12.455252, 29.851194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.147716, 12.583509, 29.937471>,  <11.369071, 12.660464, 29.989237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.147716, 12.583509, 29.937471>,  <10.778790, 12.455252, 29.851194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147716, 12.583509, 29.937471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005613, 0.546979, -0.837128,
		-0.386400, 0.773305, 0.502687,
		0.922315, 0.320644, 0.215693,
		11.424410, 12.679703, 30.002180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.870330, 13.182346, 29.666145>,  <10.778790, 12.455252, 29.851194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.870330, 13.182346, 29.666145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.245822, 13.045292, 29.681032>,  <11.471117, 12.963059, 29.689964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.245822, 13.045292, 29.681032>,  <10.870330, 13.182346, 29.666145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.245822, 13.045292, 29.681032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178591, 0.391226, -0.902800,
		0.294771, 0.854133, 0.428447,
		0.938731, -0.342636, 0.037218,
		11.527441, 12.942501, 29.692198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.248830, 13.776922, 29.652594>,  <10.870330, 13.182346, 29.666145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.248830, 13.776922, 29.652594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.468146, 13.465034, 29.531658>,  <11.599736, 13.277901, 29.459097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.468146, 13.465034, 29.531658>,  <11.248830, 13.776922, 29.652594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.468146, 13.465034, 29.531658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265863, 0.505288, -0.820975,
		0.792901, 0.369753, 0.484345,
		0.548292, -0.779722, -0.302340,
		11.632634, 13.231117, 29.440956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.775178, 14.052161, 29.278767>,  <11.248830, 13.776922, 29.652594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.775178, 14.052161, 29.278767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.794963, 13.678069, 29.138538>,  <11.806834, 13.453614, 29.054401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.794963, 13.678069, 29.138538>,  <11.775178, 14.052161, 29.278767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.794963, 13.678069, 29.138538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206993, 0.352977, -0.912448,
		0.977091, -0.027434, 0.211045,
		0.049462, -0.935230, -0.350570,
		11.809802, 13.397500, 29.033367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457089, 13.923097, 28.874245>,  <11.775178, 14.052161, 29.278767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457089, 13.923097, 28.874245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.183187, 13.661607, 28.745403>,  <12.018845, 13.504713, 28.668098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.183187, 13.661607, 28.745403>,  <12.457089, 13.923097, 28.874245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183187, 13.661607, 28.745403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170174, 0.286335, -0.942896,
		0.708624, -0.700469, -0.084823,
		-0.684757, -0.653725, -0.322105,
		11.977759, 13.465489, 28.648771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831147, 13.442442, 28.456656>,  <12.457089, 13.923097, 28.874245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831147, 13.442442, 28.456656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.447028, 13.404369, 28.351759>,  <12.216557, 13.381526, 28.288820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.447028, 13.404369, 28.351759>,  <12.831147, 13.442442, 28.456656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447028, 13.404369, 28.351759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249961, 0.123891, -0.960297,
		0.123891, -0.987721, -0.095181,
		0.960297, 0.095181, 0.262241,
		12.158939, 13.375815, 28.273087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.791473, 12.960044, 27.942308>,  <12.831147, 13.442442, 28.456656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.791473, 12.960044, 27.942308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.471018, 13.197371, 27.910944>,  <12.278745, 13.339767, 27.892126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.471018, 13.197371, 27.910944>,  <12.791473, 12.960044, 27.942308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.471018, 13.197371, 27.910944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183113, 0.118272, -0.975952,
		-0.569776, -0.796232, -0.203397,
		-0.801140, 0.593319, -0.078412,
		12.230676, 13.375367, 27.887421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600121, 12.814745, 27.215897>,  <12.791473, 12.960044, 27.942308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600121, 12.814745, 27.215897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.410278, 13.158966, 27.289865>,  <12.296372, 13.365499, 27.334248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.410278, 13.158966, 27.289865>,  <12.600121, 12.814745, 27.215897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410278, 13.158966, 27.289865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034444, 0.228091, -0.973031,
		-0.879523, -0.455438, -0.137895,
		-0.474608, 0.860553, 0.184924,
		12.267896, 13.417131, 27.345343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202054, 12.877828, 26.609238>,  <12.600121, 12.814745, 27.215897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202054, 12.877828, 26.609238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.239279, 13.241885, 26.770720>,  <12.261614, 13.460320, 26.867609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.239279, 13.241885, 26.770720>,  <12.202054, 12.877828, 26.609238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239279, 13.241885, 26.770720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237414, 0.373483, -0.896741,
		-0.966941, 0.179297, -0.181324,
		0.093062, 0.910145, 0.403703,
		12.267198, 13.514929, 26.891830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847379, 13.258549, 26.191057>,  <12.202054, 12.877828, 26.609238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847379, 13.258549, 26.191057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.044775, 13.550587, 26.380131>,  <12.163213, 13.725809, 26.493574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.044775, 13.550587, 26.380131>,  <11.847379, 13.258549, 26.191057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.044775, 13.550587, 26.380131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088322, 0.498595, -0.862324,
		-0.865255, 0.467296, 0.181568,
		0.493490, 0.730094, 0.472684,
		12.192822, 13.769615, 26.521936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.412236, 13.922694, 26.276415>,  <11.847379, 13.258549, 26.191057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.412236, 13.922694, 26.276415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.796568, 14.033195, 26.285292>,  <12.027166, 14.099496, 26.290617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.796568, 14.033195, 26.285292>,  <11.412236, 13.922694, 26.276415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.796568, 14.033195, 26.285292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134233, 0.533935, -0.834802,
		-0.242466, 0.799123, 0.550103,
		0.960829, 0.276253, 0.022193,
		12.084817, 14.116072, 26.291950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.433353, 14.599298, 26.050385>,  <11.412236, 13.922694, 26.276415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.433353, 14.599298, 26.050385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.810973, 14.470531, 26.021708>,  <12.037545, 14.393271, 26.004501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.810973, 14.470531, 26.021708>,  <11.433353, 14.599298, 26.050385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.810973, 14.470531, 26.021708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145455, 0.601499, -0.785520,
		0.295996, 0.731141, 0.614670,
		0.944049, -0.321918, -0.071693,
		12.094188, 14.373956, 26.000200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.772990, 15.166365, 25.842430>,  <11.433353, 14.599298, 26.050385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.772990, 15.166365, 25.842430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.018148, 14.862526, 25.755371>,  <12.165243, 14.680223, 25.703136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.018148, 14.862526, 25.755371>,  <11.772990, 15.166365, 25.842430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.018148, 14.862526, 25.755371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129328, 0.368165, -0.920722,
		0.779508, 0.536158, 0.323884,
		0.612896, -0.759598, -0.217647,
		12.202017, 14.634646, 25.690077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317437, 15.490837, 25.408495>,  <11.772990, 15.166365, 25.842430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317437, 15.490837, 25.408495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.308536, 15.097844, 25.334488>,  <12.303194, 14.862048, 25.290085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.308536, 15.097844, 25.334488>,  <12.317437, 15.490837, 25.408495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308536, 15.097844, 25.334488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107479, 0.181638, -0.977474,
		0.993958, -0.041639, 0.101554,
		-0.022255, -0.982484, -0.185016,
		12.301859, 14.803099, 25.278984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911383, 15.333139, 24.921839>,  <12.317437, 15.490837, 25.408495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911383, 15.333139, 24.921839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.627939, 15.052188, 24.894888>,  <12.457873, 14.883617, 24.878717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.627939, 15.052188, 24.894888>,  <12.911383, 15.333139, 24.921839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.627939, 15.052188, 24.894888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085590, 0.009220, -0.996288,
		0.700392, -0.711744, 0.053583,
		-0.708608, -0.702378, -0.067376,
		12.415357, 14.841475, 24.874676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.344885, 26.744709, 9.397843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.033190, 26.806227, 9.640869>,  <24.846172, 26.843138, 9.786684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.033190, 26.806227, 9.640869>,  <25.344885, 26.744709, 9.397843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033190, 26.806227, 9.640869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592393, 0.497202, 0.633924,
		-0.204588, 0.853895, -0.478547,
		-0.779239, 0.153795, 0.607563,
		24.799417, 26.852365, 9.823138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931536, 26.509350, 9.744049>,  <25.344885, 26.744709, 9.397843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931536, 26.509350, 9.744049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.180880, 26.198935, 9.705706>,  <26.330486, 26.012686, 9.682700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.180880, 26.198935, 9.705706>,  <25.931536, 26.509350, 9.744049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180880, 26.198935, 9.705706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696271, -0.606672, 0.383609,
		-0.355849, -0.172383, -0.918507,
		0.623361, -0.776037, -0.095858,
		26.367887, 25.966124, 9.676949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532827, 26.003244, 9.603177>,  <25.931536, 26.509350, 9.744049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532827, 26.003244, 9.603177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.864870, 25.824045, 9.735972>,  <26.064096, 25.716526, 9.815650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.864870, 25.824045, 9.735972>,  <25.532827, 26.003244, 9.603177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864870, 25.824045, 9.735972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556065, -0.709285, 0.433251,
		0.041379, -0.544253, -0.837900,
		0.830108, -0.447999, 0.331990,
		26.113903, 25.689646, 9.835569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643845, 25.258364, 9.245764>,  <25.532827, 26.003244, 9.603177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643845, 25.258364, 9.245764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.748949, 25.337198, 9.623571>,  <25.812012, 25.384499, 9.850256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.748949, 25.337198, 9.623571>,  <25.643845, 25.258364, 9.245764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748949, 25.337198, 9.623571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590733, -0.741136, 0.318986,
		0.762883, -0.641775, -0.078318,
		0.262762, 0.197084, 0.944518,
		25.827778, 25.396324, 9.906927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101688, 24.685726, 9.627388>,  <25.643845, 25.258364, 9.245764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101688, 24.685726, 9.627388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.838974, 24.918020, 9.819796>,  <25.681345, 25.057396, 9.935240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.838974, 24.918020, 9.819796>,  <26.101688, 24.685726, 9.627388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838974, 24.918020, 9.819796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503155, -0.812624, 0.294068,
		0.561663, -0.048887, 0.825921,
		-0.656787, 0.580734, 0.481019,
		25.641937, 25.092241, 9.964101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842337, 24.325260, 10.272680>,  <26.101688, 24.685726, 9.627388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842337, 24.325260, 10.272680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.534124, 24.560247, 10.173758>,  <25.349197, 24.701241, 10.114404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.534124, 24.560247, 10.173758>,  <25.842337, 24.325260, 10.272680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534124, 24.560247, 10.173758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631635, -0.755816, 0.172569,
		-0.085539, 0.289178, 0.953446,
		-0.770533, 0.587468, -0.247307,
		25.302965, 24.736488, 10.099566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335732, 24.316048, 10.817111>,  <25.842337, 24.325260, 10.272680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335732, 24.316048, 10.817111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.177588, 24.408607, 10.461551>,  <25.082701, 24.464144, 10.248215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.177588, 24.408607, 10.461551>,  <25.335732, 24.316048, 10.817111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177588, 24.408607, 10.461551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658114, -0.746461, 0.098393,
		-0.640763, 0.623900, 0.447407,
		-0.395359, 0.231398, -0.888901,
		25.058979, 24.478027, 10.194880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559856, 24.575430, 10.849340>,  <25.335732, 24.316048, 10.817111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559856, 24.575430, 10.849340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.690811, 24.374193, 10.529412>,  <24.769384, 24.253450, 10.337456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.690811, 24.374193, 10.529412>,  <24.559856, 24.575430, 10.849340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690811, 24.374193, 10.529412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638402, -0.741820, 0.205295,
		-0.696605, 0.443395, -0.564041,
		0.327390, -0.503094, -0.799820,
		24.789028, 24.223265, 10.289466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032173, 24.413628, 10.351638>,  <24.559856, 24.575430, 10.849340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032173, 24.413628, 10.351638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.317324, 24.133762, 10.332532>,  <24.488413, 23.965843, 10.321068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.317324, 24.133762, 10.332532>,  <24.032173, 24.413628, 10.351638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.317324, 24.133762, 10.332532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633110, -0.671369, 0.385273,
		-0.301629, -0.244411, -0.921566,
		0.712875, -0.699662, -0.047765,
		24.531187, 23.923864, 10.318202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.640339, 23.739019, 10.259107>,  <24.032173, 24.413628, 10.351638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.640339, 23.739019, 10.259107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.002098, 23.650640, 10.405117>,  <24.219154, 23.597612, 10.492723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.002098, 23.650640, 10.405117>,  <23.640339, 23.739019, 10.259107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.002098, 23.650640, 10.405117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402249, -0.726864, 0.556655,
		0.142331, -0.650269, -0.746252,
		0.904399, -0.220949, 0.365026,
		24.273418, 23.584356, 10.514625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.841637, 23.000757, 10.175907>,  <23.640339, 23.739019, 10.259107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.841637, 23.000757, 10.175907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089409, 23.135132, 10.459724>,  <24.238071, 23.215757, 10.630014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089409, 23.135132, 10.459724>,  <23.841637, 23.000757, 10.175907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089409, 23.135132, 10.459724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290159, -0.741847, 0.604541,
		0.729460, -0.580352, -0.362048,
		0.619431, 0.335937, 0.709543,
		24.275238, 23.235912, 10.672587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166222, 22.345568, 10.443589>,  <23.841637, 23.000757, 10.175907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166222, 22.345568, 10.443589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.238283, 22.632282, 10.713036>,  <24.281519, 22.804312, 10.874703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.238283, 22.632282, 10.713036>,  <24.166222, 22.345568, 10.443589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238283, 22.632282, 10.713036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166453, -0.652730, 0.739078,
		0.969453, -0.245271, 0.001721,
		0.180152, 0.716788, 0.673617,
		24.292328, 22.847319, 10.915121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654325, 22.056139, 10.884430>,  <24.166222, 22.345568, 10.443589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654325, 22.056139, 10.884430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451637, 22.348368, 11.067514>,  <24.330025, 22.523705, 11.177365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451637, 22.348368, 11.067514>,  <24.654325, 22.056139, 10.884430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451637, 22.348368, 11.067514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368283, -0.663475, 0.651282,
		0.779487, 0.161452, 0.605254,
		-0.506722, 0.730571, 0.457710,
		24.299622, 22.567539, 11.204827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793798, 22.068323, 11.503850>,  <24.654325, 22.056139, 10.884430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793798, 22.068323, 11.503850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451359, 22.274242, 11.522091>,  <24.245895, 22.397793, 11.533035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.451359, 22.274242, 11.522091>,  <24.793798, 22.068323, 11.503850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451359, 22.274242, 11.522091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438041, -0.769608, 0.464569,
		0.274253, 0.377742, 0.884362,
		-0.856099, 0.514796, 0.045601,
		24.194529, 22.428680, 11.535771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633989, 22.153151, 12.155197>,  <24.793798, 22.068323, 11.503850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633989, 22.153151, 12.155197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279802, 22.195463, 11.974196>,  <24.067289, 22.220850, 11.865596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279802, 22.195463, 11.974196>,  <24.633989, 22.153151, 12.155197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279802, 22.195463, 11.974196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378441, -0.729247, 0.570071,
		-0.269683, 0.676024, 0.685757,
		-0.885468, 0.105780, -0.452501,
		24.014162, 22.227198, 11.838446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183590, 22.149223, 12.711341>,  <24.633989, 22.153151, 12.155197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183590, 22.149223, 12.711341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.949236, 22.072817, 12.396317>,  <23.808622, 22.026974, 12.207302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.949236, 22.072817, 12.396317>,  <24.183590, 22.149223, 12.711341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.949236, 22.072817, 12.396317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525855, -0.649835, 0.548809,
		-0.616615, 0.735682, 0.280282,
		-0.585886, -0.191016, -0.787560,
		23.773470, 22.015512, 12.160048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.423132, 22.213377, 12.997641>,  <24.183590, 22.149223, 12.711341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.423132, 22.213377, 12.997641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.355249, 22.040701, 12.643274>,  <23.314520, 21.937096, 12.430655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.355249, 22.040701, 12.643274>,  <23.423132, 22.213377, 12.997641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.355249, 22.040701, 12.643274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775573, -0.496121, 0.390321,
		-0.608018, 0.753332, -0.250609,
		-0.169709, -0.431688, -0.885915,
		23.304337, 21.911194, 12.377500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.687361, 22.177164, 12.862281>,  <23.423132, 22.213377, 12.997641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.687361, 22.177164, 12.862281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.864208, 21.887571, 12.650478>,  <22.970318, 21.713816, 12.523396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.864208, 21.887571, 12.650478>,  <22.687361, 22.177164, 12.862281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.864208, 21.887571, 12.650478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697913, -0.648491, 0.303936,
		-0.563425, 0.235174, -0.791988,
		0.442120, -0.723984, -0.529507,
		22.996843, 21.670376, 12.491626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176327, 21.846226, 12.481275>,  <22.687361, 22.177164, 12.862281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176327, 21.846226, 12.481275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.471014, 21.577280, 12.510049>,  <22.647827, 21.415913, 12.527313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.471014, 21.577280, 12.510049>,  <22.176327, 21.846226, 12.481275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.471014, 21.577280, 12.510049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625201, -0.636760, 0.451287,
		-0.257622, -0.377446, -0.889475,
		0.736719, -0.672362, 0.071936,
		22.692030, 21.375572, 12.531630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869059, 21.345358, 12.237597>,  <22.176327, 21.846226, 12.481275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869059, 21.345358, 12.237597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.189728, 21.196148, 12.424434>,  <22.382130, 21.106623, 12.536535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.189728, 21.196148, 12.424434>,  <21.869059, 21.345358, 12.237597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.189728, 21.196148, 12.424434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546157, -0.774688, 0.318703,
		0.242966, -0.510601, -0.824775,
		0.801673, -0.373023, 0.467091,
		22.430229, 21.084242, 12.564561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.887316, 20.699041, 12.043295>,  <21.869059, 21.345358, 12.237597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.887316, 20.699041, 12.043295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.082945, 20.724001, 12.391298>,  <22.200323, 20.738977, 12.600101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.082945, 20.724001, 12.391298>,  <21.887316, 20.699041, 12.043295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.082945, 20.724001, 12.391298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470526, -0.820990, 0.323389,
		0.734447, -0.567522, -0.372164,
		0.489074, 0.062400, 0.870008,
		22.229668, 20.742722, 12.652301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.187223, 19.974384, 12.165929>,  <21.887316, 20.699041, 12.043295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.187223, 19.974384, 12.165929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207455, 20.128460, 12.534509>,  <22.219593, 20.220905, 12.755657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207455, 20.128460, 12.534509>,  <22.187223, 19.974384, 12.165929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207455, 20.128460, 12.534509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542481, -0.764063, 0.349174,
		0.838544, -0.517529, 0.170314,
		0.050577, 0.385190, 0.921450,
		22.222628, 20.244017, 12.810944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.319645, 19.413042, 12.625082>,  <22.187223, 19.974384, 12.165929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.319645, 19.413042, 12.625082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.182323, 19.702051, 12.865117>,  <22.099932, 19.875456, 13.009138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.182323, 19.702051, 12.865117>,  <22.319645, 19.413042, 12.625082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.182323, 19.702051, 12.865117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252514, -0.686397, 0.681979,
		0.904644, 0.082594, 0.418088,
		-0.343302, 0.722522, 0.600089,
		22.079332, 19.918808, 13.045144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.599144, 19.274385, 13.241134>,  <22.319645, 19.413042, 12.625082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.599144, 19.274385, 13.241134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.275520, 19.493996, 13.325033>,  <22.081347, 19.625763, 13.375373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.275520, 19.493996, 13.325033>,  <22.599144, 19.274385, 13.241134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275520, 19.493996, 13.325033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264412, -0.658742, 0.704376,
		0.524891, 0.514422, 0.678130,
		-0.809058, 0.549026, 0.209748,
		22.032803, 19.658703, 13.387958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638899, 19.365250, 13.946740>,  <22.599144, 19.274385, 13.241134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638899, 19.365250, 13.946740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.256546, 19.428438, 13.847678>,  <22.027134, 19.466351, 13.788241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.256546, 19.428438, 13.847678>,  <22.638899, 19.365250, 13.946740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.256546, 19.428438, 13.847678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286692, -0.685368, 0.669387,
		-0.063992, 0.710856, 0.700420,
		-0.955883, 0.157969, -0.247655,
		21.969782, 19.475828, 13.773381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.320810, 19.318731, 14.609009>,  <22.638899, 19.365250, 13.946740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.320810, 19.318731, 14.609009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.051456, 19.296097, 14.314158>,  <21.889845, 19.282516, 14.137248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.051456, 19.296097, 14.314158>,  <22.320810, 19.318731, 14.609009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051456, 19.296097, 14.314158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466756, -0.740680, 0.483252,
		-0.573319, 0.669471, 0.472350,
		-0.673383, -0.056586, -0.737125,
		21.849442, 19.279121, 14.093021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.712063, 19.065552, 15.009580>,  <22.320810, 19.318731, 14.609009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.712063, 19.065552, 15.009580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.647606, 18.998865, 14.620481>,  <21.608932, 18.958853, 14.387021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.647606, 18.998865, 14.620481>,  <21.712063, 19.065552, 15.009580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.647606, 18.998865, 14.620481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520623, -0.822977, 0.227290,
		-0.838442, 0.543061, 0.045819,
		-0.161140, -0.166715, -0.972749,
		21.599264, 18.948851, 14.328656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958803, 18.977375, 14.933359>,  <21.712063, 19.065552, 15.009580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958803, 18.977375, 14.933359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.150785, 18.807693, 14.626194>,  <21.265976, 18.705885, 14.441895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.150785, 18.807693, 14.626194>,  <20.958803, 18.977375, 14.933359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.150785, 18.807693, 14.626194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464244, -0.865532, 0.187971,
		-0.744391, 0.266280, -0.612354,
		0.479958, -0.424205, -0.767913,
		21.294773, 18.680431, 14.395820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508741, 18.671648, 14.485719>,  <20.958803, 18.977375, 14.933359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508741, 18.671648, 14.485719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.848064, 18.466520, 14.432974>,  <21.051659, 18.343443, 14.401327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.848064, 18.466520, 14.432974>,  <20.508741, 18.671648, 14.485719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848064, 18.466520, 14.432974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455118, -0.833447, 0.313421,
		-0.270629, -0.205865, -0.940415,
		0.848308, -0.512821, -0.131862,
		21.102556, 18.312674, 14.393415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320402, 18.162891, 14.100657>,  <20.508741, 18.671648, 14.485719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320402, 18.162891, 14.100657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.679653, 18.015884, 14.197239>,  <20.895203, 17.927681, 14.255188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.679653, 18.015884, 14.197239>,  <20.320402, 18.162891, 14.100657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.679653, 18.015884, 14.197239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425618, -0.864543, 0.267236,
		0.110534, -0.342779, -0.932891,
		0.898126, -0.367516, 0.241454,
		20.949091, 17.905630, 14.269675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359819, 17.398664, 13.813010>,  <20.320402, 18.162891, 14.100657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359819, 17.398664, 13.813010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.625662, 17.444237, 14.108393>,  <20.785168, 17.471581, 14.285622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.625662, 17.444237, 14.108393>,  <20.359819, 17.398664, 13.813010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.625662, 17.444237, 14.108393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168810, -0.939859, 0.296931,
		0.727873, -0.322001, -0.605405,
		0.664608, 0.113930, 0.738455,
		20.825045, 17.478416, 14.329929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865088, 16.895018, 13.914704>,  <20.359819, 17.398664, 13.813010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865088, 16.895018, 13.914704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802006, 17.038437, 14.282742>,  <20.764156, 17.124489, 14.503564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802006, 17.038437, 14.282742>,  <20.865088, 16.895018, 13.914704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802006, 17.038437, 14.282742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278742, -0.910026, 0.306849,
		0.947329, -0.208077, 0.243458,
		-0.157705, 0.358549, 0.920094,
		20.754694, 17.146002, 14.558769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378012, 16.539091, 14.289260>,  <20.865088, 16.895018, 13.914704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378012, 16.539091, 14.289260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.097687, 16.647802, 14.553077>,  <20.929491, 16.713030, 14.711367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.097687, 16.647802, 14.553077>,  <21.378012, 16.539091, 14.289260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.097687, 16.647802, 14.553077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006098, -0.926827, 0.375440,
		0.713318, 0.259091, 0.651190,
		-0.700814, 0.271779, 0.659543,
		20.887444, 16.729336, 14.750939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007998, 16.433899, 13.823277>,  <21.378012, 16.539091, 14.289260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007998, 16.433899, 13.823277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.293228, 16.171000, 13.920884>,  <22.464367, 16.013260, 13.979448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.293228, 16.171000, 13.920884>,  <22.007998, 16.433899, 13.823277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.293228, 16.171000, 13.920884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644911, 0.478411, -0.595998,
		0.274978, 0.582362, 0.765011,
		0.713076, -0.657250, 0.244019,
		22.507151, 15.973825, 13.994090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.602180, 16.841307, 14.009562>,  <22.007998, 16.433899, 13.823277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.602180, 16.841307, 14.009562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.716169, 16.478308, 13.886119>,  <22.784563, 16.260508, 13.812054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.716169, 16.478308, 13.886119>,  <22.602180, 16.841307, 14.009562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.716169, 16.478308, 13.886119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785197, 0.405672, -0.467864,
		0.549778, -0.108987, 0.828170,
		0.284974, -0.907498, -0.308606,
		22.801662, 16.206059, 13.793537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.350723, 16.827650, 14.138044>,  <22.602180, 16.841307, 14.009562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.350723, 16.827650, 14.138044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278114, 16.549421, 13.859986>,  <23.234549, 16.382484, 13.693151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278114, 16.549421, 13.859986>,  <23.350723, 16.827650, 14.138044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.278114, 16.549421, 13.859986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805422, 0.300422, -0.510923,
		0.564221, -0.652629, 0.505697,
		-0.181521, -0.695573, -0.695146,
		23.223658, 16.340750, 13.651443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039608, 16.476700, 13.898617>,  <23.350723, 16.827650, 14.138044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039608, 16.476700, 13.898617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.796616, 16.368679, 13.599809>,  <23.650820, 16.303867, 13.420524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.796616, 16.368679, 13.599809>,  <24.039608, 16.476700, 13.898617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.796616, 16.368679, 13.599809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711080, 0.234259, -0.662939,
		0.354024, -0.933914, 0.049721,
		-0.607480, -0.270052, -0.747020,
		23.614372, 16.287664, 13.375703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466415, 16.066122, 13.505067>,  <24.039608, 16.476700, 13.898617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466415, 16.066122, 13.505067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.171917, 16.175655, 13.257532>,  <23.995218, 16.241375, 13.109012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.171917, 16.175655, 13.257532>,  <24.466415, 16.066122, 13.505067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171917, 16.175655, 13.257532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676705, 0.292783, -0.675535,
		-0.003799, -0.916129, -0.400865,
		-0.736244, 0.273834, -0.618837,
		23.951044, 16.257805, 13.071881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698097, 15.873533, 12.857821>,  <24.466415, 16.066122, 13.505067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698097, 15.873533, 12.857821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.393114, 16.124182, 12.793319>,  <24.210123, 16.274570, 12.754618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.393114, 16.124182, 12.793319>,  <24.698097, 15.873533, 12.857821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393114, 16.124182, 12.793319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495941, 0.405906, -0.767648,
		-0.415570, -0.665273, -0.620253,
		-0.762459, 0.626620, -0.161254,
		24.164377, 16.312168, 12.744943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727554, 15.891084, 12.137098>,  <24.698097, 15.873533, 12.857821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727554, 15.891084, 12.137098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.513433, 16.209110, 12.251166>,  <24.384960, 16.399925, 12.319608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.513433, 16.209110, 12.251166>,  <24.727554, 15.891084, 12.137098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513433, 16.209110, 12.251166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487185, 0.566422, -0.664693,
		-0.690002, -0.216881, -0.690551,
		-0.535302, 0.795066, 0.285171,
		24.352842, 16.447630, 12.336718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.300974, 16.174845, 11.522120>,  <24.727554, 15.891084, 12.137098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.300974, 16.174845, 11.522120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.370247, 16.464348, 11.789307>,  <24.411812, 16.638050, 11.949619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.370247, 16.464348, 11.789307>,  <24.300974, 16.174845, 11.522120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370247, 16.464348, 11.789307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525679, 0.505602, -0.684125,
		-0.832868, 0.469617, -0.292903,
		0.173184, 0.723759, 0.667968,
		24.422203, 16.681475, 11.989697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.019449, 16.854443, 11.292100>,  <24.300974, 16.174845, 11.522120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.019449, 16.854443, 11.292100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.267042, 16.978062, 11.580918>,  <24.415598, 17.052233, 11.754210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.267042, 16.978062, 11.580918>,  <24.019449, 16.854443, 11.292100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267042, 16.978062, 11.580918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314961, 0.744497, -0.588663,
		-0.719486, 0.591788, 0.363493,
		0.618983, 0.309048, 0.722045,
		24.452738, 17.070776, 11.797532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.893549, 17.533680, 11.193048>,  <24.019449, 16.854443, 11.292100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.893549, 17.533680, 11.193048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.213821, 17.523384, 11.432463>,  <24.405985, 17.517206, 11.576112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.213821, 17.523384, 11.432463>,  <23.893549, 17.533680, 11.193048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213821, 17.523384, 11.432463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337542, 0.844786, -0.415214,
		-0.494949, 0.534485, 0.685092,
		0.800682, -0.025737, 0.598537,
		24.454025, 17.515663, 11.612023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988157, 18.126493, 11.560226>,  <23.893549, 17.533680, 11.193048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988157, 18.126493, 11.560226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.363165, 17.988735, 11.540440>,  <24.588169, 17.906080, 11.528567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.363165, 17.988735, 11.540440>,  <23.988157, 18.126493, 11.560226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363165, 17.988735, 11.540440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274556, 0.819620, -0.502834,
		0.213719, 0.457836, 0.862966,
		0.937520, -0.344398, -0.049466,
		24.644421, 17.885416, 11.525599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.497663, 18.670345, 11.847136>,  <23.988157, 18.126493, 11.560226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.497663, 18.670345, 11.847136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.686136, 18.418806, 11.599738>,  <24.799221, 18.267883, 11.451300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.686136, 18.418806, 11.599738>,  <24.497663, 18.670345, 11.847136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686136, 18.418806, 11.599738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428622, 0.776097, -0.462554,
		0.770888, -0.047152, 0.635222,
		0.471184, -0.628847, -0.618495,
		24.827492, 18.230152, 11.414189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200468, 18.862455, 11.751085>,  <24.497663, 18.670345, 11.847136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200468, 18.862455, 11.751085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.138453, 18.631981, 11.430094>,  <25.101242, 18.493696, 11.237499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.138453, 18.631981, 11.430094>,  <25.200468, 18.862455, 11.751085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138453, 18.631981, 11.430094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458560, 0.677518, -0.575059,
		0.875034, -0.457142, 0.159174,
		-0.155041, -0.576187, -0.802478,
		25.091940, 18.459126, 11.189350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770544, 19.084812, 11.347340>,  <25.200468, 18.862455, 11.751085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770544, 19.084812, 11.347340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.531370, 18.909420, 11.078948>,  <25.387867, 18.804186, 10.917913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.531370, 18.909420, 11.078948>,  <25.770544, 19.084812, 11.347340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531370, 18.909420, 11.078948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460001, 0.497815, -0.735241,
		0.656411, -0.748275, -0.095959,
		-0.597933, -0.438480, -0.670979,
		25.351990, 18.777876, 10.877654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123346, 18.723894, 10.928581>,  <25.770544, 19.084812, 11.347340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123346, 18.723894, 10.928581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.798672, 18.784710, 10.702996>,  <25.603867, 18.821199, 10.567646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.798672, 18.784710, 10.702996>,  <26.123346, 18.723894, 10.928581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798672, 18.784710, 10.702996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530975, 0.594380, -0.603968,
		0.243380, -0.789681, -0.563179,
		-0.811685, 0.152039, -0.563961,
		25.555166, 18.830322, 10.533808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359629, 18.776316, 10.321872>,  <26.123346, 18.723894, 10.928581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359629, 18.776316, 10.321872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.009550, 18.964432, 10.276509>,  <25.799503, 19.077301, 10.249292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.009550, 18.964432, 10.276509>,  <26.359629, 18.776316, 10.321872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009550, 18.964432, 10.276509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438570, 0.672371, -0.596300,
		-0.204184, -0.571615, -0.794711,
		-0.875194, 0.470291, -0.113405,
		25.746992, 19.105518, 10.242488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290586, 18.938107, 9.612721>,  <26.359629, 18.776316, 10.321872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290586, 18.938107, 9.612721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.018499, 19.169352, 9.792983>,  <25.855247, 19.308100, 9.901140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.018499, 19.169352, 9.792983>,  <26.290586, 18.938107, 9.612721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018499, 19.169352, 9.792983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210951, 0.743180, -0.634967,
		-0.702001, -0.336848, -0.627477,
		-0.680216, 0.578114, 0.450655,
		25.814434, 19.342787, 9.928180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901413, 19.184807, 9.090084>,  <26.290586, 18.938107, 9.612721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901413, 19.184807, 9.090084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.840115, 19.451155, 9.382149>,  <25.803335, 19.610964, 9.557387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.840115, 19.451155, 9.382149>,  <25.901413, 19.184807, 9.090084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840115, 19.451155, 9.382149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208194, 0.744060, -0.634846,
		-0.966008, 0.054727, -0.252655,
		-0.153247, 0.665868, 0.730161,
		25.794140, 19.650915, 9.601197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539719, 19.758307, 8.712432>,  <25.901413, 19.184807, 9.090084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539719, 19.758307, 8.712432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.665356, 19.920717, 9.055707>,  <25.740738, 20.018164, 9.261672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.665356, 19.920717, 9.055707>,  <25.539719, 19.758307, 8.712432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665356, 19.920717, 9.055707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010418, 0.902406, -0.430761,
		-0.949335, 0.144239, 0.279210,
		0.314093, 0.406027, 0.858188,
		25.759584, 20.042526, 9.313164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.059464, 16.638609, 21.121635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852571, 16.303154, 21.053335>,  <15.728436, 16.101881, 21.012354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852571, 16.303154, 21.053335>,  <16.059464, 16.638609, 21.121635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852571, 16.303154, 21.053335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331032, -0.012053, -0.943543,
		0.789234, -0.544554, 0.283850,
		-0.517231, -0.838639, -0.170752,
		15.697401, 16.051561, 21.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556042, 16.223267, 20.872543>,  <16.059464, 16.638609, 21.121635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556042, 16.223267, 20.872543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212776, 16.065466, 20.741137>,  <16.006817, 15.970785, 20.662292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212776, 16.065466, 20.741137>,  <16.556042, 16.223267, 20.872543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212776, 16.065466, 20.741137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407890, -0.135380, -0.902938,
		0.311737, -0.908868, 0.277092,
		-0.858164, -0.394503, -0.328516,
		15.955327, 15.947115, 20.642582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748655, 15.625497, 20.444723>,  <16.556042, 16.223267, 20.872543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748655, 15.625497, 20.444723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386154, 15.735917, 20.316662>,  <16.168653, 15.802169, 20.239824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386154, 15.735917, 20.316662>,  <16.748655, 15.625497, 20.444723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386154, 15.735917, 20.316662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311124, -0.077169, -0.947231,
		-0.286190, -0.958040, -0.015951,
		-0.906254, 0.276051, -0.320154,
		16.114277, 15.818732, 20.220615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762396, 15.370790, 19.656040>,  <16.748655, 15.625497, 20.444723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762396, 15.370790, 19.656040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440624, 15.605949, 19.690153>,  <16.247562, 15.747045, 19.710621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440624, 15.605949, 19.690153>,  <16.762396, 15.370790, 19.656040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.440624, 15.605949, 19.690153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085431, 0.027578, -0.995963,
		-0.587875, -0.808465, 0.028040,
		-0.804428, 0.587897, 0.085281,
		16.199295, 15.782318, 19.715736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277905, 15.070395, 19.205091>,  <16.762396, 15.370790, 19.656040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277905, 15.070395, 19.205091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177391, 15.456448, 19.234411>,  <16.117083, 15.688080, 19.252003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177391, 15.456448, 19.234411>,  <16.277905, 15.070395, 19.205091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177391, 15.456448, 19.234411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132392, 0.040745, -0.990360,
		-0.958816, -0.258567, 0.117538,
		-0.251285, 0.965134, 0.073300,
		16.102005, 15.745988, 19.256401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595317, 15.199480, 18.744495>,  <16.277905, 15.070395, 19.205091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595317, 15.199480, 18.744495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782895, 15.545647, 18.815086>,  <15.895442, 15.753346, 18.857441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782895, 15.545647, 18.815086>,  <15.595317, 15.199480, 18.744495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782895, 15.545647, 18.815086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013691, 0.192666, -0.981169,
		-0.883121, 0.462531, 0.078501,
		0.468945, 0.865416, 0.176480,
		15.923578, 15.805271, 18.868031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224143, 15.732374, 18.341383>,  <15.595317, 15.199480, 18.744495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224143, 15.732374, 18.341383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597230, 15.868123, 18.390148>,  <15.821082, 15.949573, 18.419407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597230, 15.868123, 18.390148>,  <15.224143, 15.732374, 18.341383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597230, 15.868123, 18.390148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050632, 0.211486, -0.976069,
		-0.357035, 0.916570, 0.180073,
		0.932718, 0.339373, 0.121915,
		15.877046, 15.969935, 18.426723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227488, 16.272243, 17.857151>,  <15.224143, 15.732374, 18.341383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227488, 16.272243, 17.857151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618196, 16.244726, 17.938328>,  <15.852622, 16.228216, 17.987034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618196, 16.244726, 17.938328>,  <15.227488, 16.272243, 17.857151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618196, 16.244726, 17.938328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213390, 0.225886, -0.950495,
		0.019546, 0.971722, 0.235318,
		0.976771, -0.068793, 0.202941,
		15.911228, 16.224089, 17.999210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535741, 16.898623, 17.627171>,  <15.227488, 16.272243, 17.857151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535741, 16.898623, 17.627171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815618, 16.613272, 17.642811>,  <15.983543, 16.442062, 17.652195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815618, 16.613272, 17.642811>,  <15.535741, 16.898623, 17.627171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815618, 16.613272, 17.642811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254921, 0.198159, -0.946440,
		0.667418, 0.672183, 0.320505,
		0.699691, -0.713375, 0.039098,
		16.025524, 16.399260, 17.654541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226101, 17.236986, 17.504232>,  <15.535741, 16.898623, 17.627171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226101, 17.236986, 17.504232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266087, 16.849752, 17.412302>,  <16.290077, 16.617413, 17.357143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266087, 16.849752, 17.412302>,  <16.226101, 17.236986, 17.504232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266087, 16.849752, 17.412302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470277, 0.249521, -0.846510,
		0.876839, -0.023462, 0.480211,
		0.099962, -0.968085, -0.229824,
		16.296076, 16.559326, 17.343355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954563, 17.095526, 17.189545>,  <16.226101, 17.236986, 17.504232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954563, 17.095526, 17.189545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773548, 16.756096, 17.079905>,  <16.664940, 16.552439, 17.014120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773548, 16.756096, 17.079905>,  <16.954563, 17.095526, 17.189545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773548, 16.756096, 17.079905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429600, 0.061900, -0.900895,
		0.781443, -0.525443, 0.336536,
		-0.452538, -0.848574, -0.274101,
		16.637787, 16.501524, 16.997675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480936, 16.708567, 16.853445>,  <16.954563, 17.095526, 17.189545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480936, 16.708567, 16.853445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121349, 16.583975, 16.730259>,  <16.905598, 16.509220, 16.656347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121349, 16.583975, 16.730259>,  <17.480936, 16.708567, 16.853445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121349, 16.583975, 16.730259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297239, 0.082624, -0.951222,
		0.321732, -0.946654, 0.018308,
		-0.898965, -0.311481, -0.307965,
		16.851660, 16.490530, 16.637869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.632946, 16.362505, 16.202827>,  <17.480936, 16.708567, 16.853445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.632946, 16.362505, 16.202827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251959, 16.476080, 16.246975>,  <17.023365, 16.544224, 16.273462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251959, 16.476080, 16.246975>,  <17.632946, 16.362505, 16.202827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251959, 16.476080, 16.246975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045715, 0.491416, -0.869724,
		-0.301182, -0.823341, -0.481040,
		-0.952470, 0.283936, 0.110367,
		16.966217, 16.561260, 16.280085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374483, 16.107912, 16.058140>,  <17.632946, 16.362505, 16.202827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374483, 16.107912, 16.058140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316734, 15.830254, 16.340221>,  <18.282085, 15.663658, 16.509472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316734, 15.830254, 16.340221>,  <18.374483, 16.107912, 16.058140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316734, 15.830254, 16.340221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316775, -0.642747, -0.697518,
		0.937449, -0.324092, -0.127095,
		-0.144370, -0.694148, 0.705206,
		18.273424, 15.622009, 16.551783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843159, 15.662770, 16.439739>,  <18.374483, 16.107912, 16.058140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843159, 15.662770, 16.439739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196032, 15.481361, 16.389032>,  <19.407755, 15.372516, 16.358608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196032, 15.481361, 16.389032>,  <18.843159, 15.662770, 16.439739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.196032, 15.481361, 16.389032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277531, -0.718204, 0.638090,
		-0.380431, -0.527732, -0.759454,
		0.882184, -0.453522, -0.126766,
		19.460688, 15.345304, 16.351002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692841, 14.971479, 16.302469>,  <18.843159, 15.662770, 16.439739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692841, 14.971479, 16.302469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.070478, 14.950860, 16.432714>,  <19.297062, 14.938488, 16.510862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.070478, 14.950860, 16.432714>,  <18.692841, 14.971479, 16.302469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070478, 14.950860, 16.432714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243109, -0.775978, 0.582028,
		0.222667, -0.628650, -0.745129,
		0.944096, -0.051549, 0.325615,
		19.353706, 14.935395, 16.530399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870440, 14.312468, 16.178799>,  <18.692841, 14.971479, 16.302469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870440, 14.312468, 16.178799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096123, 14.454879, 16.476768>,  <19.231533, 14.540326, 16.655550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096123, 14.454879, 16.476768>,  <18.870440, 14.312468, 16.178799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.096123, 14.454879, 16.476768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359493, -0.706295, 0.609846,
		0.743260, -0.611875, -0.270506,
		0.564207, 0.356029, 0.744926,
		19.265385, 14.561687, 16.700247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197756, 13.718659, 16.484589>,  <18.870440, 14.312468, 16.178799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.197756, 13.718659, 16.484589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255379, 13.984064, 16.778255>,  <19.289951, 14.143307, 16.954454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255379, 13.984064, 16.778255>,  <19.197756, 13.718659, 16.484589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255379, 13.984064, 16.778255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264475, -0.689102, 0.674679,
		0.953573, -0.291360, 0.076214,
		0.144055, 0.663512, 0.734166,
		19.298595, 14.183118, 16.998505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562647, 13.436200, 17.017664>,  <19.197756, 13.718659, 16.484589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562647, 13.436200, 17.017664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376982, 13.734943, 17.208139>,  <19.265583, 13.914189, 17.322426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376982, 13.734943, 17.208139>,  <19.562647, 13.436200, 17.017664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376982, 13.734943, 17.208139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282217, -0.634293, 0.719741,
		0.839588, 0.199687, 0.505190,
		-0.464161, 0.746859, 0.476189,
		19.237734, 13.959001, 17.350996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766455, 13.286172, 17.679638>,  <19.562647, 13.436200, 17.017664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766455, 13.286172, 17.679638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456696, 13.532589, 17.737320>,  <19.270840, 13.680439, 17.771929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456696, 13.532589, 17.737320>,  <19.766455, 13.286172, 17.679638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.456696, 13.532589, 17.737320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188196, -0.441890, 0.877106,
		0.604059, 0.652092, 0.458137,
		-0.774400, 0.616043, 0.144207,
		19.224375, 13.717402, 17.780582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688484, 13.287416, 18.351778>,  <19.766455, 13.286172, 17.679638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688484, 13.287416, 18.351778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334202, 13.446165, 18.255430>,  <19.121634, 13.541414, 18.197620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334202, 13.446165, 18.255430>,  <19.688484, 13.287416, 18.351778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334202, 13.446165, 18.255430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359957, -0.259406, 0.896180,
		0.293186, 0.880454, 0.372615,
		-0.885704, 0.396873, -0.240872,
		19.068491, 13.565228, 18.183168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499969, 13.826399, 18.790659>,  <19.688484, 13.287416, 18.351778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499969, 13.826399, 18.790659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163595, 13.678307, 18.632795>,  <18.961771, 13.589451, 18.538076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163595, 13.678307, 18.632795>,  <19.499969, 13.826399, 18.790659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163595, 13.678307, 18.632795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381248, -0.112226, 0.917636,
		-0.384028, 0.922136, -0.046775,
		-0.840936, -0.370230, -0.394660,
		18.911314, 13.567238, 18.514397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.976082, 14.180490, 19.153376>,  <19.499969, 13.826399, 18.790659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.976082, 14.180490, 19.153376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799677, 13.850211, 19.012676>,  <18.693834, 13.652043, 18.928257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799677, 13.850211, 19.012676>,  <18.976082, 14.180490, 19.153376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799677, 13.850211, 19.012676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327605, -0.216777, 0.919610,
		-0.835572, 0.520796, -0.174902,
		-0.441014, -0.825699, -0.351748,
		18.667372, 13.602501, 18.907152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409771, 14.154119, 19.525610>,  <18.976082, 14.180490, 19.153376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409771, 14.154119, 19.525610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.395727, 13.791193, 19.358017>,  <18.387300, 13.573437, 19.257462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.395727, 13.791193, 19.358017>,  <18.409771, 14.154119, 19.525610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395727, 13.791193, 19.358017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543075, -0.334617, 0.770130,
		-0.838950, 0.254576, -0.480993,
		-0.035108, -0.907316, -0.418981,
		18.385195, 13.518998, 19.232323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694294, 13.978399, 19.524092>,  <18.409771, 14.154119, 19.525610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694294, 13.978399, 19.524092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939516, 13.662392, 19.526407>,  <18.086649, 13.472787, 19.527796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939516, 13.662392, 19.526407>,  <17.694294, 13.978399, 19.524092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.939516, 13.662392, 19.526407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288584, -0.217107, 0.932515,
		-0.735448, -0.573352, -0.361086,
		0.613053, -0.790020, 0.005789,
		18.123432, 13.425385, 19.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294292, 13.470100, 19.788319>,  <17.694294, 13.978399, 19.524092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294292, 13.470100, 19.788319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672243, 13.356977, 19.854324>,  <17.899014, 13.289104, 19.893927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672243, 13.356977, 19.854324>,  <17.294292, 13.470100, 19.788319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672243, 13.356977, 19.854324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228525, -0.208678, 0.950910,
		-0.234494, -0.936201, -0.261804,
		0.944875, -0.282811, 0.165011,
		17.955706, 13.272136, 19.903828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257839, 12.970559, 20.377232>,  <17.294292, 13.470100, 19.788319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.257839, 12.970559, 20.377232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651573, 13.036245, 20.402885>,  <17.887814, 13.075657, 20.418278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651573, 13.036245, 20.402885>,  <17.257839, 12.970559, 20.377232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651573, 13.036245, 20.402885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064635, -0.002288, 0.997906,
		0.164020, -0.986422, 0.008362,
		0.984337, 0.164217, 0.064132,
		17.946875, 13.085510, 20.422125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572010, 12.405071, 20.943514>,  <17.257839, 12.970559, 20.377232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572010, 12.405071, 20.943514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779425, 12.745520, 20.910734>,  <17.903873, 12.949788, 20.891066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779425, 12.745520, 20.910734>,  <17.572010, 12.405071, 20.943514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.779425, 12.745520, 20.910734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153840, 0.187143, 0.970212,
		0.841103, -0.490481, 0.227977,
		0.518535, 0.851120, -0.081951,
		17.934986, 13.000855, 20.886148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975019, 11.805632, 21.059721>,  <17.572010, 12.405071, 20.943514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975019, 11.805632, 21.059721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712000, 11.504275, 21.061996>,  <17.554188, 11.323462, 21.063362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712000, 11.504275, 21.061996>,  <17.975019, 11.805632, 21.059721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712000, 11.504275, 21.061996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020914, -0.025800, -0.999448,
		0.753123, -0.657065, 0.032721,
		-0.657547, -0.753392, 0.005689,
		17.514736, 11.278257, 21.063704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180006, 11.283389, 20.494213>,  <17.975019, 11.805632, 21.059721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180006, 11.283389, 20.494213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793221, 11.214060, 20.568981>,  <17.561150, 11.172462, 20.613842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793221, 11.214060, 20.568981>,  <18.180006, 11.283389, 20.494213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793221, 11.214060, 20.568981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196637, 0.040532, -0.979638,
		0.162216, -0.984031, -0.073275,
		-0.966964, -0.173322, 0.186922,
		17.503132, 11.162064, 20.625057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997314, 10.758364, 19.968651>,  <18.180006, 11.283389, 20.494213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.997314, 10.758364, 19.968651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660702, 10.950849, 20.066839>,  <17.458735, 11.066339, 20.125751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660702, 10.950849, 20.066839>,  <17.997314, 10.758364, 19.968651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660702, 10.950849, 20.066839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331136, -0.100495, -0.938216,
		-0.426813, -0.870825, 0.243916,
		-0.841534, 0.481212, 0.245469,
		17.408241, 11.095212, 20.140480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518585, 10.394814, 19.492136>,  <17.997314, 10.758364, 19.968651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518585, 10.394814, 19.492136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322939, 10.726630, 19.599937>,  <17.205551, 10.925719, 19.664619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322939, 10.726630, 19.599937>,  <17.518585, 10.394814, 19.492136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322939, 10.726630, 19.599937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337343, 0.105028, -0.935505,
		-0.804343, -0.548485, 0.228468,
		-0.489115, 0.829538, 0.269505,
		17.176205, 10.975492, 19.680790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989574, 10.343615, 19.114233>,  <17.518585, 10.394814, 19.492136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989574, 10.343615, 19.114233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964302, 10.730401, 19.213013>,  <16.949139, 10.962473, 19.272280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964302, 10.730401, 19.213013>,  <16.989574, 10.343615, 19.114233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964302, 10.730401, 19.213013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422305, 0.198294, -0.884499,
		-0.904249, -0.160173, 0.395825,
		-0.063183, 0.966967, 0.246949,
		16.945347, 11.020491, 19.287098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294420, 10.505524, 19.080685>,  <16.989574, 10.343615, 19.114233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294420, 10.505524, 19.080685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513144, 10.836305, 19.028307>,  <16.644379, 11.034774, 18.996880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513144, 10.836305, 19.028307>,  <16.294420, 10.505524, 19.080685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513144, 10.836305, 19.028307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521814, 0.214295, -0.825704,
		-0.654758, 0.519833, 0.548695,
		0.546810, 0.826953, -0.130945,
		16.677187, 11.084391, 18.989023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.843044, 11.043482, 18.984257>,  <16.294420, 10.505524, 19.080685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.843044, 11.043482, 18.984257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178839, 11.187016, 18.821039>,  <16.380316, 11.273137, 18.723108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178839, 11.187016, 18.821039>,  <15.843044, 11.043482, 18.984257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178839, 11.187016, 18.821039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528094, 0.361926, -0.768196,
		-0.127976, 0.860375, 0.493332,
		0.839487, 0.358837, -0.408041,
		16.430685, 11.294667, 18.698627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670823, 11.716212, 18.623659>,  <15.843044, 11.043482, 18.984257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670823, 11.716212, 18.623659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030748, 11.670588, 18.455217>,  <16.246704, 11.643213, 18.354153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030748, 11.670588, 18.455217>,  <15.670823, 11.716212, 18.623659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030748, 11.670588, 18.455217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317062, 0.492051, -0.810776,
		0.299682, 0.863062, 0.406589,
		0.899812, -0.114061, -0.421103,
		16.300692, 11.636369, 18.328886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846365, 12.374613, 18.415504>,  <15.670823, 11.716212, 18.623659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846365, 12.374613, 18.415504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073013, 12.122485, 18.203226>,  <16.209002, 11.971209, 18.075859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073013, 12.122485, 18.203226>,  <15.846365, 12.374613, 18.415504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073013, 12.122485, 18.203226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218244, 0.506256, -0.834310,
		0.794550, 0.588559, 0.149292,
		0.566621, -0.630319, -0.530696,
		16.243000, 11.933390, 18.044018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324356, 12.715245, 18.011635>,  <15.846365, 12.374613, 18.415504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324356, 12.715245, 18.011635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246414, 12.377377, 17.812212>,  <16.199650, 12.174655, 17.692558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246414, 12.377377, 17.812212>,  <16.324356, 12.715245, 18.011635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246414, 12.377377, 17.812212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427731, 0.530599, -0.731786,
		0.882654, 0.070658, -0.464682,
		-0.194853, -0.844673, -0.498558,
		16.187958, 12.123975, 17.662645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433245, 12.867513, 17.368053>,  <16.324356, 12.715245, 18.011635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433245, 12.867513, 17.368053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248205, 12.519202, 17.301422>,  <16.137180, 12.310216, 17.261444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248205, 12.519202, 17.301422>,  <16.433245, 12.867513, 17.368053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248205, 12.519202, 17.301422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272169, 0.318303, -0.908079,
		0.843757, -0.374740, -0.384245,
		-0.462600, -0.870777, -0.166577,
		16.109425, 12.257969, 17.251450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693396, 12.591834, 16.770042>,  <16.433245, 12.867513, 17.368053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693396, 12.591834, 16.770042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321630, 12.457071, 16.830294>,  <16.098572, 12.376213, 16.866446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321630, 12.457071, 16.830294>,  <16.693396, 12.591834, 16.770042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.321630, 12.457071, 16.830294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247683, 0.266877, -0.931359,
		0.273604, -0.902915, -0.331488,
		-0.929405, -0.336928, 0.150618,
		16.042807, 12.355999, 16.875483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.665266, 9.856485, 26.204245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.060274, 9.888277, 26.258631>,  <15.297279, 9.907352, 26.291262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.060274, 9.888277, 26.258631>,  <14.665266, 9.856485, 26.204245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060274, 9.888277, 26.258631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082939, 0.471455, -0.877981,
		-0.133883, 0.878301, 0.458980,
		0.987520, 0.079480, 0.135965,
		15.356530, 9.912121, 26.299419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827670, 10.588239, 26.118753>,  <14.665266, 9.856485, 26.204245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827670, 10.588239, 26.118753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.166001, 10.387285, 26.046991>,  <15.368999, 10.266713, 26.003933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.166001, 10.387285, 26.046991>,  <14.827670, 10.588239, 26.118753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.166001, 10.387285, 26.046991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075934, 0.446271, -0.891670,
		0.528025, 0.740576, 0.415616,
		0.845827, -0.502384, -0.179407,
		15.419749, 10.236570, 25.993170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432034, 11.046954, 25.918150>,  <14.827670, 10.588239, 26.118753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432034, 11.046954, 25.918150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.567679, 10.703757, 25.763826>,  <15.649067, 10.497839, 25.671232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.567679, 10.703757, 25.763826>,  <15.432034, 11.046954, 25.918150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567679, 10.703757, 25.763826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165395, 0.458100, -0.873378,
		0.926092, 0.232364, 0.297256,
		0.339114, -0.857993, -0.385811,
		15.669414, 10.446360, 25.648083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011438, 11.256522, 25.464329>,  <15.432034, 11.046954, 25.918150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011438, 11.256522, 25.464329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.935491, 10.882425, 25.344816>,  <15.889922, 10.657967, 25.273108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.935491, 10.882425, 25.344816>,  <16.011438, 11.256522, 25.464329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935491, 10.882425, 25.344816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335620, 0.224161, -0.914938,
		0.922664, -0.273994, 0.271326,
		-0.189867, -0.935243, -0.298783,
		15.878531, 10.601852, 25.255180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616430, 11.087308, 25.196531>,  <16.011438, 11.256522, 25.464329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616430, 11.087308, 25.196531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.384134, 10.801439, 25.040590>,  <16.244757, 10.629918, 24.947025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.384134, 10.801439, 25.040590>,  <16.616430, 11.087308, 25.196531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384134, 10.801439, 25.040590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496787, 0.068264, -0.865183,
		0.644935, -0.696120, 0.315396,
		-0.580741, -0.714672, -0.389850,
		16.209911, 10.587038, 24.923635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021152, 10.831841, 24.745548>,  <16.616430, 11.087308, 25.196531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021152, 10.831841, 24.745548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.675194, 10.701715, 24.592646>,  <16.467617, 10.623640, 24.500904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.675194, 10.701715, 24.592646>,  <17.021152, 10.831841, 24.745548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675194, 10.701715, 24.592646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413046, -0.028552, -0.910262,
		0.285206, -0.945175, 0.159064,
		-0.864899, -0.325313, -0.382258,
		16.415724, 10.604122, 24.477968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190912, 10.288277, 24.175076>,  <17.021152, 10.831841, 24.745548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190912, 10.288277, 24.175076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.829178, 10.449015, 24.117525>,  <16.612137, 10.545458, 24.082994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.829178, 10.449015, 24.117525>,  <17.190912, 10.288277, 24.175076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829178, 10.449015, 24.117525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161208, 0.009453, -0.986875,
		-0.395212, -0.915658, -0.073329,
		-0.904334, 0.401846, -0.143876,
		16.557878, 10.569569, 24.074362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805674, 9.783936, 23.723766>,  <17.190912, 10.288277, 24.175076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805674, 9.783936, 23.723766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.671511, 10.159898, 23.698210>,  <16.591013, 10.385475, 23.682875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.671511, 10.159898, 23.698210>,  <16.805674, 9.783936, 23.723766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671511, 10.159898, 23.698210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255969, 0.025653, -0.966345,
		-0.906633, -0.340472, -0.249191,
		-0.335406, 0.939905, -0.063892,
		16.570889, 10.441869, 23.679043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.601688, 9.851027, 23.020752>,  <16.805674, 9.783936, 23.723766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.601688, 9.851027, 23.020752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.589293, 10.235902, 23.129002>,  <16.581854, 10.466826, 23.193951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.589293, 10.235902, 23.129002>,  <16.601688, 9.851027, 23.020752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589293, 10.235902, 23.129002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290786, 0.267720, -0.918569,
		-0.956286, 0.050225, -0.288088,
		-0.030992, 0.962187, 0.270622,
		16.579994, 10.524558, 23.210188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187124, 10.149754, 22.571123>,  <16.601688, 9.851027, 23.020752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.187124, 10.149754, 22.571123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.427601, 10.424239, 22.734919>,  <16.571886, 10.588930, 22.833195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.427601, 10.424239, 22.734919>,  <16.187124, 10.149754, 22.571123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427601, 10.424239, 22.734919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340638, 0.243474, -0.908122,
		-0.722866, 0.685442, -0.087376,
		0.601191, 0.686214, 0.409487,
		16.607958, 10.630103, 22.857765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043058, 10.696409, 22.121143>,  <16.187124, 10.149754, 22.571123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043058, 10.696409, 22.121143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.386417, 10.798560, 22.299103>,  <16.592432, 10.859851, 22.405878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.386417, 10.798560, 22.299103>,  <16.043058, 10.696409, 22.121143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386417, 10.798560, 22.299103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381553, 0.261856, -0.886481,
		-0.342886, 0.930706, 0.127336,
		0.858397, 0.255376, 0.444901,
		16.643936, 10.875173, 22.432573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345278, 11.210981, 21.722790>,  <16.043058, 10.696409, 22.121143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345278, 11.210981, 21.722790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.669025, 11.107169, 21.933527>,  <16.863274, 11.044882, 22.059969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.669025, 11.107169, 21.933527>,  <16.345278, 11.210981, 21.722790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669025, 11.107169, 21.933527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587041, 0.330834, -0.738872,
		0.017462, 0.907299, 0.420122,
		0.809369, -0.259531, 0.526845,
		16.911837, 11.029310, 22.091581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687668, 11.814015, 21.751617>,  <16.345278, 11.210981, 21.722790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687668, 11.814015, 21.751617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.913345, 11.484818, 21.778049>,  <17.048752, 11.287300, 21.793909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.913345, 11.484818, 21.778049>,  <16.687668, 11.814015, 21.751617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913345, 11.484818, 21.778049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532305, 0.301400, -0.791081,
		0.631137, 0.481499, 0.608132,
		0.564196, -0.822993, 0.066080,
		17.082603, 11.237921, 21.797873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.390366, 12.052450, 21.526529>,  <16.687668, 11.814015, 21.751617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.390366, 12.052450, 21.526529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.350712, 11.654934, 21.506327>,  <17.326920, 11.416424, 21.494205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.350712, 11.654934, 21.506327>,  <17.390366, 12.052450, 21.526529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350712, 11.654934, 21.506327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312242, 0.017124, -0.949848,
		0.944816, -0.109934, 0.308606,
		-0.099136, -0.993791, -0.050505,
		17.320971, 11.356796, 21.491175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088923, 12.443295, 21.600187>,  <17.390366, 12.052450, 21.526529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088923, 12.443295, 21.600187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.041132, 12.817663, 21.467653>,  <18.012459, 13.042284, 21.388134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.041132, 12.817663, 21.467653>,  <18.088923, 12.443295, 21.600187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041132, 12.817663, 21.467653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236889, 0.297212, 0.924958,
		0.964162, 0.188999, 0.186199,
		-0.119475, 0.935919, -0.331333,
		18.005289, 13.098439, 21.368254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515907, 12.785765, 22.072512>,  <18.088923, 12.443295, 21.600187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515907, 12.785765, 22.072512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.275810, 13.061179, 21.909723>,  <18.131752, 13.226428, 21.812050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.275810, 13.061179, 21.909723>,  <18.515907, 12.785765, 22.072512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275810, 13.061179, 21.909723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130150, 0.417966, 0.899091,
		0.789158, 0.592640, -0.161268,
		-0.600242, 0.688536, -0.406973,
		18.095737, 13.267740, 21.787632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762215, 13.423727, 22.456453>,  <18.515907, 12.785765, 22.072512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762215, 13.423727, 22.456453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.394058, 13.481465, 22.311104>,  <18.173164, 13.516109, 22.223894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.394058, 13.481465, 22.311104>,  <18.762215, 13.423727, 22.456453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394058, 13.481465, 22.311104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293556, 0.358762, 0.886067,
		0.258265, 0.922200, -0.287828,
		-0.920393, 0.144347, -0.363373,
		18.117941, 13.524770, 22.202091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.632256, 14.079465, 22.707232>,  <18.762215, 13.423727, 22.456453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.632256, 14.079465, 22.707232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.274082, 13.955424, 22.579458>,  <18.059179, 13.881001, 22.502794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.274082, 13.955424, 22.579458>,  <18.632256, 14.079465, 22.707232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274082, 13.955424, 22.579458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444575, 0.584885, 0.678427,
		-0.023548, 0.749498, -0.661587,
		-0.895432, -0.310101, -0.319435,
		18.005453, 13.862394, 22.483627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151869, 14.718118, 22.704914>,  <18.632256, 14.079465, 22.707232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.151869, 14.718118, 22.704914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.917046, 14.394948, 22.725409>,  <17.776152, 14.201046, 22.737705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.917046, 14.394948, 22.725409>,  <18.151869, 14.718118, 22.704914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917046, 14.394948, 22.725409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514912, 0.421486, 0.746468,
		-0.624685, 0.411837, -0.663445,
		-0.587056, -0.807924, 0.051236,
		17.740929, 14.152571, 22.740780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423561, 14.962996, 22.828764>,  <18.151869, 14.718118, 22.704914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.423561, 14.962996, 22.828764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.440456, 14.586081, 22.961617>,  <17.450594, 14.359932, 23.041328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.440456, 14.586081, 22.961617>,  <17.423561, 14.962996, 22.828764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.440456, 14.586081, 22.961617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387980, 0.290872, 0.874566,
		-0.920700, -0.165801, -0.353302,
		0.042238, -0.942286, 0.332133,
		17.453129, 14.303394, 23.061256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890902, 15.029253, 23.306082>,  <17.423561, 14.962996, 22.828764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890902, 15.029253, 23.306082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.078650, 14.684388, 23.382364>,  <17.191299, 14.477469, 23.428133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.078650, 14.684388, 23.382364>,  <16.890902, 15.029253, 23.306082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078650, 14.684388, 23.382364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291398, 0.052636, 0.955153,
		-0.833534, -0.503892, -0.226526,
		0.469371, -0.862161, 0.190707,
		17.219461, 14.425740, 23.439577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446365, 14.577116, 23.867336>,  <16.890902, 15.029253, 23.306082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446365, 14.577116, 23.867336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.812229, 14.418068, 23.896442>,  <17.031748, 14.322639, 23.913906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.812229, 14.418068, 23.896442>,  <16.446365, 14.577116, 23.867336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812229, 14.418068, 23.896442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163696, -0.199768, 0.966073,
		-0.369597, -0.895539, -0.247809,
		0.914660, -0.397622, 0.072762,
		17.086628, 14.298781, 23.918272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376326, 13.921062, 24.272705>,  <16.446365, 14.577116, 23.867336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376326, 13.921062, 24.272705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.758709, 14.038200, 24.280546>,  <16.988138, 14.108483, 24.285250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.758709, 14.038200, 24.280546>,  <16.376326, 13.921062, 24.272705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758709, 14.038200, 24.280546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041489, -0.200944, 0.978724,
		0.290555, -0.934806, -0.204244,
		0.955958, 0.292847, 0.019601,
		17.045496, 14.126055, 24.286427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789730, 13.330284, 24.548828>,  <16.376326, 13.921062, 24.272705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789730, 13.330284, 24.548828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.042997, 13.637844, 24.584354>,  <17.194958, 13.822380, 24.605671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.042997, 13.637844, 24.584354>,  <16.789730, 13.330284, 24.548828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042997, 13.637844, 24.584354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304326, -0.352813, 0.884821,
		0.711675, -0.533213, -0.457387,
		0.633170, 0.768900, 0.088817,
		17.232948, 13.868514, 24.611000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413904, 13.079489, 24.943703>,  <16.789730, 13.330284, 24.548828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413904, 13.079489, 24.943703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.403212, 13.476038, 24.995031>,  <17.396795, 13.713967, 25.025829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.403212, 13.476038, 24.995031>,  <17.413904, 13.079489, 24.943703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.403212, 13.476038, 24.995031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158903, -0.122522, 0.979662,
		0.986932, 0.046579, -0.154256,
		-0.026732, 0.991372, 0.128322,
		17.395191, 13.773450, 25.033527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.979992, 13.196266, 25.396402>,  <17.413904, 13.079489, 24.943703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.979992, 13.196266, 25.396402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.770132, 13.535522, 25.425819>,  <17.644217, 13.739075, 25.443470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.770132, 13.535522, 25.425819>,  <17.979992, 13.196266, 25.396402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770132, 13.535522, 25.425819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072002, -0.041870, 0.996525,
		0.848269, 0.528120, -0.039100,
		-0.524648, 0.848137, 0.073542,
		17.612738, 13.789963, 25.447882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375296, 13.670288, 25.838284>,  <17.979992, 13.196266, 25.396402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375296, 13.670288, 25.838284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.985237, 13.758747, 25.843668>,  <17.751202, 13.811822, 25.846899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.985237, 13.758747, 25.843668>,  <18.375296, 13.670288, 25.838284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985237, 13.758747, 25.843668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013988, -0.122089, 0.992421,
		0.221114, 0.967568, 0.122148,
		-0.975148, 0.221146, 0.013462,
		17.692694, 13.825091, 25.847706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333620, 13.964080, 26.453482>,  <18.375296, 13.670288, 25.838284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333620, 13.964080, 26.453482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.940187, 13.914289, 26.401220>,  <17.704128, 13.884416, 26.369864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.940187, 13.914289, 26.401220>,  <18.333620, 13.964080, 26.453482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940187, 13.914289, 26.401220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135818, 0.033898, 0.990154,
		-0.118820, 0.991643, -0.050248,
		-0.983583, -0.124475, -0.130655,
		17.645113, 13.876947, 26.362024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.794629, 13.253647, 25.820990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.947316, 12.946617, 25.615030>,  <10.038929, 12.762400, 25.491455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.947316, 12.946617, 25.615030>,  <9.794629, 13.253647, 25.820990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947316, 12.946617, 25.615030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024894, 0.548343, -0.835883,
		0.923943, 0.331890, 0.190205,
		0.381719, -0.767573, -0.514900,
		10.061831, 12.716345, 25.460560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.940614, 13.562473, 25.227367>,  <9.794629, 13.253647, 25.820990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.940614, 13.562473, 25.227367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.017172, 13.185344, 25.118225>,  <10.063107, 12.959066, 25.052740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.017172, 13.185344, 25.118225>,  <9.940614, 13.562473, 25.227367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.017172, 13.185344, 25.118225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020971, 0.281862, -0.959226,
		0.981289, 0.177870, 0.073719,
		0.191396, -0.942823, -0.272858,
		10.074591, 12.902496, 25.036367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.510424, 13.591127, 24.849327>,  <9.940614, 13.562473, 25.227367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.510424, 13.591127, 24.849327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.311470, 13.265832, 24.728497>,  <10.192098, 13.070655, 24.655998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.311470, 13.265832, 24.728497>,  <10.510424, 13.591127, 24.849327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.311470, 13.265832, 24.728497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421586, 0.077740, -0.903450,
		0.758204, -0.576714, 0.304184,
		-0.497385, -0.813239, -0.302077,
		10.162254, 13.021860, 24.637873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952363, 13.336040, 24.307676>,  <10.510424, 13.591127, 24.849327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.952363, 13.336040, 24.307676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.627292, 13.107018, 24.264347>,  <10.432249, 12.969605, 24.238350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.627292, 13.107018, 24.264347>,  <10.952363, 13.336040, 24.307676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.627292, 13.107018, 24.264347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254521, -0.181555, -0.949872,
		0.524187, -0.799511, 0.293273,
		-0.812679, -0.572555, -0.108323,
		10.383488, 12.935252, 24.231850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.165792, 12.750908, 23.949575>,  <10.952363, 13.336040, 24.307676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.165792, 12.750908, 23.949575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.777437, 12.817083, 23.880283>,  <10.544424, 12.856789, 23.838709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.777437, 12.817083, 23.880283>,  <11.165792, 12.750908, 23.949575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.777437, 12.817083, 23.880283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161114, -0.084145, -0.983342,
		-0.177262, -0.982623, 0.055040,
		-0.970886, 0.165441, -0.173230,
		10.486171, 12.866715, 23.828314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006824, 12.276954, 23.364824>,  <11.165792, 12.750908, 23.949575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006824, 12.276954, 23.364824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.681934, 12.509475, 23.345329>,  <10.487000, 12.648988, 23.333633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.681934, 12.509475, 23.345329>,  <11.006824, 12.276954, 23.364824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681934, 12.509475, 23.345329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059545, -0.165728, -0.984372,
		-0.580296, -0.796631, 0.169222,
		-0.812226, 0.581303, -0.048736,
		10.438267, 12.683866, 23.330709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.582389, 11.987796, 22.863129>,  <11.006824, 12.276954, 23.364824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.582389, 11.987796, 22.863129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.480092, 12.372191, 22.905264>,  <10.418715, 12.602829, 22.930544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.480092, 12.372191, 22.905264>,  <10.582389, 11.987796, 22.863129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.480092, 12.372191, 22.905264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018467, 0.104083, -0.994397,
		-0.966569, -0.256253, -0.008872,
		-0.255741, 0.960990, 0.105336,
		10.403370, 12.660488, 22.936865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.994105, 12.198268, 22.448221>,  <10.582389, 11.987796, 22.863129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.994105, 12.198268, 22.448221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.185143, 12.542221, 22.520340>,  <10.299765, 12.748592, 22.563610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.185143, 12.542221, 22.520340>,  <9.994105, 12.198268, 22.448221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.185143, 12.542221, 22.520340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005105, 0.207925, -0.978132,
		-0.878566, 0.466229, 0.103693,
		0.477594, 0.859882, 0.180295,
		10.328421, 12.800186, 22.574429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.749183, 12.613410, 21.964643>,  <9.994105, 12.198268, 22.448221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.749183, 12.613410, 21.964643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.072969, 12.808475, 22.095455>,  <10.267241, 12.925513, 22.173943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.072969, 12.808475, 22.095455>,  <9.749183, 12.613410, 21.964643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.072969, 12.808475, 22.095455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214224, 0.273288, -0.937775,
		-0.546690, 0.829156, 0.116749,
		0.809468, 0.487661, 0.327029,
		10.315810, 12.954773, 22.193563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.754710, 13.139693, 21.530645>,  <9.749183, 12.613410, 21.964643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.754710, 13.139693, 21.530645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.128922, 13.173635, 21.667810>,  <10.353448, 13.193999, 21.750109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.128922, 13.173635, 21.667810>,  <9.754710, 13.139693, 21.530645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.128922, 13.173635, 21.667810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321498, 0.197722, -0.926037,
		-0.146379, 0.976579, 0.157694,
		0.935528, 0.084853, 0.342910,
		10.409580, 13.199091, 21.770683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.071089, 13.764265, 21.189264>,  <9.754710, 13.139693, 21.530645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.071089, 13.764265, 21.189264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.369699, 13.521571, 21.298496>,  <10.548864, 13.375955, 21.364035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.369699, 13.521571, 21.298496>,  <10.071089, 13.764265, 21.189264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.369699, 13.521571, 21.298496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444914, 0.150037, -0.882916,
		0.494724, 0.780616, 0.381951,
		0.746525, -0.606735, 0.273080,
		10.593657, 13.339551, 21.380421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.568891, 14.026841, 20.914347>,  <10.071089, 13.764265, 21.189264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.568891, 14.026841, 20.914347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.732295, 13.668175, 20.982594>,  <10.830338, 13.452975, 21.023542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.732295, 13.668175, 20.982594>,  <10.568891, 14.026841, 20.914347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.732295, 13.668175, 20.982594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473339, 0.048287, -0.879556,
		0.780428, 0.440068, 0.444153,
		0.408511, -0.896665, 0.170617,
		10.854848, 13.399176, 21.033779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.154984, 14.166844, 20.701950>,  <10.568891, 14.026841, 20.914347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.154984, 14.166844, 20.701950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.144326, 13.766988, 20.703051>,  <11.137932, 13.527074, 20.703711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.144326, 13.766988, 20.703051>,  <11.154984, 14.166844, 20.701950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.144326, 13.766988, 20.703051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434492, -0.014057, -0.900566,
		0.900281, -0.022799, 0.434711,
		-0.026642, -0.999641, 0.002749,
		11.136333, 13.467095, 20.703875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906972, 13.865657, 20.517210>,  <11.154984, 14.166844, 20.701950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906972, 13.865657, 20.517210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.647995, 13.575994, 20.422201>,  <11.492609, 13.402197, 20.365196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.647995, 13.575994, 20.422201>,  <11.906972, 13.865657, 20.517210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.647995, 13.575994, 20.422201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354518, -0.010286, -0.934992,
		0.674637, -0.689560, 0.263386,
		-0.647443, -0.724155, -0.237522,
		11.453762, 13.358747, 20.350945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.536636, 13.960437, 20.770344>,  <11.906972, 13.865657, 20.517210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.536636, 13.960437, 20.770344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.756484, 14.294585, 20.773832>,  <12.888392, 14.495074, 20.775927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.756484, 14.294585, 20.773832>,  <12.536636, 13.960437, 20.770344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756484, 14.294585, 20.773832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032443, -0.031776, 0.998969,
		0.834786, -0.548769, -0.044567,
		0.549619, 0.835370, 0.008723,
		12.921370, 14.545197, 20.776449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293800, 13.801888, 21.111767>,  <12.536636, 13.960437, 20.770344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293800, 13.801888, 21.111767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.147729, 14.172129, 21.151577>,  <13.060086, 14.394273, 21.175463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.147729, 14.172129, 21.151577>,  <13.293800, 13.801888, 21.111767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.147729, 14.172129, 21.151577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046156, -0.124780, 0.991110,
		0.929793, 0.357338, 0.088289,
		-0.365179, 0.925602, 0.099527,
		13.038176, 14.449809, 21.181435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669524, 14.036057, 21.651634>,  <13.293800, 13.801888, 21.111767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669524, 14.036057, 21.651634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.346114, 14.270802, 21.634291>,  <13.152068, 14.411650, 21.623884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.346114, 14.270802, 21.634291>,  <13.669524, 14.036057, 21.651634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346114, 14.270802, 21.634291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024860, 0.039555, 0.998908,
		0.587936, 0.808720, -0.017392,
		-0.808525, 0.586862, -0.043360,
		13.103557, 14.446861, 21.621283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.789424, 14.549860, 22.203091>,  <13.669524, 14.036057, 21.651634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.789424, 14.549860, 22.203091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.399424, 14.607509, 22.135443>,  <13.165423, 14.642097, 22.094854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.399424, 14.607509, 22.135443>,  <13.789424, 14.549860, 22.203091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399424, 14.607509, 22.135443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141253, 0.185525, 0.972434,
		0.171524, 0.972013, -0.160529,
		-0.975001, 0.144121, -0.169121,
		13.106923, 14.650744, 22.084705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.608497, 15.079265, 22.628246>,  <13.789424, 14.549860, 22.203091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.608497, 15.079265, 22.628246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.265193, 14.889565, 22.549778>,  <13.059211, 14.775746, 22.502697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.265193, 14.889565, 22.549778>,  <13.608497, 15.079265, 22.628246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265193, 14.889565, 22.549778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235074, 0.023486, 0.971694,
		-0.456216, 0.880078, -0.131640,
		-0.858258, -0.474247, -0.196169,
		13.007715, 14.747292, 22.490927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037104, 15.435760, 23.125889>,  <13.608497, 15.079265, 22.628246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037104, 15.435760, 23.125889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.854474, 15.106669, 22.990444>,  <12.744896, 14.909215, 22.909178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.854474, 15.106669, 22.990444>,  <13.037104, 15.435760, 23.125889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854474, 15.106669, 22.990444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520073, -0.061991, 0.851869,
		-0.721848, 0.565045, -0.399575,
		-0.456574, -0.822728, -0.338613,
		12.717502, 14.859851, 22.888861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361932, 15.546768, 23.375875>,  <13.037104, 15.435760, 23.125889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361932, 15.546768, 23.375875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.355851, 15.150817, 23.319431>,  <12.352203, 14.913246, 23.285564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.355851, 15.150817, 23.319431>,  <12.361932, 15.546768, 23.375875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.355851, 15.150817, 23.319431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365731, -0.125844, 0.922174,
		-0.930596, 0.065626, -0.360116,
		-0.015201, -0.989877, -0.141111,
		12.351291, 14.853854, 23.277098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.711066, 15.304101, 23.466648>,  <12.361932, 15.546768, 23.375875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.711066, 15.304101, 23.466648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.960860, 14.999679, 23.536865>,  <12.110737, 14.817025, 23.578995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.960860, 14.999679, 23.536865>,  <11.711066, 15.304101, 23.466648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960860, 14.999679, 23.536865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322399, -0.046470, 0.945462,
		-0.711392, -0.647020, -0.274383,
		0.624484, -0.761055, 0.175541,
		12.148206, 14.771362, 23.589527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.379895, 14.822792, 23.817135>,  <11.711066, 15.304101, 23.466648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.379895, 14.822792, 23.817135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.748492, 14.694185, 23.904291>,  <11.969650, 14.617021, 23.956585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.748492, 14.694185, 23.904291>,  <11.379895, 14.822792, 23.817135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748492, 14.694185, 23.904291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293701, -0.209746, 0.932602,
		-0.254147, -0.923381, -0.287709,
		0.921493, -0.321518, 0.217892,
		12.024940, 14.597730, 23.969658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275246, 14.371245, 24.299732>,  <11.379895, 14.822792, 23.817135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275246, 14.371245, 24.299732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.664626, 14.438375, 24.361996>,  <11.898254, 14.478653, 24.399353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.664626, 14.438375, 24.361996>,  <11.275246, 14.371245, 24.299732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664626, 14.438375, 24.361996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107792, -0.263805, 0.958534,
		0.201929, -0.949864, -0.238711,
		0.973450, 0.167825, 0.155657,
		11.956661, 14.488723, 24.408693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.522777, 13.898362, 24.833351>,  <11.275246, 14.371245, 24.299732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.522777, 13.898362, 24.833351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.800153, 14.186566, 24.832384>,  <11.966578, 14.359488, 24.831804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.800153, 14.186566, 24.832384>,  <11.522777, 13.898362, 24.833351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800153, 14.186566, 24.832384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101326, -0.094195, 0.990384,
		0.713355, -0.687016, -0.138325,
		0.693440, 0.720511, -0.002418,
		12.008184, 14.402719, 24.831659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169294, 13.563780, 25.068752>,  <11.522777, 13.898362, 24.833351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169294, 13.563780, 25.068752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.252084, 13.950100, 25.131222>,  <12.301758, 14.181892, 25.168703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.252084, 13.950100, 25.131222>,  <12.169294, 13.563780, 25.068752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252084, 13.950100, 25.131222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415384, -0.231279, 0.879753,
		0.885787, -0.117212, -0.449047,
		0.206973, 0.965801, 0.156176,
		12.314176, 14.239841, 25.178074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.835326, 13.499678, 25.369894>,  <12.169294, 13.563780, 25.068752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.835326, 13.499678, 25.369894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.694368, 13.865259, 25.450401>,  <12.609794, 14.084608, 25.498705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.694368, 13.865259, 25.450401>,  <12.835326, 13.499678, 25.369894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.694368, 13.865259, 25.450401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164254, -0.151322, 0.974742,
		0.921324, 0.376553, -0.096795,
		-0.352395, 0.913952, 0.201267,
		12.588650, 14.139445, 25.510780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280153, 13.903847, 25.857939>,  <12.835326, 13.499678, 25.369894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280153, 13.903847, 25.857939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.910734, 14.045613, 25.916519>,  <12.689082, 14.130673, 25.951668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.910734, 14.045613, 25.916519>,  <13.280153, 13.903847, 25.857939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.910734, 14.045613, 25.916519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010773, -0.357768, 0.933748,
		0.383331, 0.863939, 0.326598,
		-0.923548, 0.354416, 0.146451,
		12.633670, 14.151938, 25.960455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604430, 14.603118, 25.969864>,  <13.280153, 13.903847, 25.857939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604430, 14.603118, 25.969864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.986159, 14.702018, 26.036961>,  <14.215197, 14.761357, 26.077219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.986159, 14.702018, 26.036961>,  <13.604430, 14.603118, 25.969864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986159, 14.702018, 26.036961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073413, 0.350159, -0.933809,
		-0.289620, 0.903469, 0.316013,
		0.954322, 0.247250, 0.167740,
		14.272456, 14.776193, 26.087282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.681032, 15.262103, 25.862768>,  <13.604430, 14.603118, 25.969864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.681032, 15.262103, 25.862768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.062707, 15.149622, 25.821869>,  <14.291712, 15.082133, 25.797329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.062707, 15.149622, 25.821869>,  <13.681032, 15.262103, 25.862768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062707, 15.149622, 25.821869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043313, 0.467937, -0.882700,
		0.296063, 0.837831, 0.458679,
		0.954186, -0.281202, -0.102250,
		14.348963, 15.065262, 25.791195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065050, 15.801831, 25.456015>,  <13.681032, 15.262103, 25.862768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065050, 15.801831, 25.456015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.307381, 15.485096, 25.425119>,  <14.452779, 15.295054, 25.406582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.307381, 15.485096, 25.425119>,  <14.065050, 15.801831, 25.456015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307381, 15.485096, 25.425119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306274, 0.321718, -0.895932,
		0.734282, 0.519124, 0.437425,
		0.605828, -0.791838, -0.077238,
		14.489129, 15.247544, 25.401949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644965, 16.028400, 25.081842>,  <14.065050, 15.801831, 25.456015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644965, 16.028400, 25.081842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.654636, 15.632665, 25.024403>,  <14.660439, 15.395223, 24.989939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.654636, 15.632665, 25.024403>,  <14.644965, 16.028400, 25.081842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.654636, 15.632665, 25.024403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262787, 0.144880, -0.953915,
		0.964551, -0.014673, 0.263489,
		0.024178, -0.989341, -0.143600,
		14.661890, 15.335862, 24.981323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386753, 15.839049, 24.978445>,  <14.644965, 16.028400, 25.081842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386753, 15.839049, 24.978445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.149304, 15.560075, 24.817848>,  <15.006835, 15.392690, 24.721489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.149304, 15.560075, 24.817848>,  <15.386753, 15.839049, 24.978445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.149304, 15.560075, 24.817848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501316, 0.069789, -0.862445,
		0.629520, -0.713240, 0.308208,
		-0.593621, -0.697436, -0.401493,
		14.971218, 15.350844, 24.697401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761566, 15.511429, 24.528423>,  <15.386753, 15.839049, 24.978445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761566, 15.511429, 24.528423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.398456, 15.421203, 24.386967>,  <15.180590, 15.367067, 24.302092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.398456, 15.421203, 24.386967>,  <15.761566, 15.511429, 24.528423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398456, 15.421203, 24.386967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334954, 0.117675, -0.934858,
		0.252488, -0.967095, -0.031268,
		-0.907775, -0.225567, -0.353643,
		15.126123, 15.353533, 24.280874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945898, 15.275270, 23.970770>,  <15.761566, 15.511429, 24.528423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945898, 15.275270, 23.970770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.548512, 15.294204, 23.929218>,  <15.310081, 15.305565, 23.904287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.548512, 15.294204, 23.929218>,  <15.945898, 15.275270, 23.970770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548512, 15.294204, 23.929218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101795, -0.044488, -0.993810,
		-0.051663, -0.997888, 0.039379,
		-0.993463, 0.047334, -0.103879,
		15.250474, 15.308405, 23.898054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773384, 14.823168, 23.409683>,  <15.945898, 15.275270, 23.970770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773384, 14.823168, 23.409683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.469865, 15.082238, 23.437227>,  <15.287753, 15.237680, 23.453754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.469865, 15.082238, 23.437227>,  <15.773384, 14.823168, 23.409683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469865, 15.082238, 23.437227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088437, 0.002293, -0.996079,
		-0.645295, -0.761912, 0.055539,
		-0.758797, 0.647676, 0.068861,
		15.242226, 15.276541, 23.457886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278157, 14.566686, 22.978380>,  <15.773384, 14.823168, 23.409683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278157, 14.566686, 22.978380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.186542, 14.953106, 23.026188>,  <15.131572, 15.184958, 23.054873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.186542, 14.953106, 23.026188>,  <15.278157, 14.566686, 22.978380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.186542, 14.953106, 23.026188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272694, 0.054188, -0.960574,
		-0.934440, -0.252602, 0.251025,
		-0.229040, 0.966052, 0.119519,
		15.117829, 15.242922, 23.062044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655666, 14.700934, 22.531860>,  <15.278157, 14.566686, 22.978380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.655666, 14.700934, 22.531860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.857762, 15.040388, 22.594538>,  <14.979020, 15.244061, 22.632143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.857762, 15.040388, 22.594538>,  <14.655666, 14.700934, 22.531860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857762, 15.040388, 22.594538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078191, 0.225840, -0.971021,
		-0.859429, 0.478346, 0.180459,
		0.505239, 0.848634, 0.156692,
		15.009335, 15.294978, 22.641544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230564, 15.220017, 22.181957>,  <14.655666, 14.700934, 22.531860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230564, 15.220017, 22.181957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.593845, 15.382933, 22.220495>,  <14.811814, 15.480681, 22.243618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.593845, 15.382933, 22.220495>,  <14.230564, 15.220017, 22.181957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593845, 15.382933, 22.220495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007071, 0.215234, -0.976537,
		-0.418468, 0.887576, 0.192596,
		0.908204, 0.407288, 0.096345,
		14.866306, 15.505119, 22.249399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222360, 15.881212, 21.746500>,  <14.230564, 15.220017, 22.181957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222360, 15.881212, 21.746500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.606184, 15.793139, 21.816660>,  <14.836478, 15.740295, 21.858755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.606184, 15.793139, 21.816660>,  <14.222360, 15.881212, 21.746500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.606184, 15.793139, 21.816660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232835, 0.270570, -0.934120,
		0.158219, 0.937183, 0.310894,
		0.959560, -0.220182, 0.175399,
		14.894052, 15.727085, 21.869280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602643, 16.530281, 21.591497>,  <14.222360, 15.881212, 21.746500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602643, 16.530281, 21.591497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.859869, 16.224234, 21.578485>,  <15.014205, 16.040606, 21.570679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.859869, 16.224234, 21.578485>,  <14.602643, 16.530281, 21.591497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859869, 16.224234, 21.578485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320145, 0.307175, -0.896187,
		0.695682, 0.565893, 0.442483,
		0.643066, -0.765120, -0.032529,
		15.052789, 15.994698, 21.568727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181082, 16.750341, 21.301266>,  <14.602643, 16.530281, 21.591497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181082, 16.750341, 21.301266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.252253, 16.360441, 21.247297>,  <15.294955, 16.126501, 21.214916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.252253, 16.360441, 21.247297>,  <15.181082, 16.750341, 21.301266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252253, 16.360441, 21.247297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502824, 0.207916, -0.839011,
		0.845879, 0.081442, 0.527121,
		0.177927, -0.974750, -0.134920,
		15.305631, 16.068016, 21.206821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<6.115606, 26.217941, 10.444836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.286784, 25.878160, 10.568315>,  <6.389491, 25.674292, 10.642402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.286784, 25.878160, 10.568315>,  <6.115606, 26.217941, 10.444836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.286784, 25.878160, 10.568315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391418, -0.133673, -0.910452,
		0.814650, 0.510453, 0.275286,
		0.427945, -0.849452, 0.308697,
		6.415168, 25.623325, 10.660924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.419548, 25.931471, 9.874559>,  <6.115606, 26.217941, 10.444836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.419548, 25.931471, 9.874559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.529047, 25.643085, 10.129204>,  <6.594746, 25.470055, 10.281991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.529047, 25.643085, 10.129204>,  <6.419548, 25.931471, 9.874559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.529047, 25.643085, 10.129204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373921, -0.530051, -0.761071,
		0.886140, 0.446384, 0.124483,
		0.273748, -0.720963, 0.636612,
		6.611171, 25.426796, 10.320188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.200754, 25.844345, 9.882255>,  <6.419548, 25.931471, 9.874559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.200754, 25.844345, 9.882255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.974338, 25.531786, 9.987338>,  <6.838489, 25.344250, 10.050388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.974338, 25.531786, 9.987338>,  <7.200754, 25.844345, 9.882255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.974338, 25.531786, 9.987338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596897, -0.608279, -0.523173,
		0.568607, -0.139326, 0.810725,
		-0.566039, -0.781399, 0.262708,
		6.804526, 25.297367, 10.066151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.648785, 25.427822, 10.135686>,  <7.200754, 25.844345, 9.882255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.648785, 25.427822, 10.135686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.322933, 25.230120, 10.014301>,  <7.127421, 25.111498, 9.941470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.322933, 25.230120, 10.014301>,  <7.648785, 25.427822, 10.135686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.322933, 25.230120, 10.014301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562466, -0.545646, -0.621210,
		0.141454, -0.676744, 0.722502,
		-0.814631, -0.494255, -0.303462,
		7.078544, 25.081842, 9.923263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.637122, 24.733932, 10.411965>,  <7.648785, 25.427822, 10.135686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.637122, 24.733932, 10.411965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.463281, 24.786341, 10.055549>,  <7.358977, 24.817785, 9.841699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.463281, 24.786341, 10.055549>,  <7.637122, 24.733932, 10.411965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.463281, 24.786341, 10.055549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687135, -0.591336, -0.422098,
		-0.582208, -0.795711, 0.166968,
		-0.434602, 0.131019, -0.891041,
		7.332901, 24.825645, 9.788236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.381258, 24.051804, 10.165097>,  <7.637122, 24.733932, 10.411965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.381258, 24.051804, 10.165097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.560883, 24.303085, 9.910947>,  <7.668658, 24.453854, 9.758456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.560883, 24.303085, 9.910947>,  <7.381258, 24.051804, 10.165097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.560883, 24.303085, 9.910947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711324, -0.681684, -0.171247,
		-0.540704, -0.375058, -0.752975,
		0.449063, 0.628203, -0.635377,
		7.695602, 24.491547, 9.720334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.177151, 24.280958, 10.916149>,  <7.381258, 24.051804, 10.165097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.177151, 24.280958, 10.916149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.576971, 24.280977, 10.904146>,  <7.816863, 24.280989, 10.896945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.576971, 24.280977, 10.904146>,  <7.177151, 24.280958, 10.916149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.576971, 24.280977, 10.904146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029672, -0.147457, -0.988623,
		-0.004470, 0.989068, -0.147389,
		0.999550, 0.000046, -0.030006,
		7.876836, 24.280991, 10.895144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.669128, 24.375305, 11.555758>,  <7.177151, 24.280958, 10.916149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.669128, 24.375305, 11.555758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.039349, 24.245956, 11.476979>,  <8.261480, 24.168346, 11.429712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.039349, 24.245956, 11.476979>,  <7.669128, 24.375305, 11.555758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.039349, 24.245956, 11.476979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190969, 0.050449, -0.980299,
		0.326937, 0.944926, -0.015061,
		0.925550, -0.323372, -0.196945,
		8.317014, 24.148945, 11.417895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.021067, 24.560305, 12.218223>,  <7.669128, 24.375305, 11.555758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.021067, 24.560305, 12.218223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.945532, 24.675892, 12.593635>,  <7.900211, 24.745245, 12.818882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.945532, 24.675892, 12.593635>,  <8.021067, 24.560305, 12.218223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.945532, 24.675892, 12.593635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799430, -0.600280, 0.023973,
		0.570309, -0.745762, 0.344364,
		-0.188837, 0.288968, 0.938530,
		7.888881, 24.762583, 12.875194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.033488, 23.989964, 12.589176>,  <8.021067, 24.560305, 12.218223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.033488, 23.989964, 12.589176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.786553, 24.241625, 12.778092>,  <7.638392, 24.392622, 12.891442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.786553, 24.241625, 12.778092>,  <8.033488, 23.989964, 12.589176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.786553, 24.241625, 12.778092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668293, -0.736147, 0.107111,
		0.415064, -0.249505, 0.874911,
		-0.617338, 0.629155, 0.472290,
		7.601351, 24.430370, 12.919780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.734431, 23.601145, 13.148412>,  <8.033488, 23.989964, 12.589176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.734431, 23.601145, 13.148412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.496734, 23.894535, 13.016419>,  <7.354116, 24.070570, 12.937224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.496734, 23.894535, 13.016419>,  <7.734431, 23.601145, 13.148412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.496734, 23.894535, 13.016419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768248, -0.639080, -0.037045,
		-0.238055, 0.231493, 0.943261,
		-0.594243, 0.733477, -0.329980,
		7.318461, 24.114578, 12.917425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259488, 23.595348, 13.680737>,  <7.734431, 23.601145, 13.148412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259488, 23.595348, 13.680737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.105958, 23.761328, 13.350768>,  <7.013840, 23.860914, 13.152786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.105958, 23.761328, 13.350768>,  <7.259488, 23.595348, 13.680737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.105958, 23.761328, 13.350768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855797, -0.495388, 0.149004,
		-0.346828, 0.763158, 0.545252,
		-0.383825, 0.414947, -0.824923,
		6.990810, 23.885811, 13.103292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.612741, 23.890078, 13.864732>,  <7.259488, 23.595348, 13.680737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.612741, 23.890078, 13.864732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.592386, 23.827175, 13.470234>,  <6.580173, 23.789433, 13.233535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.592386, 23.827175, 13.470234>,  <6.612741, 23.890078, 13.864732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.592386, 23.827175, 13.470234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818739, -0.558935, 0.131366,
		-0.571906, 0.814163, -0.100311,
		-0.050887, -0.157258, -0.986246,
		6.577120, 23.779999, 13.174360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.922259, 23.973017, 13.682419>,  <6.612741, 23.890078, 13.864732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.922259, 23.973017, 13.682419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.076722, 23.778442, 13.368920>,  <6.169400, 23.661697, 13.180820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.076722, 23.778442, 13.368920>,  <5.922259, 23.973017, 13.682419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.076722, 23.778442, 13.368920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654808, -0.742994, 0.138515,
		-0.649698, 0.459716, -0.605437,
		0.386159, -0.486438, -0.783747,
		6.192570, 23.632511, 13.133796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383946, 23.492989, 13.555552>,  <5.922259, 23.973017, 13.682419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383946, 23.492989, 13.555552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.705730, 23.382221, 13.345348>,  <5.898800, 23.315762, 13.219226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.705730, 23.382221, 13.345348>,  <5.383946, 23.492989, 13.555552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.705730, 23.382221, 13.345348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343117, -0.938796, -0.030553,
		-0.484886, 0.204890, -0.850239,
		0.804460, -0.276917, -0.525510,
		5.947068, 23.299147, 13.187696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.169591, 22.998144, 12.832453>,  <5.383946, 23.492989, 13.555552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.169591, 22.998144, 12.832453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.517864, 22.939178, 13.020146>,  <5.726828, 22.903799, 13.132763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.517864, 22.939178, 13.020146>,  <5.169591, 22.998144, 12.832453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.517864, 22.939178, 13.020146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166152, -0.986099, -0.001492,
		0.462931, -0.076665, -0.883073,
		0.870683, -0.147415, 0.469234,
		5.779069, 22.894955, 13.160916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.290278, 22.447796, 12.468520>,  <5.169591, 22.998144, 12.832453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.290278, 22.447796, 12.468520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.515774, 22.449005, 12.798899>,  <5.651072, 22.449730, 12.997126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.515774, 22.449005, 12.798899>,  <5.290278, 22.447796, 12.468520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.515774, 22.449005, 12.798899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267660, -0.945361, 0.186147,
		0.781380, -0.326011, -0.532129,
		0.563740, 0.003022, 0.825947,
		5.684896, 22.449911, 13.046682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.789005, 21.861898, 12.392470>,  <5.290278, 22.447796, 12.468520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.789005, 21.861898, 12.392470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.801588, 21.943016, 12.783957>,  <5.809137, 21.991686, 13.018848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.801588, 21.943016, 12.783957>,  <5.789005, 21.861898, 12.392470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.801588, 21.943016, 12.783957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015246, -0.978989, 0.203341,
		0.999389, -0.021318, -0.027703,
		0.031456, 0.202795, 0.978716,
		5.811025, 22.003855, 13.077571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.335756, 21.468601, 12.609808>,  <5.789005, 21.861898, 12.392470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.335756, 21.468601, 12.609808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.109965, 21.546144, 12.930753>,  <5.974490, 21.592670, 13.123320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.109965, 21.546144, 12.930753>,  <6.335756, 21.468601, 12.609808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.109965, 21.546144, 12.930753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121966, -0.980950, 0.151201,
		0.816388, -0.012511, 0.577368,
		-0.564478, 0.193858, 0.802362,
		5.940621, 21.604301, 13.171461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.692018, 21.178848, 13.144106>,  <6.335756, 21.468601, 12.609808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.692018, 21.178848, 13.144106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.322841, 21.202330, 13.296280>,  <6.101335, 21.216419, 13.387585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.322841, 21.202330, 13.296280>,  <6.692018, 21.178848, 13.144106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.322841, 21.202330, 13.296280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030303, -0.974157, 0.223831,
		0.383744, 0.218112, 0.897312,
		-0.922942, 0.058703, 0.380436,
		6.045959, 21.219940, 13.410411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.731531, 20.847637, 13.789263>,  <6.692018, 21.178848, 13.144106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.731531, 20.847637, 13.789263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.356062, 20.842499, 13.651433>,  <6.130781, 20.839417, 13.568735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.356062, 20.842499, 13.651433>,  <6.731531, 20.847637, 13.789263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.356062, 20.842499, 13.651433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076816, -0.966403, 0.245284,
		-0.336148, 0.256710, 0.906148,
		-0.938671, -0.012845, -0.344574,
		6.074461, 20.838646, 13.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.432067, 20.427898, 14.356561>,  <6.731531, 20.847637, 13.789263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.432067, 20.427898, 14.356561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.215617, 20.437428, 14.020319>,  <6.085747, 20.443146, 13.818574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.215617, 20.437428, 14.020319>,  <6.432067, 20.427898, 14.356561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.215617, 20.437428, 14.020319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225620, -0.967063, 0.117831,
		-0.810111, 0.253419, 0.528678,
		-0.541125, 0.023824, -0.840605,
		6.053280, 20.444574, 13.768138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.882508, 20.017998, 14.551371>,  <6.432067, 20.427898, 14.356561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.882508, 20.017998, 14.551371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.859734, 20.040516, 14.152655>,  <5.846070, 20.054026, 13.913425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.859734, 20.040516, 14.152655>,  <5.882508, 20.017998, 14.551371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.859734, 20.040516, 14.152655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307943, -0.950720, -0.036102,
		-0.949700, 0.304899, 0.071465,
		-0.056936, 0.056293, -0.996790,
		5.842653, 20.057404, 13.853618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.163546, 19.767683, 14.435979>,  <5.882508, 20.017998, 14.551371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.163546, 19.767683, 14.435979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.375066, 19.758373, 14.096608>,  <5.501978, 19.752787, 13.892985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.375066, 19.758373, 14.096608>,  <5.163546, 19.767683, 14.435979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.375066, 19.758373, 14.096608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300641, -0.939948, -0.161597,
		-0.793716, 0.340525, -0.504042,
		0.528801, -0.023274, -0.848427,
		5.533707, 19.751390, 13.842080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.782841, 19.502216, 14.007022>,  <5.163546, 19.767683, 14.435979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.782841, 19.502216, 14.007022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.142896, 19.424212, 13.851215>,  <5.358929, 19.377409, 13.757731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.142896, 19.424212, 13.851215>,  <4.782841, 19.502216, 14.007022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.142896, 19.424212, 13.851215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317010, -0.906541, -0.278725,
		-0.298759, 0.374372, -0.877832,
		0.900138, -0.195010, -0.389517,
		5.412938, 19.365709, 13.734361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.621079, 18.930254, 13.675527>,  <4.782841, 19.502216, 14.007022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.621079, 18.930254, 13.675527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.020863, 18.917198, 13.673944>,  <5.260733, 18.909365, 13.672996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.020863, 18.917198, 13.673944>,  <4.621079, 18.930254, 13.675527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.020863, 18.917198, 13.673944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032719, -0.975655, -0.216858,
		0.003220, 0.216870, -0.976195,
		0.999460, -0.032638, -0.003954,
		5.320701, 18.907406, 13.672758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.796718, 18.521147, 13.079281>,  <4.621079, 18.930254, 13.675527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.796718, 18.521147, 13.079281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.126277, 18.499743, 13.304964>,  <5.324012, 18.486900, 13.440374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.126277, 18.499743, 13.304964>,  <4.796718, 18.521147, 13.079281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.126277, 18.499743, 13.304964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050750, -0.984568, -0.167484,
		0.564463, 0.166623, -0.808466,
		0.823897, -0.053509, 0.564209,
		5.373446, 18.483690, 13.474227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.310194, 18.053455, 12.693012>,  <4.796718, 18.521147, 13.079281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.310194, 18.053455, 12.693012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.432372, 18.029907, 13.073168>,  <5.505678, 18.015778, 13.301261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.432372, 18.029907, 13.073168>,  <5.310194, 18.053455, 12.693012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.432372, 18.029907, 13.073168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080483, -0.996112, -0.035837,
		0.948803, -0.065544, -0.308995,
		0.305444, -0.058871, 0.950388,
		5.524005, 18.012245, 13.358284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.665143, 17.448017, 12.719028>,  <5.310194, 18.053455, 12.693012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.665143, 17.448017, 12.719028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.612488, 17.519127, 13.109118>,  <5.580894, 17.561792, 13.343173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.612488, 17.519127, 13.109118>,  <5.665143, 17.448017, 12.719028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.612488, 17.519127, 13.109118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024967, -0.984070, 0.176017,
		0.990983, -0.001178, 0.133979,
		-0.131638, 0.177775, 0.975227,
		5.572997, 17.572460, 13.401687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.006391, 16.987213, 13.028970>,  <5.665143, 17.448017, 12.719028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.006391, 16.987213, 13.028970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.760383, 17.100538, 13.323313>,  <5.612778, 17.168533, 13.499918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.760383, 17.100538, 13.323313>,  <6.006391, 16.987213, 13.028970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.760383, 17.100538, 13.323313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089595, -0.952287, 0.291757,
		0.783405, 0.113508, 0.611059,
		-0.615020, 0.283311, 0.735857,
		5.575877, 17.185532, 13.544070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.268474, 16.702614, 13.675155>,  <6.006391, 16.987213, 13.028970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.268474, 16.702614, 13.675155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.876554, 16.765646, 13.724414>,  <5.641403, 16.803465, 13.753969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.876554, 16.765646, 13.724414>,  <6.268474, 16.702614, 13.675155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.876554, 16.765646, 13.724414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103200, -0.925826, 0.363586,
		0.171308, 0.343532, 0.923384,
		-0.979797, 0.157579, 0.123149,
		5.582615, 16.812920, 13.761358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.681300, 17.267399, 14.026790>,  <6.268474, 16.702614, 13.675155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.681300, 17.267399, 14.026790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.025463, 17.098808, 14.141371>,  <7.231960, 16.997654, 14.210119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.025463, 17.098808, 14.141371>,  <6.681300, 17.267399, 14.026790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.025463, 17.098808, 14.141371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410048, 0.906351, 0.101928,
		-0.302587, 0.029760, 0.952657,
		0.860408, -0.421477, 0.286453,
		7.283585, 16.972364, 14.227306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.997364, 17.707142, 14.573937>,  <6.681300, 17.267399, 14.026790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.997364, 17.707142, 14.573937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.307994, 17.491833, 14.442976>,  <7.494372, 17.362646, 14.364399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.307994, 17.491833, 14.442976>,  <6.997364, 17.707142, 14.573937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.307994, 17.491833, 14.442976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591606, 0.801716, 0.085167,
		0.216641, -0.259832, 0.941039,
		0.776575, -0.538274, -0.327403,
		7.540967, 17.330351, 14.344755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.551908, 18.008900, 14.928513>,  <6.997364, 17.707142, 14.573937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.551908, 18.008900, 14.928513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.732039, 17.816120, 14.627865>,  <7.840117, 17.700453, 14.447476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.732039, 17.816120, 14.627865>,  <7.551908, 18.008900, 14.928513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.732039, 17.816120, 14.627865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721224, 0.692599, -0.011988,
		0.526348, -0.536687, 0.659488,
		0.450327, -0.481948, -0.751620,
		7.867137, 17.671535, 14.402379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.276257, 17.858801, 15.101835>,  <7.551908, 18.008900, 14.928513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.276257, 17.858801, 15.101835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.247582, 17.835665, 14.703536>,  <8.230378, 17.821783, 14.464557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.247582, 17.835665, 14.703536>,  <8.276257, 17.858801, 15.101835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.247582, 17.835665, 14.703536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530373, 0.843271, -0.087167,
		0.844728, -0.534367, -0.029773,
		-0.071686, -0.057842, -0.995749,
		8.226077, 17.818312, 14.404812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.892312, 18.091085, 14.914863>,  <8.276257, 17.858801, 15.101835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.892312, 18.091085, 14.914863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.679776, 18.124981, 14.577699>,  <8.552255, 18.145317, 14.375401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.679776, 18.124981, 14.577699>,  <8.892312, 18.091085, 14.914863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.679776, 18.124981, 14.577699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432975, 0.882379, -0.184226,
		0.728156, -0.462846, -0.505533,
		-0.531340, 0.084738, -0.842910,
		8.520374, 18.150402, 14.324825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.391778, 18.237864, 14.391067>,  <8.892312, 18.091085, 14.914863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.391778, 18.237864, 14.391067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.039421, 18.377024, 14.262695>,  <8.828007, 18.460520, 14.185673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.039421, 18.377024, 14.262695>,  <9.391778, 18.237864, 14.391067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.039421, 18.377024, 14.262695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423753, 0.881742, -0.207280,
		0.210864, -0.318585, -0.924143,
		-0.880892, 0.347901, -0.320929,
		8.775154, 18.481394, 14.166416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.526719, 18.620085, 13.788600>,  <9.391778, 18.237864, 14.391067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.526719, 18.620085, 13.788600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168160, 18.747597, 13.911791>,  <8.953025, 18.824104, 13.985705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168160, 18.747597, 13.911791>,  <9.526719, 18.620085, 13.788600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168160, 18.747597, 13.911791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237494, 0.932082, -0.273532,
		-0.374258, -0.172050, -0.911224,
		-0.896397, 0.318782, 0.307978,
		8.899241, 18.843231, 14.004185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.353199, 19.033813, 13.353530>,  <9.526719, 18.620085, 13.788600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.353199, 19.033813, 13.353530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.119235, 19.131363, 13.662957>,  <8.978857, 19.189894, 13.848614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.119235, 19.131363, 13.662957>,  <9.353199, 19.033813, 13.353530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.119235, 19.131363, 13.662957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220795, 0.965585, -0.137463,
		-0.780468, 0.090397, -0.618626,
		-0.584909, 0.243875, 0.773567,
		8.943762, 19.204525, 13.895027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.983925, 19.609442, 13.209976>,  <9.353199, 19.033813, 13.353530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.983925, 19.609442, 13.209976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.969507, 19.619335, 13.609593>,  <8.960856, 19.625271, 13.849364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.969507, 19.619335, 13.609593>,  <8.983925, 19.609442, 13.209976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.969507, 19.619335, 13.609593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282967, 0.959034, -0.013536,
		-0.958452, 0.282209, -0.041566,
		-0.036043, 0.024735, 0.999044,
		8.958694, 19.626757, 13.909307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.774569, 20.347948, 13.299408>,  <8.983925, 19.609442, 13.209976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.774569, 20.347948, 13.299408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.880543, 20.220432, 13.663426>,  <8.944127, 20.143923, 13.881838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.880543, 20.220432, 13.663426>,  <8.774569, 20.347948, 13.299408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.880543, 20.220432, 13.663426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262345, 0.932000, 0.250104,
		-0.927892, 0.172485, 0.330552,
		0.264935, -0.318788, 0.910046,
		8.960023, 20.124796, 13.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.431552, 20.803148, 13.718575>,  <8.774569, 20.347948, 13.299408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.431552, 20.803148, 13.718575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.708832, 20.645452, 13.959920>,  <8.875200, 20.550835, 14.104728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.708832, 20.645452, 13.959920>,  <8.431552, 20.803148, 13.718575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.708832, 20.645452, 13.959920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237263, 0.915301, 0.325469,
		-0.680573, -0.082459, 0.728025,
		0.693200, -0.394239, 0.603364,
		8.916792, 20.527182, 14.140929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.325628, 21.135345, 14.364878>,  <8.431552, 20.803148, 13.718575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.325628, 21.135345, 14.364878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.703111, 21.003298, 14.356490>,  <8.929600, 20.924068, 14.351458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.703111, 21.003298, 14.356490>,  <8.325628, 21.135345, 14.364878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.703111, 21.003298, 14.356490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300286, 0.828387, 0.472866,
		-0.138732, -0.452543, 0.880885,
		0.943706, -0.330119, -0.020969,
		8.986222, 20.904263, 14.350200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.538860, 21.226112, 14.990200>,  <8.325628, 21.135345, 14.364878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.538860, 21.226112, 14.990200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.882463, 21.170586, 14.793087>,  <9.088626, 21.137270, 14.674819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.882463, 21.170586, 14.793087>,  <8.538860, 21.226112, 14.990200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.882463, 21.170586, 14.793087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346825, 0.865807, 0.360680,
		0.376586, -0.480737, 0.791881,
		0.859008, -0.138817, -0.492783,
		9.140166, 21.128941, 14.645252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.058453, 21.241457, 15.446544>,  <8.538860, 21.226112, 14.990200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.058453, 21.241457, 15.446544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.194882, 21.334520, 15.082228>,  <9.276740, 21.390358, 14.863638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.194882, 21.334520, 15.082228>,  <9.058453, 21.241457, 15.446544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.194882, 21.334520, 15.082228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395920, 0.843209, 0.363658,
		0.852596, -0.484633, 0.195478,
		0.341069, 0.232659, -0.910792,
		9.297204, 21.404318, 14.808990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.655565, 21.147732, 15.507322>,  <9.058453, 21.241457, 15.446544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.655565, 21.147732, 15.507322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.579144, 21.407597, 15.212993>,  <9.533291, 21.563515, 15.036394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.579144, 21.407597, 15.212993>,  <9.655565, 21.147732, 15.507322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.579144, 21.407597, 15.212993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293973, 0.753095, 0.588580,
		0.936525, -0.103863, -0.334865,
		-0.191053, 0.649661, -0.735825,
		9.521828, 21.602495, 14.992245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.140132, 21.637270, 15.624904>,  <9.655565, 21.147732, 15.507322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.140132, 21.637270, 15.624904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.908525, 21.835310, 15.365793>,  <9.769560, 21.954134, 15.210327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.908525, 21.835310, 15.365793>,  <10.140132, 21.637270, 15.624904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908525, 21.835310, 15.365793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192474, 0.855061, 0.481482,
		0.792269, 0.154107, -0.590390,
		-0.579019, 0.495099, -0.647777,
		9.734819, 21.983839, 15.171460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.502477, 22.220039, 15.544102>,  <10.140132, 21.637270, 15.624904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.502477, 22.220039, 15.544102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.150805, 22.331053, 15.389174>,  <9.939801, 22.397661, 15.296217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.150805, 22.331053, 15.389174>,  <10.502477, 22.220039, 15.544102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.150805, 22.331053, 15.389174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089735, 0.894756, 0.437447,
		0.467963, 0.349839, -0.811556,
		-0.879181, 0.277534, -0.387319,
		9.887051, 22.414312, 15.272978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531752, 22.876932, 15.084585>,  <10.502477, 22.220039, 15.544102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531752, 22.876932, 15.084585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.172260, 22.848940, 15.257739>,  <9.956566, 22.832144, 15.361631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.172260, 22.848940, 15.257739>,  <10.531752, 22.876932, 15.084585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.172260, 22.848940, 15.257739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126530, 0.903809, 0.408802,
		-0.419854, 0.422175, -0.803424,
		-0.898728, -0.069980, 0.432885,
		9.902641, 22.827946, 15.387605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.245865, 23.527292, 14.864288>,  <10.531752, 22.876932, 15.084585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.245865, 23.527292, 14.864288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.992797, 23.412840, 15.152138>,  <9.840956, 23.344168, 15.324847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.992797, 23.412840, 15.152138>,  <10.245865, 23.527292, 14.864288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.992797, 23.412840, 15.152138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107785, 0.952730, 0.284057,
		-0.766883, 0.102150, -0.633605,
		-0.632671, -0.286131, 0.719622,
		9.802996, 23.327000, 15.368025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.728539, 24.027386, 14.861889>,  <10.245865, 23.527292, 14.864288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.728539, 24.027386, 14.861889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.653620, 23.856628, 15.215766>,  <9.608668, 23.754173, 15.428092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.653620, 23.856628, 15.215766>,  <9.728539, 24.027386, 14.861889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.653620, 23.856628, 15.215766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175512, 0.900682, 0.397452,
		-0.966496, -0.080832, -0.243620,
		-0.187297, -0.426894, 0.884693,
		9.597430, 23.728559, 15.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.068839, 24.328726, 15.015407>,  <9.728539, 24.027386, 14.861889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.068839, 24.328726, 15.015407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.239930, 24.192808, 15.350450>,  <9.342585, 24.111258, 15.551476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.239930, 24.192808, 15.350450>,  <9.068839, 24.328726, 15.015407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.239930, 24.192808, 15.350450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088417, 0.906481, 0.412886,
		-0.899573, -0.250662, 0.357683,
		0.427728, -0.339796, 0.837608,
		9.368249, 24.090870, 15.601732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.034731, 14.493311, 26.957155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.743139, 14.226381, 26.896143>,  <17.568184, 14.066223, 26.859535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.743139, 14.226381, 26.896143>,  <18.034731, 14.493311, 26.957155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743139, 14.226381, 26.896143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295750, 0.106077, 0.949357,
		-0.617349, 0.737174, -0.274689,
		-0.728980, -0.667325, -0.152533,
		17.524445, 14.026184, 26.850384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399654, 14.812050, 27.179844>,  <18.034731, 14.493311, 26.957155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399654, 14.812050, 27.179844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.326065, 14.419135, 27.194080>,  <17.281912, 14.183386, 27.202621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.326065, 14.419135, 27.194080>,  <17.399654, 14.812050, 27.179844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.326065, 14.419135, 27.194080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166101, 0.066755, 0.983847,
		-0.968795, 0.175091, -0.175440,
		-0.183974, -0.982287, 0.035589,
		17.270872, 14.124449, 27.204758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817297, 14.770360, 27.699768>,  <17.399654, 14.812050, 27.179844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817297, 14.770360, 27.699768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.927628, 14.388253, 27.657085>,  <16.993826, 14.158989, 27.631475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.927628, 14.388253, 27.657085>,  <16.817297, 14.770360, 27.699768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927628, 14.388253, 27.657085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271625, -0.183953, 0.944659,
		-0.922031, -0.231576, -0.310213,
		0.275825, -0.955266, -0.106708,
		17.010376, 14.101673, 27.625072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237791, 14.326348, 27.808975>,  <16.817297, 14.770360, 27.699768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.237791, 14.326348, 27.808975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.544569, 14.076275, 27.866863>,  <16.728636, 13.926230, 27.901596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.544569, 14.076275, 27.866863>,  <16.237791, 14.326348, 27.808975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544569, 14.076275, 27.866863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337979, -0.201823, 0.919259,
		-0.545499, -0.753931, -0.366086,
		0.766943, -0.625184, 0.144718,
		16.774652, 13.888720, 27.910278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032129, 13.525168, 27.925648>,  <16.237791, 14.326348, 27.808975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032129, 13.525168, 27.925648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.386639, 13.567035, 28.106121>,  <16.599344, 13.592155, 28.214405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.386639, 13.567035, 28.106121>,  <16.032129, 13.525168, 27.925648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386639, 13.567035, 28.106121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390753, -0.354024, 0.849693,
		0.248663, -0.929361, -0.272864,
		0.886272, 0.104665, 0.451184,
		16.652521, 13.598434, 28.241476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996479, 13.014048, 28.484451>,  <16.032129, 13.525168, 27.925648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996479, 13.014048, 28.484451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.328281, 13.219148, 28.573002>,  <16.527363, 13.342208, 28.626133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.328281, 13.219148, 28.573002>,  <15.996479, 13.014048, 28.484451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328281, 13.219148, 28.573002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101696, -0.251084, 0.962608,
		0.549161, -0.821002, -0.156131,
		0.829506, 0.512749, 0.221378,
		16.577133, 13.372972, 28.639416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427479, 12.494748, 28.740080>,  <15.996479, 13.014048, 28.484451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427479, 12.494748, 28.740080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.548328, 12.848208, 28.883121>,  <16.620838, 13.060285, 28.968946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.548328, 12.848208, 28.883121>,  <16.427479, 12.494748, 28.740080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.548328, 12.848208, 28.883121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004212, -0.376369, 0.926460,
		0.953259, -0.278400, -0.117432,
		0.302124, 0.883651, 0.357605,
		16.638966, 13.113304, 28.990402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091568, 12.408008, 29.018963>,  <16.427479, 12.494748, 28.740080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091568, 12.408008, 29.018963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.890366, 12.707193, 29.192184>,  <16.769644, 12.886704, 29.296118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.890366, 12.707193, 29.192184>,  <17.091568, 12.408008, 29.018963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890366, 12.707193, 29.192184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000673, -0.500717, 0.865611,
		0.864284, 0.435697, 0.251359,
		-0.503004, 0.747964, 0.433055,
		16.739464, 12.931582, 29.322102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477440, 12.536143, 29.585255>,  <17.091568, 12.408008, 29.018963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477440, 12.536143, 29.585255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.121944, 12.704299, 29.658375>,  <16.908648, 12.805192, 29.702248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.121944, 12.704299, 29.658375>,  <17.477440, 12.536143, 29.585255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121944, 12.704299, 29.658375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008064, -0.384372, 0.923143,
		0.458343, 0.821907, 0.338217,
		-0.888739, 0.420388, 0.182802,
		16.855322, 12.830416, 29.713215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420900, 12.472805, 30.321985>,  <17.477440, 12.536143, 29.585255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420900, 12.472805, 30.321985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.053694, 12.612233, 30.246357>,  <16.833370, 12.695890, 30.200981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.053694, 12.612233, 30.246357>,  <17.420900, 12.472805, 30.321985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053694, 12.612233, 30.246357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322958, -0.380541, 0.866537,
		0.230101, 0.856555, 0.461916,
		-0.918015, 0.348570, -0.189068,
		16.778290, 12.716805, 30.189636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204994, 12.958881, 30.876318>,  <17.420900, 12.472805, 30.321985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204994, 12.958881, 30.876318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.880623, 12.809921, 30.695778>,  <16.686001, 12.720545, 30.587454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.880623, 12.809921, 30.695778>,  <17.204994, 12.958881, 30.876318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880623, 12.809921, 30.695778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315698, -0.371009, 0.873320,
		-0.492680, 0.850688, 0.183294,
		-0.810926, -0.372401, -0.451349,
		16.637344, 12.698201, 30.560373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.569561, 13.154508, 31.349440>,  <17.204994, 12.958881, 30.876318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.569561, 13.154508, 31.349440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.501663, 12.853640, 31.094748>,  <16.460924, 12.673119, 30.941933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.501663, 12.853640, 31.094748>,  <16.569561, 13.154508, 31.349440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501663, 12.853640, 31.094748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376507, -0.547598, 0.747247,
		-0.910730, 0.366574, -0.190247,
		-0.169743, -0.752170, -0.636732,
		16.450741, 12.627989, 30.903728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759583, 13.032515, 31.311611>,  <16.569561, 13.154508, 31.349440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759583, 13.032515, 31.311611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.012064, 12.732098, 31.234133>,  <16.163553, 12.551847, 31.187645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.012064, 12.732098, 31.234133>,  <15.759583, 13.032515, 31.311611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.012064, 12.732098, 31.234133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391895, -0.524331, 0.755973,
		-0.669329, -0.401263, -0.625289,
		0.631202, -0.751042, -0.193698,
		16.201426, 12.506785, 31.176023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534260, 13.304332, 31.947083>,  <15.759583, 13.032515, 31.311611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534260, 13.304332, 31.947083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.668983, 13.483937, 31.616037>,  <15.749818, 13.591701, 31.417410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.668983, 13.483937, 31.616037>,  <15.534260, 13.304332, 31.947083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.668983, 13.483937, 31.616037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880329, -0.461997, 0.107612,
		-0.334037, -0.764818, -0.550884,
		0.336810, 0.449013, -0.827615,
		15.770026, 13.618641, 31.367752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935873, 13.272254, 31.485250>,  <15.534260, 13.304332, 31.947083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935873, 13.272254, 31.485250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.585389, 13.452339, 31.554031>,  <14.375099, 13.560390, 31.595299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.585389, 13.452339, 31.554031>,  <14.935873, 13.272254, 31.485250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585389, 13.452339, 31.554031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158967, 0.066828, -0.985020,
		-0.454959, -0.890417, 0.013014,
		-0.876209, 0.450213, 0.171951,
		14.322527, 13.587403, 31.605616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550073, 12.993950, 30.997578>,  <14.935873, 13.272254, 31.485250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550073, 12.993950, 30.997578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.333749, 13.320019, 31.080542>,  <14.203955, 13.515660, 31.130320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.333749, 13.320019, 31.080542>,  <14.550073, 12.993950, 30.997578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333749, 13.320019, 31.080542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032934, 0.225868, -0.973601,
		-0.840500, -0.533364, -0.095305,
		-0.540810, 0.815173, 0.207408,
		14.171506, 13.564570, 31.142763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040415, 12.968421, 30.462128>,  <14.550073, 12.993950, 30.997578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040415, 12.968421, 30.462128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.063882, 13.353395, 30.568167>,  <14.077962, 13.584379, 30.631790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.063882, 13.353395, 30.568167>,  <14.040415, 12.968421, 30.462128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063882, 13.353395, 30.568167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043861, 0.267784, -0.962480,
		-0.997314, 0.044839, 0.057923,
		0.058668, 0.962435, 0.265098,
		14.081482, 13.642125, 30.647696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531764, 13.334763, 30.056091>,  <14.040415, 12.968421, 30.462128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531764, 13.334763, 30.056091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.750785, 13.642550, 30.187611>,  <13.882197, 13.827222, 30.266521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.750785, 13.642550, 30.187611>,  <13.531764, 13.334763, 30.056091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750785, 13.642550, 30.187611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205727, 0.504667, -0.838443,
		-0.811088, 0.391449, 0.434631,
		0.547552, 0.769467, 0.328798,
		13.915051, 13.873389, 30.286249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197577, 14.044889, 30.002676>,  <13.531764, 13.334763, 30.056091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197577, 14.044889, 30.002676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.590525, 14.114702, 30.029480>,  <13.826293, 14.156590, 30.045563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.590525, 14.114702, 30.029480>,  <13.197577, 14.044889, 30.002676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590525, 14.114702, 30.029480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026654, 0.485525, -0.873816,
		-0.185046, 0.856624, 0.481616,
		0.982368, 0.174533, 0.067012,
		13.885235, 14.167062, 30.049583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347438, 14.726314, 29.678440>,  <13.197577, 14.044889, 30.002676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347438, 14.726314, 29.678440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.714655, 14.569189, 29.699963>,  <13.934985, 14.474915, 29.712875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.714655, 14.569189, 29.699963>,  <13.347438, 14.726314, 29.678440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714655, 14.569189, 29.699963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298351, 0.595062, -0.746249,
		0.261119, 0.701142, 0.663489,
		0.918043, -0.392812, 0.053804,
		13.990068, 14.451345, 29.716105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.762006, 15.148454, 29.361029>,  <13.347438, 14.726314, 29.678440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.762006, 15.148454, 29.361029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.020352, 14.843076, 29.359911>,  <14.175361, 14.659849, 29.359240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.020352, 14.843076, 29.359911>,  <13.762006, 15.148454, 29.361029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.020352, 14.843076, 29.359911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336586, 0.288033, -0.896519,
		0.685248, 0.578091, 0.442996,
		0.645867, -0.763445, -0.002796,
		14.214112, 14.614042, 29.359072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340176, 15.460357, 29.186176>,  <13.762006, 15.148454, 29.361029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340176, 15.460357, 29.186176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.342189, 15.070635, 29.096104>,  <14.343397, 14.836802, 29.042061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.342189, 15.070635, 29.096104>,  <14.340176, 15.460357, 29.186176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342189, 15.070635, 29.096104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268301, 0.218243, -0.938288,
		0.963322, -0.055694, 0.262505,
		0.005033, -0.974304, -0.225181,
		14.343699, 14.778343, 29.028549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995546, 15.342916, 28.746204>,  <14.340176, 15.460357, 29.186176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995546, 15.342916, 28.746204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.751485, 15.035663, 28.668560>,  <14.605048, 14.851310, 28.621973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.751485, 15.035663, 28.668560>,  <14.995546, 15.342916, 28.746204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751485, 15.035663, 28.668560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251995, 0.044127, -0.966722,
		0.751139, -0.638765, 0.166642,
		-0.610155, -0.768135, -0.194111,
		14.568439, 14.805222, 28.610327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443925, 14.891359, 28.325655>,  <14.995546, 15.342916, 28.746204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443925, 14.891359, 28.325655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.054202, 14.831087, 28.258698>,  <14.820369, 14.794924, 28.218523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.054202, 14.831087, 28.258698>,  <15.443925, 14.891359, 28.325655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054202, 14.831087, 28.258698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163129, 0.040333, -0.985780,
		0.155292, -0.987759, -0.014716,
		-0.974307, -0.150683, -0.167396,
		14.761909, 14.785883, 28.208479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407885, 14.346375, 27.772938>,  <15.443925, 14.891359, 28.325655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407885, 14.346375, 27.772938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.027868, 14.470940, 27.764492>,  <14.799858, 14.545678, 27.759424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.027868, 14.470940, 27.764492>,  <15.407885, 14.346375, 27.772938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.027868, 14.470940, 27.764492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029034, -0.155524, -0.987405,
		-0.310772, -0.937462, 0.156796,
		-0.950041, 0.311410, -0.021114,
		14.742856, 14.564363, 27.758158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923613, 13.826153, 27.538845>,  <15.407885, 14.346375, 27.772938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923613, 13.826153, 27.538845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.759574, 14.184996, 27.473095>,  <14.661151, 14.400301, 27.433645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.759574, 14.184996, 27.473095>,  <14.923613, 13.826153, 27.538845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.759574, 14.184996, 27.473095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078308, -0.214195, -0.973647,
		-0.908674, -0.386417, 0.158092,
		-0.410097, 0.897108, -0.164374,
		14.636545, 14.454128, 27.423782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609162, 13.868531, 26.897463>,  <14.923613, 13.826153, 27.538845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609162, 13.868531, 26.897463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.578608, 14.266644, 26.921379>,  <14.560275, 14.505512, 26.935728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.578608, 14.266644, 26.921379>,  <14.609162, 13.868531, 26.897463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578608, 14.266644, 26.921379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080232, 0.065907, -0.994595,
		-0.993845, -0.071176, -0.084888,
		-0.076386, 0.995284, 0.059791,
		14.555692, 14.565229, 26.939316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.059760, 13.980190, 26.457262>,  <14.609162, 13.868531, 26.897463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.059760, 13.980190, 26.457262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.276844, 14.315648, 26.475780>,  <14.407094, 14.516923, 26.486891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.276844, 14.315648, 26.475780>,  <14.059760, 13.980190, 26.457262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276844, 14.315648, 26.475780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042418, 0.027681, -0.998716,
		-0.838849, 0.543977, -0.020551,
		0.542709, 0.838644, 0.046295,
		14.439657, 14.567242, 26.489670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355252, 14.289927, 26.560667>,  <14.059760, 13.980190, 26.457262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355252, 14.289927, 26.560667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.964228, 14.254461, 26.484236>,  <12.729612, 14.233182, 26.438377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.964228, 14.254461, 26.484236>,  <13.355252, 14.289927, 26.560667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964228, 14.254461, 26.484236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153017, -0.324522, 0.933419,
		-0.144771, 0.941713, 0.303674,
		-0.977562, -0.088665, -0.191079,
		12.670959, 14.227862, 26.426912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921802, 14.674619, 27.091906>,  <13.355252, 14.289927, 26.560667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921802, 14.674619, 27.091906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.686955, 14.398567, 26.922665>,  <12.546048, 14.232936, 26.821119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.686955, 14.398567, 26.922665>,  <12.921802, 14.674619, 27.091906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.686955, 14.398567, 26.922665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357743, -0.247661, 0.900380,
		-0.726165, 0.679989, -0.101484,
		-0.587115, -0.690130, -0.423104,
		12.510821, 14.191528, 26.795732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234064, 14.774668, 27.362873>,  <12.921802, 14.674619, 27.091906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234064, 14.774668, 27.362873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.231482, 14.400243, 27.222164>,  <12.229932, 14.175588, 27.137739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.231482, 14.400243, 27.222164>,  <12.234064, 14.774668, 27.362873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231482, 14.400243, 27.222164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538649, -0.293129, 0.789895,
		-0.842506, 0.194582, -0.502316,
		-0.006456, -0.936063, -0.351774,
		12.229545, 14.119424, 27.116632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604044, 14.504997, 27.621542>,  <12.234064, 14.774668, 27.362873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604044, 14.504997, 27.621542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.815995, 14.177849, 27.531816>,  <11.943166, 13.981560, 27.477982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.815995, 14.177849, 27.531816>,  <11.604044, 14.504997, 27.621542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.815995, 14.177849, 27.531816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446285, -0.493822, 0.746303,
		-0.721151, -0.295341, -0.626669,
		0.529878, -0.817871, -0.224314,
		11.974958, 13.932487, 27.464523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.097158, 13.963236, 27.864361>,  <11.604044, 14.504997, 27.621542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.097158, 13.963236, 27.864361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.450720, 13.777362, 27.843260>,  <11.662857, 13.665837, 27.830599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.450720, 13.777362, 27.843260>,  <11.097158, 13.963236, 27.864361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.450720, 13.777362, 27.843260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257907, -0.578436, 0.773883,
		-0.390126, -0.670433, -0.631127,
		0.883904, -0.464684, -0.052754,
		11.715891, 13.637957, 27.827433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.923765, 13.206961, 27.937162>,  <11.097158, 13.963236, 27.864361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.923765, 13.206961, 27.937162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.305525, 13.282318, 28.029795>,  <11.534580, 13.327533, 28.085375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.305525, 13.282318, 28.029795>,  <10.923765, 13.206961, 27.937162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.305525, 13.282318, 28.029795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079686, -0.586823, 0.805785,
		0.287702, -0.787494, -0.545051,
		0.954399, 0.188393, 0.231582,
		11.591845, 13.338836, 28.099270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.260473, 12.495224, 28.145668>,  <10.923765, 13.206961, 27.937162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.260473, 12.495224, 28.145668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.451840, 12.807988, 28.305532>,  <11.566661, 12.995646, 28.401451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.451840, 12.807988, 28.305532>,  <11.260473, 12.495224, 28.145668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.451840, 12.807988, 28.305532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020700, -0.465044, 0.885045,
		0.877888, -0.415149, -0.238672,
		0.478418, 0.781911, 0.399663,
		11.595366, 13.042562, 28.425432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410628, 11.756659, 28.144754>,  <11.260473, 12.495224, 28.145668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410628, 11.756659, 28.144754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.077935, 11.558926, 28.043676>,  <10.878319, 11.440286, 27.983030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.077935, 11.558926, 28.043676>,  <11.410628, 11.756659, 28.144754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.077935, 11.558926, 28.043676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014366, 0.474174, -0.880314,
		0.554991, -0.728556, -0.401487,
		-0.831733, -0.494334, -0.252696,
		10.828415, 11.410626, 27.967869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.538714, 11.684110, 27.513748>,  <11.410628, 11.756659, 28.144754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.538714, 11.684110, 27.513748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.143479, 11.625340, 27.532061>,  <10.906339, 11.590077, 27.543049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.143479, 11.625340, 27.532061>,  <11.538714, 11.684110, 27.513748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.143479, 11.625340, 27.532061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097341, 0.366272, -0.925402,
		0.119195, -0.918835, -0.376211,
		-0.988088, -0.146924, 0.045783,
		10.847054, 11.581263, 27.545795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453728, 11.453755, 26.840021>,  <11.538714, 11.684110, 27.513748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453728, 11.453755, 26.840021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.087271, 11.552956, 26.965992>,  <10.867396, 11.612475, 27.041574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.087271, 11.552956, 26.965992>,  <11.453728, 11.453755, 26.840021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087271, 11.552956, 26.965992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311486, 0.054067, -0.948712,
		-0.252309, -0.967250, 0.027716,
		-0.916142, 0.248002, 0.314926,
		10.812428, 11.627356, 27.060471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905212, 10.972235, 26.535448>,  <11.453728, 11.453755, 26.840021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905212, 10.972235, 26.535448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.741820, 11.321746, 26.641018>,  <10.643785, 11.531452, 26.704359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.741820, 11.321746, 26.641018>,  <10.905212, 10.972235, 26.535448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.741820, 11.321746, 26.641018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358777, 0.112172, -0.926659,
		-0.839299, -0.473212, 0.267672,
		-0.408481, 0.873778, 0.263923,
		10.619276, 11.583879, 26.720196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.199909, 10.968239, 26.168337>,  <10.905212, 10.972235, 26.535448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.199909, 10.968239, 26.168337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.268841, 11.349080, 26.269373>,  <10.310200, 11.577585, 26.329994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.268841, 11.349080, 26.269373>,  <10.199909, 10.968239, 26.168337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.268841, 11.349080, 26.269373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375882, 0.300584, -0.876563,
		-0.910503, 0.056113, 0.409678,
		0.172329, 0.952103, 0.252590,
		10.320539, 11.634711, 26.345150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.548908, 11.404200, 26.127245>,  <10.199909, 10.968239, 26.168337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.548908, 11.404200, 26.127245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.860178, 11.652499, 26.089054>,  <10.046940, 11.801479, 26.066139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.860178, 11.652499, 26.089054>,  <9.548908, 11.404200, 26.127245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.860178, 11.652499, 26.089054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423661, 0.406605, -0.809434,
		-0.463633, 0.670331, 0.579397,
		0.778174, 0.620749, -0.095478,
		10.093630, 11.838724, 26.060411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.221609, 12.045741, 25.874186>,  <9.548908, 11.404200, 26.127245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.221609, 12.045741, 25.874186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.611881, 12.067561, 25.789263>,  <9.846045, 12.080653, 25.738310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.611881, 12.067561, 25.789263>,  <9.221609, 12.045741, 25.874186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.611881, 12.067561, 25.789263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218454, 0.321915, -0.921221,
		0.018092, 0.945195, 0.326003,
		0.975679, 0.054550, -0.212306,
		9.904585, 12.083926, 25.725571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.214138, 9.494049, 30.673136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.026857, 9.791389, 30.864225>,  <15.914489, 9.969792, 30.978878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.026857, 9.791389, 30.864225>,  <16.214138, 9.494049, 30.673136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026857, 9.791389, 30.864225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373653, 0.323369, -0.869377,
		-0.800731, -0.585547, 0.126352,
		-0.468203, 0.743349, 0.477723,
		15.886396, 10.014393, 31.007542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.557549, 9.535168, 30.537754>,  <16.214138, 9.494049, 30.673136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.557549, 9.535168, 30.537754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.702022, 9.906953, 30.567816>,  <15.788705, 10.130024, 30.585854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.702022, 9.906953, 30.567816>,  <15.557549, 9.535168, 30.537754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702022, 9.906953, 30.567816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237440, 0.169606, -0.956481,
		-0.901760, 0.327619, 0.281950,
		0.361182, 0.929462, 0.075154,
		15.810376, 10.185791, 30.590363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981099, 10.130054, 30.493557>,  <15.557549, 9.535168, 30.537754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981099, 10.130054, 30.493557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.348916, 10.164697, 30.340227>,  <15.569607, 10.185482, 30.248228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.348916, 10.164697, 30.340227>,  <14.981099, 10.130054, 30.493557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348916, 10.164697, 30.340227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375298, -0.095840, -0.921936,
		-0.116583, 0.991622, -0.055626,
		0.919543, 0.086606, -0.383327,
		15.624779, 10.190679, 30.225229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917336, 10.609301, 29.894419>,  <14.981099, 10.130054, 30.493557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917336, 10.609301, 29.894419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.246325, 10.385847, 29.851578>,  <15.443717, 10.251775, 29.825872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.246325, 10.385847, 29.851578>,  <14.917336, 10.609301, 29.894419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246325, 10.385847, 29.851578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160854, -0.047819, -0.985819,
		0.545591, 0.828034, -0.129189,
		0.822470, -0.558634, -0.107102,
		15.493066, 10.218257, 29.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378593, 10.872940, 29.364620>,  <14.917336, 10.609301, 29.894419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378593, 10.872940, 29.364620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.493219, 10.490920, 29.394981>,  <15.561996, 10.261708, 29.413198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.493219, 10.490920, 29.394981>,  <15.378593, 10.872940, 29.364620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493219, 10.490920, 29.394981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097342, -0.107842, -0.989391,
		0.953103, 0.276137, -0.123870,
		0.286566, -0.955049, 0.075905,
		15.579189, 10.204406, 29.417753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770099, 10.787101, 28.710451>,  <15.378593, 10.872940, 29.364620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770099, 10.787101, 28.710451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.731149, 10.421763, 28.868601>,  <15.707779, 10.202561, 28.963491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.731149, 10.421763, 28.868601>,  <15.770099, 10.787101, 28.710451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.731149, 10.421763, 28.868601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044025, -0.400828, -0.915095,
		0.994273, -0.071702, 0.079240,
		-0.097375, -0.913343, 0.395376,
		15.701936, 10.147760, 28.987213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368069, 10.319501, 28.421371>,  <15.770099, 10.787101, 28.710451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368069, 10.319501, 28.421371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.059082, 10.095895, 28.541901>,  <15.873690, 9.961731, 28.614218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.059082, 10.095895, 28.541901>,  <16.368069, 10.319501, 28.421371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059082, 10.095895, 28.541901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061338, -0.406585, -0.911551,
		0.632084, -0.722627, 0.279785,
		-0.772468, -0.559016, 0.301321,
		15.827341, 9.928190, 28.632298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605156, 9.596691, 28.426088>,  <16.368069, 10.319501, 28.421371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605156, 9.596691, 28.426088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.210466, 9.643677, 28.381231>,  <15.973652, 9.671868, 28.354317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.210466, 9.643677, 28.381231>,  <16.605156, 9.596691, 28.426088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210466, 9.643677, 28.381231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084467, -0.218573, -0.972158,
		-0.138702, -0.968725, 0.205750,
		-0.986725, 0.117461, -0.112141,
		15.914449, 9.678916, 28.347589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327679, 9.051764, 28.028105>,  <16.605156, 9.596691, 28.426088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327679, 9.051764, 28.028105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.035973, 9.319931, 27.973389>,  <15.860949, 9.480831, 27.940559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.035973, 9.319931, 27.973389>,  <16.327679, 9.051764, 28.028105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035973, 9.319931, 27.973389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010366, -0.189071, -0.981909,
		-0.684153, -0.717490, 0.130933,
		-0.729265, 0.670418, -0.136791,
		15.817193, 9.521056, 27.932352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855377, 8.830185, 27.497196>,  <16.327679, 9.051764, 28.028105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855377, 8.830185, 27.497196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.752842, 9.215567, 27.528303>,  <15.691320, 9.446795, 27.546967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.752842, 9.215567, 27.528303>,  <15.855377, 8.830185, 27.497196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752842, 9.215567, 27.528303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137672, 0.043243, -0.989533,
		-0.956732, -0.264363, 0.121556,
		-0.256339, 0.963453, 0.077768,
		15.675941, 9.504602, 27.551634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204001, 8.973596, 27.177902>,  <15.855377, 8.830185, 27.497196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204001, 8.973596, 27.177902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.366209, 9.339108, 27.168463>,  <15.463533, 9.558416, 27.162800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.366209, 9.339108, 27.168463>,  <15.204001, 8.973596, 27.177902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.366209, 9.339108, 27.168463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054784, -0.001474, -0.998497,
		-0.912444, 0.406202, 0.049463,
		0.405519, 0.913782, -0.023598,
		15.487864, 9.613243, 27.161383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.767354, 9.420628, 26.767042>,  <15.204001, 8.973596, 27.177902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.767354, 9.420628, 26.767042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.100858, 9.641479, 26.766890>,  <15.300960, 9.773991, 26.766798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.100858, 9.641479, 26.766890>,  <14.767354, 9.420628, 26.767042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.100858, 9.641479, 26.766890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165728, 0.249603, -0.954061,
		-0.526669, 0.795520, 0.299612,
		0.833759, 0.552129, -0.000382,
		15.350986, 9.807118, 26.766775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087495, 9.456668, 26.384991>,  <14.767354, 9.420628, 26.767042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087495, 9.456668, 26.384991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.857309, 9.132223, 26.343157>,  <13.719198, 8.937556, 26.318056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.857309, 9.132223, 26.343157>,  <14.087495, 9.456668, 26.384991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857309, 9.132223, 26.343157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073901, -0.178934, 0.981082,
		-0.814482, 0.556848, 0.162912,
		-0.575463, -0.811113, -0.104587,
		13.684670, 8.888889, 26.311781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.656968, 9.450174, 26.922564>,  <14.087495, 9.456668, 26.384991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.656968, 9.450174, 26.922564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.589046, 9.077985, 26.792711>,  <13.548294, 8.854671, 26.714800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.589046, 9.077985, 26.792711>,  <13.656968, 9.450174, 26.922564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.589046, 9.077985, 26.792711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192118, -0.291837, 0.936975,
		-0.966570, 0.221468, -0.129206,
		-0.169803, -0.930475, -0.324629,
		13.538106, 8.798842, 26.695322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957476, 9.207896, 27.177729>,  <13.656968, 9.450174, 26.922564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957476, 9.207896, 27.177729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.188505, 8.883711, 27.138620>,  <13.327123, 8.689199, 27.115156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.188505, 8.883711, 27.138620>,  <12.957476, 9.207896, 27.177729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188505, 8.883711, 27.138620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196515, -0.254282, 0.946954,
		-0.792333, -0.527722, -0.306134,
		0.577573, -0.810463, -0.097770,
		13.361777, 8.640572, 27.109289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608379, 8.592852, 27.464703>,  <12.957476, 9.207896, 27.177729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608379, 8.592852, 27.464703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.001849, 8.530368, 27.500441>,  <13.237931, 8.492878, 27.521883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.001849, 8.530368, 27.500441>,  <12.608379, 8.592852, 27.464703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.001849, 8.530368, 27.500441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157196, -0.504227, 0.849143,
		-0.087595, -0.849325, -0.520551,
		0.983675, -0.156210, 0.089343,
		13.296951, 8.483505, 27.527243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.692669, 7.958728, 27.555994>,  <12.608379, 8.592852, 27.464703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.692669, 7.958728, 27.555994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.049912, 8.078728, 27.690073>,  <13.264258, 8.150727, 27.770521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.049912, 8.078728, 27.690073>,  <12.692669, 7.958728, 27.555994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049912, 8.078728, 27.690073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206144, -0.389358, 0.897722,
		0.399828, -0.870862, -0.285896,
		0.893108, 0.299999, 0.335199,
		13.317845, 8.168727, 27.790632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.952936, 7.440152, 27.985447>,  <12.692669, 7.958728, 27.555994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.952936, 7.440152, 27.985447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.170864, 7.754740, 28.101818>,  <13.301620, 7.943492, 28.171640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.170864, 7.754740, 28.101818>,  <12.952936, 7.440152, 27.985447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.170864, 7.754740, 28.101818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094329, -0.287256, 0.953198,
		0.833232, -0.546763, -0.082315,
		0.544818, 0.786470, 0.290926,
		13.334310, 7.990681, 28.189096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480895, 7.198656, 28.645933>,  <12.952936, 7.440152, 27.985447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480895, 7.198656, 28.645933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.404792, 7.590853, 28.665680>,  <13.359130, 7.826171, 28.677528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.404792, 7.590853, 28.665680>,  <13.480895, 7.198656, 28.645933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404792, 7.590853, 28.665680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123816, -0.073847, 0.989553,
		0.973895, 0.182159, 0.135451,
		-0.190259, 0.980492, 0.049365,
		13.347714, 7.885000, 28.680489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684585, 7.305203, 29.208206>,  <13.480895, 7.198656, 28.645933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684585, 7.305203, 29.208206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.485022, 7.645341, 29.141268>,  <13.365284, 7.849424, 29.101105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.485022, 7.645341, 29.141268>,  <13.684585, 7.305203, 29.208206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485022, 7.645341, 29.141268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203553, 0.072719, 0.976360,
		0.842411, 0.521177, 0.136810,
		-0.498908, 0.850345, -0.167346,
		13.335349, 7.900445, 29.091064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840576, 7.765356, 29.838024>,  <13.684585, 7.305203, 29.208206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840576, 7.765356, 29.838024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.508199, 7.919428, 29.677441>,  <13.308772, 8.011871, 29.581091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.508199, 7.919428, 29.677441>,  <13.840576, 7.765356, 29.838024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508199, 7.919428, 29.677441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472067, -0.106266, 0.875134,
		0.294423, 0.916703, 0.270131,
		-0.830944, 0.385180, -0.401458,
		13.258916, 8.034983, 29.557003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630371, 8.280362, 30.374157>,  <13.840576, 7.765356, 29.838024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630371, 8.280362, 30.374157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.309333, 8.189718, 30.153437>,  <13.116710, 8.135332, 30.021004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.309333, 8.189718, 30.153437>,  <13.630371, 8.280362, 30.374157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309333, 8.189718, 30.153437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537926, -0.124870, 0.833693,
		-0.257827, 0.965948, -0.021680,
		-0.802596, -0.226611, -0.551803,
		13.068554, 8.121735, 29.987896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080159, 8.771328, 30.525515>,  <13.630371, 8.280362, 30.374157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080159, 8.771328, 30.525515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.919106, 8.442173, 30.365145>,  <12.822474, 8.244679, 30.268923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.919106, 8.442173, 30.365145>,  <13.080159, 8.771328, 30.525515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.919106, 8.442173, 30.365145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711682, 0.005964, 0.702477,
		-0.575669, 0.568172, -0.588036,
		-0.402634, -0.822888, -0.400924,
		12.798315, 8.195307, 30.244867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431138, 8.998811, 30.451897>,  <13.080159, 8.771328, 30.525515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431138, 8.998811, 30.451897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.424987, 8.598982, 30.441946>,  <12.421296, 8.359084, 30.435976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.424987, 8.598982, 30.441946>,  <12.431138, 8.998811, 30.451897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424987, 8.598982, 30.441946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717532, -0.006297, 0.696497,
		-0.696356, 0.028562, -0.717128,
		-0.015378, -0.999572, -0.024879,
		12.420374, 8.299110, 30.434483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729928, 8.922316, 30.352135>,  <12.431138, 8.998811, 30.451897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729928, 8.922316, 30.352135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.851299, 8.549298, 30.430412>,  <11.924122, 8.325488, 30.477379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.851299, 8.549298, 30.430412>,  <11.729928, 8.922316, 30.352135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.851299, 8.549298, 30.430412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694432, -0.075793, 0.715556,
		-0.652454, -0.353017, -0.670584,
		0.303428, -0.932542, 0.195695,
		11.942327, 8.269536, 30.489120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.234276, 8.454169, 30.305185>,  <11.729928, 8.922316, 30.352135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.234276, 8.454169, 30.305185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.484667, 8.263816, 30.552309>,  <11.634901, 8.149604, 30.700583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.484667, 8.263816, 30.552309>,  <11.234276, 8.454169, 30.305185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.484667, 8.263816, 30.552309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705798, -0.008788, 0.708359,
		-0.331668, -0.879463, -0.341380,
		0.625976, -0.475886, 0.617809,
		11.672460, 8.121051, 30.737652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.876183, 9.184930, 30.118074>,  <11.234276, 8.454169, 30.305185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.876183, 9.184930, 30.118074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.671837, 9.519535, 30.197336>,  <10.549230, 9.720298, 30.244894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.671837, 9.519535, 30.197336>,  <10.876183, 9.184930, 30.118074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.671837, 9.519535, 30.197336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170105, 0.324311, -0.930530,
		-0.842664, -0.441667, -0.307974,
		-0.510864, 0.836512, 0.198155,
		10.518578, 9.770489, 30.256783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.409102, 9.309560, 29.575397>,  <10.876183, 9.184930, 30.118074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.409102, 9.309560, 29.575397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.472764, 9.665793, 29.745823>,  <10.510961, 9.879534, 29.848078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.472764, 9.665793, 29.745823>,  <10.409102, 9.309560, 29.575397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472764, 9.665793, 29.745823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036240, 0.436542, -0.898954,
		-0.986589, 0.127630, 0.101752,
		0.159153, 0.890585, 0.426062,
		10.520510, 9.932969, 29.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.875787, 9.689531, 29.251356>,  <10.409102, 9.309560, 29.575397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.875787, 9.689531, 29.251356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.155014, 9.939317, 29.391497>,  <10.322550, 10.089188, 29.475582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.155014, 9.939317, 29.391497>,  <9.875787, 9.689531, 29.251356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.155014, 9.939317, 29.391497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065036, 0.542572, -0.837488,
		-0.713072, 0.561837, 0.419364,
		0.698067, 0.624463, 0.350353,
		10.364434, 10.126656, 29.496603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.706314, 10.343954, 29.011900>,  <9.875787, 9.689531, 29.251356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.706314, 10.343954, 29.011900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.077523, 10.420269, 29.139883>,  <10.300249, 10.466058, 29.216673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.077523, 10.420269, 29.139883>,  <9.706314, 10.343954, 29.011900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.077523, 10.420269, 29.139883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016388, 0.837156, -0.546719,
		-0.372161, 0.512612, 0.773773,
		0.928024, 0.190787, 0.319957,
		10.355930, 10.477505, 29.235870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.742030, 11.145269, 29.098696>,  <9.706314, 10.343954, 29.011900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.742030, 11.145269, 29.098696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.107345, 10.991309, 29.045391>,  <10.326533, 10.898932, 29.013409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.107345, 10.991309, 29.045391>,  <9.742030, 11.145269, 29.098696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.107345, 10.991309, 29.045391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149877, 0.621772, -0.768724,
		0.378740, 0.682093, 0.625544,
		0.913287, -0.384901, -0.133259,
		10.381330, 10.875839, 29.005413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.219080, 11.661109, 29.024366>,  <9.742030, 11.145269, 29.098696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.219080, 11.661109, 29.024366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.406375, 11.361431, 28.836979>,  <10.518752, 11.181624, 28.724546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.406375, 11.361431, 28.836979>,  <10.219080, 11.661109, 29.024366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406375, 11.361431, 28.836979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163758, 0.594572, -0.787190,
		0.868295, 0.291877, 0.401088,
		0.468238, -0.749195, -0.468467,
		10.546846, 11.136673, 28.696440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.949957, 11.890666, 28.739292>,  <10.219080, 11.661109, 29.024366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.949957, 11.890666, 28.739292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.842890, 11.560925, 28.539772>,  <10.778649, 11.363081, 28.420061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.842890, 11.560925, 28.539772>,  <10.949957, 11.890666, 28.739292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842890, 11.560925, 28.539772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037448, 0.508396, -0.860309,
		0.962783, -0.248956, -0.105211,
		-0.267668, -0.824351, -0.498798,
		10.762589, 11.313621, 28.390133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.745439, 12.200965, 28.589729>,  <10.949957, 11.890666, 28.739292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.745439, 12.200965, 28.589729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.780219, 12.574815, 28.727665>,  <11.801087, 12.799125, 28.810427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.780219, 12.574815, 28.727665>,  <11.745439, 12.200965, 28.589729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.780219, 12.574815, 28.727665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155380, -0.354639, 0.922002,
		0.984021, -0.026588, -0.176058,
		0.086951, 0.934625, 0.344840,
		11.806305, 12.855203, 28.831118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351346, 12.297156, 29.032784>,  <11.745439, 12.200965, 28.589729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351346, 12.297156, 29.032784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.098617, 12.582027, 29.155161>,  <11.946980, 12.752951, 29.228588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.098617, 12.582027, 29.155161>,  <12.351346, 12.297156, 29.032784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098617, 12.582027, 29.155161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036426, -0.366991, 0.929511,
		0.774256, 0.598430, 0.205932,
		-0.631823, 0.712178, 0.305944,
		11.909070, 12.795681, 29.246944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705950, 12.564184, 29.697252>,  <12.351346, 12.297156, 29.032784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705950, 12.564184, 29.697252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.315960, 12.652264, 29.685003>,  <12.081966, 12.705112, 29.677654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.315960, 12.652264, 29.685003>,  <12.705950, 12.564184, 29.697252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315960, 12.652264, 29.685003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066905, -0.159259, 0.984967,
		0.212012, 0.962366, 0.170005,
		-0.974974, 0.220199, -0.030622,
		12.023468, 12.718324, 29.675817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.595423, 13.164237, 30.136404>,  <12.705950, 12.564184, 29.697252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.595423, 13.164237, 30.136404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.242338, 12.979518, 30.101614>,  <12.030487, 12.868687, 30.080740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.242338, 12.979518, 30.101614>,  <12.595423, 13.164237, 30.136404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.242338, 12.979518, 30.101614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032698, -0.124275, 0.991709,
		-0.468777, 0.878236, 0.094599,
		-0.882711, -0.461797, -0.086974,
		11.977525, 12.840979, 30.075521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122519, 13.550879, 30.677143>,  <12.595423, 13.164237, 30.136404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122519, 13.550879, 30.677143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.947628, 13.205458, 30.576656>,  <11.842693, 12.998205, 30.516365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.947628, 13.205458, 30.576656>,  <12.122519, 13.550879, 30.677143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947628, 13.205458, 30.576656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032554, -0.294345, 0.955145,
		-0.898762, 0.409436, 0.156808,
		-0.437227, -0.863552, -0.251217,
		11.816460, 12.946392, 30.501291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.781395, 13.427568, 31.264490>,  <12.122519, 13.550879, 30.677143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.781395, 13.427568, 31.264490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.776998, 13.079198, 31.067974>,  <11.774359, 12.870175, 30.950064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.776998, 13.079198, 31.067974>,  <11.781395, 13.427568, 31.264490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776998, 13.079198, 31.067974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228094, -0.480551, 0.846784,
		-0.973577, -0.102751, 0.203936,
		-0.010994, -0.870926, -0.491291,
		11.773700, 12.817920, 30.920588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355194, 12.969423, 31.681824>,  <11.781395, 13.427568, 31.264490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355194, 12.969423, 31.681824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.574990, 12.720713, 31.458591>,  <11.706868, 12.571486, 31.324652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.574990, 12.720713, 31.458591>,  <11.355194, 12.969423, 31.681824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.574990, 12.720713, 31.458591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186454, -0.559855, 0.807339,
		-0.814429, -0.547682, -0.191702,
		0.549491, -0.621777, -0.558080,
		11.739838, 12.534180, 31.291168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.187994, 12.356592, 32.025280>,  <11.355194, 12.969423, 31.681824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.187994, 12.356592, 32.025280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.523061, 12.283578, 31.819368>,  <11.724101, 12.239769, 31.695822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.523061, 12.283578, 31.819368>,  <11.187994, 12.356592, 32.025280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.523061, 12.283578, 31.819368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358466, -0.527368, 0.770315,
		-0.412085, -0.829797, -0.376327,
		0.837668, -0.182535, -0.514775,
		11.774361, 12.228817, 31.664936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383125, 11.579318, 31.993193>,  <11.187994, 12.356592, 32.025280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383125, 11.579318, 31.993193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.707057, 11.813257, 31.974741>,  <11.901416, 11.953621, 31.963671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.707057, 11.813257, 31.974741>,  <11.383125, 11.579318, 31.993193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.707057, 11.813257, 31.974741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367123, -0.443876, 0.817432,
		0.457598, -0.678915, -0.574175,
		0.809829, 0.584849, -0.046129,
		11.950006, 11.988712, 31.960903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.000998, 15.833087, 16.114912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395233, 15.844240, 16.181654>,  <13.631774, 15.850932, 16.221699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395233, 15.844240, 16.181654>,  <13.000998, 15.833087, 16.114912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395233, 15.844240, 16.181654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149423, -0.318931, 0.935925,
		0.079312, -0.947368, -0.310168,
		0.985587, 0.027884, 0.166853,
		13.690909, 15.852605, 16.231710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289754, 15.115114, 16.297300>,  <13.000998, 15.833087, 16.114912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289754, 15.115114, 16.297300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.568933, 15.374221, 16.419460>,  <13.736441, 15.529685, 16.492756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.568933, 15.374221, 16.419460>,  <13.289754, 15.115114, 16.297300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.568933, 15.374221, 16.419460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058271, -0.373666, 0.925731,
		0.713774, -0.663908, -0.223054,
		0.697948, 0.647766, 0.305399,
		13.778317, 15.568550, 16.511080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708619, 14.768330, 16.695827>,  <13.289754, 15.115114, 16.297300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708619, 14.768330, 16.695827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.772584, 15.142241, 16.822708>,  <13.810963, 15.366588, 16.898836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.772584, 15.142241, 16.822708>,  <13.708619, 14.768330, 16.695827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772584, 15.142241, 16.822708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099349, -0.304465, 0.947328,
		0.982119, -0.183004, 0.044182,
		0.159913, 0.934778, 0.317202,
		13.820558, 15.422674, 16.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034147, 14.695618, 17.320250>,  <13.708619, 14.768330, 16.695827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034147, 14.695618, 17.320250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917345, 15.078149, 17.325491>,  <13.847263, 15.307668, 17.328636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917345, 15.078149, 17.325491>,  <14.034147, 14.695618, 17.320250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917345, 15.078149, 17.325491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109066, -0.046908, 0.992927,
		0.950178, 0.288511, 0.118000,
		-0.292006, 0.956327, 0.013104,
		13.829743, 15.365047, 17.329422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475587, 14.985983, 17.763426>,  <14.034147, 14.695618, 17.320250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475587, 14.985983, 17.763426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.137105, 15.198195, 17.743513>,  <13.934016, 15.325521, 17.731565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.137105, 15.198195, 17.743513>,  <14.475587, 14.985983, 17.763426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.137105, 15.198195, 17.743513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147328, -0.143160, 0.978673,
		0.512087, 0.835491, 0.199304,
		-0.846204, 0.530529, -0.049780,
		13.883244, 15.357353, 17.728579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489910, 15.487350, 18.287285>,  <14.475587, 14.985983, 17.763426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489910, 15.487350, 18.287285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.098423, 15.490997, 18.205282>,  <13.863531, 15.493186, 18.156080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.098423, 15.490997, 18.205282>,  <14.489910, 15.487350, 18.287285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098423, 15.490997, 18.205282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205078, -0.079448, 0.975516,
		-0.007391, 0.996797, 0.079627,
		-0.978718, 0.009120, -0.205009,
		13.804808, 15.493733, 18.143780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285131, 15.765989, 18.805733>,  <14.489910, 15.487350, 18.287285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285131, 15.765989, 18.805733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943715, 15.619677, 18.657316>,  <13.738865, 15.531889, 18.568266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943715, 15.619677, 18.657316>,  <14.285131, 15.765989, 18.805733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943715, 15.619677, 18.657316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369208, -0.077858, 0.926080,
		-0.367630, 0.927439, -0.068595,
		-0.853542, -0.365781, -0.371041,
		13.687653, 15.509942, 18.546003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766542, 16.083174, 19.296404>,  <14.285131, 15.765989, 18.805733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766542, 16.083174, 19.296404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595062, 15.774831, 19.107939>,  <13.492174, 15.589825, 18.994860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595062, 15.774831, 19.107939>,  <13.766542, 16.083174, 19.296404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595062, 15.774831, 19.107939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446424, -0.272651, 0.852272,
		-0.785444, 0.575707, -0.227244,
		-0.428700, -0.770859, -0.471161,
		13.466453, 15.543573, 18.966591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.108515, 16.121115, 19.454397>,  <13.766542, 16.083174, 19.296404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.108515, 16.121115, 19.454397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200867, 15.744257, 19.357191>,  <13.256278, 15.518142, 19.298868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200867, 15.744257, 19.357191>,  <13.108515, 16.121115, 19.454397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200867, 15.744257, 19.357191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389550, -0.318379, 0.864226,
		-0.891597, -0.104867, -0.440520,
		0.230880, -0.942145, -0.243015,
		13.270131, 15.461614, 19.284286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510655, 15.723545, 19.671915>,  <13.108515, 16.121115, 19.454397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510655, 15.723545, 19.671915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805023, 15.455746, 19.631527>,  <12.981644, 15.295066, 19.607294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805023, 15.455746, 19.631527>,  <12.510655, 15.723545, 19.671915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805023, 15.455746, 19.631527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168850, -0.325893, 0.930206,
		-0.655677, -0.667507, -0.352876,
		0.735919, -0.669498, -0.100971,
		13.025799, 15.254896, 19.601236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171227, 15.054359, 19.831966>,  <12.510655, 15.723545, 19.671915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171227, 15.054359, 19.831966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558366, 14.976089, 19.895191>,  <12.790649, 14.929126, 19.933126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558366, 14.976089, 19.895191>,  <12.171227, 15.054359, 19.831966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558366, 14.976089, 19.895191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214731, -0.315433, 0.924334,
		-0.131010, -0.928554, -0.347308,
		0.967847, -0.195675, 0.158064,
		12.848720, 14.917386, 19.942610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.296093, 14.371853, 20.151884>,  <12.171227, 15.054359, 19.831966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.296093, 14.371853, 20.151884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632620, 14.573415, 20.230129>,  <12.834537, 14.694352, 20.277077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632620, 14.573415, 20.230129>,  <12.296093, 14.371853, 20.151884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632620, 14.573415, 20.230129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014582, -0.382911, 0.923670,
		0.540345, -0.774247, -0.329498,
		0.841317, 0.503905, 0.195614,
		12.885015, 14.724586, 20.288813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.186686, 13.615802, 19.856041>,  <12.296093, 14.371853, 20.151884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.186686, 13.615802, 19.856041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832133, 13.430953, 19.844940>,  <11.619402, 13.320044, 19.838280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832133, 13.430953, 19.844940>,  <12.186686, 13.615802, 19.856041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832133, 13.430953, 19.844940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183308, -0.295283, -0.937660,
		0.425119, -0.836212, 0.346444,
		-0.886382, -0.462122, -0.027754,
		11.566218, 13.292316, 19.836615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.328119, 12.956606, 19.755798>,  <12.186686, 13.615802, 19.856041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.328119, 12.956606, 19.755798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955804, 13.005664, 19.618050>,  <11.732415, 13.035099, 19.535400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955804, 13.005664, 19.618050>,  <12.328119, 12.956606, 19.755798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955804, 13.005664, 19.618050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287131, -0.337767, -0.896364,
		-0.226252, -0.933205, 0.279174,
		-0.930788, 0.122645, -0.344373,
		11.676568, 13.042458, 19.514738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.330066, 12.475577, 19.245436>,  <12.328119, 12.956606, 19.755798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.330066, 12.475577, 19.245436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.018411, 12.707930, 19.151182>,  <11.831418, 12.847341, 19.094631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.018411, 12.707930, 19.151182>,  <12.330066, 12.475577, 19.245436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.018411, 12.707930, 19.151182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270458, -0.027600, -0.962336,
		-0.565506, -0.813521, -0.135600,
		-0.779138, 0.580880, -0.235632,
		11.784669, 12.882194, 19.080492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.940056, 12.127649, 18.779795>,  <12.330066, 12.475577, 19.245436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.940056, 12.127649, 18.779795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.840293, 12.509851, 18.716795>,  <11.780436, 12.739173, 18.678995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.840293, 12.509851, 18.716795>,  <11.940056, 12.127649, 18.779795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.840293, 12.509851, 18.716795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334516, -0.067619, -0.939961,
		-0.908788, -0.287118, -0.302767,
		-0.249407, 0.955506, -0.157497,
		11.765471, 12.796503, 18.669546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542336, 12.147726, 18.161461>,  <11.940056, 12.127649, 18.779795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542336, 12.147726, 18.161461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654753, 12.530022, 18.196285>,  <11.722202, 12.759398, 18.217180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654753, 12.530022, 18.196285>,  <11.542336, 12.147726, 18.161461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654753, 12.530022, 18.196285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212331, 0.026547, -0.976837,
		-0.935912, 0.293018, -0.195472,
		0.281042, 0.955738, 0.087063,
		11.739065, 12.816743, 18.222404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407738, 12.470691, 17.503946>,  <11.542336, 12.147726, 18.161461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407738, 12.470691, 17.503946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.680576, 12.724414, 17.649492>,  <11.844279, 12.876648, 17.736820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.680576, 12.724414, 17.649492>,  <11.407738, 12.470691, 17.503946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680576, 12.724414, 17.649492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287614, 0.224776, -0.930996,
		-0.672327, 0.739682, -0.029117,
		0.682096, 0.634308, 0.363866,
		11.885205, 12.914706, 17.758652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.189297, 13.177983, 17.215546>,  <11.407738, 12.470691, 17.503946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.189297, 13.177983, 17.215546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578170, 13.159866, 17.307467>,  <11.811494, 13.148996, 17.362619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578170, 13.159866, 17.307467>,  <11.189297, 13.177983, 17.215546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.578170, 13.159866, 17.307467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234017, 0.229085, -0.944858,
		-0.009848, 0.972352, 0.233312,
		0.972183, -0.045294, 0.229803,
		11.869824, 13.146278, 17.376408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464067, 13.726453, 16.892200>,  <11.189297, 13.177983, 17.215546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464067, 13.726453, 16.892200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.794111, 13.510885, 16.960037>,  <11.992138, 13.381545, 17.000738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.794111, 13.510885, 16.960037>,  <11.464067, 13.726453, 16.892200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.794111, 13.510885, 16.960037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191628, -0.015426, -0.981346,
		0.531482, 0.842217, 0.090543,
		0.825110, -0.538918, 0.169591,
		12.041644, 13.349210, 17.010914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983046, 13.919040, 16.433464>,  <11.464067, 13.726453, 16.892200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983046, 13.919040, 16.433464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.125421, 13.557508, 16.528458>,  <12.210846, 13.340589, 16.585453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.125421, 13.557508, 16.528458>,  <11.983046, 13.919040, 16.433464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.125421, 13.557508, 16.528458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286797, -0.136212, -0.948258,
		0.889413, 0.405631, 0.210733,
		0.355939, -0.903831, 0.237483,
		12.232203, 13.286358, 16.599703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.654000, 13.932547, 16.263699>,  <11.983046, 13.919040, 16.433464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.654000, 13.932547, 16.263699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512733, 13.558333, 16.266460>,  <12.427972, 13.333805, 16.268118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512733, 13.558333, 16.266460>,  <12.654000, 13.932547, 16.263699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.512733, 13.558333, 16.266460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272156, -0.109797, -0.955968,
		0.895099, -0.335739, 0.293388,
		-0.353169, -0.935534, 0.006906,
		12.406782, 13.277673, 16.268532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092902, 13.584202, 15.788571>,  <12.654000, 13.932547, 16.263699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092902, 13.584202, 15.788571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789661, 13.326338, 15.827956>,  <12.607718, 13.171619, 15.851587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789661, 13.326338, 15.827956>,  <13.092902, 13.584202, 15.788571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789661, 13.326338, 15.827956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070202, -0.230781, -0.970470,
		0.648347, -0.728802, 0.220212,
		-0.758101, -0.644661, 0.098463,
		12.562231, 13.132939, 15.857495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318357, 12.861733, 15.623339>,  <13.092902, 13.584202, 15.788571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318357, 12.861733, 15.623339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.928892, 12.883836, 15.534859>,  <12.695213, 12.897098, 15.481771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.928892, 12.883836, 15.534859>,  <13.318357, 12.861733, 15.623339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.928892, 12.883836, 15.534859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209898, -0.161602, -0.964276,
		-0.089026, -0.985308, 0.145748,
		-0.973662, 0.055254, -0.221201,
		12.636794, 12.900413, 15.468498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.937486, 12.229226, 15.333744>,  <13.318357, 12.861733, 15.623339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.937486, 12.229226, 15.333744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808641, 12.584617, 15.202991>,  <12.731335, 12.797852, 15.124538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808641, 12.584617, 15.202991>,  <12.937486, 12.229226, 15.333744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808641, 12.584617, 15.202991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358387, -0.205150, -0.910753,
		-0.876244, -0.410514, -0.252338,
		-0.322110, 0.888477, -0.326885,
		12.712008, 12.851160, 15.104925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676266, 11.665236, 15.663538>,  <12.937486, 12.229226, 15.333744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.676266, 11.665236, 15.663538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845056, 11.638760, 15.301863>,  <12.946330, 11.622874, 15.084858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845056, 11.638760, 15.301863>,  <12.676266, 11.665236, 15.663538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845056, 11.638760, 15.301863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307654, -0.927696, 0.211491,
		-0.852810, -0.367421, -0.371102,
		0.421976, -0.066191, -0.904187,
		12.971648, 11.618902, 15.030606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703916, 10.939507, 15.500981>,  <12.676266, 11.665236, 15.663538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703916, 10.939507, 15.500981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968323, 11.069930, 15.230650>,  <13.126967, 11.148184, 15.068451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968323, 11.069930, 15.230650>,  <12.703916, 10.939507, 15.500981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.968323, 11.069930, 15.230650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415998, -0.908817, -0.031581,
		-0.624500, -0.260267, -0.736383,
		0.661018, 0.326056, -0.675828,
		13.166628, 11.167747, 15.027902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221033, 10.886666, 15.942222>,  <12.703916, 10.939507, 15.500981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221033, 10.886666, 15.942222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577676, 10.707794, 15.913748>,  <13.791661, 10.600471, 15.896664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577676, 10.707794, 15.913748>,  <13.221033, 10.886666, 15.942222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577676, 10.707794, 15.913748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016633, -0.189442, 0.981751,
		-0.452507, -0.874151, -0.176346,
		0.891606, -0.447182, -0.071184,
		13.845158, 10.573640, 15.892393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198930, 10.308362, 16.144642>,  <13.221033, 10.886666, 15.942222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198930, 10.308362, 16.144642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577160, 10.402307, 16.234734>,  <13.804098, 10.458673, 16.288788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.577160, 10.402307, 16.234734>,  <13.198930, 10.308362, 16.144642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577160, 10.402307, 16.234734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128133, -0.367499, 0.921155,
		0.299116, -0.899880, -0.317404,
		0.945575, 0.234862, 0.225229,
		13.860832, 10.472765, 16.302301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.517256, 9.669053, 16.400162>,  <13.198930, 10.308362, 16.144642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.517256, 9.669053, 16.400162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703791, 9.996108, 16.535217>,  <13.815712, 10.192341, 16.616251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703791, 9.996108, 16.535217>,  <13.517256, 9.669053, 16.400162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703791, 9.996108, 16.535217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168920, -0.292349, 0.941275,
		0.868329, -0.495985, 0.001782,
		0.466337, 0.817637, 0.337637,
		13.843692, 10.241399, 16.636509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.168639, 9.577834, 16.886770>,  <13.517256, 9.669053, 16.400162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.168639, 9.577834, 16.886770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984527, 9.924890, 16.961973>,  <13.874059, 10.133122, 17.007095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984527, 9.924890, 16.961973>,  <14.168639, 9.577834, 16.886770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984527, 9.924890, 16.961973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069643, -0.246409, 0.966660,
		0.885037, 0.431842, 0.173842,
		-0.460281, 0.867638, 0.188006,
		13.846442, 10.185181, 17.018375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.604504, 9.852654, 17.390644>,  <14.168639, 9.577834, 16.886770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.604504, 9.852654, 17.390644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262082, 10.057580, 17.418074>,  <14.056629, 10.180536, 17.434530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.262082, 10.057580, 17.418074>,  <14.604504, 9.852654, 17.390644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262082, 10.057580, 17.418074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041611, -0.063927, 0.997087,
		0.515208, 0.856414, 0.033407,
		-0.856054, 0.512317, 0.068572,
		14.005266, 10.211275, 17.438644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.726385, 10.046830, 17.922884>,  <14.604504, 9.852654, 17.390644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.726385, 10.046830, 17.922884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333065, 10.119400, 17.917156>,  <14.097073, 10.162942, 17.913719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333065, 10.119400, 17.917156>,  <14.726385, 10.046830, 17.922884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333065, 10.119400, 17.917156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043281, -0.156700, 0.986697,
		0.176766, 0.970840, 0.161936,
		-0.983301, 0.181424, -0.014320,
		14.038074, 10.173827, 17.912861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.466025, 10.561940, 18.505226>,  <14.726385, 10.046830, 17.922884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.466025, 10.561940, 18.505226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139345, 10.360417, 18.392670>,  <13.943337, 10.239504, 18.325136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139345, 10.360417, 18.392670>,  <14.466025, 10.561940, 18.505226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139345, 10.360417, 18.392670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131401, -0.312456, 0.940800,
		-0.561903, 0.805326, 0.188982,
		-0.816700, -0.503806, -0.281391,
		13.894335, 10.209275, 18.308252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016836, 10.781378, 19.097273>,  <14.466025, 10.561940, 18.505226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016836, 10.781378, 19.097273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862507, 10.456330, 18.922554>,  <13.769909, 10.261302, 18.817722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862507, 10.456330, 18.922554>,  <14.016836, 10.781378, 19.097273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862507, 10.456330, 18.922554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203493, -0.386834, 0.899417,
		-0.899850, 0.435901, -0.016112,
		-0.385824, -0.812619, -0.436795,
		13.746759, 10.212544, 18.791515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.342519, 10.718625, 19.387110>,  <14.016836, 10.781378, 19.097273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.342519, 10.718625, 19.387110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.482162, 10.369521, 19.250631>,  <13.565948, 10.160059, 19.168743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.482162, 10.369521, 19.250631>,  <13.342519, 10.718625, 19.387110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482162, 10.369521, 19.250631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041542, -0.378162, 0.924807,
		-0.936161, -0.308684, -0.168275,
		0.349108, -0.872759, -0.341197,
		13.586895, 10.107694, 19.148272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.083967, 10.341277, 19.891823>,  <13.342519, 10.718625, 19.387110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.083967, 10.341277, 19.891823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326106, 10.085008, 19.702892>,  <13.471389, 9.931246, 19.589533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326106, 10.085008, 19.702892>,  <13.083967, 10.341277, 19.891823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326106, 10.085008, 19.702892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006443, -0.589441, 0.807786,
		-0.795936, -0.492033, -0.352688,
		0.605346, -0.640674, -0.472328,
		13.507710, 9.892805, 19.561193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.844349, 9.690862, 19.822441>,  <13.083967, 10.341277, 19.891823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.844349, 9.690862, 19.822441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.239042, 9.634791, 19.789679>,  <13.475858, 9.601150, 19.770021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.239042, 9.634791, 19.789679>,  <12.844349, 9.690862, 19.822441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.239042, 9.634791, 19.789679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044495, -0.718685, 0.693911,
		-0.156135, -0.681061, -0.715387,
		0.986733, -0.140175, -0.081908,
		13.535062, 9.592739, 19.765106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900229, 8.932146, 19.772137>,  <12.844349, 9.690862, 19.822441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900229, 8.932146, 19.772137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250220, 9.093746, 19.878868>,  <13.460216, 9.190706, 19.942907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250220, 9.093746, 19.878868>,  <12.900229, 8.932146, 19.772137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250220, 9.093746, 19.878868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059138, -0.636167, 0.769282,
		0.480537, -0.657325, -0.580524,
		0.874979, 0.403999, 0.266829,
		13.512713, 9.214946, 19.958916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301344, 8.340247, 19.908703>,  <12.900229, 8.932146, 19.772137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301344, 8.340247, 19.908703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.472638, 8.646011, 20.101488>,  <13.575415, 8.829470, 20.217159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.472638, 8.646011, 20.101488>,  <13.301344, 8.340247, 19.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.472638, 8.646011, 20.101488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322280, -0.627463, 0.708821,
		0.844245, -0.148215, -0.515056,
		0.428236, 0.764411, 0.481966,
		13.601109, 8.875335, 20.246078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872913, 8.032046, 20.162453>,  <13.301344, 8.340247, 19.908703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872913, 8.032046, 20.162453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800693, 8.352530, 20.390652>,  <13.757360, 8.544820, 20.527571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800693, 8.352530, 20.390652>,  <13.872913, 8.032046, 20.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800693, 8.352530, 20.390652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176692, -0.544171, 0.820158,
		0.967564, 0.248883, -0.043316,
		-0.180552, 0.801209, 0.570496,
		13.746527, 8.592893, 20.561800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210073, 7.828186, 20.728157>,  <13.872913, 8.032046, 20.162453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210073, 7.828186, 20.728157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997806, 8.143373, 20.853054>,  <13.870445, 8.332486, 20.927992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997806, 8.143373, 20.853054>,  <14.210073, 7.828186, 20.728157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997806, 8.143373, 20.853054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055848, -0.335087, 0.940530,
		0.845738, 0.516547, 0.133813,
		-0.530667, 0.787970, 0.312244,
		13.838606, 8.379765, 20.946728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555381, 8.246909, 21.340736>,  <14.210073, 7.828186, 20.728157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555381, 8.246909, 21.340736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157316, 8.285723, 21.334557>,  <13.918478, 8.309011, 21.330849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157316, 8.285723, 21.334557>,  <14.555381, 8.246909, 21.340736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.157316, 8.285723, 21.334557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025156, -0.099633, 0.994706,
		0.094982, 0.990282, 0.101592,
		-0.995161, 0.097035, -0.015448,
		13.858768, 8.314833, 21.329922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462912, 8.636580, 21.974058>,  <14.555381, 8.246909, 21.340736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462912, 8.636580, 21.974058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093181, 8.518440, 21.877403>,  <13.871342, 8.447556, 21.819410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093181, 8.518440, 21.877403>,  <14.462912, 8.636580, 21.974058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093181, 8.518440, 21.877403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208971, -0.138068, 0.968126,
		-0.319297, 0.945360, 0.065901,
		-0.924327, -0.295348, -0.241637,
		13.815883, 8.429835, 21.804913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143771, 9.229183, 22.355097>,  <14.462912, 8.636580, 21.974058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143771, 9.229183, 22.355097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899458, 8.916694, 22.303507>,  <13.752870, 8.729200, 22.272552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899458, 8.916694, 22.303507>,  <14.143771, 9.229183, 22.355097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899458, 8.916694, 22.303507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148754, -0.046773, 0.987767,
		-0.777699, 0.622497, -0.087642,
		-0.610783, -0.781223, -0.128974,
		13.716223, 8.682326, 22.264814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525484, 9.388946, 22.745205>,  <14.143771, 9.229183, 22.355097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525484, 9.388946, 22.745205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512362, 8.992540, 22.693333>,  <13.504489, 8.754697, 22.662209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.512362, 8.992540, 22.693333>,  <13.525484, 9.388946, 22.745205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.512362, 8.992540, 22.693333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198118, -0.120729, 0.972715,
		-0.979629, 0.057602, -0.192377,
		-0.032805, -0.991013, -0.129682,
		13.502521, 8.695236, 22.654428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.015217, 9.203772, 23.091326>,  <13.525484, 9.388946, 22.745205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.015217, 9.203772, 23.091326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206455, 8.853447, 23.064859>,  <13.321198, 8.643252, 23.048981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206455, 8.853447, 23.064859>,  <13.015217, 9.203772, 23.091326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206455, 8.853447, 23.064859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011829, -0.068904, 0.997553,
		-0.878228, -0.477709, -0.022583,
		0.478097, -0.875812, -0.066165,
		13.349884, 8.590704, 23.045010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716890, 8.677714, 23.595375>,  <13.015217, 9.203772, 23.091326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716890, 8.677714, 23.595375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086098, 8.545131, 23.517223>,  <13.307622, 8.465580, 23.470333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086098, 8.545131, 23.517223>,  <12.716890, 8.677714, 23.595375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.086098, 8.545131, 23.517223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167661, -0.110555, 0.979626,
		-0.346307, -0.936969, -0.046471,
		0.923017, -0.331460, -0.195379,
		13.363003, 8.445693, 23.458611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780819, 8.179683, 24.026047>,  <12.716890, 8.677714, 23.595375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780819, 8.179683, 24.026047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165136, 8.254170, 23.943876>,  <13.395726, 8.298862, 23.894573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165136, 8.254170, 23.943876>,  <12.780819, 8.179683, 24.026047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.165136, 8.254170, 23.943876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238278, -0.175699, 0.955172,
		0.141778, -0.966671, -0.213183,
		0.960793, 0.186219, -0.205426,
		13.453374, 8.310036, 23.882248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075195, 7.763976, 24.443842>,  <12.780819, 8.179683, 24.026047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075195, 7.763976, 24.443842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.366288, 8.017391, 24.338745>,  <13.540944, 8.169440, 24.275688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.366288, 8.017391, 24.338745>,  <13.075195, 7.763976, 24.443842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.366288, 8.017391, 24.338745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363206, -0.031023, 0.931192,
		0.581795, -0.773089, -0.252682,
		0.727733, 0.633539, -0.262741,
		13.584608, 8.207453, 24.259922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.712103, 7.479898, 24.602322>,  <13.075195, 7.763976, 24.443842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.712103, 7.479898, 24.602322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801147, 7.869428, 24.583948>,  <13.854573, 8.103147, 24.572924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.801147, 7.869428, 24.583948>,  <13.712103, 7.479898, 24.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801147, 7.869428, 24.583948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267318, -0.015662, 0.963481,
		0.937542, -0.226759, -0.263808,
		0.222610, 0.973825, -0.045933,
		13.867929, 8.161575, 24.570168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.359637, 7.575462, 24.847496>,  <13.712103, 7.479898, 24.602322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.359637, 7.575462, 24.847496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.199836, 7.939279, 24.893333>,  <14.103954, 8.157568, 24.920835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.199836, 7.939279, 24.893333>,  <14.359637, 7.575462, 24.847496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.199836, 7.939279, 24.893333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287265, 0.005498, 0.957835,
		0.870560, 0.415578, -0.263476,
		-0.399504, 0.909541, 0.114595,
		14.079985, 8.212141, 24.927711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822497, 7.897161, 25.287233>,  <14.359637, 7.575462, 24.847496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822497, 7.897161, 25.287233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490248, 8.115071, 25.333330>,  <14.290897, 8.245817, 25.360989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490248, 8.115071, 25.333330>,  <14.822497, 7.897161, 25.287233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490248, 8.115071, 25.333330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234999, 0.155328, 0.959504,
		0.504814, 0.824071, -0.257041,
		-0.830625, 0.544776, 0.115244,
		14.241060, 8.278504, 25.367903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018357, 8.485679, 25.741028>,  <14.822497, 7.897161, 25.287233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018357, 8.485679, 25.741028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620374, 8.452989, 25.764275>,  <14.381583, 8.433374, 25.778223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620374, 8.452989, 25.764275>,  <15.018357, 8.485679, 25.741028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620374, 8.452989, 25.764275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045017, 0.153853, 0.987068,
		-0.089610, 0.984708, -0.149399,
		-0.994959, -0.081725, 0.058115,
		14.321886, 8.428471, 25.781710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
