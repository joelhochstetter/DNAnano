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
	<24.229826, 35.090889, 34.987774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591089, 35.183582, 34.843216>,  <24.807846, 35.239197, 34.756481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591089, 35.183582, 34.843216>,  <24.229826, 35.090889, 34.987774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591089, 35.183582, 34.843216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135703, 0.644551, 0.752421,
		0.407298, -0.728598, 0.550684,
		0.903157, 0.231730, -0.361398,
		24.862036, 35.253101, 34.734795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782146, 35.186985, 35.545502>,  <24.229826, 35.090889, 34.987774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782146, 35.186985, 35.545502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933470, 35.410469, 35.250278>,  <25.024263, 35.544559, 35.073143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933470, 35.410469, 35.250278>,  <24.782146, 35.186985, 35.545502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933470, 35.410469, 35.250278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301539, 0.679446, 0.668900,
		0.875190, -0.475604, 0.088569,
		0.378309, 0.558708, -0.738057,
		25.046963, 35.578083, 35.028862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396965, 35.256184, 35.710087>,  <24.782146, 35.186985, 35.545502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396965, 35.256184, 35.710087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304914, 35.560181, 35.466957>,  <25.249683, 35.742580, 35.321079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304914, 35.560181, 35.466957>,  <25.396965, 35.256184, 35.710087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304914, 35.560181, 35.466957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460771, 0.635235, 0.619812,
		0.857165, -0.137433, -0.496367,
		-0.230127, 0.759993, -0.607826,
		25.235876, 35.788177, 35.284611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086136, 35.635269, 35.643764>,  <25.396965, 35.256184, 35.710087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086136, 35.635269, 35.643764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797796, 35.883293, 35.519894>,  <25.624792, 36.032108, 35.445572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797796, 35.883293, 35.519894>,  <26.086136, 35.635269, 35.643764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797796, 35.883293, 35.519894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299757, 0.681773, 0.667331,
		0.624917, 0.388216, -0.677323,
		-0.720850, 0.620059, -0.309681,
		25.581541, 36.069309, 35.426991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312300, 35.121502, 35.340954>,  <26.086136, 35.635269, 35.643764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312300, 35.121502, 35.340954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487823, 35.474094, 35.410732>,  <26.593138, 35.685650, 35.452599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487823, 35.474094, 35.410732>,  <26.312300, 35.121502, 35.340954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487823, 35.474094, 35.410732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321716, -0.027154, 0.946446,
		0.839014, -0.471434, 0.271672,
		0.438810, 0.881483, 0.174450,
		26.619467, 35.738541, 35.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656979, 35.101002, 35.934265>,  <26.312300, 35.121502, 35.340954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656979, 35.101002, 35.934265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615911, 35.496025, 35.886616>,  <26.591270, 35.733040, 35.858025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615911, 35.496025, 35.886616>,  <26.656979, 35.101002, 35.934265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615911, 35.496025, 35.886616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022938, 0.122079, 0.992255,
		0.994451, 0.099140, -0.035187,
		-0.102668, 0.987557, -0.119127,
		26.585112, 35.792294, 35.850876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073803, 35.104595, 36.417854>,  <26.656979, 35.101002, 35.934265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073803, 35.104595, 36.417854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912071, 35.227825, 36.762321>,  <25.815031, 35.301765, 36.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912071, 35.227825, 36.762321>,  <26.073803, 35.104595, 36.417854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912071, 35.227825, 36.762321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571968, -0.649558, 0.500926,
		0.713701, 0.695098, 0.086425,
		-0.404330, 0.308079, 0.861165,
		25.790771, 35.320248, 37.020672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624596, 35.260456, 36.936737>,  <26.073803, 35.104595, 36.417854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624596, 35.260456, 36.936737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273174, 35.132767, 37.078857>,  <26.062321, 35.056152, 37.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273174, 35.132767, 37.078857>,  <26.624596, 35.260456, 36.936737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273174, 35.132767, 37.078857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470379, -0.707461, 0.527486,
		0.082978, 0.630553, 0.771698,
		-0.878554, -0.319221, 0.355303,
		26.009607, 35.036999, 37.185448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735157, 35.029686, 37.585144>,  <26.624596, 35.260456, 36.936737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735157, 35.029686, 37.585144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386606, 34.843884, 37.521984>,  <26.177475, 34.732403, 37.484089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386606, 34.843884, 37.521984>,  <26.735157, 35.029686, 37.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386606, 34.843884, 37.521984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436964, -0.881136, 0.180725,
		-0.223081, 0.088482, 0.970776,
		-0.871377, -0.464511, -0.157901,
		26.125193, 34.704529, 37.474613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501312, 34.555664, 38.147587>,  <26.735157, 35.029686, 37.585144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501312, 34.555664, 38.147587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265028, 34.402817, 37.863319>,  <26.123259, 34.311108, 37.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265028, 34.402817, 37.863319>,  <26.501312, 34.555664, 38.147587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265028, 34.402817, 37.863319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166288, -0.919498, 0.356190,
		-0.789564, 0.092229, 0.606698,
		-0.590709, -0.382122, -0.710666,
		26.087816, 34.288181, 37.650120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196074, 34.138195, 38.501472>,  <26.501312, 34.555664, 38.147587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196074, 34.138195, 38.501472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130730, 34.024670, 38.123528>,  <26.091522, 33.956554, 37.896759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130730, 34.024670, 38.123528>,  <26.196074, 34.138195, 38.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130730, 34.024670, 38.123528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290281, -0.929161, 0.228905,
		-0.942894, -0.236881, 0.234174,
		-0.163362, -0.283810, -0.944862,
		26.081720, 33.939526, 37.840069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763847, 33.513973, 38.394962>,  <26.196074, 34.138195, 38.501472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763847, 33.513973, 38.394962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027149, 33.532734, 38.094429>,  <26.185131, 33.543991, 37.914108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027149, 33.532734, 38.094429>,  <25.763847, 33.513973, 38.394962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027149, 33.532734, 38.094429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375243, -0.885669, 0.273464,
		-0.652604, -0.461941, -0.600599,
		0.658256, 0.046906, -0.751332,
		26.224627, 33.546806, 37.869030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687052, 32.925728, 37.930782>,  <25.763847, 33.513973, 38.394962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687052, 32.925728, 37.930782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059855, 33.070648, 37.934776>,  <26.283537, 33.157600, 37.937172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059855, 33.070648, 37.934776>,  <25.687052, 32.925728, 37.930782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059855, 33.070648, 37.934776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356133, -0.920571, 0.160369,
		0.067292, -0.145910, -0.987007,
		0.932009, 0.362297, 0.009984,
		26.339457, 33.179337, 37.937771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065495, 32.413647, 37.418331>,  <25.687052, 32.925728, 37.930782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065495, 32.413647, 37.418331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693277, 32.429630, 37.272732>,  <25.469948, 32.439220, 37.185371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693277, 32.429630, 37.272732>,  <26.065495, 32.413647, 37.418331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693277, 32.429630, 37.272732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096364, 0.985712, -0.138151,
		0.353275, -0.163632, -0.921098,
		-0.930543, 0.039955, -0.363996,
		25.414114, 32.441616, 37.163532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062994, 32.624794, 36.614220>,  <26.065495, 32.413647, 37.418331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062994, 32.624794, 36.614220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760473, 32.753059, 36.842319>,  <25.578960, 32.830017, 36.979179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760473, 32.753059, 36.842319>,  <26.062994, 32.624794, 36.614220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760473, 32.753059, 36.842319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102898, 0.919096, -0.380360,
		-0.646079, -0.228990, -0.728111,
		-0.756303, 0.320664, 0.570246,
		25.533583, 32.849258, 37.013393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400282, 33.168217, 36.786354>,  <26.062994, 32.624794, 36.614220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400282, 33.168217, 36.786354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227522, 33.254959, 37.136539>,  <26.123865, 33.307003, 37.346649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227522, 33.254959, 37.136539>,  <26.400282, 33.168217, 36.786354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227522, 33.254959, 37.136539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014190, 0.968912, -0.247000,
		-0.901810, -0.119102, -0.415396,
		-0.431900, 0.216853, 0.875464,
		26.097952, 33.320015, 37.399178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896185, 33.656528, 36.553562>,  <26.400282, 33.168217, 36.786354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896185, 33.656528, 36.553562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938284, 33.707455, 36.948067>,  <25.963543, 33.738010, 37.184769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938284, 33.707455, 36.948067>,  <25.896185, 33.656528, 36.553562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938284, 33.707455, 36.948067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388941, 0.918039, -0.077004,
		-0.915231, -0.375493, 0.146140,
		0.105248, 0.127317, 0.986262,
		25.969858, 33.745651, 37.243946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300940, 33.837929, 36.795628>,  <25.896185, 33.656528, 36.553562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300940, 33.837929, 36.795628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559395, 33.992435, 37.058933>,  <25.714468, 34.085140, 37.216915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559395, 33.992435, 37.058933>,  <25.300940, 33.837929, 36.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559395, 33.992435, 37.058933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375843, 0.911685, -0.166051,
		-0.664265, -0.140110, 0.734248,
		0.646138, 0.386264, 0.658260,
		25.753237, 34.108315, 37.256413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914911, 34.240154, 37.253616>,  <25.300940, 33.837929, 36.795628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914911, 34.240154, 37.253616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281214, 34.384670, 37.323879>,  <25.500996, 34.471382, 37.366035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281214, 34.384670, 37.323879>,  <24.914911, 34.240154, 37.253616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281214, 34.384670, 37.323879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339216, 0.929666, -0.143712,
		-0.215222, 0.072021, 0.973906,
		0.915758, 0.361295, 0.175655,
		25.555941, 34.493057, 37.376575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898951, 34.731895, 37.803703>,  <24.914911, 34.240154, 37.253616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898951, 34.731895, 37.803703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213549, 34.790722, 37.563770>,  <25.402308, 34.826019, 37.419811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213549, 34.790722, 37.563770>,  <24.898951, 34.731895, 37.803703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213549, 34.790722, 37.563770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244597, 0.965991, -0.083869,
		0.567099, 0.212680, 0.795718,
		0.786493, 0.147069, -0.599833,
		25.449497, 34.834843, 37.383820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992142, 35.363560, 37.902046>,  <24.898951, 34.731895, 37.803703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992142, 35.363560, 37.902046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176706, 35.283882, 37.556232>,  <25.287445, 35.236076, 37.348743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176706, 35.283882, 37.556232>,  <24.992142, 35.363560, 37.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176706, 35.283882, 37.556232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362220, 0.847254, -0.388533,
		0.809875, 0.492424, 0.318779,
		0.461410, -0.199196, -0.864536,
		25.315128, 35.224125, 37.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348524, 36.048473, 37.802666>,  <24.992142, 35.363560, 37.902046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348524, 36.048473, 37.802666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301012, 35.883339, 37.441456>,  <25.272505, 35.784260, 37.224728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301012, 35.883339, 37.441456>,  <25.348524, 36.048473, 37.802666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301012, 35.883339, 37.441456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201704, 0.900535, -0.385164,
		0.972218, 0.136395, -0.190234,
		-0.118778, -0.412834, -0.903028,
		25.265379, 35.759487, 37.170547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706522, 36.414433, 37.135624>,  <25.348524, 36.048473, 37.802666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706522, 36.414433, 37.135624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372982, 36.232635, 37.010323>,  <25.172857, 36.123558, 36.935143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372982, 36.232635, 37.010323>,  <25.706522, 36.414433, 37.135624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372982, 36.232635, 37.010323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197216, 0.775339, -0.599963,
		0.515556, -0.438502, -0.736151,
		-0.833851, -0.454495, -0.313251,
		25.122828, 36.096287, 36.916348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800476, 36.743790, 36.579617>,  <25.706522, 36.414433, 37.135624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800476, 36.743790, 36.579617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716463, 37.018757, 36.301525>,  <25.666056, 37.183739, 36.134670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716463, 37.018757, 36.301525>,  <25.800476, 36.743790, 36.579617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716463, 37.018757, 36.301525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389445, -0.711064, -0.585422,
		-0.896783, 0.147797, 0.417057,
		-0.210031, 0.687418, -0.695229,
		25.653454, 37.224983, 36.092957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084295, 36.674019, 36.390453>,  <25.800476, 36.743790, 36.579617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084295, 36.674019, 36.390453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278658, 36.841007, 36.083309>,  <25.395275, 36.941200, 35.899021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278658, 36.841007, 36.083309>,  <25.084295, 36.674019, 36.390453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278658, 36.841007, 36.083309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418868, -0.659856, -0.623811,
		-0.767102, 0.624746, -0.145762,
		0.485905, 0.417472, -0.767863,
		25.424429, 36.966248, 35.852951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660454, 36.942513, 35.817028>,  <25.084295, 36.674019, 36.390453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660454, 36.942513, 35.817028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015903, 36.788376, 35.717545>,  <25.229174, 36.695896, 35.657852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015903, 36.788376, 35.717545>,  <24.660454, 36.942513, 35.817028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015903, 36.788376, 35.717545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440716, -0.567355, -0.695613,
		0.126938, 0.727752, -0.673991,
		0.888626, -0.385338, -0.248713,
		25.282492, 36.672775, 35.642929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669952, 36.988800, 35.070499>,  <24.660454, 36.942513, 35.817028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669952, 36.988800, 35.070499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947136, 36.718449, 35.170898>,  <25.113447, 36.556240, 35.231136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947136, 36.718449, 35.170898>,  <24.669952, 36.988800, 35.070499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947136, 36.718449, 35.170898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302503, -0.588567, -0.749720,
		0.654444, 0.443600, -0.612309,
		0.692961, -0.675875, 0.250994,
		25.155024, 36.515686, 35.246197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932306, 36.769093, 34.410622>,  <24.669952, 36.988800, 35.070499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932306, 36.769093, 34.410622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021446, 36.471344, 34.662415>,  <25.074930, 36.292694, 34.813488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021446, 36.471344, 34.662415>,  <24.932306, 36.769093, 34.410622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021446, 36.471344, 34.662415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007654, -0.644361, -0.764683,
		0.974823, 0.175226, -0.137898,
		0.222848, -0.744375, 0.629479,
		25.088301, 36.248032, 34.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347347, 36.278252, 33.978104>,  <24.932306, 36.769093, 34.410622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347347, 36.278252, 33.978104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240421, 36.058155, 34.294529>,  <25.176266, 35.926098, 34.484383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240421, 36.058155, 34.294529>,  <25.347347, 36.278252, 33.978104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240421, 36.058155, 34.294529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279594, -0.741329, -0.610130,
		0.922155, -0.384272, 0.044323,
		-0.267314, -0.550242, 0.791060,
		25.160227, 35.893082, 34.531849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625090, 35.641499, 33.987724>,  <25.347347, 36.278252, 33.978104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625090, 35.641499, 33.987724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293108, 35.588348, 34.204433>,  <25.093918, 35.556458, 34.334457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293108, 35.588348, 34.204433>,  <25.625090, 35.641499, 33.987724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293108, 35.588348, 34.204433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244727, -0.786024, -0.567693,
		0.501281, -0.603746, 0.619845,
		-0.829956, -0.132880, 0.541772,
		25.044121, 35.548485, 34.366966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066868, 35.756462, 33.493488>,  <25.625090, 35.641499, 33.987724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066868, 35.756462, 33.493488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016962, 35.622917, 33.119759>,  <24.987019, 35.542789, 32.895519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016962, 35.622917, 33.119759>,  <25.066868, 35.756462, 33.493488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016962, 35.622917, 33.119759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962174, 0.189147, -0.196072,
		0.242187, -0.923450, 0.297634,
		-0.124766, -0.333862, -0.934328,
		24.979532, 35.522758, 32.839458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518742, 35.155834, 33.326145>,  <25.066868, 35.756462, 33.493488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518742, 35.155834, 33.326145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438694, 35.412163, 33.029686>,  <25.390665, 35.565960, 32.851810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438694, 35.412163, 33.029686>,  <25.518742, 35.155834, 33.326145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438694, 35.412163, 33.029686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979760, 0.127176, -0.154585,
		-0.004805, -0.757083, -0.653301,
		-0.200118, 0.640821, -0.741148,
		25.378658, 35.604408, 32.807343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951658, 35.011456, 32.755360>,  <25.518742, 35.155834, 33.326145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951658, 35.011456, 32.755360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839924, 35.395493, 32.760929>,  <25.772882, 35.625916, 32.764271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839924, 35.395493, 32.760929>,  <25.951658, 35.011456, 32.755360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839924, 35.395493, 32.760929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957211, 0.279582, -0.074712,
		-0.075622, -0.007546, -0.997108,
		-0.279337, 0.960092, 0.013919,
		25.756123, 35.683521, 32.765106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298923, 35.465160, 32.163200>,  <25.951658, 35.011456, 32.755360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298923, 35.465160, 32.163200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212286, 35.654564, 32.504700>,  <26.160303, 35.768208, 32.709599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212286, 35.654564, 32.504700>,  <26.298923, 35.465160, 32.163200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212286, 35.654564, 32.504700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970266, 0.007627, 0.241923,
		0.108041, 0.880756, -0.461080,
		-0.216591, 0.473508, 0.853744,
		26.147308, 35.796616, 32.760822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970600, 35.286236, 32.096066>,  <26.298923, 35.465160, 32.163200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970600, 35.286236, 32.096066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352798, 35.169151, 32.081371>,  <27.582117, 35.098900, 32.072556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352798, 35.169151, 32.081371>,  <26.970600, 35.286236, 32.096066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352798, 35.169151, 32.081371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006700, 0.146015, -0.989260,
		0.294926, 0.944988, 0.141478,
		0.955497, -0.292707, -0.036732,
		27.639448, 35.081341, 32.070351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420038, 35.766174, 31.741159>,  <26.970600, 35.286236, 32.096066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420038, 35.766174, 31.741159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581573, 35.400555, 31.726067>,  <27.678495, 35.181183, 31.717010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581573, 35.400555, 31.726067>,  <27.420038, 35.766174, 31.741159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581573, 35.400555, 31.726067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080456, 0.005601, -0.996742,
		0.911286, 0.405559, -0.071279,
		0.403838, -0.914052, -0.037734,
		27.702724, 35.126339, 31.714746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966509, 35.831169, 31.432890>,  <27.420038, 35.766174, 31.741159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966509, 35.831169, 31.432890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856583, 35.449211, 31.387905>,  <27.790627, 35.220036, 31.360914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856583, 35.449211, 31.387905>,  <27.966509, 35.831169, 31.432890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856583, 35.449211, 31.387905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062569, 0.134477, -0.988939,
		0.959459, -0.264739, -0.096703,
		-0.274815, -0.954898, -0.112461,
		27.774137, 35.162743, 31.354166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390953, 35.594906, 30.887264>,  <27.966509, 35.831169, 31.432890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390953, 35.594906, 30.887264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079948, 35.343464, 30.894590>,  <27.893347, 35.192600, 30.898987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079948, 35.343464, 30.894590>,  <28.390953, 35.594906, 30.887264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079948, 35.343464, 30.894590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190345, 0.207476, -0.959543,
		0.599373, -0.749540, -0.280966,
		-0.777509, -0.628605, 0.018315,
		27.846695, 35.154884, 30.900085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517866, 35.141937, 30.333509>,  <28.390953, 35.594906, 30.887264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517866, 35.141937, 30.333509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128664, 35.166019, 30.422628>,  <27.895144, 35.180470, 30.476099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128664, 35.166019, 30.422628>,  <28.517866, 35.141937, 30.333509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128664, 35.166019, 30.422628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203719, 0.229581, -0.951730,
		-0.108454, -0.971425, -0.211117,
		-0.973004, 0.060211, 0.222797,
		27.836763, 35.184082, 30.489468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020325, 34.966225, 29.779390>,  <28.517866, 35.141937, 30.333509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020325, 34.966225, 29.779390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763521, 35.206871, 29.969496>,  <27.609438, 35.351261, 30.083559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763521, 35.206871, 29.969496>,  <28.020325, 34.966225, 29.779390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763521, 35.206871, 29.969496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347614, 0.324101, -0.879843,
		-0.683364, -0.730077, 0.001055,
		-0.642011, 0.601620, 0.475264,
		27.570917, 35.387356, 30.112076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831753, 35.537518, 29.367119>,  <28.020325, 34.966225, 29.779390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831753, 35.537518, 29.367119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486208, 35.336040, 29.364672>,  <27.278881, 35.215153, 29.363203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486208, 35.336040, 29.364672>,  <27.831753, 35.537518, 29.367119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486208, 35.336040, 29.364672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000511, -0.013025, 0.999915,
		-0.503731, 0.863784, 0.011510,
		-0.863861, -0.503694, -0.006120,
		27.227049, 35.184933, 29.362835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312067, 35.944054, 29.721554>,  <27.831753, 35.537518, 29.367119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312067, 35.944054, 29.721554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233376, 35.552574, 29.745018>,  <27.186161, 35.317684, 29.759096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233376, 35.552574, 29.745018>,  <27.312067, 35.944054, 29.721554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233376, 35.552574, 29.745018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052234, 0.049285, 0.997418,
		-0.979066, 0.199284, 0.041425,
		-0.196728, -0.978702, 0.058663,
		27.174356, 35.258965, 29.762617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765190, 35.815552, 30.270468>,  <27.312067, 35.944054, 29.721554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765190, 35.815552, 30.270468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009989, 35.502007, 30.228472>,  <27.156868, 35.313881, 30.203274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009989, 35.502007, 30.228472>,  <26.765190, 35.815552, 30.270468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009989, 35.502007, 30.228472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089990, -0.062872, 0.993956,
		-0.785726, -0.617743, 0.032063,
		0.611994, -0.783862, -0.104991,
		27.193586, 35.266850, 30.196974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557287, 35.181431, 30.699503>,  <26.765190, 35.815552, 30.270468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557287, 35.181431, 30.699503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948534, 35.164036, 30.618118>,  <27.183283, 35.153599, 30.569288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948534, 35.164036, 30.618118>,  <26.557287, 35.181431, 30.699503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948534, 35.164036, 30.618118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175561, -0.352281, 0.919280,
		-0.111652, -0.934883, -0.336938,
		0.978116, -0.043486, -0.203462,
		27.241968, 35.150990, 30.557079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719976, 34.495106, 30.996899>,  <26.557287, 35.181431, 30.699503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719976, 34.495106, 30.996899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061958, 34.698681, 30.956835>,  <27.267147, 34.820827, 30.932796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061958, 34.698681, 30.956835>,  <26.719976, 34.495106, 30.996899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061958, 34.698681, 30.956835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340522, -0.405039, 0.848522,
		0.391279, -0.759554, -0.519595,
		0.854954, 0.508942, -0.100161,
		27.318445, 34.851364, 30.926786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231617, 33.967682, 31.234383>,  <26.719976, 34.495106, 30.996899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231617, 33.967682, 31.234383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404345, 34.327568, 31.259802>,  <27.507980, 34.543503, 31.275053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404345, 34.327568, 31.259802>,  <27.231617, 33.967682, 31.234383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404345, 34.327568, 31.259802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563532, -0.324132, 0.759849,
		0.704249, -0.292305, -0.646987,
		0.431817, 0.899720, 0.063546,
		27.533890, 34.597485, 31.278866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955248, 33.816364, 31.357779>,  <27.231617, 33.967682, 31.234383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955248, 33.816364, 31.357779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852085, 34.180893, 31.486137>,  <27.790188, 34.399609, 31.563152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852085, 34.180893, 31.486137>,  <27.955248, 33.816364, 31.357779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852085, 34.180893, 31.486137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363150, -0.216344, 0.906265,
		0.895324, 0.350269, -0.275149,
		-0.257909, 0.911322, 0.320898,
		27.774712, 34.454288, 31.582407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501671, 34.245583, 31.355934>,  <27.955248, 33.816364, 31.357779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501671, 34.245583, 31.355934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236372, 34.303162, 31.649706>,  <28.077192, 34.337711, 31.825968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236372, 34.303162, 31.649706>,  <28.501671, 34.245583, 31.355934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236372, 34.303162, 31.649706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705093, -0.208797, 0.677679,
		0.250898, 0.967307, 0.036985,
		-0.663245, 0.143951, 0.734427,
		28.037399, 34.346348, 31.870033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659637, 34.919907, 31.824379>,  <28.501671, 34.245583, 31.355934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659637, 34.919907, 31.824379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487907, 34.598698, 31.989706>,  <28.384869, 34.405972, 32.088902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487907, 34.598698, 31.989706>,  <28.659637, 34.919907, 31.824379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487907, 34.598698, 31.989706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796401, -0.120782, 0.592584,
		-0.425938, 0.583578, 0.691385,
		-0.429326, -0.803024, 0.413317,
		28.359110, 34.357792, 32.113701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230406, 35.136208, 32.235054>,  <28.659637, 34.919907, 31.824379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230406, 35.136208, 32.235054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554686, 35.036667, 32.447033>,  <29.749252, 34.976944, 32.574219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554686, 35.036667, 32.447033>,  <29.230406, 35.136208, 32.235054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554686, 35.036667, 32.447033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514299, -0.129836, -0.847726,
		0.279761, 0.959801, 0.022724,
		0.810697, -0.248848, 0.529948,
		29.797895, 34.962013, 32.606018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882437, 35.498196, 31.945208>,  <29.230406, 35.136208, 32.235054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882437, 35.498196, 31.945208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981066, 35.152962, 32.121517>,  <30.040243, 34.945820, 32.227303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981066, 35.152962, 32.121517>,  <29.882437, 35.498196, 31.945208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981066, 35.152962, 32.121517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584206, -0.230513, -0.778182,
		0.773243, 0.449382, 0.447382,
		0.246574, -0.863087, 0.440775,
		30.055038, 34.894035, 32.253750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707758, 35.280460, 31.923059>,  <29.882437, 35.498196, 31.945208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707758, 35.280460, 31.923059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446733, 34.984028, 31.859856>,  <30.290119, 34.806168, 31.821934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446733, 34.984028, 31.859856>,  <30.707758, 35.280460, 31.923059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446733, 34.984028, 31.859856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379847, -0.139497, -0.914471,
		0.655654, -0.656766, 0.372527,
		-0.652560, -0.741079, -0.158009,
		30.250965, 34.761703, 31.812452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888332, 34.622364, 31.735334>,  <30.707758, 35.280460, 31.923059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888332, 34.622364, 31.735334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509672, 34.609371, 31.607086>,  <30.282476, 34.601574, 31.530138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509672, 34.609371, 31.607086>,  <30.888332, 34.622364, 31.735334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509672, 34.609371, 31.607086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319829, -0.216705, -0.922360,
		-0.039514, -0.975696, 0.215534,
		-0.946651, -0.032488, -0.320619,
		30.225677, 34.599625, 31.510900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578981, 34.926205, 31.764662>,  <30.888332, 34.622364, 31.735334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578981, 34.926205, 31.764662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770592, 35.235661, 31.598766>,  <31.885557, 35.421333, 31.499229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770592, 35.235661, 31.598766>,  <31.578981, 34.926205, 31.764662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770592, 35.235661, 31.598766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520207, 0.630768, 0.575775,
		0.707050, -0.060060, 0.704609,
		0.479025, 0.773643, -0.414741,
		31.914299, 35.467754, 31.474344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093529, 35.378632, 32.169033>,  <31.578981, 34.926205, 31.764662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093529, 35.378632, 32.169033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875362, 35.603233, 31.920120>,  <31.744461, 35.737995, 31.770773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875362, 35.603233, 31.920120>,  <32.093529, 35.378632, 32.169033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875362, 35.603233, 31.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480123, 0.399253, 0.781075,
		0.687022, 0.724786, 0.051829,
		-0.545420, 0.561500, -0.622282,
		31.711737, 35.771683, 31.733435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177292, 36.013832, 32.349548>,  <32.093529, 35.378632, 32.169033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177292, 36.013832, 32.349548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816172, 36.013008, 32.177525>,  <31.599501, 36.012512, 32.074310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816172, 36.013008, 32.177525>,  <32.177292, 36.013832, 32.349548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816172, 36.013008, 32.177525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367632, 0.522606, 0.769240,
		0.223168, 0.852572, -0.472565,
		-0.902797, -0.002061, -0.430062,
		31.545332, 36.012390, 32.048508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127995, 36.369297, 33.023640>,  <32.177292, 36.013832, 32.349548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127995, 36.369297, 33.023640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343353, 36.335537, 33.359020>,  <32.472569, 36.315281, 33.560249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343353, 36.335537, 33.359020>,  <32.127995, 36.369297, 33.023640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343353, 36.335537, 33.359020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021368, -0.996019, -0.086540,
		0.842422, 0.028677, -0.538055,
		0.538394, -0.084400, 0.838456,
		32.504871, 36.310219, 33.610558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752064, 35.995605, 32.797176>,  <32.127995, 36.369297, 33.023640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752064, 35.995605, 32.797176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653618, 35.962261, 33.183437>,  <32.594551, 35.942253, 33.415192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653618, 35.962261, 33.183437>,  <32.752064, 35.995605, 32.797176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653618, 35.962261, 33.183437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065717, -0.992567, -0.102434,
		0.967010, -0.088670, 0.238810,
		-0.246117, -0.083361, 0.965649,
		32.579784, 35.937252, 33.473133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006840, 35.797195, 32.004253>,  <32.752064, 35.995605, 32.797176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006840, 35.797195, 32.004253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177128, 35.463512, 31.864046>,  <33.279301, 35.263302, 31.779922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177128, 35.463512, 31.864046>,  <33.006840, 35.797195, 32.004253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177128, 35.463512, 31.864046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660457, 0.021688, 0.750551,
		-0.618512, -0.551027, 0.560190,
		0.425722, -0.834206, -0.350516,
		33.304844, 35.213249, 31.758892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897953, 35.227085, 32.480503>,  <33.006840, 35.797195, 32.004253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897953, 35.227085, 32.480503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241352, 35.223213, 32.275414>,  <33.447392, 35.220890, 32.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241352, 35.223213, 32.275414>,  <32.897953, 35.227085, 32.480503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241352, 35.223213, 32.275414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512098, 0.069193, 0.856136,
		0.027186, -0.997557, 0.064361,
		0.858497, -0.009684, -0.512727,
		33.498901, 35.220310, 32.121593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383984, 35.110558, 33.054398>,  <32.897953, 35.227085, 32.480503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383984, 35.110558, 33.054398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626987, 35.129501, 32.737236>,  <33.772789, 35.140865, 32.546940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626987, 35.129501, 32.737236>,  <33.383984, 35.110558, 33.054398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626987, 35.129501, 32.737236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761001, 0.251362, 0.598076,
		0.227626, -0.966734, 0.116668,
		0.607506, 0.047353, -0.792902,
		33.809238, 35.143707, 32.499367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900597, 34.635441, 33.137402>,  <33.383984, 35.110558, 33.054398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900597, 34.635441, 33.137402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039772, 34.941132, 32.920189>,  <34.123280, 35.124546, 32.789860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039772, 34.941132, 32.920189>,  <33.900597, 34.635441, 33.137402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039772, 34.941132, 32.920189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803336, 0.055568, 0.592928,
		0.483309, -0.642545, -0.594600,
		0.347942, 0.764231, -0.543036,
		34.144154, 35.170403, 32.757278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585697, 34.642151, 33.310307>,  <33.900597, 34.635441, 33.137402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585697, 34.642151, 33.310307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513588, 35.018692, 33.196217>,  <34.470322, 35.244617, 33.127762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513588, 35.018692, 33.196217>,  <34.585697, 34.642151, 33.310307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513588, 35.018692, 33.196217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557555, 0.336684, 0.758799,
		0.810330, -0.022239, -0.585552,
		-0.180271, 0.941355, -0.285224,
		34.459507, 35.301098, 33.110649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836868, 34.792271, 32.595333>,  <34.585697, 34.642151, 33.310307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836868, 34.792271, 32.595333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023636, 34.522369, 32.823959>,  <35.135696, 34.360428, 32.961136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023636, 34.522369, 32.823959>,  <34.836868, 34.792271, 32.595333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023636, 34.522369, 32.823959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215241, -0.540193, -0.813549,
		0.857705, 0.502886, -0.106991,
		0.466918, -0.674757, 0.571568,
		35.163712, 34.319942, 32.995430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534664, 34.798969, 32.415821>,  <34.836868, 34.792271, 32.595333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534664, 34.798969, 32.415821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489716, 34.435074, 32.575691>,  <35.462746, 34.216736, 32.671616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489716, 34.435074, 32.575691>,  <35.534664, 34.798969, 32.415821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489716, 34.435074, 32.575691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438174, -0.406372, -0.801789,
		0.891839, 0.085033, 0.444288,
		-0.112368, -0.909742, 0.399678,
		35.456005, 34.162151, 32.695595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987743, 34.350410, 32.174046>,  <35.534664, 34.798969, 32.415821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987743, 34.350410, 32.174046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748341, 34.052799, 32.292847>,  <35.604698, 33.874233, 32.364128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748341, 34.052799, 32.292847>,  <35.987743, 34.350410, 32.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748341, 34.052799, 32.292847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244919, -0.522930, -0.816431,
		0.762758, -0.415900, 0.495205,
		-0.598511, -0.744024, 0.297007,
		35.568787, 33.829594, 32.381950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342125, 33.749939, 32.201168>,  <35.987743, 34.350410, 32.174046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342125, 33.749939, 32.201168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953125, 33.683483, 32.135887>,  <35.719723, 33.643608, 32.096718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953125, 33.683483, 32.135887>,  <36.342125, 33.749939, 32.201168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953125, 33.683483, 32.135887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214756, -0.368603, -0.904440,
		0.090106, -0.914619, 0.394147,
		-0.972502, -0.166141, -0.163206,
		35.661373, 33.633640, 32.086926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200027, 33.022549, 32.080044>,  <36.342125, 33.749939, 32.201168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200027, 33.022549, 32.080044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934563, 33.253635, 31.889971>,  <35.775284, 33.392288, 31.775928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934563, 33.253635, 31.889971>,  <36.200027, 33.022549, 32.080044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934563, 33.253635, 31.889971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144695, -0.524095, -0.839278,
		-0.733904, -0.625754, 0.264230,
		-0.663662, 0.577716, -0.475179,
		35.735462, 33.426949, 31.747417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824852, 32.554390, 31.678070>,  <36.200027, 33.022549, 32.080044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824852, 32.554390, 31.678070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762157, 32.917259, 31.521877>,  <35.724541, 33.134979, 31.428162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762157, 32.917259, 31.521877>,  <35.824852, 32.554390, 31.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762157, 32.917259, 31.521877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154112, -0.368060, -0.916941,
		-0.975543, -0.203892, -0.082119,
		-0.156733, 0.907171, -0.390480,
		35.715137, 33.189411, 31.404734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276653, 32.486973, 31.206921>,  <35.824852, 32.554390, 31.678070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276653, 32.486973, 31.206921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489063, 32.812611, 31.112888>,  <35.616508, 33.007996, 31.056469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489063, 32.812611, 31.112888>,  <35.276653, 32.486973, 31.206921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489063, 32.812611, 31.112888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100124, -0.335767, -0.936609,
		-0.841422, 0.473822, -0.259810,
		0.531021, 0.814097, -0.235081,
		35.648369, 33.056839, 31.042364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021828, 32.701279, 30.537891>,  <35.276653, 32.486973, 31.206921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021828, 32.701279, 30.537891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378567, 32.880852, 30.560011>,  <35.592609, 32.988598, 30.573282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378567, 32.880852, 30.560011>,  <35.021828, 32.701279, 30.537891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378567, 32.880852, 30.560011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183878, -0.248133, -0.951114,
		-0.413266, 0.858422, -0.303847,
		0.891852, 0.448935, 0.055300,
		35.646122, 33.015533, 30.576601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153278, 33.212196, 29.925545>,  <35.021828, 32.701279, 30.537891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153278, 33.212196, 29.925545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515892, 33.104900, 30.055925>,  <35.733459, 33.040524, 30.134153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515892, 33.104900, 30.055925>,  <35.153278, 33.212196, 29.925545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515892, 33.104900, 30.055925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253184, -0.272359, -0.928288,
		0.337781, 0.924049, -0.178988,
		0.906533, -0.268241, 0.325952,
		35.787853, 33.024429, 30.153711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545200, 33.648685, 29.562084>,  <35.153278, 33.212196, 29.925545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545200, 33.648685, 29.562084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786922, 33.352394, 29.679480>,  <35.931957, 33.174622, 29.749916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786922, 33.352394, 29.679480>,  <35.545200, 33.648685, 29.562084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786922, 33.352394, 29.679480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343325, -0.090314, -0.934864,
		0.718984, 0.665710, 0.199732,
		0.604310, -0.740725, 0.293489,
		35.968216, 33.130177, 29.767527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092190, 33.813515, 29.226387>,  <35.545200, 33.648685, 29.562084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092190, 33.813515, 29.226387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153732, 33.433876, 29.336323>,  <36.190659, 33.206093, 29.402285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153732, 33.433876, 29.336323>,  <36.092190, 33.813515, 29.226387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153732, 33.433876, 29.336323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373074, -0.201764, -0.905598,
		0.914956, 0.241870, 0.323041,
		0.153859, -0.949100, 0.274840,
		36.199890, 33.149147, 29.418776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537540, 33.682785, 28.780430>,  <36.092190, 33.813515, 29.226387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537540, 33.682785, 28.780430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435112, 33.313995, 28.896637>,  <36.373657, 33.092724, 28.966362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435112, 33.313995, 28.896637>,  <36.537540, 33.682785, 28.780430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435112, 33.313995, 28.896637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358653, -0.369703, -0.857139,
		0.897662, -0.115290, 0.425336,
		-0.256068, -0.921970, 0.290520,
		36.358292, 33.037403, 28.983793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080357, 33.268433, 28.756311>,  <36.537540, 33.682785, 28.780430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080357, 33.268433, 28.756311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784855, 33.000057, 28.730789>,  <36.607552, 32.839031, 28.715475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784855, 33.000057, 28.730789>,  <37.080357, 33.268433, 28.756311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784855, 33.000057, 28.730789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470486, -0.445609, -0.761627,
		0.482575, -0.592678, 0.644867,
		-0.738759, -0.670943, -0.063807,
		36.563229, 32.798775, 28.711647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377895, 32.591175, 28.527946>,  <37.080357, 33.268433, 28.756311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377895, 32.591175, 28.527946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992451, 32.521664, 28.446699>,  <36.761185, 32.479958, 28.397951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992451, 32.521664, 28.446699>,  <37.377895, 32.591175, 28.527946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992451, 32.521664, 28.446699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255437, -0.374618, -0.891298,
		0.078798, -0.910748, 0.405375,
		-0.963609, -0.173780, -0.203119,
		36.703369, 32.469528, 28.385763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385292, 31.980402, 28.214436>,  <37.377895, 32.591175, 28.527946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385292, 31.980402, 28.214436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028866, 32.129913, 28.111452>,  <36.815010, 32.219620, 28.049662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028866, 32.129913, 28.111452>,  <37.385292, 31.980402, 28.214436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028866, 32.129913, 28.111452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166314, -0.258896, -0.951479,
		-0.422298, -0.890653, 0.168530,
		-0.891069, 0.373779, -0.257459,
		36.761543, 32.242046, 28.034214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085846, 31.472681, 27.779791>,  <37.385292, 31.980402, 28.214436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085846, 31.472681, 27.779791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894970, 31.816187, 27.705160>,  <36.780445, 32.022289, 27.660381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894970, 31.816187, 27.705160>,  <37.085846, 31.472681, 27.779791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894970, 31.816187, 27.705160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091483, -0.162613, -0.982439,
		-0.874024, -0.485882, -0.000965,
		-0.477193, 0.858764, -0.186578,
		36.751812, 32.073814, 27.649187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580959, 31.293076, 27.307194>,  <37.085846, 31.472681, 27.779791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580959, 31.293076, 27.307194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630047, 31.685673, 27.248398>,  <36.659500, 31.921232, 27.213120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630047, 31.685673, 27.248398>,  <36.580959, 31.293076, 27.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630047, 31.685673, 27.248398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039181, -0.143204, -0.988917,
		-0.991668, 0.127120, 0.020882,
		0.122721, 0.981495, -0.146992,
		36.666862, 31.980122, 27.204300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021236, 31.481159, 26.987324>,  <36.580959, 31.293076, 27.307194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021236, 31.481159, 26.987324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267433, 31.773981, 26.870527>,  <36.415154, 31.949675, 26.800449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267433, 31.773981, 26.870527>,  <36.021236, 31.481159, 26.987324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267433, 31.773981, 26.870527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239561, -0.179179, -0.954204,
		-0.750850, 0.657258, 0.065088,
		0.615496, 0.732056, -0.291990,
		36.452084, 31.993599, 26.782930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606812, 31.871548, 26.497540>,  <36.021236, 31.481159, 26.987324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606812, 31.871548, 26.497540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978779, 32.000839, 26.427370>,  <36.201958, 32.078415, 26.385267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978779, 32.000839, 26.427370>,  <35.606812, 31.871548, 26.497540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978779, 32.000839, 26.427370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189240, 0.011552, -0.981863,
		-0.315338, 0.946251, 0.071910,
		0.929920, 0.323227, -0.175425,
		36.257755, 32.097809, 26.374743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550667, 32.486557, 25.982761>,  <35.606812, 31.871548, 26.497540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550667, 32.486557, 25.982761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916683, 32.325928, 25.967579>,  <36.136292, 32.229549, 25.958469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916683, 32.325928, 25.967579>,  <35.550667, 32.486557, 25.982761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916683, 32.325928, 25.967579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091820, -0.115747, -0.989026,
		0.392772, 0.908484, -0.142785,
		0.915041, -0.401572, -0.037955,
		36.191196, 32.205456, 25.956192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662777, 32.510029, 25.293924>,  <35.550667, 32.486557, 25.982761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662777, 32.510029, 25.293924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963474, 32.275402, 25.414473>,  <36.143890, 32.134624, 25.486801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963474, 32.275402, 25.414473>,  <35.662777, 32.510029, 25.293924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963474, 32.275402, 25.414473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008766, -0.465844, -0.884823,
		0.659402, 0.662515, -0.355336,
		0.751740, -0.586569, 0.301371,
		36.188995, 32.099430, 25.504885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196659, 32.463322, 24.672777>,  <35.662777, 32.510029, 25.293924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196659, 32.463322, 24.672777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271648, 32.149872, 24.909689>,  <36.316643, 31.961803, 25.051836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271648, 32.149872, 24.909689>,  <36.196659, 32.463322, 24.672777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271648, 32.149872, 24.909689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023816, -0.599165, -0.800271,
		0.981981, 0.164136, -0.093666,
		0.187475, -0.783620, 0.592277,
		36.327892, 31.914785, 25.087372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726089, 32.239799, 24.302513>,  <36.196659, 32.463322, 24.672777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726089, 32.239799, 24.302513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538948, 31.969074, 24.529858>,  <36.426662, 31.806639, 24.666265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538948, 31.969074, 24.529858>,  <36.726089, 32.239799, 24.302513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538948, 31.969074, 24.529858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147193, -0.574435, -0.805207,
		0.871462, -0.460379, 0.169130,
		-0.467855, -0.676813, 0.568362,
		36.398590, 31.766031, 24.700367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003777, 31.662848, 24.103201>,  <36.726089, 32.239799, 24.302513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003777, 31.662848, 24.103201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654274, 31.589315, 24.283312>,  <36.444572, 31.545197, 24.391378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654274, 31.589315, 24.283312>,  <37.003777, 31.662848, 24.103201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654274, 31.589315, 24.283312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227268, -0.664191, -0.712180,
		0.429990, -0.724608, 0.538564,
		-0.873760, -0.183832, 0.450276,
		36.392147, 31.534166, 24.418394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993336, 30.943012, 24.170822>,  <37.003777, 31.662848, 24.103201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993336, 30.943012, 24.170822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614937, 31.071314, 24.152006>,  <36.387897, 31.148294, 24.140717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614937, 31.071314, 24.152006>,  <36.993336, 30.943012, 24.170822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614937, 31.071314, 24.152006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145008, -0.548443, -0.823518,
		-0.289946, -0.772222, 0.565336,
		-0.945994, 0.320754, -0.047040,
		36.331139, 31.167540, 24.137894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680244, 30.467270, 23.958483>,  <36.993336, 30.943012, 24.170822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680244, 30.467270, 23.958483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392506, 30.738482, 23.898067>,  <36.219860, 30.901209, 23.861818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392506, 30.738482, 23.898067>,  <36.680244, 30.467270, 23.958483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392506, 30.738482, 23.898067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189921, -0.401116, -0.896123,
		-0.668181, -0.615941, 0.417315,
		-0.719350, 0.678028, -0.151038,
		36.176701, 30.941891, 23.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127430, 30.014456, 23.736761>,  <36.680244, 30.467270, 23.958483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127430, 30.014456, 23.736761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085762, 30.398321, 23.632305>,  <36.060760, 30.628641, 23.569632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085762, 30.398321, 23.632305>,  <36.127430, 30.014456, 23.736761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085762, 30.398321, 23.632305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083364, -0.270069, -0.959225,
		-0.991059, -0.078156, 0.108136,
		-0.104173, 0.959663, -0.261139,
		36.054508, 30.686220, 23.553963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484653, 30.128864, 23.429300>,  <36.127430, 30.014456, 23.736761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484653, 30.128864, 23.429300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709927, 30.429680, 23.292328>,  <35.845093, 30.610168, 23.210144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709927, 30.429680, 23.292328>,  <35.484653, 30.128864, 23.429300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709927, 30.429680, 23.292328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034606, -0.435500, -0.899523,
		-0.825605, 0.494749, -0.271293,
		0.563186, 0.752039, -0.342430,
		35.878883, 30.655293, 23.189598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286407, 30.170259, 22.769041>,  <35.484653, 30.128864, 23.429300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286407, 30.170259, 22.769041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613060, 30.401030, 22.762432>,  <35.809052, 30.539492, 22.758467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613060, 30.401030, 22.762432>,  <35.286407, 30.170259, 22.769041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613060, 30.401030, 22.762432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015415, -0.050422, -0.998609,
		-0.576955, 0.815240, -0.050070,
		0.816630, 0.576924, -0.016524,
		35.858047, 30.574106, 22.757475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109478, 30.835432, 22.493828>,  <35.286407, 30.170259, 22.769041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109478, 30.835432, 22.493828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494064, 30.790926, 22.393270>,  <35.724815, 30.764223, 22.332937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494064, 30.790926, 22.393270>,  <35.109478, 30.835432, 22.493828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494064, 30.790926, 22.393270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249710, 0.029029, -0.967886,
		0.114988, 0.993367, 0.000127,
		0.961469, -0.111264, -0.251391,
		35.782505, 30.757547, 22.317854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169319, 31.283092, 21.877247>,  <35.109478, 30.835432, 22.493828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169319, 31.283092, 21.877247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506378, 31.068199, 21.891825>,  <35.708614, 30.939262, 21.900572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506378, 31.068199, 21.891825>,  <35.169319, 31.283092, 21.877247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506378, 31.068199, 21.891825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079931, 0.057865, -0.995119,
		0.532504, 0.841445, 0.091701,
		0.842645, -0.537235, 0.036445,
		35.759171, 30.907028, 21.902758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634609, 31.623417, 21.368181>,  <35.169319, 31.283092, 21.877247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634609, 31.623417, 21.368181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745689, 31.241652, 21.411964>,  <35.812340, 31.012592, 21.438234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745689, 31.241652, 21.411964>,  <35.634609, 31.623417, 21.368181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745689, 31.241652, 21.411964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236281, -0.042580, -0.970751,
		0.931157, 0.295443, 0.213685,
		0.277703, -0.954411, 0.109456,
		35.828999, 30.955328, 21.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350628, 31.526039, 21.020777>,  <35.634609, 31.623417, 21.368181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350628, 31.526039, 21.020777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105022, 31.210423, 21.028749>,  <35.957657, 31.021053, 21.033533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105022, 31.210423, 21.028749>,  <36.350628, 31.526039, 21.020777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105022, 31.210423, 21.028749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143333, -0.136300, -0.980244,
		0.776169, -0.599030, 0.196786,
		-0.614018, -0.789041, 0.019931,
		35.920818, 30.973711, 21.034729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692200, 31.099232, 20.603313>,  <36.350628, 31.526039, 21.020777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692200, 31.099232, 20.603313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317799, 30.959797, 20.622833>,  <36.093159, 30.876137, 20.634544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317799, 30.959797, 20.622833>,  <36.692200, 31.099232, 20.603313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317799, 30.959797, 20.622833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056948, -0.286787, -0.956300,
		0.347349, -0.892323, 0.288285,
		-0.936005, -0.348588, 0.048799,
		36.036999, 30.855221, 20.637472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725697, 30.481342, 20.187418>,  <36.692200, 31.099232, 20.603313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725697, 30.481342, 20.187418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332275, 30.547016, 20.217529>,  <36.096222, 30.586420, 20.235596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332275, 30.547016, 20.217529>,  <36.725697, 30.481342, 20.187418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332275, 30.547016, 20.217529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079542, -0.019556, -0.996640,
		-0.162161, -0.986236, 0.032294,
		-0.983554, 0.164185, 0.075276,
		36.037209, 30.596272, 20.240112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352547, 29.913305, 19.749577>,  <36.725697, 30.481342, 20.187418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352547, 29.913305, 19.749577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105312, 30.227188, 19.768351>,  <35.956970, 30.415518, 19.779615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105312, 30.227188, 19.768351>,  <36.352547, 29.913305, 19.749577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105312, 30.227188, 19.768351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099352, -0.018750, -0.994876,
		-0.779807, -0.619581, 0.089552,
		-0.618086, 0.784708, 0.046935,
		35.919888, 30.462601, 19.782431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746311, 29.718409, 19.322512>,  <36.352547, 29.913305, 19.749577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746311, 29.718409, 19.322512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755318, 30.117075, 19.353889>,  <35.760723, 30.356274, 19.372717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755318, 30.117075, 19.353889>,  <35.746311, 29.718409, 19.322512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755318, 30.117075, 19.353889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256805, 0.081598, -0.963012,
		-0.966201, 0.001542, 0.257786,
		0.022520, 0.996664, 0.078444,
		35.762074, 30.416075, 19.377422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189331, 29.880825, 18.929939>,  <35.746311, 29.718409, 19.322512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189331, 29.880825, 18.929939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379517, 30.232004, 18.952377>,  <35.493629, 30.442711, 18.965839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379517, 30.232004, 18.952377>,  <35.189331, 29.880825, 18.929939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379517, 30.232004, 18.952377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363113, 0.253927, -0.896477,
		-0.801302, 0.405872, 0.439526,
		0.475462, 0.877946, 0.056095,
		35.522156, 30.495388, 18.969206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633041, 30.405752, 18.705803>,  <35.189331, 29.880825, 18.929939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633041, 30.405752, 18.705803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993633, 30.576328, 18.676170>,  <35.209988, 30.678675, 18.658390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993633, 30.576328, 18.676170>,  <34.633041, 30.405752, 18.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993633, 30.576328, 18.676170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267323, 0.413943, -0.870166,
		-0.340409, 0.804238, 0.487157,
		0.901477, 0.426441, -0.074082,
		35.264076, 30.704260, 18.653946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592648, 31.125656, 18.597607>,  <34.633041, 30.405752, 18.705803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592648, 31.125656, 18.597607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965458, 31.060600, 18.468071>,  <35.189144, 31.021566, 18.390350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965458, 31.060600, 18.468071>,  <34.592648, 31.125656, 18.597607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965458, 31.060600, 18.468071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198850, 0.517541, -0.832232,
		0.302954, 0.840059, 0.450022,
		0.932029, -0.162641, -0.323837,
		35.245068, 31.011808, 18.370920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888027, 31.808279, 18.276442>,  <34.592648, 31.125656, 18.597607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888027, 31.808279, 18.276442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147968, 31.535154, 18.142899>,  <35.303932, 31.371281, 18.062773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147968, 31.535154, 18.142899>,  <34.888027, 31.808279, 18.276442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147968, 31.535154, 18.142899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228850, 0.594650, -0.770726,
		0.724789, 0.424454, 0.542696,
		0.649852, -0.682810, -0.333859,
		35.342922, 31.330311, 18.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534016, 32.177666, 18.202723>,  <34.888027, 31.808279, 18.276442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534016, 32.177666, 18.202723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477688, 31.854534, 17.973783>,  <35.443893, 31.660654, 17.836420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477688, 31.854534, 17.973783>,  <35.534016, 32.177666, 18.202723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477688, 31.854534, 17.973783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062398, 0.569715, -0.819470,
		0.988068, -0.151108, -0.029818,
		-0.140816, -0.807831, -0.572346,
		35.435444, 31.612185, 17.802080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060608, 32.294548, 17.586081>,  <35.534016, 32.177666, 18.202723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060608, 32.294548, 17.586081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783939, 32.030293, 17.469358>,  <35.617939, 31.871738, 17.399324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783939, 32.030293, 17.469358>,  <36.060608, 32.294548, 17.586081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783939, 32.030293, 17.469358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027856, 0.428145, -0.903281,
		0.721679, -0.616641, -0.314536,
		-0.691667, -0.660641, -0.291807,
		35.576439, 31.832100, 17.381817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328938, 31.959347, 17.100145>,  <36.060608, 32.294548, 17.586081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328938, 31.959347, 17.100145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943554, 31.908701, 17.005728>,  <35.712322, 31.878313, 16.949078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943554, 31.908701, 17.005728>,  <36.328938, 31.959347, 17.100145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943554, 31.908701, 17.005728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143342, 0.500711, -0.853664,
		0.226278, -0.856304, -0.464265,
		-0.963458, -0.126617, -0.236044,
		35.654518, 31.870716, 16.934916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384983, 31.582708, 16.488926>,  <36.328938, 31.959347, 17.100145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384983, 31.582708, 16.488926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009365, 31.719166, 16.505943>,  <35.783993, 31.801041, 16.516153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009365, 31.719166, 16.505943>,  <36.384983, 31.582708, 16.488926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009365, 31.719166, 16.505943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088569, 0.359634, -0.928881,
		-0.332184, -0.868495, -0.367928,
		-0.939047, 0.341146, 0.042543,
		35.727650, 31.821510, 16.518705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023567, 31.367922, 15.902228>,  <36.384983, 31.582708, 16.488926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023567, 31.367922, 15.902228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798630, 31.684044, 15.999543>,  <35.663670, 31.873716, 16.057932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798630, 31.684044, 15.999543>,  <36.023567, 31.367922, 15.902228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798630, 31.684044, 15.999543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120979, 0.369680, -0.921250,
		-0.818007, -0.488625, -0.303496,
		-0.562342, 0.790306, 0.243287,
		35.629929, 31.921135, 16.072529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668083, 31.523457, 15.304104>,  <36.023567, 31.367922, 15.902228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668083, 31.523457, 15.304104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596260, 31.871761, 15.487203>,  <35.553165, 32.080746, 15.597062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596260, 31.871761, 15.487203>,  <35.668083, 31.523457, 15.304104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596260, 31.871761, 15.487203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118358, 0.481050, -0.868667,
		-0.976602, -0.101795, -0.189437,
		-0.179554, 0.870763, 0.457746,
		35.542393, 32.132992, 15.624527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213512, 31.919754, 14.987996>,  <35.668083, 31.523457, 15.304104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213512, 31.919754, 14.987996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413105, 32.208515, 15.179777>,  <35.532860, 32.381771, 15.294846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413105, 32.208515, 15.179777>,  <35.213512, 31.919754, 14.987996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413105, 32.208515, 15.179777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003931, 0.555129, -0.831755,
		-0.866603, 0.413147, 0.279838,
		0.498984, 0.721901, 0.479452,
		35.562801, 32.425087, 15.323613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810551, 32.591194, 14.907799>,  <35.213512, 31.919754, 14.987996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810551, 32.591194, 14.907799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208424, 32.611401, 14.943682>,  <35.447147, 32.623524, 14.965212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208424, 32.611401, 14.943682>,  <34.810551, 32.591194, 14.907799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208424, 32.611401, 14.943682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059239, 0.431835, -0.900005,
		-0.084203, 0.900537, 0.426548,
		0.994686, 0.050515, 0.089708,
		35.506828, 32.626556, 14.970594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604832, 32.597416, 14.106747>,  <34.810551, 32.591194, 14.907799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604832, 32.597416, 14.106747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252239, 32.711727, 14.257117>,  <34.040684, 32.780315, 14.347340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252239, 32.711727, 14.257117>,  <34.604832, 32.597416, 14.106747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252239, 32.711727, 14.257117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033672, 0.756021, -0.653681,
		-0.471017, -0.588866, -0.656796,
		-0.881482, 0.285779, 0.375927,
		33.987793, 32.797462, 14.369895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054379, 32.938015, 13.565853>,  <34.604832, 32.597416, 14.106747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054379, 32.938015, 13.565853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979431, 33.102867, 13.922513>,  <33.934464, 33.201778, 14.136509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979431, 33.102867, 13.922513>,  <34.054379, 32.938015, 13.565853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979431, 33.102867, 13.922513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163049, 0.882086, -0.441972,
		-0.968663, -0.228194, -0.098077,
		-0.187368, 0.412131, 0.891651,
		33.923222, 33.226505, 14.190008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319000, 33.293983, 13.638530>,  <34.054379, 32.938015, 13.565853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319000, 33.293983, 13.638530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601479, 33.459595, 13.868268>,  <33.770966, 33.558960, 14.006111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601479, 33.459595, 13.868268>,  <33.319000, 33.293983, 13.638530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601479, 33.459595, 13.868268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106935, 0.864266, -0.491537,
		-0.699896, 0.285703, 0.654614,
		0.706194, 0.414026, 0.574345,
		33.813335, 33.583801, 14.040571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145863, 34.049587, 13.896929>,  <33.319000, 33.293983, 13.638530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145863, 34.049587, 13.896929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534191, 34.011623, 13.808842>,  <33.767189, 33.988846, 13.755989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534191, 34.011623, 13.808842>,  <33.145863, 34.049587, 13.896929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534191, 34.011623, 13.808842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034126, 0.854323, -0.518621,
		0.237358, 0.511005, 0.826157,
		0.970823, -0.094905, -0.220219,
		33.825439, 33.983150, 13.742776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611855, 34.576553, 14.236161>,  <33.145863, 34.049587, 13.896929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611855, 34.576553, 14.236161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756351, 34.454815, 13.883600>,  <33.843052, 34.381771, 13.672064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756351, 34.454815, 13.883600>,  <33.611855, 34.576553, 14.236161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756351, 34.454815, 13.883600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110003, 0.952544, -0.283829,
		0.925959, 0.005576, 0.377583,
		0.361247, -0.304350, -0.881403,
		33.864727, 34.363510, 13.619179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307060, 34.766068, 14.217612>,  <33.611855, 34.576553, 14.236161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307060, 34.766068, 14.217612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116207, 34.760223, 13.866128>,  <34.001698, 34.756718, 13.655237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116207, 34.760223, 13.866128>,  <34.307060, 34.766068, 14.217612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116207, 34.760223, 13.866128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218171, 0.966593, -0.134535,
		0.851323, -0.255900, -0.458002,
		-0.477129, -0.014610, -0.878712,
		33.973068, 34.755840, 13.602514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053707, 34.851437, 13.919106>,  <34.307060, 34.766068, 14.217612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053707, 34.851437, 13.919106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277565, 35.109650, 14.126984>,  <35.411880, 35.264576, 14.251710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277565, 35.109650, 14.126984>,  <35.053707, 34.851437, 13.919106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277565, 35.109650, 14.126984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812716, 0.304827, 0.496560,
		0.162129, -0.700263, 0.695231,
		0.559648, 0.645532, 0.519694,
		35.445461, 35.303310, 14.282892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899208, 34.831505, 14.724491>,  <35.053707, 34.851437, 13.919106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899208, 34.831505, 14.724491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024124, 35.173107, 14.558043>,  <35.099075, 35.378067, 14.458173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024124, 35.173107, 14.558043>,  <34.899208, 34.831505, 14.724491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024124, 35.173107, 14.558043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796529, 0.474094, 0.375202,
		0.517704, 0.214284, 0.828290,
		0.312288, 0.854000, -0.416124,
		35.117809, 35.429306, 14.433206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725414, 35.215843, 15.349079>,  <34.899208, 34.831505, 14.724491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725414, 35.215843, 15.349079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889935, 34.856258, 15.409338>,  <34.988647, 34.640507, 15.445494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889935, 34.856258, 15.409338>,  <34.725414, 35.215843, 15.349079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889935, 34.856258, 15.409338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053161, 0.188652, 0.980604,
		-0.909949, -0.395314, 0.125382,
		0.411300, -0.898965, 0.150648,
		35.013325, 34.586571, 15.454533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491989, 35.026989, 16.031506>,  <34.725414, 35.215843, 15.349079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491989, 35.026989, 16.031506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784378, 34.764706, 15.955909>,  <34.959812, 34.607334, 15.910551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784378, 34.764706, 15.955909>,  <34.491989, 35.026989, 16.031506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784378, 34.764706, 15.955909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328102, 0.094874, 0.939866,
		-0.598351, -0.749027, 0.284491,
		0.730975, -0.655712, -0.188990,
		35.003670, 34.567993, 15.899212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412148, 34.567226, 16.532003>,  <34.491989, 35.026989, 16.031506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412148, 34.567226, 16.532003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794113, 34.563652, 16.413309>,  <35.023293, 34.561508, 16.342093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794113, 34.563652, 16.413309>,  <34.412148, 34.567226, 16.532003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794113, 34.563652, 16.413309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294977, 0.141293, 0.945000,
		0.033478, -0.989927, 0.137561,
		0.954918, -0.008941, -0.296736,
		35.080589, 34.560970, 16.324287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782402, 34.007587, 16.941689>,  <34.412148, 34.567226, 16.532003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782402, 34.007587, 16.941689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059772, 34.267975, 16.818136>,  <35.226192, 34.424206, 16.744005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059772, 34.267975, 16.818136>,  <34.782402, 34.007587, 16.941689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059772, 34.267975, 16.818136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369711, 0.046500, 0.927983,
		0.618447, -0.757682, -0.208425,
		0.693424, 0.650965, -0.308881,
		35.267799, 34.463264, 16.725471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490284, 33.803226, 17.171137>,  <34.782402, 34.007587, 16.941689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490284, 33.803226, 17.171137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519344, 34.196072, 17.101660>,  <35.536781, 34.431778, 17.059973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519344, 34.196072, 17.101660>,  <35.490284, 33.803226, 17.171137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519344, 34.196072, 17.101660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503351, 0.114240, 0.856497,
		0.861022, -0.149655, -0.486049,
		0.072653, 0.982116, -0.173693,
		35.541142, 34.490707, 17.049553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260910, 33.946606, 17.517725>,  <35.490284, 33.803226, 17.171137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260910, 33.946606, 17.517725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037827, 34.275967, 17.475826>,  <35.903976, 34.473583, 17.450687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037827, 34.275967, 17.475826>,  <36.260910, 33.946606, 17.517725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037827, 34.275967, 17.475826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296892, 0.315736, 0.901202,
		0.775125, 0.471507, -0.420550,
		-0.557706, 0.823403, -0.104748,
		35.870514, 34.522987, 17.444403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515621, 34.359173, 17.920620>,  <36.260910, 33.946606, 17.517725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515621, 34.359173, 17.920620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198654, 34.594444, 17.855961>,  <36.008476, 34.735607, 17.817165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198654, 34.594444, 17.855961>,  <36.515621, 34.359173, 17.920620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198654, 34.594444, 17.855961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130334, 0.422140, 0.897113,
		0.595898, 0.689816, -0.411168,
		-0.792413, 0.588177, -0.161646,
		35.960930, 34.770897, 17.807467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693302, 35.122303, 18.038691>,  <36.515621, 34.359173, 17.920620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693302, 35.122303, 18.038691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302307, 35.071831, 18.106344>,  <36.067711, 35.041550, 18.146936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302307, 35.071831, 18.106344>,  <36.693302, 35.122303, 18.038691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302307, 35.071831, 18.106344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108008, 0.389392, 0.914718,
		-0.181275, 0.912389, -0.366996,
		-0.977483, -0.126177, 0.169132,
		36.009064, 35.033978, 18.157084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567596, 35.762669, 18.357063>,  <36.693302, 35.122303, 18.038691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567596, 35.762669, 18.357063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258755, 35.520012, 18.432787>,  <36.073452, 35.374416, 18.478222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258755, 35.520012, 18.432787>,  <36.567596, 35.762669, 18.357063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258755, 35.520012, 18.432787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069364, 0.215663, 0.974001,
		-0.631701, 0.765160, -0.124434,
		-0.772102, -0.606646, 0.189309,
		36.027122, 35.338017, 18.489580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157955, 36.096199, 18.785870>,  <36.567596, 35.762669, 18.357063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157955, 36.096199, 18.785870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073967, 35.708675, 18.838520>,  <36.023575, 35.476162, 18.870110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073967, 35.708675, 18.838520>,  <36.157955, 36.096199, 18.785870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073967, 35.708675, 18.838520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063213, 0.120894, 0.990651,
		-0.975662, 0.216326, 0.035857,
		-0.209969, -0.968807, 0.131626,
		36.010975, 35.418034, 18.878008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714916, 36.122433, 19.370293>,  <36.157955, 36.096199, 18.785870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714916, 36.122433, 19.370293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862171, 35.751907, 19.338259>,  <35.950523, 35.529591, 19.319038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862171, 35.751907, 19.338259>,  <35.714916, 36.122433, 19.370293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862171, 35.751907, 19.338259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049646, -0.066429, 0.996555,
		-0.928444, -0.370848, 0.021533,
		0.368140, -0.926315, -0.080087,
		35.972614, 35.474014, 19.314232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452969, 35.888313, 19.836987>,  <35.714916, 36.122433, 19.370293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452969, 35.888313, 19.836987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723602, 35.596684, 19.795641>,  <35.885983, 35.421703, 19.770834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723602, 35.596684, 19.795641>,  <35.452969, 35.888313, 19.836987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723602, 35.596684, 19.795641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034729, -0.108621, 0.993476,
		-0.735547, -0.675758, -0.048171,
		0.676582, -0.729076, -0.103364,
		35.926579, 35.377960, 19.764631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267448, 35.405499, 20.271875>,  <35.452969, 35.888313, 19.836987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267448, 35.405499, 20.271875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655708, 35.324669, 20.219723>,  <35.888664, 35.276173, 20.188431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655708, 35.324669, 20.219723>,  <35.267448, 35.405499, 20.271875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655708, 35.324669, 20.219723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121547, -0.055593, 0.991028,
		-0.207506, -0.977792, -0.029400,
		0.970653, -0.202071, -0.130384,
		35.946903, 35.264050, 20.180607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376595, 34.778484, 20.614094>,  <35.267448, 35.405499, 20.271875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376595, 34.778484, 20.614094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724968, 34.973492, 20.589436>,  <35.933990, 35.090496, 20.574640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724968, 34.973492, 20.589436>,  <35.376595, 34.778484, 20.614094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724968, 34.973492, 20.589436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123452, -0.095646, 0.987730,
		0.475641, -0.867858, -0.143487,
		0.870933, 0.487519, -0.061645,
		35.986248, 35.119747, 20.570942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917763, 34.368385, 21.032799>,  <35.376595, 34.778484, 20.614094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917763, 34.368385, 21.032799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054783, 34.743942, 21.019302>,  <36.136997, 34.969276, 21.011204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054783, 34.743942, 21.019302>,  <35.917763, 34.368385, 21.032799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054783, 34.743942, 21.019302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182669, -0.031331, 0.982675,
		0.921569, -0.342782, -0.182239,
		0.342553, 0.938892, -0.033742,
		36.157551, 35.025608, 21.009180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176857, 34.418179, 21.673370>,  <35.917763, 34.368385, 21.032799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176857, 34.418179, 21.673370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202717, 34.797390, 21.548758>,  <36.218235, 35.024918, 21.473989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202717, 34.797390, 21.548758>,  <36.176857, 34.418179, 21.673370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202717, 34.797390, 21.548758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000457, 0.312215, 0.950011,
		0.997908, -0.061279, 0.020619,
		0.064653, 0.948033, -0.311534,
		36.222115, 35.081799, 21.455297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706024, 34.727596, 22.005224>,  <36.176857, 34.418179, 21.673370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706024, 34.727596, 22.005224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474682, 35.037994, 21.904554>,  <36.335876, 35.224232, 21.844152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474682, 35.037994, 21.904554>,  <36.706024, 34.727596, 22.005224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474682, 35.037994, 21.904554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029394, 0.328130, 0.944175,
		0.815255, 0.538671, -0.212586,
		-0.578356, 0.775992, -0.251675,
		36.301174, 35.270794, 21.829052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068443, 35.451786, 22.201254>,  <36.706024, 34.727596, 22.005224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068443, 35.451786, 22.201254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673874, 35.493713, 22.150700>,  <36.437130, 35.518871, 22.120367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673874, 35.493713, 22.150700>,  <37.068443, 35.451786, 22.201254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673874, 35.493713, 22.150700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081375, 0.356470, 0.930756,
		0.142615, 0.928408, -0.343102,
		-0.986427, 0.104820, -0.126387,
		36.377945, 35.525158, 22.112783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896667, 36.167191, 22.388985>,  <37.068443, 35.451786, 22.201254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896667, 36.167191, 22.388985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556351, 35.958626, 22.415163>,  <36.352161, 35.833488, 22.430870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556351, 35.958626, 22.415163>,  <36.896667, 36.167191, 22.388985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556351, 35.958626, 22.415163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077981, 0.248430, 0.965506,
		-0.519685, 0.816341, -0.252023,
		-0.850792, -0.521411, 0.065446,
		36.301113, 35.802204, 22.434797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535606, 36.582470, 22.834417>,  <36.896667, 36.167191, 22.388985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535606, 36.582470, 22.834417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343624, 36.231579, 22.830303>,  <36.228436, 36.021042, 22.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343624, 36.231579, 22.830303>,  <36.535606, 36.582470, 22.834417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343624, 36.231579, 22.830303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375142, 0.194625, 0.906306,
		-0.793037, 0.438848, -0.422498,
		-0.479959, -0.877231, -0.010286,
		36.199635, 35.968410, 22.827217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766666, 36.661152, 23.122234>,  <36.535606, 36.582470, 22.834417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766666, 36.661152, 23.122234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867828, 36.276001, 23.159977>,  <35.928524, 36.044910, 23.182623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867828, 36.276001, 23.159977>,  <35.766666, 36.661152, 23.122234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867828, 36.276001, 23.159977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008033, 0.099614, 0.994994,
		-0.967458, -0.250880, 0.032927,
		0.252904, -0.962879, 0.094357,
		35.943699, 35.987137, 23.188284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354294, 36.406071, 23.638987>,  <35.766666, 36.661152, 23.122234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354294, 36.406071, 23.638987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619789, 36.107407, 23.621332>,  <35.779087, 35.928207, 23.610739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619789, 36.107407, 23.621332>,  <35.354294, 36.406071, 23.638987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619789, 36.107407, 23.621332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040950, -0.022646, 0.998904,
		-0.746841, -0.664821, 0.015544,
		0.663741, -0.746659, -0.044137,
		35.818913, 35.883408, 23.608091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178982, 36.074131, 24.217541>,  <35.354294, 36.406071, 23.638987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178982, 36.074131, 24.217541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532459, 35.913864, 24.120743>,  <35.744545, 35.817703, 24.062664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532459, 35.913864, 24.120743>,  <35.178982, 36.074131, 24.217541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532459, 35.913864, 24.120743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191178, -0.162956, 0.967934,
		-0.427253, -0.901616, -0.067404,
		0.883689, -0.400666, -0.241993,
		35.797565, 35.793663, 24.048145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202240, 35.395088, 24.401224>,  <35.178982, 36.074131, 24.217541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202240, 35.395088, 24.401224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587494, 35.500507, 24.379622>,  <35.818645, 35.563759, 24.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587494, 35.500507, 24.379622>,  <35.202240, 35.395088, 24.401224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587494, 35.500507, 24.379622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137002, -0.307738, 0.941556,
		0.231525, -0.914243, -0.332499,
		0.963134, 0.263547, -0.054005,
		35.876434, 35.579571, 24.363420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615494, 34.792793, 24.542946>,  <35.202240, 35.395088, 24.401224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615494, 34.792793, 24.542946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860767, 35.099976, 24.616976>,  <36.007931, 35.284286, 24.661394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860767, 35.099976, 24.616976>,  <35.615494, 34.792793, 24.542946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860767, 35.099976, 24.616976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036161, -0.206753, 0.977725,
		0.789114, -0.606215, -0.099007,
		0.613182, 0.767956, 0.185073,
		36.044724, 35.330360, 24.672497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339546, 34.578983, 24.697681>,  <35.615494, 34.792793, 24.542946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339546, 34.578983, 24.697681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278511, 34.926407, 24.886282>,  <36.241890, 35.134861, 24.999443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278511, 34.926407, 24.886282>,  <36.339546, 34.578983, 24.697681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278511, 34.926407, 24.886282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104791, -0.460181, 0.881619,
		0.982718, 0.183934, -0.020799,
		-0.152589, 0.868563, 0.471503,
		36.232735, 35.186977, 25.027733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752007, 34.526527, 25.294281>,  <36.339546, 34.578983, 24.697681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752007, 34.526527, 25.294281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506908, 34.829376, 25.384897>,  <36.359852, 35.011086, 25.439266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506908, 34.829376, 25.384897>,  <36.752007, 34.526527, 25.294281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506908, 34.829376, 25.384897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124534, -0.190572, 0.973742,
		0.780410, 0.624864, 0.022484,
		-0.612741, 0.757118, 0.226541,
		36.323086, 35.056511, 25.452860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034874, 34.870174, 25.754995>,  <36.752007, 34.526527, 25.294281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034874, 34.870174, 25.754995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672047, 35.029469, 25.809591>,  <36.454350, 35.125046, 25.842348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672047, 35.029469, 25.809591>,  <37.034874, 34.870174, 25.754995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672047, 35.029469, 25.809591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221909, 0.176799, 0.958905,
		0.357743, 0.900082, -0.248742,
		-0.907070, 0.398239, 0.136488,
		36.399925, 35.148941, 25.850538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105976, 35.364956, 26.158098>,  <37.034874, 34.870174, 25.754995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105976, 35.364956, 26.158098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709133, 35.336117, 26.199142>,  <36.471027, 35.318813, 26.223770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709133, 35.336117, 26.199142>,  <37.105976, 35.364956, 26.158098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709133, 35.336117, 26.199142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087271, 0.190677, 0.977766,
		-0.090061, 0.979002, -0.182879,
		-0.992105, -0.072098, 0.102611,
		36.411503, 35.314487, 26.229925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959255, 35.850407, 26.648390>,  <37.105976, 35.364956, 26.158098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959255, 35.850407, 26.648390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624058, 35.632168, 26.652258>,  <36.422939, 35.501225, 26.654579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624058, 35.632168, 26.652258>,  <36.959255, 35.850407, 26.648390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624058, 35.632168, 26.652258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245572, 0.392887, 0.886191,
		-0.487302, 0.740246, -0.463220,
		-0.837992, -0.545597, 0.009671,
		36.372662, 35.468491, 26.655159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344017, 36.378628, 26.732092>,  <36.959255, 35.850407, 26.648390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344017, 36.378628, 26.732092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261860, 36.011208, 26.867197>,  <36.212566, 35.790756, 26.948259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261860, 36.011208, 26.867197>,  <36.344017, 36.378628, 26.732092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261860, 36.011208, 26.867197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292212, 0.386935, 0.874582,
		-0.934037, 0.080935, -0.347885,
		-0.205393, -0.918548, 0.337762,
		36.200241, 35.735641, 26.968525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764065, 36.424702, 27.115704>,  <36.344017, 36.378628, 26.732092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764065, 36.424702, 27.115704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877579, 36.059597, 27.233227>,  <35.945686, 35.840534, 27.303741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877579, 36.059597, 27.233227>,  <35.764065, 36.424702, 27.115704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877579, 36.059597, 27.233227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318747, 0.199185, 0.926674,
		-0.904359, -0.356629, -0.234415,
		0.283787, -0.912766, 0.293809,
		35.962715, 35.785767, 27.321369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264793, 36.160835, 27.596111>,  <35.764065, 36.424702, 27.115704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264793, 36.160835, 27.596111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595230, 35.947247, 27.668165>,  <35.793491, 35.819096, 27.711397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595230, 35.947247, 27.668165>,  <35.264793, 36.160835, 27.596111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595230, 35.947247, 27.668165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194987, 0.029067, 0.980375,
		-0.528725, -0.845005, -0.080105,
		0.826093, -0.533968, 0.180134,
		35.843060, 35.787056, 27.722206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085209, 35.849682, 28.220930>,  <35.264793, 36.160835, 27.596111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085209, 35.849682, 28.220930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477432, 35.771278, 28.217026>,  <35.712765, 35.724236, 28.214684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477432, 35.771278, 28.217026>,  <35.085209, 35.849682, 28.220930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477432, 35.771278, 28.217026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023918, 0.070000, 0.997260,
		-0.194787, -0.978101, 0.073327,
		0.980554, -0.196007, -0.009759,
		35.771599, 35.712475, 28.214098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144772, 35.432858, 28.832121>,  <35.085209, 35.849682, 28.220930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144772, 35.432858, 28.832121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530296, 35.504192, 28.752863>,  <35.761612, 35.546993, 28.705309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530296, 35.504192, 28.752863>,  <35.144772, 35.432858, 28.832121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530296, 35.504192, 28.752863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227572, -0.163316, 0.959968,
		0.138842, -0.970321, -0.197991,
		0.963812, 0.178341, -0.198143,
		35.819439, 35.557693, 28.693420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517368, 34.919960, 29.175421>,  <35.144772, 35.432858, 28.832121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517368, 34.919960, 29.175421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776081, 35.216236, 29.102709>,  <35.931309, 35.394001, 29.059082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776081, 35.216236, 29.102709>,  <35.517368, 34.919960, 29.175421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776081, 35.216236, 29.102709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393245, -0.119656, 0.911615,
		0.653477, -0.661101, -0.368666,
		0.646782, 0.740695, -0.181782,
		35.970116, 35.438446, 29.048174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164951, 34.702911, 29.310360>,  <35.517368, 34.919960, 29.175421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164951, 34.702911, 29.310360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175064, 35.099930, 29.358057>,  <36.181129, 35.338139, 29.386675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175064, 35.099930, 29.358057>,  <36.164951, 34.702911, 29.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175064, 35.099930, 29.358057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409634, -0.119092, 0.904443,
		0.911899, 0.025981, -0.409590,
		0.025280, 0.992543, 0.119243,
		36.182648, 35.397694, 29.393829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865955, 34.978477, 29.487387>,  <36.164951, 34.702911, 29.310360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865955, 34.978477, 29.487387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635792, 35.267353, 29.640926>,  <36.497692, 35.440678, 29.733049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635792, 35.267353, 29.640926>,  <36.865955, 34.978477, 29.487387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635792, 35.267353, 29.640926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583143, 0.033206, 0.811691,
		0.573449, 0.690897, -0.440247,
		-0.575413, 0.722190, 0.383850,
		36.463169, 35.484009, 29.756081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369564, 35.415146, 29.681881>,  <36.865955, 34.978477, 29.487387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369564, 35.415146, 29.681881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036926, 35.538624, 29.866560>,  <36.837345, 35.612709, 29.977367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036926, 35.538624, 29.866560>,  <37.369564, 35.415146, 29.681881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036926, 35.538624, 29.866560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472729, -0.042926, 0.880162,
		0.291516, 0.950194, -0.110230,
		-0.831593, 0.308690, 0.461697,
		36.787449, 35.631229, 30.005070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953114, 35.506634, 29.188988>,  <37.369564, 35.415146, 29.681881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953114, 35.506634, 29.188988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314140, 35.575783, 29.346720>,  <38.530754, 35.617271, 29.441359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314140, 35.575783, 29.346720>,  <37.953114, 35.506634, 29.188988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314140, 35.575783, 29.346720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240714, 0.556753, -0.795036,
		-0.356984, 0.812491, 0.460892,
		0.902563, 0.172872, 0.394330,
		38.584908, 35.627644, 29.465019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138573, 36.201458, 29.126795>,  <37.953114, 35.506634, 29.188988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138573, 36.201458, 29.126795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491657, 36.017921, 29.167383>,  <38.703506, 35.907799, 29.191736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491657, 36.017921, 29.167383>,  <38.138573, 36.201458, 29.126795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491657, 36.017921, 29.167383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382270, 0.575530, -0.722934,
		0.273308, 0.676930, 0.683424,
		0.882707, -0.458837, 0.101473,
		38.756470, 35.880272, 29.197824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636223, 36.704475, 29.159342>,  <38.138573, 36.201458, 29.126795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636223, 36.704475, 29.159342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819622, 36.363281, 29.059593>,  <38.929661, 36.158566, 28.999744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819622, 36.363281, 29.059593>,  <38.636223, 36.704475, 29.159342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819622, 36.363281, 29.059593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492534, 0.477471, -0.727621,
		0.739721, 0.210790, 0.639047,
		0.458501, -0.852988, -0.249373,
		38.957172, 36.107384, 28.984781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288345, 36.953011, 28.886333>,  <38.636223, 36.704475, 29.159342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288345, 36.953011, 28.886333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242008, 36.572956, 28.770531>,  <39.214207, 36.344921, 28.701050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242008, 36.572956, 28.770531>,  <39.288345, 36.953011, 28.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242008, 36.572956, 28.770531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590626, 0.168448, -0.789168,
		0.798588, -0.262407, 0.541664,
		-0.115841, -0.950141, -0.289505,
		39.207256, 36.287914, 28.683680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005211, 36.642929, 28.706717>,  <39.288345, 36.953011, 28.886333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005211, 36.642929, 28.706717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728420, 36.431919, 28.509581>,  <39.562347, 36.305313, 28.391300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728420, 36.431919, 28.509581>,  <40.005211, 36.642929, 28.706717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728420, 36.431919, 28.509581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472446, 0.185280, -0.861665,
		0.545859, -0.829092, 0.121015,
		-0.691978, -0.527520, -0.492838,
		39.520828, 36.273663, 28.361729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365482, 36.492958, 28.179567>,  <40.005211, 36.642929, 28.706717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365482, 36.492958, 28.179567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996891, 36.408985, 28.048845>,  <39.775734, 36.358601, 27.970411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996891, 36.408985, 28.048845>,  <40.365482, 36.492958, 28.179567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996891, 36.408985, 28.048845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264300, 0.277672, -0.923604,
		0.284669, -0.937451, -0.200373,
		-0.921471, -0.209962, -0.326813,
		39.720448, 36.346004, 27.950804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505646, 36.438080, 27.539011>,  <40.365482, 36.492958, 28.179567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505646, 36.438080, 27.539011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106018, 36.451439, 27.528111>,  <39.866241, 36.459454, 27.521570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106018, 36.451439, 27.528111>,  <40.505646, 36.438080, 27.539011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106018, 36.451439, 27.528111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037931, 0.380740, -0.923904,
		-0.020485, -0.924079, -0.381653,
		-0.999070, 0.033402, -0.027252,
		39.806297, 36.461460, 27.519936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308041, 36.107090, 26.920115>,  <40.505646, 36.438080, 27.539011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308041, 36.107090, 26.920115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021530, 36.364265, 27.028620>,  <39.849625, 36.518570, 27.093723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021530, 36.364265, 27.028620>,  <40.308041, 36.107090, 26.920115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021530, 36.364265, 27.028620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085226, 0.305219, -0.948461,
		-0.692597, -0.702475, -0.163825,
		-0.716273, 0.642939, 0.271263,
		39.806648, 36.557148, 27.109999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665676, 35.910152, 26.593142>,  <40.308041, 36.107090, 26.920115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665676, 35.910152, 26.593142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630329, 36.295177, 26.695648>,  <39.609123, 36.526192, 26.757153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630329, 36.295177, 26.695648>,  <39.665676, 35.910152, 26.593142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630329, 36.295177, 26.695648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159836, 0.240235, -0.957465,
		-0.983180, -0.125567, 0.132624,
		-0.088365, 0.962559, 0.256264,
		39.603821, 36.583946, 26.772528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128250, 36.136154, 26.231144>,  <39.665676, 35.910152, 26.593142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128250, 36.136154, 26.231144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283318, 36.486507, 26.346064>,  <39.376358, 36.696720, 26.415016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283318, 36.486507, 26.346064>,  <39.128250, 36.136154, 26.231144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283318, 36.486507, 26.346064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065743, 0.337150, -0.939153,
		-0.919450, 0.345195, 0.188287,
		0.387671, 0.875883, 0.287299,
		39.399620, 36.749271, 26.432253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641365, 36.695709, 25.963137>,  <39.128250, 36.136154, 26.231144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641365, 36.695709, 25.963137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007004, 36.851189, 26.009338>,  <39.226387, 36.944477, 26.037060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007004, 36.851189, 26.009338>,  <38.641365, 36.695709, 25.963137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007004, 36.851189, 26.009338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052719, 0.396351, -0.916584,
		-0.402052, 0.831759, 0.382795,
		0.914098, 0.388695, 0.115504,
		39.281235, 36.967796, 26.043989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594219, 37.349224, 25.547142>,  <38.641365, 36.695709, 25.963137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594219, 37.349224, 25.547142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981861, 37.279831, 25.617285>,  <39.214447, 37.238197, 25.659370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981861, 37.279831, 25.617285>,  <38.594219, 37.349224, 25.547142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981861, 37.279831, 25.617285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222772, 0.310299, -0.924168,
		0.105913, 0.934676, 0.339357,
		0.969100, -0.173481, 0.175355,
		39.272591, 37.227787, 25.669891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915527, 37.946472, 25.261106>,  <38.594219, 37.349224, 25.547142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915527, 37.946472, 25.261106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178471, 37.645588, 25.279263>,  <39.336239, 37.465057, 25.290157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178471, 37.645588, 25.279263>,  <38.915527, 37.946472, 25.261106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178471, 37.645588, 25.279263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219407, 0.133421, -0.966467,
		0.720927, 0.645279, 0.252745,
		0.657362, -0.752206, 0.045392,
		39.375679, 37.419926, 25.292881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497257, 38.179348, 24.859247>,  <38.915527, 37.946472, 25.261106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497257, 38.179348, 24.859247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520676, 37.780140, 24.868393>,  <39.534725, 37.540615, 24.873880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520676, 37.780140, 24.868393>,  <39.497257, 38.179348, 24.859247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520676, 37.780140, 24.868393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062520, -0.019193, -0.997859,
		0.996325, 0.059850, 0.061273,
		0.058546, -0.998023, 0.022865,
		39.538239, 37.480732, 24.875252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886097, 37.985683, 24.274815>,  <39.497257, 38.179348, 24.859247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886097, 37.985683, 24.274815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712025, 37.630325, 24.333294>,  <39.607582, 37.417110, 24.368382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712025, 37.630325, 24.333294>,  <39.886097, 37.985683, 24.274815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712025, 37.630325, 24.333294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124488, -0.220196, -0.967479,
		0.891693, -0.402832, 0.206420,
		-0.435185, -0.888392, 0.146199,
		39.581470, 37.363808, 24.377153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288040, 37.464607, 23.895897>,  <39.886097, 37.985683, 24.274815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288040, 37.464607, 23.895897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950840, 37.257057, 23.952620>,  <39.748520, 37.132526, 23.986654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950840, 37.257057, 23.952620>,  <40.288040, 37.464607, 23.895897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950840, 37.257057, 23.952620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039396, -0.203365, -0.978310,
		0.536463, -0.830305, 0.150996,
		-0.843004, -0.518879, 0.141809,
		39.697937, 37.101395, 23.995163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335991, 36.941193, 23.505491>,  <40.288040, 37.464607, 23.895897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335991, 36.941193, 23.505491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940327, 36.915070, 23.558084>,  <39.702927, 36.899395, 23.589642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940327, 36.915070, 23.558084>,  <40.335991, 36.941193, 23.505491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940327, 36.915070, 23.558084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111843, -0.244960, -0.963061,
		0.095100, -0.967331, 0.235002,
		-0.989165, -0.065304, 0.131484,
		39.643578, 36.895477, 23.597530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159889, 36.400135, 23.074610>,  <40.335991, 36.941193, 23.505491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159889, 36.400135, 23.074610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819828, 36.606731, 23.115545>,  <39.615791, 36.730690, 23.140106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819828, 36.606731, 23.115545>,  <40.159889, 36.400135, 23.074610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819828, 36.606731, 23.115545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205441, -0.146430, -0.967653,
		-0.484800, -0.843679, 0.230596,
		-0.850154, 0.516492, 0.102337,
		39.564781, 36.761681, 23.146246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593243, 35.902905, 22.762903>,  <40.159889, 36.400135, 23.074610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593243, 35.902905, 22.762903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455223, 36.278339, 22.762369>,  <39.372410, 36.503601, 22.762049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455223, 36.278339, 22.762369>,  <39.593243, 35.902905, 22.762903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455223, 36.278339, 22.762369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429437, -0.159140, -0.888965,
		-0.834580, -0.306164, 0.457973,
		-0.345050, 0.938583, -0.001337,
		39.351707, 36.559914, 22.761969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905453, 35.770287, 22.537668>,  <39.593243, 35.902905, 22.762903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905453, 35.770287, 22.537668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972740, 36.161823, 22.491077>,  <39.013115, 36.396744, 22.463123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972740, 36.161823, 22.491077>,  <38.905453, 35.770287, 22.537668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972740, 36.161823, 22.491077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584372, 0.003868, -0.811476,
		-0.793857, 0.204576, 0.572660,
		0.168223, 0.978843, -0.116478,
		39.023209, 36.455475, 22.456135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325146, 36.143620, 22.509468>,  <38.905453, 35.770287, 22.537668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325146, 36.143620, 22.509468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584694, 36.381920, 22.320133>,  <38.740421, 36.524899, 22.206532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584694, 36.381920, 22.320133>,  <38.325146, 36.143620, 22.509468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584694, 36.381920, 22.320133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518366, -0.109286, -0.848147,
		-0.557013, 0.795700, 0.237905,
		0.648871, 0.595751, -0.473337,
		38.779354, 36.560646, 22.178133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925278, 36.695530, 22.073956>,  <38.325146, 36.143620, 22.509468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925278, 36.695530, 22.073956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290100, 36.672691, 21.911531>,  <38.508995, 36.658989, 21.814077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290100, 36.672691, 21.911531>,  <37.925278, 36.695530, 22.073956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290100, 36.672691, 21.911531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409984, -0.145624, -0.900392,
		-0.007723, 0.987691, -0.156227,
		0.912060, -0.057096, -0.406063,
		38.563717, 36.655563, 21.789713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787521, 36.926422, 21.469337>,  <37.925278, 36.695530, 22.073956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787521, 36.926422, 21.469337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119450, 36.707317, 21.426704>,  <38.318607, 36.575855, 21.401125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119450, 36.707317, 21.426704>,  <37.787521, 36.926422, 21.469337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119450, 36.707317, 21.426704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270966, -0.228547, -0.935064,
		0.487833, 0.804813, -0.338077,
		0.829818, -0.547762, -0.106584,
		38.368397, 36.542988, 21.394730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022827, 37.269123, 20.865595>,  <37.787521, 36.926422, 21.469337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022827, 37.269123, 20.865595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203842, 36.916248, 20.917681>,  <38.312450, 36.704525, 20.948933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203842, 36.916248, 20.917681>,  <38.022827, 37.269123, 20.865595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203842, 36.916248, 20.917681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121207, -0.205515, -0.971119,
		0.883468, 0.423688, -0.199931,
		0.452541, -0.882186, 0.130213,
		38.339603, 36.651592, 20.956745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585518, 37.229168, 20.453623>,  <38.022827, 37.269123, 20.865595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585518, 37.229168, 20.453623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530701, 36.839806, 20.527054>,  <38.497810, 36.606190, 20.571112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530701, 36.839806, 20.527054>,  <38.585518, 37.229168, 20.453623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530701, 36.839806, 20.527054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187534, -0.207471, -0.960097,
		0.972651, -0.097147, 0.210979,
		-0.137043, -0.973406, 0.183578,
		38.489590, 36.547783, 20.582127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114887, 36.900829, 20.179453>,  <38.585518, 37.229168, 20.453623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114887, 36.900829, 20.179453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862560, 36.595207, 20.233545>,  <38.711166, 36.411835, 20.266001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862560, 36.595207, 20.233545>,  <39.114887, 36.900829, 20.179453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862560, 36.595207, 20.233545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339634, -0.428588, -0.837234,
		0.697656, -0.482209, 0.529860,
		-0.630813, -0.764059, 0.135232,
		38.673317, 36.365990, 20.274115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543819, 36.389030, 19.973557>,  <39.114887, 36.900829, 20.179453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543819, 36.389030, 19.973557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168488, 36.254368, 19.942060>,  <38.943287, 36.173569, 19.923162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168488, 36.254368, 19.942060>,  <39.543819, 36.389030, 19.973557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168488, 36.254368, 19.942060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233883, -0.450335, -0.861683,
		0.254634, -0.826958, 0.501301,
		-0.938328, -0.336660, -0.078741,
		38.886990, 36.153370, 19.918438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578182, 35.700394, 19.793751>,  <39.543819, 36.389030, 19.973557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578182, 35.700394, 19.793751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200939, 35.789570, 19.695084>,  <38.974594, 35.843075, 19.635883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200939, 35.789570, 19.695084>,  <39.578182, 35.700394, 19.793751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200939, 35.789570, 19.695084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083636, -0.558955, -0.824969,
		-0.321797, -0.798665, 0.508509,
		-0.943107, 0.222943, -0.246668,
		38.918007, 35.856453, 19.621084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501736, 35.076672, 19.366491>,  <39.578182, 35.700394, 19.793751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501736, 35.076672, 19.366491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188152, 35.314926, 19.296482>,  <39.000004, 35.457878, 19.254477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188152, 35.314926, 19.296482>,  <39.501736, 35.076672, 19.366491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188152, 35.314926, 19.296482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174793, -0.482287, -0.858398,
		-0.595704, -0.642352, 0.482204,
		-0.783954, 0.595636, -0.175022,
		38.952965, 35.493618, 19.243975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881302, 34.713886, 19.308498>,  <39.501736, 35.076672, 19.366491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881302, 34.713886, 19.308498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860809, 35.052319, 19.096264>,  <38.848515, 35.255379, 18.968924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860809, 35.052319, 19.096264>,  <38.881302, 34.713886, 19.308498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860809, 35.052319, 19.096264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126154, -0.532511, -0.836969,
		-0.990687, 0.024055, 0.134019,
		-0.051233, 0.846081, -0.530586,
		38.845440, 35.306145, 18.937088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275639, 34.704926, 18.868141>,  <38.881302, 34.713886, 19.308498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275639, 34.704926, 18.868141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537567, 34.955940, 18.699661>,  <38.694725, 35.106548, 18.598574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537567, 34.955940, 18.699661>,  <38.275639, 34.704926, 18.868141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537567, 34.955940, 18.699661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153512, -0.435251, -0.887125,
		-0.740029, 0.645568, -0.188678,
		0.654822, 0.627533, -0.421200,
		38.734013, 35.144199, 18.573301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022762, 34.783627, 18.201660>,  <38.275639, 34.704926, 18.868141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022762, 34.783627, 18.201660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384586, 34.954144, 18.204254>,  <38.601681, 35.056454, 18.205811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384586, 34.954144, 18.204254>,  <38.022762, 34.783627, 18.201660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384586, 34.954144, 18.204254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179764, -0.367566, -0.912458,
		-0.386586, 0.826543, -0.409118,
		0.904564, 0.426288, 0.006486,
		38.655956, 35.082031, 18.206200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035339, 34.916405, 17.527151>,  <38.022762, 34.783627, 18.201660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035339, 34.916405, 17.527151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406960, 34.917328, 17.675127>,  <38.629932, 34.917881, 17.763912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406960, 34.917328, 17.675127>,  <38.035339, 34.916405, 17.527151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406960, 34.917328, 17.675127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350551, -0.325038, -0.878331,
		0.118213, 0.945698, -0.302788,
		0.929053, 0.002312, 0.369939,
		38.685677, 34.918022, 17.786108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502151, 35.523350, 17.286972>,  <38.035339, 34.916405, 17.527151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502151, 35.523350, 17.286972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722263, 35.201130, 17.374863>,  <38.854328, 35.007797, 17.427597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722263, 35.201130, 17.374863>,  <38.502151, 35.523350, 17.286972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722263, 35.201130, 17.374863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341080, -0.023335, -0.939745,
		0.762141, 0.592065, 0.261918,
		0.550278, -0.805552, 0.219726,
		38.887348, 34.959465, 17.440781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870556, 35.417645, 16.703978>,  <38.502151, 35.523350, 17.286972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870556, 35.417645, 16.703978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000866, 35.087231, 16.887951>,  <39.079052, 34.888981, 16.998335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000866, 35.087231, 16.887951>,  <38.870556, 35.417645, 16.703978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000866, 35.087231, 16.887951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522312, -0.248252, -0.815819,
		0.788074, 0.506002, 0.350573,
		0.325776, -0.826034, 0.459932,
		39.098598, 34.839420, 17.025930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482201, 35.193024, 16.235378>,  <38.870556, 35.417645, 16.703978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482201, 35.193024, 16.235378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373318, 34.890034, 16.472740>,  <39.307987, 34.708241, 16.615158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373318, 34.890034, 16.472740>,  <39.482201, 35.193024, 16.235378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373318, 34.890034, 16.472740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332770, -0.652747, -0.680577,
		0.902865, 0.012207, 0.429750,
		-0.272210, -0.757478, 0.593405,
		39.291656, 34.662792, 16.650761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006180, 34.706650, 16.202211>,  <39.482201, 35.193024, 16.235378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006180, 34.706650, 16.202211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687325, 34.493237, 16.315281>,  <39.496010, 34.365189, 16.383123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687325, 34.493237, 16.315281>,  <40.006180, 34.706650, 16.202211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687325, 34.493237, 16.315281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226368, -0.698098, -0.679277,
		0.559754, -0.477491, 0.677258,
		-0.797141, -0.533537, 0.282674,
		39.448181, 34.333176, 16.400084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338795, 33.959770, 16.376474>,  <40.006180, 34.706650, 16.202211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338795, 33.959770, 16.376474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946972, 33.945717, 16.297253>,  <39.711876, 33.937283, 16.249720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946972, 33.945717, 16.297253>,  <40.338795, 33.959770, 16.376474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946972, 33.945717, 16.297253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143185, -0.813343, -0.563890,
		-0.141272, -0.580723, 0.801750,
		-0.979561, -0.035136, -0.198053,
		39.653103, 33.935177, 16.237837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031376, 33.297127, 16.611547>,  <40.338795, 33.959770, 16.376474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031376, 33.297127, 16.611547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365177, 33.321945, 16.392548>,  <40.565456, 33.336838, 16.261148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365177, 33.321945, 16.392548>,  <40.031376, 33.297127, 16.611547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365177, 33.321945, 16.392548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516652, 0.257242, 0.816638,
		0.191512, -0.964353, 0.182611,
		0.834502, 0.062050, -0.547500,
		40.615528, 33.340561, 16.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575584, 32.899174, 16.854088>,  <40.031376, 33.297127, 16.611547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575584, 32.899174, 16.854088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774326, 33.179508, 16.649361>,  <40.893574, 33.347710, 16.526524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774326, 33.179508, 16.649361>,  <40.575584, 32.899174, 16.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774326, 33.179508, 16.649361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610786, 0.136563, 0.779931,
		0.616501, -0.700126, -0.360210,
		0.496858, 0.700839, -0.511818,
		40.923386, 33.389759, 16.495815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311619, 32.784279, 16.969433>,  <40.575584, 32.899174, 16.854088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311619, 32.784279, 16.969433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295475, 33.163631, 16.843607>,  <41.285789, 33.391243, 16.768110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295475, 33.163631, 16.843607>,  <41.311619, 32.784279, 16.969433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295475, 33.163631, 16.843607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556660, 0.282784, 0.781129,
		0.829759, -0.143578, -0.539337,
		-0.040363, 0.948377, -0.314567,
		41.283367, 33.448143, 16.749237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977470, 33.210049, 17.081821>,  <41.311619, 32.784279, 16.969433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977470, 33.210049, 17.081821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669762, 33.465286, 17.068844>,  <41.485134, 33.618427, 17.061056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669762, 33.465286, 17.068844>,  <41.977470, 33.210049, 17.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669762, 33.465286, 17.068844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363144, 0.478454, 0.799505,
		0.525681, 0.603258, -0.599783,
		-0.769276, 0.638092, -0.032445,
		41.438980, 33.656715, 17.059111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327538, 33.801876, 17.401358>,  <41.977470, 33.210049, 17.081821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327538, 33.801876, 17.401358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942322, 33.907043, 17.424768>,  <41.711193, 33.970142, 17.438814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942322, 33.907043, 17.424768>,  <42.327538, 33.801876, 17.401358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942322, 33.907043, 17.424768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186834, 0.495525, 0.848262,
		0.194022, 0.827846, -0.526333,
		-0.963041, 0.262918, 0.058527,
		41.653408, 33.985920, 17.442326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346989, 34.574471, 17.603058>,  <42.327538, 33.801876, 17.401358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346989, 34.574471, 17.603058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985622, 34.440060, 17.709581>,  <41.768803, 34.359413, 17.773497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985622, 34.440060, 17.709581>,  <42.346989, 34.574471, 17.603058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985622, 34.440060, 17.709581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029408, 0.571092, 0.820359,
		-0.427751, 0.748959, -0.506053,
		-0.903418, -0.336027, 0.266310,
		41.714596, 34.339252, 17.789474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967785, 35.127518, 17.904026>,  <42.346989, 34.574471, 17.603058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967785, 35.127518, 17.904026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782928, 34.796200, 18.030739>,  <41.672016, 34.597408, 18.106766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782928, 34.796200, 18.030739>,  <41.967785, 35.127518, 17.904026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782928, 34.796200, 18.030739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035499, 0.374206, 0.926666,
		-0.886097, 0.417002, -0.202339,
		-0.462137, -0.828299, 0.316780,
		41.644287, 34.547710, 18.125772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308506, 35.308014, 18.356253>,  <41.967785, 35.127518, 17.904026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308506, 35.308014, 18.356253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404266, 34.928623, 18.439272>,  <41.461723, 34.700989, 18.489084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404266, 34.928623, 18.439272>,  <41.308506, 35.308014, 18.356253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404266, 34.928623, 18.439272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067258, 0.197049, 0.978084,
		-0.968589, -0.248109, -0.016620,
		0.239396, -0.948480, 0.207547,
		41.476086, 34.644081, 18.501535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834324, 35.083084, 18.861080>,  <41.308506, 35.308014, 18.356253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834324, 35.083084, 18.861080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136448, 34.823021, 18.894070>,  <41.317722, 34.666985, 18.913862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136448, 34.823021, 18.894070>,  <40.834324, 35.083084, 18.861080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136448, 34.823021, 18.894070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104532, 0.004714, 0.994510,
		-0.646975, -0.759787, -0.064401,
		0.755312, -0.650155, 0.082472,
		41.363041, 34.627975, 18.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617882, 34.545593, 19.355482>,  <40.834324, 35.083084, 18.861080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617882, 34.545593, 19.355482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017727, 34.553173, 19.347395>,  <41.257633, 34.557720, 19.342543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017727, 34.553173, 19.347395>,  <40.617882, 34.545593, 19.355482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017727, 34.553173, 19.347395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019074, 0.058743, 0.998091,
		0.020098, -0.998093, 0.058359,
		0.999616, 0.018947, -0.020218,
		41.317612, 34.558857, 19.341330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716839, 34.393612, 20.079212>,  <40.617882, 34.545593, 19.355482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716839, 34.393612, 20.079212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065781, 34.536266, 19.945465>,  <41.275146, 34.621857, 19.865217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065781, 34.536266, 19.945465>,  <40.716839, 34.393612, 20.079212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065781, 34.536266, 19.945465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233318, 0.297315, 0.925833,
		0.429597, -0.885672, 0.176156,
		0.872359, 0.356634, -0.334369,
		41.327488, 34.643257, 19.845154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230106, 34.106831, 20.402803>,  <40.716839, 34.393612, 20.079212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230106, 34.106831, 20.402803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395832, 34.450367, 20.282322>,  <41.495270, 34.656490, 20.210033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395832, 34.450367, 20.282322>,  <41.230106, 34.106831, 20.402803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395832, 34.450367, 20.282322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282376, 0.193313, 0.939625,
		0.865219, -0.474357, -0.162424,
		0.414318, 0.858846, -0.301205,
		41.520126, 34.708019, 20.191961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834785, 34.233265, 20.785898>,  <41.230106, 34.106831, 20.402803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834785, 34.233265, 20.785898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765572, 34.594402, 20.628452>,  <41.724045, 34.811085, 20.533985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765572, 34.594402, 20.628452>,  <41.834785, 34.233265, 20.785898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765572, 34.594402, 20.628452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168705, 0.420903, 0.891280,
		0.970360, 0.087816, -0.225145,
		-0.173033, 0.902845, -0.393613,
		41.713661, 34.865257, 20.510368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394215, 34.621861, 21.080360>,  <41.834785, 34.233265, 20.785898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394215, 34.621861, 21.080360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106758, 34.872448, 20.959637>,  <41.934284, 35.022800, 20.887203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106758, 34.872448, 20.959637>,  <42.394215, 34.621861, 21.080360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106758, 34.872448, 20.959637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051046, 0.480376, 0.875576,
		0.693503, 0.613821, -0.377197,
		-0.718643, 0.626469, -0.301809,
		41.891167, 35.060390, 20.869095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694496, 35.184872, 21.131365>,  <42.394215, 34.621861, 21.080360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694496, 35.184872, 21.131365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302837, 35.265297, 21.142923>,  <42.067841, 35.313553, 21.149858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302837, 35.265297, 21.142923>,  <42.694496, 35.184872, 21.131365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302837, 35.265297, 21.142923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145024, 0.592334, 0.792533,
		0.142233, 0.780201, -0.609144,
		-0.979152, 0.201065, 0.028898,
		42.009090, 35.325615, 21.151592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754009, 35.826214, 21.269018>,  <42.694496, 35.184872, 21.131365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754009, 35.826214, 21.269018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369053, 35.748745, 21.345224>,  <42.138081, 35.702263, 21.390947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369053, 35.748745, 21.345224>,  <42.754009, 35.826214, 21.269018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369053, 35.748745, 21.345224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061000, 0.529313, 0.846231,
		-0.264734, 0.826025, -0.497592,
		-0.962390, -0.193673, 0.190515,
		42.080338, 35.690643, 21.402378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418133, 36.463848, 21.506437>,  <42.754009, 35.826214, 21.269018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418133, 36.463848, 21.506437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181492, 36.163635, 21.624224>,  <42.039505, 35.983509, 21.694897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181492, 36.163635, 21.624224>,  <42.418133, 36.463848, 21.506437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181492, 36.163635, 21.624224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092979, 0.426318, 0.899782,
		-0.800849, 0.504936, -0.321995,
		-0.591605, -0.750528, 0.294468,
		42.004009, 35.938477, 21.712564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694736, 36.701424, 21.744537>,  <42.418133, 36.463848, 21.506437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694736, 36.701424, 21.744537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735069, 36.341286, 21.913876>,  <41.759270, 36.125202, 22.015478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735069, 36.341286, 21.913876>,  <41.694736, 36.701424, 21.744537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735069, 36.341286, 21.913876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345039, 0.367460, 0.863667,
		-0.933157, -0.233152, -0.273603,
		0.100827, -0.900341, 0.423345,
		41.765316, 36.071182, 22.040878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249802, 36.781414, 22.254068>,  <41.694736, 36.701424, 21.744537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249802, 36.781414, 22.254068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468639, 36.465641, 22.365417>,  <41.599941, 36.276176, 22.432226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468639, 36.465641, 22.365417>,  <41.249802, 36.781414, 22.254068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468639, 36.465641, 22.365417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044774, 0.304479, 0.951466,
		-0.835874, -0.533004, 0.131232,
		0.547092, -0.789430, 0.278371,
		41.632767, 36.228813, 22.448929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835411, 36.454956, 22.790543>,  <41.249802, 36.781414, 22.254068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835411, 36.454956, 22.790543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217388, 36.349384, 22.844839>,  <41.446575, 36.286041, 22.877417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217388, 36.349384, 22.844839>,  <40.835411, 36.454956, 22.790543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217388, 36.349384, 22.844839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046876, 0.317494, 0.947101,
		-0.293064, -0.910790, 0.290817,
		0.954943, -0.263928, 0.135741,
		41.503872, 36.270206, 22.885561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855087, 36.111443, 23.417326>,  <40.835411, 36.454956, 22.790543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855087, 36.111443, 23.417326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235676, 36.218857, 23.357218>,  <41.464031, 36.283306, 23.321152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235676, 36.218857, 23.357218>,  <40.855087, 36.111443, 23.417326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235676, 36.218857, 23.357218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028358, 0.409734, 0.911764,
		0.306415, -0.871783, 0.382237,
		0.951476, 0.268538, -0.150271,
		41.521118, 36.299419, 23.312136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095360, 36.021156, 24.045954>,  <40.855087, 36.111443, 23.417326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095360, 36.021156, 24.045954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398884, 36.225189, 23.883953>,  <41.580997, 36.347607, 23.786753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398884, 36.225189, 23.883953>,  <41.095360, 36.021156, 24.045954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398884, 36.225189, 23.883953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293944, 0.286700, 0.911812,
		0.581211, -0.810939, 0.067616,
		0.758809, 0.510079, -0.405003,
		41.626526, 36.378212, 23.762451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768703, 35.853603, 24.340660>,  <41.095360, 36.021156, 24.045954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768703, 35.853603, 24.340660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748680, 36.230923, 24.209396>,  <41.736664, 36.457314, 24.130638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748680, 36.230923, 24.209396>,  <41.768703, 35.853603, 24.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748680, 36.230923, 24.209396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243221, 0.330196, 0.912038,
		0.968678, -0.034157, -0.245959,
		-0.050062, 0.943294, -0.328161,
		41.733662, 36.513912, 24.110949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314873, 36.146877, 24.641012>,  <41.768703, 35.853603, 24.340660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314873, 36.146877, 24.641012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111885, 36.469860, 24.520689>,  <41.990093, 36.663651, 24.448496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111885, 36.469860, 24.520689>,  <42.314873, 36.146877, 24.641012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111885, 36.469860, 24.520689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201798, 0.450756, 0.869538,
		0.837708, 0.380560, -0.391687,
		-0.507466, 0.807461, -0.300806,
		41.959644, 36.712097, 24.430447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789776, 36.818649, 24.878941>,  <42.314873, 36.146877, 24.641012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789776, 36.818649, 24.878941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413349, 36.928650, 24.800186>,  <42.187492, 36.994648, 24.752934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413349, 36.928650, 24.800186>,  <42.789776, 36.818649, 24.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413349, 36.928650, 24.800186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019836, 0.536256, 0.843822,
		0.337632, 0.798000, -0.499199,
		-0.941069, 0.274999, -0.196887,
		42.131027, 37.011150, 24.741119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662449, 37.597832, 24.966703>,  <42.789776, 36.818649, 24.878941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662449, 37.597832, 24.966703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308815, 37.418205, 25.018442>,  <42.096634, 37.310429, 25.049484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308815, 37.418205, 25.018442>,  <42.662449, 37.597832, 24.966703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308815, 37.418205, 25.018442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092325, 0.439166, 0.893649,
		-0.458107, 0.778124, -0.429721,
		-0.884089, -0.449062, 0.129344,
		42.043587, 37.283485, 25.057245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433842, 37.996803, 25.395067>,  <42.662449, 37.597832, 24.966703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433842, 37.996803, 25.395067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171143, 37.697029, 25.428621>,  <42.013523, 37.517166, 25.448753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171143, 37.697029, 25.428621>,  <42.433842, 37.996803, 25.395067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171143, 37.697029, 25.428621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215762, 0.293323, 0.931347,
		-0.722588, 0.593558, -0.354337,
		-0.656744, -0.749434, 0.083884,
		41.974121, 37.472198, 25.453787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914783, 38.301945, 25.688108>,  <42.433842, 37.996803, 25.395067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914783, 38.301945, 25.688108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847820, 37.918621, 25.780727>,  <41.807640, 37.688625, 25.836298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847820, 37.918621, 25.780727>,  <41.914783, 38.301945, 25.688108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847820, 37.918621, 25.780727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082068, 0.247593, 0.965382,
		-0.982465, 0.142613, -0.120096,
		-0.167411, -0.958311, 0.231547,
		41.797596, 37.631126, 25.850191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603558, 38.415874, 26.300997>,  <41.914783, 38.301945, 25.688108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603558, 38.415874, 26.300997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712891, 38.031635, 26.321186>,  <41.778492, 37.801094, 26.333300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712891, 38.031635, 26.321186>,  <41.603558, 38.415874, 26.300997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712891, 38.031635, 26.321186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213627, -0.009458, 0.976869,
		-0.937898, -0.277792, -0.207795,
		0.273332, -0.960595, 0.050473,
		41.794891, 37.743458, 26.336329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014965, 38.047737, 26.550846>,  <41.603558, 38.415874, 26.300997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014965, 38.047737, 26.550846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349289, 37.837498, 26.614298>,  <41.549885, 37.711353, 26.652369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349289, 37.837498, 26.614298>,  <41.014965, 38.047737, 26.550846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349289, 37.837498, 26.614298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236575, -0.084061, 0.967970,
		-0.495429, -0.846570, -0.194603,
		0.835813, -0.525598, 0.158631,
		41.600033, 37.679817, 26.661886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751469, 37.591564, 27.040138>,  <41.014965, 38.047737, 26.550846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751469, 37.591564, 27.040138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150620, 37.595684, 27.065865>,  <41.390110, 37.598156, 27.081301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150620, 37.595684, 27.065865>,  <40.751469, 37.591564, 27.040138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150620, 37.595684, 27.065865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062359, -0.134236, 0.988986,
		0.018818, -0.990896, -0.133308,
		0.997876, 0.010298, 0.064317,
		41.449982, 37.598774, 27.085159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894382, 37.088421, 27.481619>,  <40.751469, 37.591564, 27.040138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894382, 37.088421, 27.481619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228836, 37.307343, 27.496252>,  <41.429508, 37.438698, 27.505032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228836, 37.307343, 27.496252>,  <40.894382, 37.088421, 27.481619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228836, 37.307343, 27.496252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050465, -0.143166, 0.988411,
		0.546202, -0.824596, -0.147325,
		0.836132, 0.547307, 0.036584,
		41.479675, 37.471535, 27.507227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370586, 36.705090, 27.924482>,  <40.894382, 37.088421, 27.481619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370586, 36.705090, 27.924482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505428, 37.081657, 27.920710>,  <41.586334, 37.307598, 27.918446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505428, 37.081657, 27.920710>,  <41.370586, 36.705090, 27.924482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505428, 37.081657, 27.920710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185700, -0.056666, 0.980971,
		0.922973, -0.332438, -0.193924,
		0.337101, 0.941421, -0.009433,
		41.606560, 37.364082, 27.917879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956543, 36.727413, 28.392424>,  <41.370586, 36.705090, 27.924482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956543, 36.727413, 28.392424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827477, 37.104404, 28.357521>,  <41.750038, 37.330601, 28.336578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827477, 37.104404, 28.357521>,  <41.956543, 36.727413, 28.392424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827477, 37.104404, 28.357521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012163, 0.096310, 0.995277,
		0.946435, 0.320080, -0.042539,
		-0.322665, 0.942482, -0.087258,
		41.730679, 37.387150, 28.331343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268234, 36.956196, 28.922722>,  <41.956543, 36.727413, 28.392424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268234, 36.956196, 28.922722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998909, 37.237793, 28.832348>,  <41.837315, 37.406750, 28.778124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998909, 37.237793, 28.832348>,  <42.268234, 36.956196, 28.922722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998909, 37.237793, 28.832348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052734, 0.259078, 0.964416,
		0.737473, 0.661270, -0.137317,
		-0.673315, 0.703989, -0.225935,
		41.796913, 37.448990, 28.764568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422127, 37.507050, 29.420765>,  <42.268234, 36.956196, 28.922722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422127, 37.507050, 29.420765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056065, 37.581963, 29.277988>,  <41.836426, 37.626911, 29.192322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056065, 37.581963, 29.277988>,  <42.422127, 37.507050, 29.420765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056065, 37.581963, 29.277988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256012, 0.413924, 0.873570,
		0.311354, 0.890837, -0.330858,
		-0.915159, 0.187286, -0.356942,
		41.781517, 37.638149, 29.170906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353764, 38.154354, 29.572208>,  <42.422127, 37.507050, 29.420765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353764, 38.154354, 29.572208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982895, 38.010525, 29.530125>,  <41.760376, 37.924229, 29.504875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982895, 38.010525, 29.530125>,  <42.353764, 38.154354, 29.572208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982895, 38.010525, 29.530125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174421, 0.165748, 0.970621,
		-0.331570, 0.918279, -0.216393,
		-0.927167, -0.359572, -0.105210,
		41.704746, 37.902653, 29.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937771, 38.695709, 29.926497>,  <42.353764, 38.154354, 29.572208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937771, 38.695709, 29.926497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773037, 38.331646, 29.908556>,  <41.674194, 38.113209, 29.897791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773037, 38.331646, 29.908556>,  <41.937771, 38.695709, 29.926497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773037, 38.331646, 29.908556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288509, 0.083545, 0.953826,
		-0.864380, 0.405760, -0.296994,
		-0.411836, -0.910153, -0.044851,
		41.649487, 38.058601, 29.895102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316761, 38.785053, 30.223301>,  <41.937771, 38.695709, 29.926497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316761, 38.785053, 30.223301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375690, 38.389488, 30.230858>,  <41.411049, 38.152149, 30.235392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375690, 38.389488, 30.230858>,  <41.316761, 38.785053, 30.223301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375690, 38.389488, 30.230858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299260, -0.026360, 0.953807,
		-0.942730, -0.146168, -0.299824,
		0.147319, -0.988909, 0.018892,
		41.419888, 38.092815, 30.236525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911652, 38.551777, 30.748100>,  <41.316761, 38.785053, 30.223301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911652, 38.551777, 30.748100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121288, 38.213093, 30.711420>,  <41.247070, 38.009884, 30.689411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121288, 38.213093, 30.711420>,  <40.911652, 38.551777, 30.748100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121288, 38.213093, 30.711420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274179, -0.269684, 0.923091,
		-0.806320, -0.458644, -0.373489,
		0.524094, -0.846709, -0.091701,
		41.278515, 37.959080, 30.683910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590145, 38.191475, 31.250992>,  <40.911652, 38.551777, 30.748100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590145, 38.191475, 31.250992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941509, 38.007454, 31.199236>,  <41.152328, 37.897041, 31.168182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941509, 38.007454, 31.199236>,  <40.590145, 38.191475, 31.250992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941509, 38.007454, 31.199236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049374, -0.356659, 0.932929,
		-0.475344, -0.813109, -0.336009,
		0.878413, -0.460052, -0.129389,
		41.205032, 37.869438, 31.160419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489853, 37.554867, 31.516474>,  <40.590145, 38.191475, 31.250992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489853, 37.554867, 31.516474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886539, 37.594929, 31.548641>,  <41.124550, 37.618965, 31.567942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886539, 37.594929, 31.548641>,  <40.489853, 37.554867, 31.516474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886539, 37.594929, 31.548641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044704, -0.317834, 0.947092,
		0.120415, -0.942842, -0.310724,
		0.991717, 0.100153, 0.080421,
		41.184055, 37.624973, 31.572767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812893, 36.916092, 31.783659>,  <40.489853, 37.554867, 31.516474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812893, 36.916092, 31.783659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062332, 37.220680, 31.854412>,  <41.211998, 37.403431, 31.896864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062332, 37.220680, 31.854412>,  <40.812893, 36.916092, 31.783659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062332, 37.220680, 31.854412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058063, -0.270759, 0.960895,
		0.779584, -0.588944, -0.213059,
		0.623600, 0.761469, 0.176883,
		41.249413, 37.449120, 31.907476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250805, 36.668518, 32.311367>,  <40.812893, 36.916092, 31.783659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250805, 36.668518, 32.311367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324707, 37.061485, 32.322094>,  <41.369049, 37.297264, 32.328529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324707, 37.061485, 32.322094>,  <41.250805, 36.668518, 32.311367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324707, 37.061485, 32.322094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244207, -0.072319, 0.967023,
		0.951960, -0.172115, -0.253274,
		0.184756, 0.982419, 0.026813,
		41.380135, 37.356213, 32.330139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808002, 36.760620, 32.858257>,  <41.250805, 36.668518, 32.311367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808002, 36.760620, 32.858257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647518, 37.126762, 32.844707>,  <41.551228, 37.346447, 32.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647518, 37.126762, 32.844707>,  <41.808002, 36.760620, 32.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647518, 37.126762, 32.844707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348909, 0.186918, 0.918326,
		0.846932, 0.356619, -0.394371,
		-0.401208, 0.915360, -0.033879,
		41.527157, 37.401371, 32.834545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305450, 37.228607, 33.063168>,  <41.808002, 36.760620, 32.858257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305450, 37.228607, 33.063168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950726, 37.407360, 33.110271>,  <41.737892, 37.514610, 33.138535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950726, 37.407360, 33.110271>,  <42.305450, 37.228607, 33.063168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950726, 37.407360, 33.110271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185712, 0.111277, 0.976283,
		0.423179, 0.887646, -0.181672,
		-0.886809, 0.446881, 0.117756,
		41.684681, 37.541424, 33.145599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397652, 37.856144, 33.364357>,  <42.305450, 37.228607, 33.063168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397652, 37.856144, 33.364357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009300, 37.809597, 33.448124>,  <41.776291, 37.781670, 33.498386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009300, 37.809597, 33.448124>,  <42.397652, 37.856144, 33.364357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009300, 37.809597, 33.448124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196589, 0.112670, 0.973991,
		-0.136933, 0.986795, -0.086513,
		-0.970877, -0.116364, 0.209421,
		41.718037, 37.774689, 33.510952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205601, 38.376045, 33.778801>,  <42.397652, 37.856144, 33.364357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205601, 38.376045, 33.778801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932343, 38.095047, 33.858616>,  <41.768387, 37.926449, 33.906506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932343, 38.095047, 33.858616>,  <42.205601, 38.376045, 33.778801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932343, 38.095047, 33.858616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227523, 0.054889, 0.972224,
		-0.693937, 0.709567, 0.122337,
		-0.683143, -0.702497, 0.199533,
		41.727398, 37.884296, 33.918476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702484, 38.563118, 34.384907>,  <42.205601, 38.376045, 33.778801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702484, 38.563118, 34.384907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761612, 38.169205, 34.348370>,  <41.797089, 37.932858, 34.326447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761612, 38.169205, 34.348370>,  <41.702484, 38.563118, 34.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761612, 38.169205, 34.348370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347676, -0.034719, 0.936971,
		-0.925889, -0.170260, 0.337255,
		0.147819, -0.984787, -0.091342,
		41.805958, 37.873768, 34.320969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368034, 38.174194, 34.988667>,  <41.702484, 38.563118, 34.384907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368034, 38.174194, 34.988667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683064, 37.958893, 34.868660>,  <41.872082, 37.829712, 34.796658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683064, 37.958893, 34.868660>,  <41.368034, 38.174194, 34.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683064, 37.958893, 34.868660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368434, 0.021053, 0.929416,
		-0.493941, -0.842522, 0.214890,
		0.787577, -0.538250, -0.300015,
		41.919338, 37.797417, 34.778656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471916, 37.453003, 35.417885>,  <41.368034, 38.174194, 34.988667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471916, 37.453003, 35.417885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793747, 37.652504, 35.288944>,  <41.986847, 37.772205, 35.211582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793747, 37.652504, 35.288944>,  <41.471916, 37.453003, 35.417885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793747, 37.652504, 35.288944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326756, 0.081446, 0.941593,
		0.495872, -0.862911, -0.097440,
		0.804575, 0.498749, -0.322348,
		42.035118, 37.802128, 35.192238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995922, 37.208843, 35.691875>,  <41.471916, 37.453003, 35.417885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995922, 37.208843, 35.691875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129341, 37.570087, 35.583706>,  <42.209393, 37.786835, 35.518803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129341, 37.570087, 35.583706>,  <41.995922, 37.208843, 35.691875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129341, 37.570087, 35.583706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458046, 0.095467, 0.883787,
		0.823976, -0.418656, -0.381824,
		0.333552, 0.903113, -0.270426,
		42.229408, 37.841022, 35.502579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551510, 37.199074, 36.162998>,  <41.995922, 37.208843, 35.691875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551510, 37.199074, 36.162998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640972, 37.546612, 35.986320>,  <42.694649, 37.755135, 35.880314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640972, 37.546612, 35.986320>,  <42.551510, 37.199074, 36.162998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640972, 37.546612, 35.986320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440661, 0.314072, 0.840938,
		0.869364, -0.382720, -0.312619,
		0.223659, 0.868841, -0.441693,
		42.708069, 37.807262, 35.853813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290791, 37.323353, 36.337540>,  <42.551510, 37.199074, 36.162998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290791, 37.323353, 36.337540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128277, 37.675880, 36.241028>,  <43.030769, 37.887398, 36.183121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128277, 37.675880, 36.241028>,  <43.290791, 37.323353, 36.337540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128277, 37.675880, 36.241028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504116, 0.436420, 0.745255,
		0.762104, 0.181152, -0.621596,
		-0.406281, 0.881318, -0.241275,
		43.006393, 37.940277, 36.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811455, 37.765079, 36.345051>,  <43.290791, 37.323353, 36.337540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811455, 37.765079, 36.345051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478371, 37.984570, 36.374695>,  <43.278519, 38.116264, 36.392479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478371, 37.984570, 36.374695>,  <43.811455, 37.765079, 36.345051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478371, 37.984570, 36.374695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390847, 0.487699, 0.780633,
		0.392209, 0.679008, -0.620580,
		-0.832713, 0.548724, 0.074108,
		43.228558, 38.149185, 36.396927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056477, 38.434116, 36.467789>,  <43.811455, 37.765079, 36.345051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056477, 38.434116, 36.467789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685089, 38.374336, 36.603794>,  <43.462257, 38.338470, 36.685398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685089, 38.374336, 36.603794>,  <44.056477, 38.434116, 36.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685089, 38.374336, 36.603794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296898, 0.251405, 0.921221,
		-0.223155, 0.956275, -0.189051,
		-0.928468, -0.149446, 0.340018,
		43.406548, 38.329502, 36.705799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093548, 38.859085, 37.092152>,  <44.056477, 38.434116, 36.467789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093548, 38.859085, 37.092152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740360, 38.675423, 37.131210>,  <43.528446, 38.565224, 37.154644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740360, 38.675423, 37.131210>,  <44.093548, 38.859085, 37.092152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740360, 38.675423, 37.131210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067977, 0.330885, 0.941220,
		-0.464481, 0.824431, -0.323374,
		-0.882970, -0.459161, 0.097647,
		43.475468, 38.537674, 37.160503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785599, 39.376892, 37.530483>,  <44.093548, 38.859085, 37.092152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785599, 39.376892, 37.530483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592052, 39.027336, 37.549229>,  <43.475925, 38.817604, 37.560474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592052, 39.027336, 37.549229>,  <43.785599, 39.376892, 37.530483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592052, 39.027336, 37.549229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070272, 0.014578, 0.997421,
		-0.872316, 0.485912, 0.054356,
		-0.483867, -0.873886, 0.046862,
		43.446892, 38.765171, 37.563286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156334, 39.455032, 38.024536>,  <43.785599, 39.376892, 37.530483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156334, 39.455032, 38.024536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294563, 39.079945, 38.010300>,  <43.377502, 38.854893, 38.001759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294563, 39.079945, 38.010300>,  <43.156334, 39.455032, 38.024536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294563, 39.079945, 38.010300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066170, -0.013479, 0.997717,
		-0.936056, -0.347138, 0.057390,
		0.345572, -0.937717, -0.035587,
		43.398235, 38.798630, 37.999622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690849, 39.032032, 38.514141>,  <43.156334, 39.455032, 38.024536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690849, 39.032032, 38.514141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037720, 38.837029, 38.473457>,  <43.245842, 38.720028, 38.449047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037720, 38.837029, 38.473457>,  <42.690849, 39.032032, 38.514141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037720, 38.837029, 38.473457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086564, -0.053571, 0.994805,
		-0.490427, -0.871472, -0.004255,
		0.867173, -0.487511, -0.101711,
		43.297871, 38.690777, 38.442944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775593, 38.568485, 39.076736>,  <42.690849, 39.032032, 38.514141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775593, 38.568485, 39.076736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143997, 38.641125, 38.938885>,  <43.365040, 38.684708, 38.856174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143997, 38.641125, 38.938885>,  <42.775593, 38.568485, 39.076736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143997, 38.641125, 38.938885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311935, 0.186099, 0.931699,
		0.233328, -0.965603, 0.114753,
		0.921007, 0.181596, -0.344627,
		43.420300, 38.695602, 38.835495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089123, 38.570683, 39.717014>,  <42.775593, 38.568485, 39.076736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089123, 38.570683, 39.717014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474796, 38.610161, 39.815491>,  <43.706200, 38.633846, 39.874577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474796, 38.610161, 39.815491>,  <43.089123, 38.570683, 39.717014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474796, 38.610161, 39.815491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264956, -0.315807, -0.911079,
		-0.012173, 0.943676, -0.330646,
		0.964184, 0.098697, 0.246188,
		43.764050, 38.639771, 39.889347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396320, 39.051918, 39.221607>,  <43.089123, 38.570683, 39.717014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396320, 39.051918, 39.221607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632889, 38.761005, 39.360912>,  <43.774830, 38.586460, 39.444496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632889, 38.761005, 39.360912>,  <43.396320, 39.051918, 39.221607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632889, 38.761005, 39.360912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218388, -0.271283, -0.937397,
		0.776225, 0.630454, -0.001615,
		0.591424, -0.727278, 0.348260,
		43.810314, 38.542824, 39.465389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132534, 39.005077, 38.908844>,  <43.396320, 39.051918, 39.221607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132534, 39.005077, 38.908844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982193, 38.649643, 39.014034>,  <43.891987, 38.436382, 39.077148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982193, 38.649643, 39.014034>,  <44.132534, 39.005077, 38.908844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982193, 38.649643, 39.014034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050453, -0.302985, -0.951659,
		0.925305, -0.344417, 0.158709,
		-0.375854, -0.888582, 0.262976,
		43.869438, 38.383068, 39.092926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518635, 38.425343, 38.747791>,  <44.132534, 39.005077, 38.908844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518635, 38.425343, 38.747791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124680, 38.356140, 38.750931>,  <43.888306, 38.314617, 38.752815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124680, 38.356140, 38.750931>,  <44.518635, 38.425343, 38.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124680, 38.356140, 38.750931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011067, -0.108088, -0.994080,
		0.172830, -0.978972, 0.108369,
		-0.984890, -0.173006, 0.007846,
		43.829212, 38.304237, 38.753284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335602, 37.950264, 38.281033>,  <44.518635, 38.425343, 38.747791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335602, 37.950264, 38.281033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992676, 38.153561, 38.313786>,  <43.786922, 38.275539, 38.333435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992676, 38.153561, 38.313786>,  <44.335602, 37.950264, 38.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992676, 38.153561, 38.313786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158571, -0.109397, -0.981268,
		-0.489769, -0.854235, 0.174381,
		-0.857311, 0.508246, 0.081878,
		43.735481, 38.306034, 38.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730724, 37.571487, 37.970718>,  <44.335602, 37.950264, 38.281033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730724, 37.571487, 37.970718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620483, 37.955952, 37.976635>,  <43.554337, 38.186630, 37.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620483, 37.955952, 37.976635>,  <43.730724, 37.571487, 37.970718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620483, 37.955952, 37.976635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267780, -0.061985, -0.961484,
		-0.923220, -0.268951, 0.274463,
		-0.275604, 0.961157, 0.014794,
		43.537804, 38.244297, 37.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984745, 37.553078, 37.722511>,  <43.730724, 37.571487, 37.970718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984745, 37.553078, 37.722511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126629, 37.922173, 37.662209>,  <43.211761, 38.143631, 37.626026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126629, 37.922173, 37.662209>,  <42.984745, 37.553078, 37.722511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126629, 37.922173, 37.662209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419222, 0.012835, -0.907793,
		-0.835722, 0.385207, 0.391386,
		0.354712, 0.922741, -0.150761,
		43.233044, 38.198994, 37.616982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492054, 37.777576, 37.373444>,  <42.984745, 37.553078, 37.722511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492054, 37.777576, 37.373444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776772, 38.049858, 37.304180>,  <42.947601, 38.213226, 37.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776772, 38.049858, 37.304180>,  <42.492054, 37.777576, 37.373444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776772, 38.049858, 37.304180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292024, 0.062591, -0.954360,
		-0.638801, 0.729877, 0.243335,
		0.711797, 0.680706, -0.173159,
		42.990311, 38.254070, 37.252232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254322, 38.148262, 36.858505>,  <42.492054, 37.777576, 37.373444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254322, 38.148262, 36.858505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628674, 38.289162, 36.855724>,  <42.853283, 38.373703, 36.854057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628674, 38.289162, 36.855724>,  <42.254322, 38.148262, 36.858505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628674, 38.289162, 36.855724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086440, 0.210442, -0.973777,
		-0.341550, 0.911940, 0.227397,
		0.935880, 0.352250, -0.006952,
		42.909439, 38.394836, 36.853638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167355, 38.834145, 36.694645>,  <42.254322, 38.148262, 36.858505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167355, 38.834145, 36.694645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503830, 38.645943, 36.588036>,  <42.705715, 38.533024, 36.524071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503830, 38.645943, 36.588036>,  <42.167355, 38.834145, 36.694645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503830, 38.645943, 36.588036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313191, -0.022106, -0.949433,
		0.440818, 0.882122, -0.165953,
		0.841184, -0.470502, -0.266528,
		42.756184, 38.504791, 36.508076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376740, 39.071285, 35.991646>,  <42.167355, 38.834145, 36.694645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376740, 39.071285, 35.991646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595680, 38.737747, 36.020241>,  <42.727043, 38.537624, 36.037395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595680, 38.737747, 36.020241>,  <42.376740, 39.071285, 35.991646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595680, 38.737747, 36.020241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294969, -0.272144, -0.915932,
		0.783201, 0.480248, -0.394916,
		0.547348, -0.833846, 0.071485,
		42.759884, 38.487595, 36.041687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691788, 38.946228, 35.322971>,  <42.376740, 39.071285, 35.991646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691788, 38.946228, 35.322971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680336, 38.597015, 35.517700>,  <42.673466, 38.387486, 35.634537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680336, 38.597015, 35.517700>,  <42.691788, 38.946228, 35.322971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680336, 38.597015, 35.517700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306229, -0.455941, -0.835668,
		0.951527, -0.173005, -0.254294,
		-0.028632, -0.873033, 0.486819,
		42.671745, 38.335106, 35.663746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033276, 38.348431, 35.088219>,  <42.691788, 38.946228, 35.322971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033276, 38.348431, 35.088219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965672, 37.983093, 35.236401>,  <42.925110, 37.763889, 35.325310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965672, 37.983093, 35.236401>,  <43.033276, 38.348431, 35.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965672, 37.983093, 35.236401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645034, -0.181694, -0.742238,
		0.745229, -0.364402, -0.558431,
		-0.169009, -0.913345, 0.370456,
		42.914970, 37.709091, 35.347538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980289, 37.747913, 34.496407>,  <43.033276, 38.348431, 35.088219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980289, 37.747913, 34.496407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725983, 37.589737, 34.761566>,  <42.573399, 37.494831, 34.920662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725983, 37.589737, 34.761566>,  <42.980289, 37.747913, 34.496407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725983, 37.589737, 34.761566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660253, -0.166261, -0.732409,
		0.399839, -0.903318, -0.155389,
		-0.635763, -0.395442, 0.662896,
		42.535255, 37.471104, 34.960434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824596, 36.963612, 34.348434>,  <42.980289, 37.747913, 34.496407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824596, 36.963612, 34.348434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549423, 37.220375, 34.483906>,  <42.384319, 37.374432, 34.565189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549423, 37.220375, 34.483906>,  <42.824596, 36.963612, 34.348434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549423, 37.220375, 34.483906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547896, -0.153278, -0.822384,
		-0.475984, -0.751304, 0.457145,
		-0.687931, 0.641909, 0.338679,
		42.343044, 37.412949, 34.585510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238308, 36.634457, 34.385357>,  <42.824596, 36.963612, 34.348434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238308, 36.634457, 34.385357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112007, 37.010906, 34.337059>,  <42.036224, 37.236778, 34.308079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112007, 37.010906, 34.337059>,  <42.238308, 36.634457, 34.385357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112007, 37.010906, 34.337059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470863, -0.265904, -0.841180,
		-0.823764, -0.208750, 0.527102,
		-0.315755, 0.941126, -0.120750,
		42.017281, 37.293243, 34.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579308, 36.684105, 34.201401>,  <42.238308, 36.634457, 34.385357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579308, 36.684105, 34.201401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532822, 37.069389, 34.298328>,  <41.504929, 37.300560, 34.356487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532822, 37.069389, 34.298328>,  <41.579308, 36.684105, 34.201401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532822, 37.069389, 34.298328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366602, 0.185149, -0.911769,
		-0.923091, -0.194797, 0.331597,
		-0.116215, 0.963210, 0.242322,
		41.497955, 37.358353, 34.371025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889648, 36.944286, 33.910194>,  <41.579308, 36.684105, 34.201401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889648, 36.944286, 33.910194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124657, 37.266407, 33.941963>,  <41.265663, 37.459679, 33.961025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124657, 37.266407, 33.941963>,  <40.889648, 36.944286, 33.910194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124657, 37.266407, 33.941963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271039, 0.288313, -0.918375,
		-0.762467, 0.518039, 0.387658,
		0.587521, 0.805302, 0.079420,
		41.300915, 37.507999, 33.965790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426842, 37.552105, 33.675114>,  <40.889648, 36.944286, 33.910194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426842, 37.552105, 33.675114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822701, 37.602783, 33.648167>,  <41.060215, 37.633190, 33.631996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822701, 37.602783, 33.648167>,  <40.426842, 37.552105, 33.675114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822701, 37.602783, 33.648167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078993, 0.089067, -0.992888,
		-0.119798, 0.987934, 0.098153,
		0.989651, 0.126700, -0.067370,
		41.119595, 37.640793, 33.627956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514889, 38.052937, 33.128880>,  <40.426842, 37.552105, 33.675114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514889, 38.052937, 33.128880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898411, 37.955498, 33.187321>,  <41.128525, 37.897034, 33.222385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898411, 37.955498, 33.187321>,  <40.514889, 38.052937, 33.128880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898411, 37.955498, 33.187321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171366, 0.085837, -0.981461,
		0.226540, 0.966070, 0.124046,
		0.958808, -0.243597, 0.146106,
		41.186054, 37.882420, 33.231152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905643, 38.601475, 32.757977>,  <40.514889, 38.052937, 33.128880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905643, 38.601475, 32.757977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112366, 38.261871, 32.801971>,  <41.236401, 38.058109, 32.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112366, 38.261871, 32.801971>,  <40.905643, 38.601475, 32.757977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112366, 38.261871, 32.801971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141602, -0.041929, -0.989035,
		0.844310, 0.526714, 0.098552,
		0.516806, -0.849008, 0.109984,
		41.267406, 38.007168, 32.834969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546326, 38.604633, 32.344627>,  <40.905643, 38.601475, 32.757977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546326, 38.604633, 32.344627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558083, 38.205811, 32.372932>,  <41.565136, 37.966515, 32.389915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558083, 38.205811, 32.372932>,  <41.546326, 38.604633, 32.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558083, 38.205811, 32.372932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396898, -0.053337, -0.916312,
		0.917392, 0.055017, 0.394163,
		0.029389, -0.997060, 0.070767,
		41.566898, 37.906693, 32.394161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194633, 38.360313, 32.124649>,  <41.546326, 38.604633, 32.344627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194633, 38.360313, 32.124649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892689, 38.104744, 32.065380>,  <41.711521, 37.951401, 32.029819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892689, 38.104744, 32.065380>,  <42.194633, 38.360313, 32.124649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892689, 38.104744, 32.065380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208372, -0.019412, -0.977857,
		0.621900, -0.769025, 0.147787,
		-0.754865, -0.638924, -0.148171,
		41.666229, 37.913067, 32.020927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477161, 37.854935, 31.704660>,  <42.194633, 38.360313, 32.124649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477161, 37.854935, 31.704660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081139, 37.830872, 31.653803>,  <41.843525, 37.816433, 31.623289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081139, 37.830872, 31.653803>,  <42.477161, 37.854935, 31.704660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081139, 37.830872, 31.653803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136027, -0.179499, -0.974308,
		0.035787, -0.981917, 0.185898,
		-0.990058, -0.060155, -0.127143,
		41.784122, 37.812824, 31.615660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412426, 37.380173, 31.196028>,  <42.477161, 37.854935, 31.704660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412426, 37.380173, 31.196028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046780, 37.539742, 31.167065>,  <41.827393, 37.635483, 31.149687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046780, 37.539742, 31.167065>,  <42.412426, 37.380173, 31.196028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046780, 37.539742, 31.167065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009671, -0.157085, -0.987538,
		-0.405329, -0.903428, 0.139736,
		-0.914120, 0.398926, -0.072408,
		41.772545, 37.659420, 31.145342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549988, 36.615681, 31.184738>,  <42.412426, 37.380173, 31.196028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549988, 36.615681, 31.184738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781597, 36.581795, 31.509098>,  <42.920563, 36.561462, 31.703714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781597, 36.581795, 31.509098>,  <42.549988, 36.615681, 31.184738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781597, 36.581795, 31.509098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674673, -0.608204, 0.418215,
		0.457763, -0.789248, -0.409318,
		0.579024, -0.084713, 0.810898,
		42.955303, 36.556381, 31.752367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657780, 35.979683, 31.352394>,  <42.549988, 36.615681, 31.184738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657780, 35.979683, 31.352394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737511, 36.152439, 31.704245>,  <42.785351, 36.256092, 31.915356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737511, 36.152439, 31.704245>,  <42.657780, 35.979683, 31.352394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737511, 36.152439, 31.704245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736211, -0.526419, 0.425296,
		0.646732, -0.732364, 0.213029,
		0.199328, 0.431887, 0.879626,
		42.797310, 36.282005, 31.968132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627205, 35.513981, 31.834976>,  <42.657780, 35.979683, 31.352394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627205, 35.513981, 31.834976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553230, 35.827084, 32.072662>,  <42.508846, 36.014946, 32.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553230, 35.827084, 32.072662>,  <42.627205, 35.513981, 31.834976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553230, 35.827084, 32.072662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669481, -0.542987, 0.506912,
		0.719439, -0.304069, 0.624459,
		-0.184937, 0.782756, 0.594215,
		42.497749, 36.061909, 32.250927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913116, 35.173679, 32.442841>,  <42.627205, 35.513981, 31.834976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913116, 35.173679, 32.442841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584438, 35.391876, 32.376808>,  <42.387230, 35.522793, 32.337189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584438, 35.391876, 32.376808>,  <42.913116, 35.173679, 32.442841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584438, 35.391876, 32.376808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548715, -0.678929, 0.487819,
		0.154021, 0.491423, 0.857194,
		-0.821699, 0.545489, -0.165082,
		42.337929, 35.555523, 32.327282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641132, 35.260780, 33.150803>,  <42.913116, 35.173679, 32.442841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641132, 35.260780, 33.150803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387260, 35.263012, 32.841702>,  <42.234936, 35.264351, 32.656242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387260, 35.263012, 32.841702>,  <42.641132, 35.260780, 33.150803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387260, 35.263012, 32.841702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617065, -0.605627, 0.502441,
		-0.465196, 0.795729, 0.387824,
		-0.634683, 0.005579, -0.772752,
		42.196854, 35.264687, 32.609875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242516, 35.171547, 33.860313>,  <42.641132, 35.260780, 33.150803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242516, 35.171547, 33.860313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396580, 35.378075, 34.166271>,  <42.489017, 35.501991, 34.349846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396580, 35.378075, 34.166271>,  <42.242516, 35.171547, 33.860313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396580, 35.378075, 34.166271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617401, -0.471867, 0.629410,
		0.685905, -0.714672, 0.137031,
		0.385162, 0.516319, 0.764896,
		42.512127, 35.532970, 34.395741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481827, 34.680450, 34.416107>,  <42.242516, 35.171547, 33.860313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481827, 34.680450, 34.416107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367489, 35.027023, 34.579861>,  <42.298885, 35.234966, 34.678112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367489, 35.027023, 34.579861>,  <42.481827, 34.680450, 34.416107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367489, 35.027023, 34.579861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631798, -0.491599, 0.599301,
		0.720504, -0.087340, 0.687929,
		-0.285842, 0.866431, 0.409380,
		42.281734, 35.286953, 34.702675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785389, 33.978828, 34.323532>,  <42.481827, 34.680450, 34.416107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785389, 33.978828, 34.323532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151466, 33.882271, 34.194439>,  <43.371113, 33.824337, 34.116985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151466, 33.882271, 34.194439>,  <42.785389, 33.978828, 34.323532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151466, 33.882271, 34.194439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242664, -0.309295, 0.919484,
		-0.321795, -0.919814, -0.224480,
		0.915184, -0.241412, -0.322735,
		43.426025, 33.809853, 34.097618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880913, 33.314919, 34.392017>,  <42.785389, 33.978828, 34.323532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880913, 33.314919, 34.392017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224461, 33.516666, 34.427696>,  <43.430588, 33.637714, 34.449104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224461, 33.516666, 34.427696>,  <42.880913, 33.314919, 34.392017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224461, 33.516666, 34.427696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112616, 0.016065, 0.993509,
		0.499667, -0.863336, 0.070598,
		0.858866, 0.504374, 0.089199,
		43.482121, 33.667980, 34.454456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378311, 32.997482, 34.901352>,  <42.880913, 33.314919, 34.392017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378311, 32.997482, 34.901352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417339, 33.394882, 34.877914>,  <43.440758, 33.633324, 34.863850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417339, 33.394882, 34.877914>,  <43.378311, 32.997482, 34.901352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417339, 33.394882, 34.877914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205874, 0.077753, 0.975485,
		0.973702, -0.083119, 0.212123,
		0.097575, 0.993502, -0.058596,
		43.446613, 33.692932, 34.860336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606201, 33.238930, 35.458233>,  <43.378311, 32.997482, 34.901352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606201, 33.238930, 35.458233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426586, 33.582703, 35.360466>,  <43.318817, 33.788967, 35.301807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426586, 33.582703, 35.360466>,  <43.606201, 33.238930, 35.458233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426586, 33.582703, 35.360466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254211, 0.139358, 0.957056,
		0.856589, 0.491885, 0.155901,
		-0.449035, 0.859435, -0.244415,
		43.291874, 33.840534, 35.287140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747929, 33.864380, 35.827484>,  <43.606201, 33.238930, 35.458233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747929, 33.864380, 35.827484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373699, 33.918659, 35.697079>,  <43.149162, 33.951225, 35.618835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373699, 33.918659, 35.697079>,  <43.747929, 33.864380, 35.827484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373699, 33.918659, 35.697079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309631, 0.128680, 0.942110,
		0.169791, 0.982359, -0.078374,
		-0.935574, 0.135695, -0.326018,
		43.093025, 33.959366, 35.599274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546879, 33.909088, 35.778671>,  <43.747929, 33.864380, 35.827484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546879, 33.909088, 35.778671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615849, 33.516098, 35.750343>,  <44.657230, 33.280304, 35.733349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615849, 33.516098, 35.750343>,  <44.546879, 33.909088, 35.778671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615849, 33.516098, 35.750343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984451, 0.169432, 0.046368,
		-0.033557, -0.077710, 0.996411,
		0.172428, -0.982473, -0.070816,
		44.667576, 33.221355, 35.729099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152287, 33.789677, 36.183754>,  <44.546879, 33.909088, 35.778671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152287, 33.789677, 36.183754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167267, 33.462463, 35.954174>,  <45.176254, 33.266136, 35.816425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167267, 33.462463, 35.954174>,  <45.152287, 33.789677, 36.183754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167267, 33.462463, 35.954174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962193, 0.184576, -0.200289,
		0.269780, -0.544754, 0.794016,
		0.037448, -0.818031, -0.573954,
		45.178501, 33.217052, 35.781986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644566, 33.300816, 36.417416>,  <45.152287, 33.789677, 36.183754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644566, 33.300816, 36.417416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596798, 33.294868, 36.020321>,  <45.568138, 33.291302, 35.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596798, 33.294868, 36.020321>,  <45.644566, 33.300816, 36.417416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596798, 33.294868, 36.020321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954015, 0.275175, -0.118887,
		0.274943, -0.961279, -0.018678,
		-0.119423, -0.014868, -0.992732,
		45.560970, 33.290409, 35.722500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264740, 32.852627, 36.064930>,  <45.644566, 33.300816, 36.417416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264740, 32.852627, 36.064930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118725, 33.152081, 35.843552>,  <46.031116, 33.331753, 35.710724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118725, 33.152081, 35.843552>,  <46.264740, 32.852627, 36.064930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118725, 33.152081, 35.843552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893422, 0.448862, 0.017891,
		0.261813, -0.487927, -0.832696,
		-0.365036, 0.748633, -0.553442,
		46.009212, 33.376671, 35.677521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690727, 32.943047, 35.355076>,  <46.264740, 32.852627, 36.064930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690727, 32.943047, 35.355076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501541, 33.281433, 35.453583>,  <46.388031, 33.484467, 35.512688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501541, 33.281433, 35.453583>,  <46.690727, 32.943047, 35.355076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501541, 33.281433, 35.453583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878211, 0.430088, 0.209214,
		0.071072, 0.315223, -0.946352,
		-0.472964, 0.845966, 0.246265,
		46.359653, 33.535225, 35.527462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873978, 33.539516, 34.857014>,  <46.690727, 32.943047, 35.355076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873978, 33.539516, 34.857014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805695, 33.673012, 35.227848>,  <46.764725, 33.753109, 35.450348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805695, 33.673012, 35.227848>,  <46.873978, 33.539516, 34.857014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805695, 33.673012, 35.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852344, 0.522063, -0.030991,
		-0.494338, 0.784902, -0.373575,
		-0.170705, 0.333735, 0.927082,
		46.754482, 33.773132, 35.505974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984303, 34.291317, 34.862144>,  <46.873978, 33.539516, 34.857014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984303, 34.291317, 34.862144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037464, 34.132870, 35.225555>,  <47.069363, 34.037800, 35.443604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037464, 34.132870, 35.225555>,  <46.984303, 34.291317, 34.862144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037464, 34.132870, 35.225555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878071, 0.472223, 0.077440,
		-0.459704, 0.787462, 0.410580,
		0.132904, -0.396117, 0.908530,
		47.077335, 34.014034, 35.498116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505730, 34.539413, 35.333061>,  <46.984303, 34.291317, 34.862144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505730, 34.539413, 35.333061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571712, 34.160606, 35.443291>,  <47.611301, 33.933323, 35.509430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571712, 34.160606, 35.443291>,  <47.505730, 34.539413, 35.333061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571712, 34.160606, 35.443291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979414, 0.190240, 0.067501,
		-0.116350, 0.258768, 0.958907,
		0.164956, -0.947021, 0.275575,
		47.621201, 33.876499, 35.525963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774685, 34.898422, 34.774220>,  <47.505730, 34.539413, 35.333061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774685, 34.898422, 34.774220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940971, 35.096764, 35.079193>,  <48.040745, 35.215767, 35.262177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940971, 35.096764, 35.079193>,  <47.774685, 34.898422, 34.774220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.940971, 35.096764, 35.079193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908013, 0.274069, 0.316856,
		-0.051847, -0.824025, 0.564176,
		0.415720, 0.495851, 0.762436,
		48.065689, 35.245518, 35.307922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.803375, 31.660135, 22.593401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429577, 31.573238, 22.706196>,  <39.205296, 31.521101, 22.773872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429577, 31.573238, 22.706196>,  <39.803375, 31.660135, 22.593401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429577, 31.573238, 22.706196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174782, 0.410086, 0.895143,
		-0.310101, 0.885797, -0.345256,
		-0.934499, -0.217240, 0.281989,
		39.149227, 31.508066, 22.790792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667946, 32.279926, 22.994869>,  <39.803375, 31.660135, 22.593401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667946, 32.279926, 22.994869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.397125, 32.002502, 23.093325>,  <39.234634, 31.836048, 23.152399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.397125, 32.002502, 23.093325>,  <39.667946, 32.279926, 22.994869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397125, 32.002502, 23.093325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080428, 0.402185, 0.912019,
		-0.731532, 0.597683, -0.328080,
		-0.677047, -0.693558, 0.246141,
		39.194012, 31.794436, 23.167168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084805, 32.662613, 23.193001>,  <39.667946, 32.279926, 22.994869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084805, 32.662613, 23.193001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064301, 32.299679, 23.359907>,  <39.051998, 32.081917, 23.460051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064301, 32.299679, 23.359907>,  <39.084805, 32.662613, 23.193001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064301, 32.299679, 23.359907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266066, 0.415122, 0.869990,
		-0.962591, -0.066422, -0.262692,
		-0.051263, -0.907338, 0.417265,
		39.048923, 32.027477, 23.485086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521069, 32.643517, 23.642256>,  <39.084805, 32.662613, 23.193001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521069, 32.643517, 23.642256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717937, 32.324512, 23.781824>,  <38.836060, 32.133110, 23.865566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717937, 32.324512, 23.781824>,  <38.521069, 32.643517, 23.642256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717937, 32.324512, 23.781824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186127, 0.295150, 0.937147,
		-0.850368, -0.526179, -0.003174,
		0.492170, -0.797510, 0.348922,
		38.865589, 32.085258, 23.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134991, 32.512806, 24.272966>,  <38.521069, 32.643517, 23.642256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134991, 32.512806, 24.272966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484249, 32.321434, 24.310333>,  <38.693802, 32.206612, 24.332752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484249, 32.321434, 24.310333>,  <38.134991, 32.512806, 24.272966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484249, 32.321434, 24.310333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076946, 0.053963, 0.995574,
		-0.481352, -0.876467, 0.010304,
		0.873144, -0.478428, 0.093415,
		38.746193, 32.177906, 24.338358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013283, 31.898209, 24.683422>,  <38.134991, 32.512806, 24.272966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013283, 31.898209, 24.683422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383446, 32.041019, 24.734253>,  <38.605545, 32.126705, 24.764751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383446, 32.041019, 24.734253>,  <38.013283, 31.898209, 24.683422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383446, 32.041019, 24.734253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191308, 0.150643, 0.969901,
		0.327141, -0.921865, 0.207709,
		0.925408, 0.357031, 0.127079,
		38.661068, 32.148129, 24.772377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096992, 31.707348, 25.315865>,  <38.013283, 31.898209, 24.683422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096992, 31.707348, 25.315865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431103, 31.924427, 25.280544>,  <38.631569, 32.054676, 25.259352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431103, 31.924427, 25.280544>,  <38.096992, 31.707348, 25.315865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431103, 31.924427, 25.280544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117434, -0.019190, 0.992895,
		0.537148, -0.839708, -0.079760,
		0.835273, 0.542699, -0.088303,
		38.681686, 32.087238, 25.254053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593559, 31.353304, 25.609644>,  <38.096992, 31.707348, 25.315865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593559, 31.353304, 25.609644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725716, 31.729914, 25.636087>,  <38.805008, 31.955879, 25.651953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.725716, 31.729914, 25.636087>,  <38.593559, 31.353304, 25.609644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725716, 31.729914, 25.636087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080980, -0.098059, 0.991880,
		0.940364, -0.322354, -0.108642,
		0.330390, 0.941526, 0.066107,
		38.824833, 32.012371, 25.655920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018703, 31.283045, 26.143446>,  <38.593559, 31.353304, 25.609644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018703, 31.283045, 26.143446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960609, 31.677296, 26.108934>,  <38.925755, 31.913847, 26.088226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960609, 31.677296, 26.108934>,  <39.018703, 31.283045, 26.143446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960609, 31.677296, 26.108934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044595, 0.093637, 0.994607,
		0.988392, 0.140602, -0.057553,
		-0.145233, 0.985628, -0.086280,
		38.917038, 31.972984, 26.083050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563160, 31.674793, 26.506561>,  <39.018703, 31.283045, 26.143446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563160, 31.674793, 26.506561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.262318, 31.936966, 26.479015>,  <39.081810, 32.094269, 26.462488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.262318, 31.936966, 26.479015>,  <39.563160, 31.674793, 26.506561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262318, 31.936966, 26.479015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119983, 0.238922, 0.963597,
		0.648026, 0.716467, -0.258336,
		-0.752108, 0.655432, -0.068864,
		39.036686, 32.133595, 26.458357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781010, 32.466484, 26.751766>,  <39.563160, 31.674793, 26.506561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781010, 32.466484, 26.751766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386978, 32.416843, 26.799469>,  <39.150558, 32.387058, 26.828091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386978, 32.416843, 26.799469>,  <39.781010, 32.466484, 26.751766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386978, 32.416843, 26.799469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053346, 0.438609, 0.897093,
		-0.163641, 0.890067, -0.425443,
		-0.985077, -0.124105, 0.119256,
		39.091454, 32.379612, 26.835245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644230, 33.085934, 27.080606>,  <39.781010, 32.466484, 26.751766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644230, 33.085934, 27.080606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.315536, 32.870403, 27.154823>,  <39.118320, 32.741085, 27.199354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.315536, 32.870403, 27.154823>,  <39.644230, 33.085934, 27.080606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315536, 32.870403, 27.154823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094265, 0.449622, 0.888231,
		-0.562024, 0.712398, -0.420261,
		-0.821732, -0.538823, 0.185544,
		39.069016, 32.708755, 27.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110321, 33.644241, 27.146723>,  <39.644230, 33.085934, 27.080606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110321, 33.644241, 27.146723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978241, 33.315269, 27.332010>,  <38.898994, 33.117886, 27.443184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978241, 33.315269, 27.332010>,  <39.110321, 33.644241, 27.146723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978241, 33.315269, 27.332010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121622, 0.523726, 0.843160,
		-0.936043, 0.222074, -0.272960,
		-0.330201, -0.822432, 0.463221,
		38.879181, 33.068539, 27.470976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686672, 33.890556, 27.734396>,  <39.110321, 33.644241, 27.146723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686672, 33.890556, 27.734396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714146, 33.506874, 27.844095>,  <38.730629, 33.276665, 27.909914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714146, 33.506874, 27.844095>,  <38.686672, 33.890556, 27.734396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714146, 33.506874, 27.844095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100632, 0.266833, 0.958475,
		-0.992550, -0.093427, -0.078200,
		0.068681, -0.959204, 0.274247,
		38.734749, 33.219112, 27.926369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208508, 33.834145, 28.265192>,  <38.686672, 33.890556, 27.734396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208508, 33.834145, 28.265192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478638, 33.547340, 28.334288>,  <38.640717, 33.375259, 28.375746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478638, 33.547340, 28.334288>,  <38.208508, 33.834145, 28.265192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478638, 33.547340, 28.334288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038953, 0.199212, 0.979182,
		-0.736492, -0.667994, 0.106603,
		0.675324, -0.717007, 0.172739,
		38.681236, 33.332237, 28.386108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981045, 33.509083, 28.883934>,  <38.208508, 33.834145, 28.265192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981045, 33.509083, 28.883934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364815, 33.398468, 28.861914>,  <38.595078, 33.332100, 28.848701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364815, 33.398468, 28.861914>,  <37.981045, 33.509083, 28.883934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364815, 33.398468, 28.861914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100025, 0.151255, 0.983421,
		-0.263623, -0.949026, 0.172778,
		0.959426, -0.276535, -0.055052,
		38.652641, 33.315506, 28.845398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043888, 33.120792, 29.487391>,  <37.981045, 33.509083, 28.883934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043888, 33.120792, 29.487391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404564, 33.232559, 29.355404>,  <38.620972, 33.299618, 29.276213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404564, 33.232559, 29.355404>,  <38.043888, 33.120792, 29.487391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404564, 33.232559, 29.355404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262517, 0.252604, 0.931277,
		0.343566, -0.926346, 0.154419,
		0.901692, 0.279417, -0.329967,
		38.675072, 33.316383, 29.256414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513199, 32.916115, 30.055325>,  <38.043888, 33.120792, 29.487391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513199, 32.916115, 30.055325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736824, 33.179020, 29.853157>,  <38.870998, 33.336761, 29.731855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736824, 33.179020, 29.853157>,  <38.513199, 32.916115, 30.055325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736824, 33.179020, 29.853157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365483, 0.351806, 0.861774,
		0.744223, -0.666511, -0.043536,
		0.559065, 0.657264, -0.505421,
		38.904545, 33.376198, 29.701530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288635, 32.968163, 30.375013>,  <38.513199, 32.916115, 30.055325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288635, 32.968163, 30.375013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206154, 33.297386, 30.163332>,  <39.156666, 33.494919, 30.036324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206154, 33.297386, 30.163332>,  <39.288635, 32.968163, 30.375013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206154, 33.297386, 30.163332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299192, 0.567959, 0.766751,
		0.931645, -0.000223, -0.363369,
		-0.206208, 0.823057, -0.529203,
		39.144291, 33.544304, 30.004572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845367, 33.543610, 30.529085>,  <39.288635, 32.968163, 30.375013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845367, 33.543610, 30.529085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.523155, 33.737667, 30.392996>,  <39.329826, 33.854103, 30.311342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.523155, 33.737667, 30.392996>,  <39.845367, 33.543610, 30.529085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523155, 33.737667, 30.392996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009322, 0.584475, 0.811358,
		0.592477, 0.650404, -0.475337,
		-0.805533, 0.485142, -0.340225,
		39.281494, 33.883209, 30.290928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094929, 34.212452, 30.569248>,  <39.845367, 33.543610, 30.529085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094929, 34.212452, 30.569248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695694, 34.233574, 30.556400>,  <39.456154, 34.246246, 30.548691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695694, 34.233574, 30.556400>,  <40.094929, 34.212452, 30.569248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695694, 34.233574, 30.556400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016219, 0.725293, 0.688249,
		0.059638, 0.686412, -0.724763,
		-0.998088, 0.052801, -0.032122,
		39.396267, 34.249413, 30.546764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900696, 34.966644, 30.567421>,  <40.094929, 34.212452, 30.569248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900696, 34.966644, 30.567421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598385, 34.764854, 30.734423>,  <39.417000, 34.643780, 30.834623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598385, 34.764854, 30.734423>,  <39.900696, 34.966644, 30.567421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598385, 34.764854, 30.734423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015139, 0.650864, 0.759043,
		-0.654656, 0.567346, -0.499544,
		-0.755776, -0.504475, 0.417503,
		39.371651, 34.613514, 30.859674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580395, 34.964375, 30.343964>,  <39.900696, 34.966644, 30.567421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580395, 34.964375, 30.343964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.978405, 34.980343, 30.380461>,  <41.217213, 34.989925, 30.402359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.978405, 34.980343, 30.380461>,  <40.580395, 34.964375, 30.343964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978405, 34.980343, 30.380461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095786, -0.132655, -0.986523,
		-0.027278, 0.990358, -0.135819,
		0.995028, 0.039920, 0.091244,
		41.276913, 34.992317, 30.407833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793816, 35.199928, 29.734497>,  <40.580395, 34.964375, 30.343964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793816, 35.199928, 29.734497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.140251, 35.048550, 29.865141>,  <41.348110, 34.957722, 29.943527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.140251, 35.048550, 29.865141>,  <40.793816, 35.199928, 29.734497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140251, 35.048550, 29.865141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192725, -0.350068, -0.916684,
		0.461251, 0.856873, -0.230253,
		0.866086, -0.378446, 0.326610,
		41.400078, 34.935017, 29.963123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228706, 35.504250, 29.272709>,  <40.793816, 35.199928, 29.734497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228706, 35.504250, 29.272709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.443184, 35.212875, 29.443296>,  <41.571873, 35.038052, 29.545649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.443184, 35.212875, 29.443296>,  <41.228706, 35.504250, 29.272709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443184, 35.212875, 29.443296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156538, -0.410662, -0.898250,
		0.829451, 0.548397, -0.106168,
		0.536196, -0.728435, 0.426469,
		41.604042, 34.994347, 29.571238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891228, 35.411034, 28.909340>,  <41.228706, 35.504250, 29.272709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891228, 35.411034, 28.909340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.827019, 35.057621, 29.085344>,  <41.788494, 34.845573, 29.190947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.827019, 35.057621, 29.085344>,  <41.891228, 35.411034, 28.909340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827019, 35.057621, 29.085344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291648, -0.468342, -0.834025,
		0.942960, -0.005551, 0.332859,
		-0.160522, -0.883530, 0.440009,
		41.778862, 34.792561, 29.217346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574932, 35.041779, 28.798246>,  <41.891228, 35.411034, 28.909340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574932, 35.041779, 28.798246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.270985, 34.788700, 28.857979>,  <42.088615, 34.636852, 28.893818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.270985, 34.788700, 28.857979>,  <42.574932, 35.041779, 28.798246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270985, 34.788700, 28.857979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185759, -0.431457, -0.882802,
		0.622976, -0.643070, 0.445378,
		-0.759865, -0.632697, 0.149332,
		42.043026, 34.598892, 28.902779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776691, 34.365723, 28.508127>,  <42.574932, 35.041779, 28.798246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776691, 34.365723, 28.508127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.378464, 34.334801, 28.529509>,  <42.139526, 34.316246, 28.542337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.378464, 34.334801, 28.529509>,  <42.776691, 34.365723, 28.508127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378464, 34.334801, 28.529509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009469, -0.483338, -0.875382,
		0.093512, -0.872013, 0.480467,
		-0.995573, -0.077309, 0.053455,
		42.079792, 34.311607, 28.545546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689678, 33.661613, 28.366081>,  <42.776691, 34.365723, 28.508127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689678, 33.661613, 28.366081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.330589, 33.831860, 28.320572>,  <42.115135, 33.934010, 28.293266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.330589, 33.831860, 28.320572>,  <42.689678, 33.661613, 28.366081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330589, 33.831860, 28.320572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126165, -0.495791, -0.859229,
		-0.422112, -0.756994, 0.498780,
		-0.897721, 0.425619, -0.113773,
		42.061272, 33.959545, 28.286440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324184, 33.090523, 28.069118>,  <42.689678, 33.661613, 28.366081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324184, 33.090523, 28.069118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.136902, 33.431892, 27.977507>,  <42.024532, 33.636715, 27.922541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.136902, 33.431892, 27.977507>,  <42.324184, 33.090523, 28.069118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136902, 33.431892, 27.977507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153123, -0.333634, -0.930183,
		-0.870252, -0.400446, 0.286887,
		-0.468204, 0.853423, -0.229029,
		41.996441, 33.687920, 27.908798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646446, 32.892555, 27.809729>,  <42.324184, 33.090523, 28.069118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646446, 32.892555, 27.809729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.729500, 33.258675, 27.671679>,  <41.779331, 33.478348, 27.588848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.729500, 33.258675, 27.671679>,  <41.646446, 32.892555, 27.809729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729500, 33.258675, 27.671679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078571, -0.336067, -0.938555,
		-0.975046, 0.221995, 0.002137,
		0.207637, 0.915302, -0.345123,
		41.791790, 33.533264, 27.568142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216553, 32.975773, 27.262341>,  <41.646446, 32.892555, 27.809729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216553, 32.975773, 27.262341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.506817, 33.237862, 27.178339>,  <41.680973, 33.395115, 27.127937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.506817, 33.237862, 27.178339>,  <41.216553, 32.975773, 27.262341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506817, 33.237862, 27.178339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099070, -0.202538, -0.974250,
		-0.680886, 0.727778, -0.082061,
		0.725658, 0.655223, -0.210006,
		41.724514, 33.434429, 27.115337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933853, 33.491711, 26.716747>,  <41.216553, 32.975773, 27.262341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933853, 33.491711, 26.716747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.327763, 33.554958, 26.687849>,  <41.564110, 33.592907, 26.670509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.327763, 33.554958, 26.687849>,  <40.933853, 33.491711, 26.716747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327763, 33.554958, 26.687849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080338, 0.045389, -0.995734,
		-0.154165, 0.986376, 0.057401,
		0.984773, 0.158119, -0.072247,
		41.623196, 33.602394, 26.666176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996525, 34.002811, 26.148878>,  <40.933853, 33.491711, 26.716747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996525, 34.002811, 26.148878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.361969, 33.844994, 26.188173>,  <41.581234, 33.750301, 26.211750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.361969, 33.844994, 26.188173>,  <40.996525, 34.002811, 26.148878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361969, 33.844994, 26.188173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066610, -0.093112, -0.993425,
		0.401099, 0.914146, -0.058787,
		0.913610, -0.394546, 0.098239,
		41.636051, 33.726631, 26.217646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449669, 34.404797, 25.786345>,  <40.996525, 34.002811, 26.148878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449669, 34.404797, 25.786345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593315, 34.032730, 25.816872>,  <41.679504, 33.809490, 25.835188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593315, 34.032730, 25.816872>,  <41.449669, 34.404797, 25.786345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593315, 34.032730, 25.816872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057771, -0.103768, -0.992922,
		0.931504, 0.352164, -0.091001,
		0.359114, -0.930168, 0.076316,
		41.701050, 33.753681, 25.839766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742317, 34.346748, 25.091509>,  <41.449669, 34.404797, 25.786345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742317, 34.346748, 25.091509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742420, 33.969093, 25.223326>,  <41.742481, 33.742500, 25.302416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742420, 33.969093, 25.223326>,  <41.742317, 34.346748, 25.091509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742420, 33.969093, 25.223326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150496, -0.325826, -0.933375,
		0.988611, -0.049351, -0.142175,
		0.000261, -0.944141, 0.329542,
		41.742500, 33.685852, 25.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187500, 34.096035, 24.701954>,  <41.742317, 34.346748, 25.091509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187500, 34.096035, 24.701954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.932186, 33.808327, 24.811676>,  <41.778999, 33.635700, 24.877510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.932186, 33.808327, 24.811676>,  <42.187500, 34.096035, 24.701954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932186, 33.808327, 24.811676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116023, -0.262375, -0.957966,
		0.761008, -0.643279, 0.084017,
		-0.638283, -0.719271, 0.274305,
		41.740700, 33.592545, 24.893967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590893, 33.449032, 24.506313>,  <42.187500, 34.096035, 24.701954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590893, 33.449032, 24.506313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.210613, 33.330101, 24.541557>,  <41.982445, 33.258743, 24.562704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.210613, 33.330101, 24.541557>,  <42.590893, 33.449032, 24.506313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210613, 33.330101, 24.541557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032220, -0.187884, -0.981663,
		0.308426, -0.936108, 0.169042,
		-0.950702, -0.297324, 0.088110,
		41.925404, 33.240906, 24.567989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606174, 32.997906, 24.091541>,  <42.590893, 33.449032, 24.506313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606174, 32.997906, 24.091541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.212524, 33.051682, 24.137888>,  <41.976334, 33.083946, 24.165697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.212524, 33.051682, 24.137888>,  <42.606174, 32.997906, 24.091541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212524, 33.051682, 24.137888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141276, -0.198223, -0.969922,
		-0.107431, -0.970893, 0.214069,
		-0.984124, 0.134442, 0.115868,
		41.917286, 33.092014, 24.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325287, 32.509972, 23.690430>,  <42.606174, 32.997906, 24.091541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325287, 32.509972, 23.690430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.045010, 32.791351, 23.738068>,  <41.876842, 32.960178, 23.766649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.045010, 32.791351, 23.738068>,  <42.325287, 32.509972, 23.690430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045010, 32.791351, 23.738068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259885, -0.096198, -0.960836,
		-0.664445, -0.704204, 0.250221,
		-0.700695, 0.703451, 0.119094,
		41.834801, 33.002388, 23.773796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.736691, 32.152657, 23.425959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668644, 32.546227, 23.404207>,  <41.627815, 32.782368, 23.391157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668644, 32.546227, 23.404207>,  <41.736691, 32.152657, 23.425959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668644, 32.546227, 23.404207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534578, -0.138501, -0.833693,
		-0.827821, -0.112753, 0.549544,
		-0.170114, 0.983923, -0.054379,
		41.617611, 32.841404, 23.387894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016621, 32.248600, 23.306396>,  <41.736691, 32.152657, 23.425959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016621, 32.248600, 23.306396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195072, 32.591007, 23.201937>,  <41.302143, 32.796452, 23.139261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.195072, 32.591007, 23.201937>,  <41.016621, 32.248600, 23.306396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195072, 32.591007, 23.201937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597517, 0.067651, -0.798998,
		-0.666293, 0.512492, 0.541669,
		0.446125, 0.856023, -0.261147,
		41.328911, 32.847813, 23.123592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476711, 32.689812, 23.038260>,  <41.016621, 32.248600, 23.306396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476711, 32.689812, 23.038260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825115, 32.808964, 22.882000>,  <41.034157, 32.880455, 22.788244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825115, 32.808964, 22.882000>,  <40.476711, 32.689812, 23.038260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825115, 32.808964, 22.882000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401275, -0.027343, -0.915550,
		-0.283402, 0.954213, 0.095714,
		0.871012, 0.297876, -0.390651,
		41.086418, 32.898327, 22.764805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334370, 33.203308, 22.366394>,  <40.476711, 32.689812, 23.038260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334370, 33.203308, 22.366394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719505, 33.100357, 22.333647>,  <40.950584, 33.038586, 22.313999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719505, 33.100357, 22.333647>,  <40.334370, 33.203308, 22.366394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719505, 33.100357, 22.333647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103722, -0.072490, -0.991961,
		0.249376, 0.963587, -0.096492,
		0.962836, -0.257380, -0.081868,
		41.008358, 33.023144, 22.309086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402245, 33.494190, 21.754625>,  <40.334370, 33.203308, 22.366394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402245, 33.494190, 21.754625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719578, 33.256592, 21.807991>,  <40.909977, 33.114033, 21.840010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719578, 33.256592, 21.807991>,  <40.402245, 33.494190, 21.754625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719578, 33.256592, 21.807991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104549, -0.082959, -0.991054,
		0.599746, 0.800182, -0.003713,
		0.793331, -0.593993, 0.133412,
		40.957577, 33.078396, 21.848015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826824, 33.602074, 21.222910>,  <40.402245, 33.494190, 21.754625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826824, 33.602074, 21.222910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935265, 33.245579, 21.368347>,  <41.000328, 33.031681, 21.455610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.935265, 33.245579, 21.368347>,  <40.826824, 33.602074, 21.222910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935265, 33.245579, 21.368347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079311, -0.355773, -0.931201,
		0.959278, 0.281287, -0.025766,
		0.271102, -0.891237, 0.363594,
		41.016594, 32.978207, 21.477425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254501, 33.363976, 20.804396>,  <40.826824, 33.602074, 21.222910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254501, 33.363976, 20.804396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.156147, 33.020294, 20.983868>,  <41.097134, 32.814087, 21.091551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.156147, 33.020294, 20.983868>,  <41.254501, 33.363976, 20.804396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156147, 33.020294, 20.983868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278389, -0.380791, -0.881758,
		0.928460, -0.341723, -0.145559,
		-0.245889, -0.859199, 0.448681,
		41.082378, 32.762535, 21.118471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609146, 32.730011, 20.418346>,  <41.254501, 33.363976, 20.804396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609146, 32.730011, 20.418346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.320942, 32.545258, 20.625235>,  <41.148018, 32.434406, 20.749369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.320942, 32.545258, 20.625235>,  <41.609146, 32.730011, 20.418346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320942, 32.545258, 20.625235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138592, -0.634912, -0.760052,
		0.679450, -0.619311, 0.393450,
		-0.720514, -0.461888, 0.517222,
		41.104786, 32.406693, 20.780401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813953, 31.959602, 20.380396>,  <41.609146, 32.730011, 20.418346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813953, 31.959602, 20.380396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.432949, 31.917362, 20.494638>,  <41.204346, 31.892017, 20.563183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.432949, 31.917362, 20.494638>,  <41.813953, 31.959602, 20.380396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432949, 31.917362, 20.494638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143861, -0.670601, -0.727735,
		0.268375, -0.734264, 0.623563,
		-0.952512, -0.105600, 0.285605,
		41.147194, 31.885683, 20.580320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618179, 31.242556, 20.447083>,  <41.813953, 31.959602, 20.380396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618179, 31.242556, 20.447083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295708, 31.453346, 20.339481>,  <41.102222, 31.579821, 20.274920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295708, 31.453346, 20.339481>,  <41.618179, 31.242556, 20.447083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295708, 31.453346, 20.339481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127780, -0.599000, -0.790488,
		-0.577698, -0.602908, 0.550243,
		-0.806187, 0.526973, -0.269002,
		41.053852, 31.611439, 20.258780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174286, 30.703602, 20.374052>,  <41.618179, 31.242556, 20.447083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174286, 30.703602, 20.374052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015846, 31.008530, 20.169317>,  <40.920784, 31.191486, 20.046476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015846, 31.008530, 20.169317>,  <41.174286, 30.703602, 20.374052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015846, 31.008530, 20.169317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205996, -0.616994, -0.759529,
		-0.894803, -0.195411, 0.401424,
		-0.396097, 0.762321, -0.511835,
		40.897018, 31.237226, 20.015766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503899, 30.471567, 19.949404>,  <41.174286, 30.703602, 20.374052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503899, 30.471567, 19.949404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620583, 30.815369, 19.781517>,  <40.690594, 31.021648, 19.680784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620583, 30.815369, 19.781517>,  <40.503899, 30.471567, 19.949404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620583, 30.815369, 19.781517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116584, -0.403580, -0.907486,
		-0.949375, 0.313656, -0.017525,
		0.291711, 0.859502, -0.419716,
		40.708096, 31.073219, 19.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073055, 30.595856, 19.323133>,  <40.503899, 30.471567, 19.949404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073055, 30.595856, 19.323133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369846, 30.860355, 19.278913>,  <40.547920, 31.019056, 19.252382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369846, 30.860355, 19.278913>,  <40.073055, 30.595856, 19.323133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369846, 30.860355, 19.278913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000007, -0.164903, -0.986310,
		-0.670429, 0.731815, -0.122358,
		0.741974, 0.661251, -0.110551,
		40.592438, 31.058731, 19.245749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827335, 31.174910, 18.869091>,  <40.073055, 30.595856, 19.323133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827335, 31.174910, 18.869091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.225204, 31.136509, 18.854101>,  <40.463928, 31.113468, 18.845106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.225204, 31.136509, 18.854101>,  <39.827335, 31.174910, 18.869091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225204, 31.136509, 18.854101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045963, -0.087777, -0.995079,
		0.092240, 0.991503, -0.091722,
		0.994676, -0.096002, -0.037476,
		40.523605, 31.107708, 18.842859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930435, 31.619217, 18.347073>,  <39.827335, 31.174910, 18.869091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930435, 31.619217, 18.347073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257984, 31.397081, 18.405092>,  <40.454514, 31.263800, 18.439903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257984, 31.397081, 18.405092>,  <39.930435, 31.619217, 18.347073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257984, 31.397081, 18.405092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098159, -0.113489, -0.988678,
		0.565513, 0.823844, -0.038422,
		0.818877, -0.555339, 0.145047,
		40.503647, 31.230480, 18.448606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500824, 31.928894, 17.883055>,  <39.930435, 31.619217, 18.347073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500824, 31.928894, 17.883055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609795, 31.550152, 17.951464>,  <40.675179, 31.322906, 17.992510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609795, 31.550152, 17.951464>,  <40.500824, 31.928894, 17.883055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609795, 31.550152, 17.951464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199862, -0.118182, -0.972671,
		0.941189, 0.299166, 0.157043,
		0.272430, -0.946854, 0.171024,
		40.691525, 31.266096, 18.002771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211048, 31.799305, 17.634398>,  <40.500824, 31.928894, 17.883055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211048, 31.799305, 17.634398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034573, 31.440739, 17.651302>,  <40.928688, 31.225599, 17.661446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034573, 31.440739, 17.651302>,  <41.211048, 31.799305, 17.634398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034573, 31.440739, 17.651302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263378, -0.174357, -0.948805,
		0.857894, -0.407476, 0.313022,
		-0.441193, -0.896417, 0.042260,
		40.902214, 31.171814, 17.663980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551449, 31.536936, 17.141180>,  <41.211048, 31.799305, 17.634398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551449, 31.536936, 17.141180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242775, 31.290243, 17.203331>,  <41.057571, 31.142227, 17.240622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242775, 31.290243, 17.203331>,  <41.551449, 31.536936, 17.141180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242775, 31.290243, 17.203331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030738, -0.280186, -0.959454,
		0.635261, -0.735621, 0.235172,
		-0.771686, -0.616732, 0.155380,
		41.011269, 31.105223, 17.249945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740696, 30.927561, 16.807558>,  <41.551449, 31.536936, 17.141180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740696, 30.927561, 16.807558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344379, 30.884521, 16.840424>,  <41.106590, 30.858698, 16.860144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.344379, 30.884521, 16.840424>,  <41.740696, 30.927561, 16.807558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344379, 30.884521, 16.840424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026810, -0.438956, -0.898109,
		0.132700, -0.892043, 0.432030,
		-0.990794, -0.107597, 0.082165,
		41.047142, 30.852243, 16.865072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601128, 30.295183, 16.521612>,  <41.740696, 30.927561, 16.807558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601128, 30.295183, 16.521612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.249920, 30.485062, 16.497112>,  <41.039196, 30.598989, 16.482412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.249920, 30.485062, 16.497112>,  <41.601128, 30.295183, 16.521612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249920, 30.485062, 16.497112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032105, -0.186092, -0.982008,
		-0.477555, -0.860251, 0.178631,
		-0.878015, 0.474697, -0.061251,
		40.986515, 30.627472, 16.478737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321617, 30.025854, 15.897951>,  <41.601128, 30.295183, 16.521612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321617, 30.025854, 15.897951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.085388, 30.341146, 15.967134>,  <40.943649, 30.530321, 16.008644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.085388, 30.341146, 15.967134>,  <41.321617, 30.025854, 15.897951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085388, 30.341146, 15.967134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222967, 0.046601, -0.973711,
		-0.775568, -0.613614, 0.148228,
		-0.590576, 0.788229, 0.172958,
		40.908215, 30.577616, 16.019022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646721, 29.891527, 15.545453>,  <41.321617, 30.025854, 15.897951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646721, 29.891527, 15.545453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669338, 30.288277, 15.591045>,  <40.682907, 30.526325, 15.618401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669338, 30.288277, 15.591045>,  <40.646721, 29.891527, 15.545453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669338, 30.288277, 15.591045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203229, 0.123206, -0.971349,
		-0.977497, 0.031759, 0.208544,
		0.056543, 0.991873, 0.113980,
		40.686302, 30.585838, 15.625239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073372, 30.231476, 15.414465>,  <40.646721, 29.891527, 15.545453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073372, 30.231476, 15.414465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389248, 30.452896, 15.308658>,  <40.578773, 30.585749, 15.245173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389248, 30.452896, 15.308658>,  <40.073372, 30.231476, 15.414465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389248, 30.452896, 15.308658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368625, 0.083466, -0.925823,
		-0.490413, 0.828621, 0.269965,
		0.789690, 0.553552, -0.264518,
		40.626156, 30.618961, 15.229302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432568, 30.030260, 14.985978>,  <40.073372, 30.231476, 15.414465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432568, 30.030260, 14.985978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035095, 30.065460, 15.013868>,  <38.796612, 30.086580, 15.030602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035095, 30.065460, 15.013868>,  <39.432568, 30.030260, 14.985978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035095, 30.065460, 15.013868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043035, -0.275064, 0.960462,
		0.103702, 0.957390, 0.269537,
		-0.993677, 0.088003, 0.069726,
		38.736992, 30.091862, 15.034786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214737, 30.494041, 15.636947>,  <39.432568, 30.030260, 14.985978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214737, 30.494041, 15.636947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.917057, 30.246231, 15.537063>,  <38.738449, 30.097546, 15.477132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.917057, 30.246231, 15.537063>,  <39.214737, 30.494041, 15.636947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917057, 30.246231, 15.537063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196636, -0.154080, 0.968294,
		-0.638358, 0.769706, -0.007155,
		-0.744200, -0.619525, -0.249711,
		38.693798, 30.060373, 15.462150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665615, 30.680920, 16.012655>,  <39.214737, 30.494041, 15.636947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665615, 30.680920, 16.012655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549046, 30.317913, 15.891669>,  <38.479103, 30.100109, 15.819077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549046, 30.317913, 15.891669>,  <38.665615, 30.680920, 16.012655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549046, 30.317913, 15.891669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426241, -0.159878, 0.890369,
		-0.856383, 0.388396, -0.340229,
		-0.291421, -0.907517, -0.302467,
		38.461620, 30.045658, 15.800929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924873, 30.620291, 16.146523>,  <38.665615, 30.680920, 16.012655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924873, 30.620291, 16.146523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.059498, 30.243870, 16.132980>,  <38.140274, 30.018017, 16.124855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.059498, 30.243870, 16.132980>,  <37.924873, 30.620291, 16.146523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059498, 30.243870, 16.132980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431936, -0.186227, 0.882469,
		-0.836753, -0.282386, -0.469151,
		0.336565, -0.941051, -0.033854,
		38.160469, 29.961554, 16.122824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329834, 30.106373, 16.185562>,  <37.924873, 30.620291, 16.146523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329834, 30.106373, 16.185562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658878, 29.916101, 16.310165>,  <37.856304, 29.801939, 16.384928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658878, 29.916101, 16.310165>,  <37.329834, 30.106373, 16.185562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658878, 29.916101, 16.310165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413073, -0.123460, 0.902291,
		-0.390741, -0.870912, -0.298049,
		0.822613, -0.475678, 0.311509,
		37.905663, 29.773397, 16.403618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072811, 29.662910, 16.549767>,  <37.329834, 30.106373, 16.185562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072811, 29.662910, 16.549767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457993, 29.651985, 16.657074>,  <37.689102, 29.645430, 16.721458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457993, 29.651985, 16.657074>,  <37.072811, 29.662910, 16.549767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457993, 29.651985, 16.657074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266490, 0.055612, 0.962232,
		-0.041202, -0.998079, 0.046273,
		0.962957, -0.027314, 0.268269,
		37.746880, 29.643791, 16.737555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035385, 29.308569, 17.222385>,  <37.072811, 29.662910, 16.549767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035385, 29.308569, 17.222385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384308, 29.503210, 17.203218>,  <37.593662, 29.619995, 17.191717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384308, 29.503210, 17.203218>,  <37.035385, 29.308569, 17.222385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384308, 29.503210, 17.203218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041440, 0.171222, 0.984360,
		0.487197, -0.856680, 0.169523,
		0.872308, 0.486603, -0.047918,
		37.646000, 29.649191, 17.188843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491497, 28.959990, 17.645443>,  <37.035385, 29.308569, 17.222385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491497, 28.959990, 17.645443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618324, 29.337271, 17.605772>,  <37.694420, 29.563641, 17.581970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618324, 29.337271, 17.605772>,  <37.491497, 28.959990, 17.645443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618324, 29.337271, 17.605772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161854, 0.049223, 0.985586,
		0.934491, -0.328548, -0.137054,
		0.317066, 0.943204, -0.099175,
		37.713444, 29.620232, 17.576019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812199, 29.195786, 18.303600>,  <37.491497, 28.959990, 17.645443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812199, 29.195786, 18.303600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836304, 29.554300, 18.127855>,  <37.850765, 29.769409, 18.022408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836304, 29.554300, 18.127855>,  <37.812199, 29.195786, 18.303600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836304, 29.554300, 18.127855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167627, 0.424825, 0.889620,
		0.984007, -0.127257, -0.124642,
		0.060260, 0.896286, -0.439363,
		37.854382, 29.823187, 17.996046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508316, 29.506813, 18.483070>,  <37.812199, 29.195786, 18.303600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508316, 29.506813, 18.483070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235374, 29.786432, 18.397537>,  <38.071609, 29.954205, 18.346216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235374, 29.786432, 18.397537>,  <38.508316, 29.506813, 18.483070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235374, 29.786432, 18.397537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148222, 0.418740, 0.895928,
		0.715839, 0.579644, -0.389343,
		-0.682352, 0.699049, -0.213835,
		38.030670, 29.996147, 18.333387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845207, 30.136253, 18.781151>,  <38.508316, 29.506813, 18.483070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845207, 30.136253, 18.781151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465019, 30.237251, 18.708639>,  <38.236908, 30.297850, 18.665133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465019, 30.237251, 18.708639>,  <38.845207, 30.136253, 18.781151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465019, 30.237251, 18.708639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055683, 0.435470, 0.898480,
		0.305803, 0.864068, -0.399839,
		-0.950465, 0.252494, -0.181281,
		38.179878, 30.313000, 18.654255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763309, 30.896004, 18.814919>,  <38.845207, 30.136253, 18.781151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763309, 30.896004, 18.814919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408878, 30.726221, 18.889427>,  <38.196220, 30.624352, 18.934134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408878, 30.726221, 18.889427>,  <38.763309, 30.896004, 18.814919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408878, 30.726221, 18.889427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019069, 0.434898, 0.900278,
		-0.463138, 0.794167, -0.393449,
		-0.886081, -0.424455, 0.186273,
		38.143055, 30.598885, 18.945309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407631, 31.505283, 19.043812>,  <38.763309, 30.896004, 18.814919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407631, 31.505283, 19.043812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262867, 31.160564, 19.185982>,  <38.176006, 30.953733, 19.271284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262867, 31.160564, 19.185982>,  <38.407631, 31.505283, 19.043812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262867, 31.160564, 19.185982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056496, 0.360291, 0.931128,
		-0.930499, 0.357066, -0.081705,
		-0.361912, -0.861797, 0.355423,
		38.154293, 30.902025, 19.292608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054527, 31.725401, 19.524122>,  <38.407631, 31.505283, 19.043812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054527, 31.725401, 19.524122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.071590, 31.337107, 19.618656>,  <38.081829, 31.104130, 19.675377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.071590, 31.337107, 19.618656>,  <38.054527, 31.725401, 19.524122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071590, 31.337107, 19.618656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222313, 0.239842, 0.945015,
		-0.974041, 0.012223, 0.226039,
		0.042663, -0.970735, 0.236333,
		38.084389, 31.045887, 19.689556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619053, 31.639576, 20.092129>,  <38.054527, 31.725401, 19.524122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619053, 31.639576, 20.092129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874599, 31.333185, 20.120758>,  <38.027927, 31.149351, 20.137936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874599, 31.333185, 20.120758>,  <37.619053, 31.639576, 20.092129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874599, 31.333185, 20.120758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083511, 0.161537, 0.983327,
		-0.764770, -0.622240, 0.167168,
		0.638869, -0.765979, 0.071574,
		38.066261, 31.103392, 20.142231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443710, 31.396452, 20.696127>,  <37.619053, 31.639576, 20.092129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443710, 31.396452, 20.696127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809895, 31.244808, 20.642149>,  <38.029606, 31.153822, 20.609762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809895, 31.244808, 20.642149>,  <37.443710, 31.396452, 20.696127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809895, 31.244808, 20.642149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246673, 0.263721, 0.932525,
		-0.317943, -0.886976, 0.334942,
		0.915459, -0.379111, -0.134944,
		38.084534, 31.131075, 20.601665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616215, 31.101585, 21.343279>,  <37.443710, 31.396452, 20.696127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616215, 31.101585, 21.343279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982563, 31.119394, 21.183680>,  <38.202374, 31.130079, 21.087921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982563, 31.119394, 21.183680>,  <37.616215, 31.101585, 21.343279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982563, 31.119394, 21.183680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400052, -0.017664, 0.916322,
		0.033751, -0.998852, -0.033989,
		0.915871, 0.044524, -0.398996,
		38.257324, 31.132751, 21.063980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061619, 30.547239, 21.653334>,  <37.616215, 31.101585, 21.343279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061619, 30.547239, 21.653334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303509, 30.838373, 21.523989>,  <38.448643, 31.013054, 21.446383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303509, 30.838373, 21.523989>,  <38.061619, 30.547239, 21.653334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303509, 30.838373, 21.523989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446563, 0.026320, 0.894365,
		0.659463, -0.685245, -0.309109,
		0.604723, 0.727837, -0.323363,
		38.484924, 31.056725, 21.426979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766586, 30.262852, 21.680685>,  <38.061619, 30.547239, 21.653334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766586, 30.262852, 21.680685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762836, 30.662315, 21.701042>,  <38.760586, 30.901995, 21.713257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762836, 30.662315, 21.701042>,  <38.766586, 30.262852, 21.680685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762836, 30.662315, 21.701042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536511, -0.037925, 0.843041,
		0.843841, 0.035205, -0.535437,
		-0.009373, 0.998660, 0.050891,
		38.760025, 30.961914, 21.716309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245487, 30.382801, 22.001898>,  <38.766586, 30.262852, 21.680685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245487, 30.382801, 22.001898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.101536, 30.752800, 22.050665>,  <39.015167, 30.974800, 22.079926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.101536, 30.752800, 22.050665>,  <39.245487, 30.382801, 22.001898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101536, 30.752800, 22.050665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363172, 0.018513, 0.931538,
		0.859416, 0.379517, -0.342596,
		-0.359877, 0.925000, 0.121919,
		38.993572, 31.030300, 22.087240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756538, 30.945223, 22.401985>,  <39.245487, 30.382801, 22.001898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756538, 30.945223, 22.401985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392300, 31.099873, 22.460415>,  <39.173756, 31.192661, 22.495474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392300, 31.099873, 22.460415>,  <39.756538, 30.945223, 22.401985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392300, 31.099873, 22.460415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231830, 0.185209, 0.954962,
		0.342155, 0.903449, -0.258281,
		-0.910596, 0.386623, 0.146076,
		39.119122, 31.215858, 22.504238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.819965, 33.240475, 26.255743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444763, 33.379120, 26.255329>,  <42.219643, 33.462307, 26.255081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.444763, 33.379120, 26.255329>,  <42.819965, 33.240475, 26.255743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444763, 33.379120, 26.255329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179373, 0.487975, 0.854228,
		0.296592, 0.801087, -0.519898,
		-0.938008, 0.346612, -0.001036,
		42.163361, 33.483105, 26.255018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891293, 33.790119, 26.648266>,  <42.819965, 33.240475, 26.255743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891293, 33.790119, 26.648266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495407, 33.732906, 26.647661>,  <42.257874, 33.698578, 26.647299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495407, 33.732906, 26.647661>,  <42.891293, 33.790119, 26.648266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495407, 33.732906, 26.647661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049717, 0.334064, 0.941238,
		-0.134121, 0.931635, -0.337740,
		-0.989717, -0.143031, -0.001513,
		42.198490, 33.689999, 26.647207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626686, 34.383995, 26.893839>,  <42.891293, 33.790119, 26.648266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626686, 34.383995, 26.893839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.339928, 34.111584, 26.953535>,  <42.167873, 33.948139, 26.989353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.339928, 34.111584, 26.953535>,  <42.626686, 34.383995, 26.893839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339928, 34.111584, 26.953535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150529, 0.360207, 0.920648,
		-0.680740, 0.637540, -0.360743,
		-0.716892, -0.681024, 0.149239,
		42.124859, 33.907276, 26.998306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125084, 34.753395, 27.216286>,  <42.626686, 34.383995, 26.893839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125084, 34.753395, 27.216286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018719, 34.377861, 27.303806>,  <41.954899, 34.152538, 27.356318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018719, 34.377861, 27.303806>,  <42.125084, 34.753395, 27.216286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018719, 34.377861, 27.303806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154387, 0.265517, 0.951664,
		-0.951555, 0.219278, -0.215548,
		-0.265911, -0.938838, 0.218801,
		41.938946, 34.096210, 27.369446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472111, 34.867867, 27.445438>,  <42.125084, 34.753395, 27.216286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472111, 34.867867, 27.445438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.628223, 34.537777, 27.608747>,  <41.721893, 34.339725, 27.706734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.628223, 34.537777, 27.608747>,  <41.472111, 34.867867, 27.445438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628223, 34.537777, 27.608747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037823, 0.428697, 0.902656,
		-0.919918, -0.367733, 0.136101,
		0.390283, -0.825222, 0.408275,
		41.745308, 34.290211, 27.731230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984882, 34.568657, 28.033670>,  <41.472111, 34.867867, 27.445438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984882, 34.568657, 28.033670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330288, 34.380619, 28.106724>,  <41.537533, 34.267796, 28.150557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330288, 34.380619, 28.106724>,  <40.984882, 34.568657, 28.033670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330288, 34.380619, 28.106724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012477, 0.342113, 0.939576,
		-0.504170, -0.813616, 0.289554,
		0.863514, -0.470093, 0.182635,
		41.589344, 34.239590, 28.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813240, 34.296043, 28.696924>,  <40.984882, 34.568657, 28.033670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813240, 34.296043, 28.696924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.207466, 34.283707, 28.630335>,  <41.444000, 34.276306, 28.590382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.207466, 34.283707, 28.630335>,  <40.813240, 34.296043, 28.696924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207466, 34.283707, 28.630335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169260, 0.202966, 0.964446,
		0.004044, -0.978700, 0.205256,
		0.985563, -0.030841, -0.166475,
		41.503136, 34.274456, 28.580393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066868, 33.750782, 29.111139>,  <40.813240, 34.296043, 28.696924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066868, 33.750782, 29.111139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358799, 34.013485, 29.035221>,  <41.533958, 34.171108, 28.989670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358799, 34.013485, 29.035221>,  <41.066868, 33.750782, 29.111139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358799, 34.013485, 29.035221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127174, 0.142352, 0.981612,
		0.671700, -0.740543, 0.020370,
		0.729826, 0.656758, -0.189796,
		41.577747, 34.210514, 28.978283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484112, 33.657509, 29.772202>,  <41.066868, 33.750782, 29.111139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484112, 33.657509, 29.772202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606010, 33.998795, 29.602890>,  <41.679150, 34.203564, 29.501303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.606010, 33.998795, 29.602890>,  <41.484112, 33.657509, 29.772202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606010, 33.998795, 29.602890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077222, 0.420819, 0.903852,
		0.949299, -0.308129, 0.062355,
		0.304743, 0.853210, -0.423277,
		41.697433, 34.254757, 29.475906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056656, 33.885410, 30.122831>,  <41.484112, 33.657509, 29.772202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056656, 33.885410, 30.122831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918686, 34.217457, 29.947588>,  <41.835903, 34.416683, 29.842442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918686, 34.217457, 29.947588>,  <42.056656, 33.885410, 30.122831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918686, 34.217457, 29.947588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024323, 0.458692, 0.888262,
		0.938316, 0.317038, -0.138023,
		-0.344923, 0.830114, -0.438109,
		41.815208, 34.466492, 29.816154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442036, 34.390247, 30.383200>,  <42.056656, 33.885410, 30.122831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442036, 34.390247, 30.383200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.109013, 34.577457, 30.264675>,  <41.909199, 34.689785, 30.193562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.109013, 34.577457, 30.264675>,  <42.442036, 34.390247, 30.383200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109013, 34.577457, 30.264675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021945, 0.506626, 0.861886,
		0.553504, 0.724072, -0.411525,
		-0.832557, 0.468026, -0.296309,
		41.859245, 34.717865, 30.175783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572403, 35.097050, 30.603920>,  <42.442036, 34.390247, 30.383200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572403, 35.097050, 30.603920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177299, 35.054428, 30.558344>,  <41.940239, 35.028854, 30.530998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177299, 35.054428, 30.558344>,  <42.572403, 35.097050, 30.603920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177299, 35.054428, 30.558344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155330, 0.604095, 0.781627,
		-0.014457, 0.789756, -0.613251,
		-0.987757, -0.106556, -0.113939,
		41.880974, 35.022461, 30.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223297, 35.755409, 30.320843>,  <42.572403, 35.097050, 30.603920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223297, 35.755409, 30.320843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004414, 35.521687, 30.560560>,  <41.873085, 35.381454, 30.704391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004414, 35.521687, 30.560560>,  <42.223297, 35.755409, 30.320843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004414, 35.521687, 30.560560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130048, 0.647957, 0.750492,
		-0.826832, 0.488612, -0.278580,
		-0.547207, -0.584303, 0.599295,
		41.840252, 35.346397, 30.740349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734566, 36.171825, 30.726984>,  <42.223297, 35.755409, 30.320843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734566, 36.171825, 30.726984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.817421, 35.845119, 30.942389>,  <41.867134, 35.649097, 31.071630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.817421, 35.845119, 30.942389>,  <41.734566, 36.171825, 30.726984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817421, 35.845119, 30.942389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121493, 0.567663, 0.814247,
		-0.970739, -0.103233, 0.216814,
		0.207135, -0.816763, 0.538511,
		41.879562, 35.600090, 31.103941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010529, 36.896553, 30.741484>,  <41.734566, 36.171825, 30.726984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010529, 36.896553, 30.741484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795422, 37.233223, 30.721916>,  <41.666359, 37.435223, 30.710176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795422, 37.233223, 30.721916>,  <42.010529, 36.896553, 30.741484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795422, 37.233223, 30.721916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103217, -0.123312, -0.986986,
		-0.836751, -0.525720, 0.153188,
		-0.537768, 0.841672, -0.048918,
		41.634090, 37.485725, 30.707241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493629, 36.737221, 30.300457>,  <42.010529, 36.896553, 30.741484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493629, 36.737221, 30.300457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.485054, 37.136875, 30.286268>,  <41.479908, 37.376671, 30.277756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.485054, 37.136875, 30.286268>,  <41.493629, 36.737221, 30.300457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485054, 37.136875, 30.286268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229439, -0.039448, -0.972523,
		-0.973087, -0.012711, 0.230088,
		-0.021438, 0.999141, -0.035470,
		41.478622, 37.436619, 30.275627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944378, 36.901215, 29.773331>,  <41.493629, 36.737221, 30.300457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944378, 36.901215, 29.773331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143028, 37.247089, 29.803478>,  <41.262218, 37.454613, 29.821566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143028, 37.247089, 29.803478>,  <40.944378, 36.901215, 29.773331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143028, 37.247089, 29.803478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184228, 0.189866, -0.964371,
		-0.848187, 0.465048, 0.253592,
		0.496628, 0.864685, 0.075367,
		41.292015, 37.506496, 29.826088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567207, 37.329922, 29.363420>,  <40.944378, 36.901215, 29.773331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567207, 37.329922, 29.363420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909985, 37.531670, 29.405853>,  <41.115650, 37.652718, 29.431313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909985, 37.531670, 29.405853>,  <40.567207, 37.329922, 29.363420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909985, 37.531670, 29.405853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065544, 0.097508, -0.993074,
		-0.511219, 0.857966, 0.050501,
		0.856948, 0.504368, 0.106082,
		41.167068, 37.682980, 29.437677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547100, 38.012703, 29.003710>,  <40.567207, 37.329922, 29.363420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547100, 38.012703, 29.003710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.919289, 37.868988, 29.032375>,  <41.142601, 37.782761, 29.049576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.919289, 37.868988, 29.032375>,  <40.547100, 38.012703, 29.003710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919289, 37.868988, 29.032375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097893, 0.055322, -0.993658,
		0.353039, 0.931588, 0.086646,
		0.930473, -0.359283, 0.071665,
		41.198429, 37.761204, 29.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903423, 38.427624, 28.493937>,  <40.547100, 38.012703, 29.003710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903423, 38.427624, 28.493937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.160511, 38.133801, 28.580956>,  <41.314766, 37.957504, 28.633167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.160511, 38.133801, 28.580956>,  <40.903423, 38.427624, 28.493937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160511, 38.133801, 28.580956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330954, 0.010124, -0.943593,
		0.690926, 0.678465, 0.249613,
		0.642722, -0.734563, 0.217546,
		41.353329, 37.913433, 28.646219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507885, 38.613129, 28.211529>,  <40.903423, 38.427624, 28.493937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507885, 38.613129, 28.211529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575691, 38.221100, 28.252934>,  <41.616375, 37.985882, 28.277777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575691, 38.221100, 28.252934>,  <41.507885, 38.613129, 28.211529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575691, 38.221100, 28.252934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428025, -0.021394, -0.903514,
		0.887727, 0.197468, 0.415870,
		0.169518, -0.980076, 0.103513,
		41.626545, 37.927078, 28.283987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154530, 38.558502, 27.949810>,  <41.507885, 38.613129, 28.211529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154530, 38.558502, 27.949810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991074, 38.195385, 27.912024>,  <41.892998, 37.977516, 27.889351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991074, 38.195385, 27.912024>,  <42.154530, 38.558502, 27.949810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991074, 38.195385, 27.912024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452658, -0.111704, -0.884660,
		0.792536, -0.404270, 0.456566,
		-0.408642, -0.907793, -0.094466,
		41.868481, 37.923046, 27.883684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584206, 38.119503, 27.600443>,  <42.154530, 38.558502, 27.949810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584206, 38.119503, 27.600443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248894, 37.903484, 27.570400>,  <42.047707, 37.773872, 27.552376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248894, 37.903484, 27.570400>,  <42.584206, 38.119503, 27.600443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248894, 37.903484, 27.570400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142517, -0.084066, -0.986216,
		0.526288, -0.837427, 0.147436,
		-0.838278, -0.540046, -0.075105,
		41.997410, 37.741470, 27.547869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799831, 37.545795, 27.156195>,  <42.584206, 38.119503, 27.600443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799831, 37.545795, 27.156195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400051, 37.537247, 27.145996>,  <42.160183, 37.532116, 27.139877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400051, 37.537247, 27.145996>,  <42.799831, 37.545795, 27.156195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400051, 37.537247, 27.145996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029570, -0.219544, -0.975154,
		0.015243, -0.975368, 0.220055,
		-0.999447, -0.021371, -0.025495,
		42.100216, 37.530834, 27.138348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638283, 36.899193, 26.787977>,  <42.799831, 37.545795, 27.156195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638283, 36.899193, 26.787977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.310650, 37.127609, 26.766001>,  <42.114071, 37.264660, 26.752815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.310650, 37.127609, 26.766001>,  <42.638283, 36.899193, 26.787977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310650, 37.127609, 26.766001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142117, -0.294765, -0.944942,
		-0.555796, -0.766176, 0.322592,
		-0.819081, 0.571041, -0.054942,
		42.064926, 37.298920, 26.749517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185425, 36.504200, 26.578726>,  <42.638283, 36.899193, 26.787977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185425, 36.504200, 26.578726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054142, 36.870968, 26.487909>,  <41.975372, 37.091026, 26.433420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.054142, 36.870968, 26.487909>,  <42.185425, 36.504200, 26.578726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054142, 36.870968, 26.487909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175352, -0.295318, -0.939169,
		-0.928189, -0.268426, 0.257707,
		-0.328203, 0.916916, -0.227042,
		41.955681, 37.146042, 26.419796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541737, 36.407532, 26.155212>,  <42.185425, 36.504200, 26.578726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541737, 36.407532, 26.155212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633419, 36.785709, 26.062599>,  <41.688427, 37.012615, 26.007030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633419, 36.785709, 26.062599>,  <41.541737, 36.407532, 26.155212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633419, 36.785709, 26.062599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204715, -0.185724, -0.961040,
		-0.951608, 0.267672, 0.150977,
		0.229204, 0.945441, -0.231533,
		41.702179, 37.069340, 25.993139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115971, 36.496727, 25.633902>,  <41.541737, 36.407532, 26.155212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115971, 36.496727, 25.633902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377823, 36.793480, 25.575850>,  <41.534935, 36.971531, 25.541018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377823, 36.793480, 25.575850>,  <41.115971, 36.496727, 25.633902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377823, 36.793480, 25.575850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148273, -0.062245, -0.986985,
		-0.741263, 0.667632, 0.069254,
		0.654633, 0.741884, -0.145132,
		41.574211, 37.016045, 25.532310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537983, 36.910660, 25.816029>,  <41.115971, 36.496727, 25.633902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537983, 36.910660, 25.816029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157951, 37.028290, 25.774338>,  <39.929932, 37.098869, 25.749323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157951, 37.028290, 25.774338>,  <40.537983, 36.910660, 25.816029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157951, 37.028290, 25.774338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080787, 0.090796, 0.992587,
		0.301359, 0.951460, -0.062506,
		-0.950082, 0.294076, -0.104228,
		39.872925, 37.116512, 25.743069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425262, 37.567398, 26.181313>,  <40.537983, 36.910660, 25.816029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425262, 37.567398, 26.181313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079166, 37.370239, 26.144611>,  <39.871510, 37.251945, 26.122591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079166, 37.370239, 26.144611>,  <40.425262, 37.567398, 26.181313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079166, 37.370239, 26.144611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048563, -0.099758, 0.993826,
		-0.499004, 0.864352, 0.062378,
		-0.865238, -0.492894, -0.091755,
		39.819595, 37.222370, 26.117085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931614, 37.948196, 26.608871>,  <40.425262, 37.567398, 26.181313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931614, 37.948196, 26.608871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790318, 37.576767, 26.563314>,  <39.705540, 37.353909, 26.535980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790318, 37.576767, 26.563314>,  <39.931614, 37.948196, 26.608871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790318, 37.576767, 26.563314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180309, -0.051882, 0.982241,
		-0.917994, 0.367499, -0.149104,
		-0.353237, -0.928576, -0.113890,
		39.684345, 37.298195, 26.529148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335041, 37.844986, 27.075592>,  <39.931614, 37.948196, 26.608871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335041, 37.844986, 27.075592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435570, 37.470295, 26.978117>,  <39.495888, 37.245480, 26.919632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435570, 37.470295, 26.978117>,  <39.335041, 37.844986, 27.075592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435570, 37.470295, 26.978117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293924, -0.313739, 0.902871,
		-0.922196, -0.155285, -0.354176,
		0.251321, -0.936725, -0.243687,
		39.510967, 37.189278, 26.905010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995224, 37.449303, 27.529428>,  <39.335041, 37.844986, 27.075592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995224, 37.449303, 27.529428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242214, 37.168919, 27.386667>,  <39.390408, 37.000687, 27.301010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242214, 37.168919, 27.386667>,  <38.995224, 37.449303, 27.529428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242214, 37.168919, 27.386667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239765, -0.599870, 0.763327,
		-0.749158, -0.385762, -0.538470,
		0.617474, -0.700959, -0.356905,
		39.427456, 36.958630, 27.279596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583500, 36.862438, 27.520777>,  <38.995224, 37.449303, 27.529428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583500, 36.862438, 27.520777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953426, 36.710289, 27.522705>,  <39.175385, 36.618999, 27.523863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953426, 36.710289, 27.522705>,  <38.583500, 36.862438, 27.520777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953426, 36.710289, 27.522705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287188, -0.689819, 0.664585,
		-0.249465, -0.616006, -0.747198,
		0.924819, -0.380377, 0.004823,
		39.230873, 36.596176, 27.524153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515728, 36.110973, 27.483706>,  <38.583500, 36.862438, 27.520777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515728, 36.110973, 27.483706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881443, 36.177063, 27.631639>,  <39.100872, 36.216717, 27.720400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881443, 36.177063, 27.631639>,  <38.515728, 36.110973, 27.483706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881443, 36.177063, 27.631639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183377, -0.645283, 0.741608,
		0.361178, -0.745863, -0.559677,
		0.914288, 0.165221, 0.369836,
		39.155731, 36.226627, 27.742590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678478, 35.515976, 27.738100>,  <38.515728, 36.110973, 27.483706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678478, 35.515976, 27.738100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921608, 35.759354, 27.942194>,  <39.067486, 35.905380, 28.064651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921608, 35.759354, 27.942194>,  <38.678478, 35.515976, 27.738100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921608, 35.759354, 27.942194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133902, -0.554821, 0.821124,
		0.782699, -0.567422, -0.255763,
		0.607826, 0.608446, 0.510236,
		39.103954, 35.941887, 28.095264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084015, 35.093357, 28.143612>,  <38.678478, 35.515976, 27.738100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084015, 35.093357, 28.143612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.097378, 35.456333, 28.311153>,  <39.105396, 35.674118, 28.411678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.097378, 35.456333, 28.311153>,  <39.084015, 35.093357, 28.143612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097378, 35.456333, 28.311153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113351, -0.412943, 0.903675,
		0.992993, -0.077670, 0.089062,
		0.033411, 0.907439, 0.418854,
		39.107403, 35.728565, 28.436810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526363, 34.977749, 28.677811>,  <39.084015, 35.093357, 28.143612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526363, 34.977749, 28.677811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351631, 35.326752, 28.765369>,  <39.246792, 35.536152, 28.817905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351631, 35.326752, 28.765369>,  <39.526363, 34.977749, 28.677811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351631, 35.326752, 28.765369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103564, -0.290505, 0.951253,
		0.893561, 0.392869, 0.217262,
		-0.436833, 0.872503, 0.218896,
		39.220581, 35.588501, 28.831038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819923, 35.117882, 29.306292>,  <39.526363, 34.977749, 28.677811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819923, 35.117882, 29.306292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498207, 35.353893, 29.278049>,  <39.305176, 35.495499, 29.261105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498207, 35.353893, 29.278049>,  <39.819923, 35.117882, 29.306292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498207, 35.353893, 29.278049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228814, -0.197849, 0.953153,
		0.548415, 0.782768, 0.294134,
		-0.804292, 0.590025, -0.070605,
		39.256920, 35.530899, 29.256868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852894, 35.471729, 29.914787>,  <39.819923, 35.117882, 29.306292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852894, 35.471729, 29.914787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477150, 35.541073, 29.796436>,  <39.251701, 35.582680, 29.725426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477150, 35.541073, 29.796436>,  <39.852894, 35.471729, 29.914787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477150, 35.541073, 29.796436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311991, -0.073938, 0.947204,
		0.142333, 0.982079, 0.123543,
		-0.939363, 0.173363, -0.295876,
		39.195339, 35.593082, 29.707674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.749325, 37.290127, 21.615524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452351, 37.068428, 21.766048>,  <39.274166, 36.935410, 21.856363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452351, 37.068428, 21.766048>,  <39.749325, 37.290127, 21.615524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452351, 37.068428, 21.766048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160765, 0.397905, 0.903231,
		-0.650344, 0.731086, -0.206316,
		-0.742433, -0.554243, 0.376308,
		39.229622, 36.902157, 21.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422600, 37.693317, 22.172390>,  <39.749325, 37.290127, 21.615524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422600, 37.693317, 22.172390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287151, 37.323330, 22.241407>,  <39.205883, 37.101337, 22.282818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287151, 37.323330, 22.241407>,  <39.422600, 37.693317, 22.172390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287151, 37.323330, 22.241407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123575, 0.138068, 0.982683,
		-0.932773, 0.354079, 0.067550,
		-0.338621, -0.924968, 0.172541,
		39.185566, 37.045841, 22.293169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915760, 37.788960, 22.647326>,  <39.422600, 37.693317, 22.172390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915760, 37.788960, 22.647326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040264, 37.410656, 22.684525>,  <39.114967, 37.183674, 22.706844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040264, 37.410656, 22.684525>,  <38.915760, 37.788960, 22.647326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040264, 37.410656, 22.684525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067082, 0.075746, 0.994868,
		-0.947954, -0.315902, -0.039867,
		0.311261, -0.945763, 0.092996,
		39.133644, 37.126926, 22.712423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460434, 37.417038, 23.061058>,  <38.915760, 37.788960, 22.647326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460434, 37.417038, 23.061058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814423, 37.233822, 23.094603>,  <39.026814, 37.123894, 23.114729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814423, 37.233822, 23.094603>,  <38.460434, 37.417038, 23.061058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814423, 37.233822, 23.094603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100930, -0.012862, 0.994810,
		-0.454584, -0.888839, -0.057612,
		0.884967, -0.458039, 0.083864,
		39.079914, 37.096409, 23.119762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386395, 37.054089, 23.702354>,  <38.460434, 37.417038, 23.061058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386395, 37.054089, 23.702354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782860, 37.005817, 23.680298>,  <39.020737, 36.976856, 23.667063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782860, 37.005817, 23.680298>,  <38.386395, 37.054089, 23.702354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782860, 37.005817, 23.680298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051320, -0.034561, 0.998084,
		-0.122354, -0.992090, -0.028063,
		0.991159, -0.120680, -0.055143,
		39.080208, 36.969616, 23.663755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542133, 36.644386, 24.259201>,  <38.386395, 37.054089, 23.702354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542133, 36.644386, 24.259201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913944, 36.758804, 24.166105>,  <39.137032, 36.827454, 24.110249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913944, 36.758804, 24.166105>,  <38.542133, 36.644386, 24.259201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913944, 36.758804, 24.166105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261657, -0.066865, 0.962842,
		0.259850, -0.955882, -0.136997,
		0.929524, 0.286041, -0.232738,
		39.192802, 36.844616, 24.096283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968369, 36.261269, 24.656075>,  <38.542133, 36.644386, 24.259201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968369, 36.261269, 24.656075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151939, 36.603092, 24.558817>,  <39.262081, 36.808186, 24.500462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151939, 36.603092, 24.558817>,  <38.968369, 36.261269, 24.656075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151939, 36.603092, 24.558817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134541, 0.203667, 0.969751,
		0.878228, -0.477759, -0.021504,
		0.458928, 0.854556, -0.243144,
		39.289619, 36.859459, 24.485874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571060, 36.168053, 24.944046>,  <38.968369, 36.261269, 24.656075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571060, 36.168053, 24.944046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543831, 36.565868, 24.912382>,  <39.527493, 36.804558, 24.893383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543831, 36.565868, 24.912382>,  <39.571060, 36.168053, 24.944046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543831, 36.565868, 24.912382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064838, 0.083588, 0.994389,
		0.995571, 0.062562, -0.070174,
		-0.068076, 0.994535, -0.079161,
		39.523407, 36.864227, 24.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221008, 36.477798, 25.259220>,  <39.571060, 36.168053, 24.944046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221008, 36.477798, 25.259220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921528, 36.742554, 25.273924>,  <39.741840, 36.901405, 25.282745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921528, 36.742554, 25.273924>,  <40.221008, 36.477798, 25.259220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921528, 36.742554, 25.273924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220515, 0.196377, 0.955411,
		0.625156, 0.723423, -0.292983,
		-0.748701, 0.661888, 0.036759,
		39.696918, 36.941120, 25.284952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825642, 36.853767, 25.010475>,  <40.221008, 36.477798, 25.259220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825642, 36.853767, 25.010475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196930, 37.000668, 25.034256>,  <41.419701, 37.088810, 25.048525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196930, 37.000668, 25.034256>,  <40.825642, 36.853767, 25.010475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196930, 37.000668, 25.034256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135971, -0.186135, -0.973070,
		-0.346297, 0.911306, -0.222709,
		0.928219, 0.367253, 0.059453,
		41.475395, 37.110844, 25.052092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958572, 37.535938, 24.552340>,  <40.825642, 36.853767, 25.010475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958572, 37.535938, 24.552340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309311, 37.349613, 24.599924>,  <41.519756, 37.237816, 24.628475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309311, 37.349613, 24.599924>,  <40.958572, 37.535938, 24.552340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309311, 37.349613, 24.599924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003685, -0.240920, -0.970538,
		0.480753, 0.851453, -0.209534,
		0.876848, -0.465817, 0.118961,
		41.572365, 37.209869, 24.635612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295109, 37.715466, 23.978748>,  <40.958572, 37.535938, 24.552340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295109, 37.715466, 23.978748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511890, 37.412090, 24.123554>,  <41.641960, 37.230064, 24.210438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511890, 37.412090, 24.123554>,  <41.295109, 37.715466, 23.978748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511890, 37.412090, 24.123554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070754, -0.388053, -0.918917,
		0.837425, 0.523623, -0.156644,
		0.541952, -0.758441, 0.362014,
		41.674477, 37.184559, 24.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807163, 37.610619, 23.513132>,  <41.295109, 37.715466, 23.978748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807163, 37.610619, 23.513132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782509, 37.270462, 23.722143>,  <41.767715, 37.066368, 23.847549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782509, 37.270462, 23.722143>,  <41.807163, 37.610619, 23.513132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782509, 37.270462, 23.722143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129790, -0.525908, -0.840581,
		0.989624, 0.016006, 0.142789,
		-0.061640, -0.850391, 0.522528,
		41.764015, 37.015347, 23.878902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519024, 37.194698, 23.411243>,  <41.807163, 37.610619, 23.513132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519024, 37.194698, 23.411243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241013, 36.929310, 23.522057>,  <42.074207, 36.770077, 23.588545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241013, 36.929310, 23.522057>,  <42.519024, 37.194698, 23.411243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241013, 36.929310, 23.522057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004608, -0.389416, -0.921051,
		0.718971, -0.638877, 0.273711,
		-0.695025, -0.663469, 0.277035,
		42.032505, 36.730270, 23.605167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770668, 36.677418, 23.082703>,  <42.519024, 37.194698, 23.411243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770668, 36.677418, 23.082703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387039, 36.589294, 23.153858>,  <42.156860, 36.536419, 23.196552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387039, 36.589294, 23.153858>,  <42.770668, 36.677418, 23.082703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387039, 36.589294, 23.153858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072361, -0.416682, -0.906168,
		0.273763, -0.881952, 0.383686,
		-0.959071, -0.220311, 0.177891,
		42.099319, 36.523201, 23.207226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755596, 36.011211, 23.000368>,  <42.770668, 36.677418, 23.082703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755596, 36.011211, 23.000368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364296, 36.085926, 22.964293>,  <42.129517, 36.130756, 22.942648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364296, 36.085926, 22.964293>,  <42.755596, 36.011211, 23.000368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364296, 36.085926, 22.964293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045573, -0.617733, -0.785066,
		-0.202354, -0.763882, 0.612811,
		-0.978251, 0.186789, -0.090189,
		42.070820, 36.141964, 22.937235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473503, 35.341484, 22.957624>,  <42.755596, 36.011211, 23.000368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473503, 35.341484, 22.957624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230354, 35.618309, 22.801916>,  <42.084465, 35.784405, 22.708492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230354, 35.618309, 22.801916>,  <42.473503, 35.341484, 22.957624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230354, 35.618309, 22.801916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118836, -0.564015, -0.817169,
		-0.785090, -0.450477, 0.425093,
		-0.607875, 0.692067, -0.389270,
		42.047993, 35.825928, 22.685135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890766, 34.955250, 22.702539>,  <42.473503, 35.341484, 22.957624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890766, 34.955250, 22.702539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860462, 35.295921, 22.495113>,  <41.842278, 35.500324, 22.370657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860462, 35.295921, 22.495113>,  <41.890766, 34.955250, 22.702539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860462, 35.295921, 22.495113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162975, -0.523644, -0.836204,
		-0.983717, 0.021160, 0.178474,
		-0.075763, 0.851675, -0.518566,
		41.837734, 35.551422, 22.339544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401165, 34.809822, 22.162781>,  <41.890766, 34.955250, 22.702539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401165, 34.809822, 22.162781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548923, 35.159641, 22.037104>,  <41.637577, 35.369534, 21.961697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548923, 35.159641, 22.037104>,  <41.401165, 34.809822, 22.162781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548923, 35.159641, 22.037104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248141, -0.233001, -0.940286,
		-0.895529, 0.425302, 0.130941,
		0.369396, 0.874545, -0.314194,
		41.659740, 35.422005, 21.942846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912762, 35.249302, 21.788994>,  <41.401165, 34.809822, 22.162781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912762, 35.249302, 21.788994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267422, 35.387920, 21.666515>,  <41.480217, 35.471092, 21.593029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267422, 35.387920, 21.666515>,  <40.912762, 35.249302, 21.788994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267422, 35.387920, 21.666515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219253, -0.267955, -0.938151,
		-0.407155, 0.898949, -0.161603,
		0.886653, 0.346541, -0.306196,
		41.533417, 35.491882, 21.574656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791248, 35.724426, 21.195290>,  <40.912762, 35.249302, 21.788994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791248, 35.724426, 21.195290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173084, 35.608540, 21.167538>,  <41.402187, 35.539005, 21.150887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173084, 35.608540, 21.167538>,  <40.791248, 35.724426, 21.195290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173084, 35.608540, 21.167538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089105, -0.055440, -0.994478,
		0.284273, 0.955505, -0.078738,
		0.954594, -0.289720, -0.069380,
		41.459461, 35.521626, 21.146723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043316, 36.042885, 20.619837>,  <40.791248, 35.724426, 21.195290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043316, 36.042885, 20.619837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322620, 35.762691, 20.678823>,  <41.490204, 35.594574, 20.714216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322620, 35.762691, 20.678823>,  <41.043316, 36.042885, 20.619837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322620, 35.762691, 20.678823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088863, -0.119589, -0.988839,
		0.710302, 0.703576, -0.021257,
		0.698265, -0.700486, 0.147466,
		41.532101, 35.552547, 20.723063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536232, 36.031746, 20.022013>,  <41.043316, 36.042885, 20.619837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536232, 36.031746, 20.022013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593147, 35.673603, 20.190815>,  <41.627296, 35.458717, 20.292097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593147, 35.673603, 20.190815>,  <41.536232, 36.031746, 20.022013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593147, 35.673603, 20.190815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088921, -0.413057, -0.906354,
		0.985823, 0.166487, 0.020844,
		0.142286, -0.895358, 0.422005,
		41.635834, 35.404995, 20.317417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.252361, 29.689287, 21.603308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147476, 30.070904, 21.545275>,  <36.084545, 30.299873, 21.510454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147476, 30.070904, 21.545275>,  <36.252361, 29.689287, 21.603308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147476, 30.070904, 21.545275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011400, 0.147272, 0.989030,
		0.964942, 0.260995, -0.027741,
		-0.262217, 0.954040, -0.145084,
		36.068810, 30.357117, 21.501749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716927, 30.044458, 21.915752>,  <36.252361, 29.689287, 21.603308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716927, 30.044458, 21.915752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402641, 30.291882, 21.918409>,  <36.214069, 30.440336, 21.920004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402641, 30.291882, 21.918409>,  <36.716927, 30.044458, 21.915752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402641, 30.291882, 21.918409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321479, 0.399131, 0.858688,
		0.528498, 0.676816, -0.512455,
		-0.785711, 0.618558, 0.006642,
		36.166927, 30.477449, 21.920403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061424, 30.589573, 22.050457>,  <36.716927, 30.044458, 21.915752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061424, 30.589573, 22.050457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674213, 30.623693, 22.144808>,  <36.441887, 30.644165, 22.201418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674213, 30.623693, 22.144808>,  <37.061424, 30.589573, 22.050457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674213, 30.623693, 22.144808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250476, 0.378498, 0.891068,
		-0.013272, 0.921664, -0.387763,
		-0.968032, 0.085299, 0.235878,
		36.383804, 30.649282, 22.215570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926632, 31.174940, 22.469973>,  <37.061424, 30.589573, 22.050457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926632, 31.174940, 22.469973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.578278, 31.005489, 22.569656>,  <36.369267, 30.903820, 22.629467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.578278, 31.005489, 22.569656>,  <36.926632, 31.174940, 22.469973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578278, 31.005489, 22.569656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045762, 0.434959, 0.899287,
		-0.489358, 0.794577, -0.359412,
		-0.870882, -0.423625, 0.249212,
		36.317013, 30.878401, 22.644421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412506, 31.680237, 22.702847>,  <36.926632, 31.174940, 22.469973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412506, 31.680237, 22.702847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265621, 31.341307, 22.856310>,  <36.177490, 31.137949, 22.948387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265621, 31.341307, 22.856310>,  <36.412506, 31.680237, 22.702847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265621, 31.341307, 22.856310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175662, 0.468227, 0.865971,
		-0.913399, 0.250601, -0.320781,
		-0.367212, -0.847327, 0.383657,
		36.155457, 31.087109, 22.971407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852318, 31.897694, 23.061182>,  <36.412506, 31.680237, 22.702847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852318, 31.897694, 23.061182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917225, 31.535130, 23.217178>,  <35.956169, 31.317591, 23.310776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917225, 31.535130, 23.217178>,  <35.852318, 31.897694, 23.061182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917225, 31.535130, 23.217178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227149, 0.350302, 0.908676,
		-0.960246, -0.236034, -0.149047,
		0.162267, -0.906409, 0.389991,
		35.965904, 31.263206, 23.334175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372276, 31.915182, 23.658817>,  <35.852318, 31.897694, 23.061182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372276, 31.915182, 23.658817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610733, 31.600174, 23.721334>,  <35.753807, 31.411169, 23.758844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610733, 31.600174, 23.721334>,  <35.372276, 31.915182, 23.658817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610733, 31.600174, 23.721334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042351, 0.225238, 0.973383,
		-0.801764, -0.573651, 0.167626,
		0.596138, -0.787522, 0.156293,
		35.789574, 31.363916, 23.768223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102722, 31.633373, 24.212244>,  <35.372276, 31.915182, 23.658817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102722, 31.633373, 24.212244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.468094, 31.470778, 24.204193>,  <35.687317, 31.373220, 24.199364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.468094, 31.470778, 24.204193>,  <35.102722, 31.633373, 24.212244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468094, 31.470778, 24.204193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117691, 0.216483, 0.969167,
		-0.389600, -0.887638, 0.245583,
		0.913434, -0.406490, -0.020125,
		35.742123, 31.348831, 24.198156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206844, 31.171741, 24.886806>,  <35.102722, 31.633373, 24.212244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206844, 31.171741, 24.886806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565228, 31.286667, 24.751329>,  <35.780258, 31.355623, 24.670044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565228, 31.286667, 24.751329>,  <35.206844, 31.171741, 24.886806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565228, 31.286667, 24.751329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275914, 0.237517, 0.931374,
		0.348044, -0.927920, 0.133530,
		0.895956, 0.287317, -0.338692,
		35.834015, 31.372862, 24.649721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665298, 30.831507, 25.427040>,  <35.206844, 31.171741, 24.886806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665298, 30.831507, 25.427040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.884506, 31.101095, 25.228874>,  <36.016033, 31.262848, 25.109974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.884506, 31.101095, 25.228874>,  <35.665298, 30.831507, 25.427040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884506, 31.101095, 25.228874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416535, 0.293732, 0.860361,
		0.725377, -0.677854, -0.119761,
		0.548021, 0.673970, -0.495416,
		36.048912, 31.303286, 25.080250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309242, 30.859446, 25.806934>,  <35.665298, 30.831507, 25.427040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309242, 30.859446, 25.806934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305397, 31.196684, 25.591862>,  <36.303089, 31.399027, 25.462818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305397, 31.196684, 25.591862>,  <36.309242, 30.859446, 25.806934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305397, 31.196684, 25.591862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415380, 0.492485, 0.764799,
		0.909597, -0.215986, -0.354941,
		-0.009617, 0.843094, -0.537680,
		36.302513, 31.449612, 25.430557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973927, 31.186071, 25.957727>,  <36.309242, 30.859446, 25.806934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973927, 31.186071, 25.957727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755772, 31.490538, 25.817339>,  <36.624878, 31.673218, 25.733107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755772, 31.490538, 25.817339>,  <36.973927, 31.186071, 25.957727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755772, 31.490538, 25.817339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264219, 0.553501, 0.789826,
		0.795451, 0.338029, -0.502986,
		-0.545387, 0.761166, -0.350969,
		36.592155, 31.718887, 25.712048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438354, 31.805040, 25.722910>,  <36.973927, 31.186071, 25.957727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438354, 31.805040, 25.722910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071926, 31.917772, 25.837019>,  <36.852070, 31.985411, 25.905485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.071926, 31.917772, 25.837019>,  <37.438354, 31.805040, 25.722910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071926, 31.917772, 25.837019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386020, 0.427076, 0.817676,
		0.108613, 0.859173, -0.500025,
		-0.916074, 0.281830, 0.285272,
		36.797104, 32.002319, 25.922600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498695, 32.424740, 26.084778>,  <37.438354, 31.805040, 25.722910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498695, 32.424740, 26.084778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129890, 32.313370, 26.192383>,  <36.908607, 32.246548, 26.256947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129890, 32.313370, 26.192383>,  <37.498695, 32.424740, 26.084778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129890, 32.313370, 26.192383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221593, 0.190257, 0.956399,
		-0.317465, 0.941426, -0.113723,
		-0.922015, -0.278423, 0.269014,
		36.853287, 32.229843, 26.273087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064205, 32.972282, 26.348982>,  <37.498695, 32.424740, 26.084778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064205, 32.972282, 26.348982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.375973, 32.725426, 26.392138>,  <38.563034, 32.577312, 26.418032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.375973, 32.725426, 26.392138>,  <38.064205, 32.972282, 26.348982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375973, 32.725426, 26.392138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209858, 0.094922, -0.973113,
		0.590306, 0.781107, 0.203496,
		0.779422, -0.617139, 0.107889,
		38.609798, 32.540283, 26.424503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769764, 33.298260, 26.024818>,  <38.064205, 32.972282, 26.348982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769764, 33.298260, 26.024818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809769, 32.900280, 26.028463>,  <38.833771, 32.661491, 26.030651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809769, 32.900280, 26.028463>,  <38.769764, 33.298260, 26.024818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809769, 32.900280, 26.028463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355372, 0.027163, -0.934330,
		0.929360, 0.096679, 0.356292,
		0.100008, -0.994945, 0.009113,
		38.839771, 32.601795, 26.031197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245499, 33.193020, 25.630323>,  <38.769764, 33.298260, 26.024818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245499, 33.193020, 25.630323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126789, 32.811337, 25.645376>,  <39.055565, 32.582329, 25.654408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126789, 32.811337, 25.645376>,  <39.245499, 33.193020, 25.630323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126789, 32.811337, 25.645376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150313, -0.085596, -0.984926,
		0.943044, -0.286643, 0.168832,
		-0.296774, -0.954206, 0.037634,
		39.037758, 32.525074, 25.656666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773720, 32.842968, 25.141293>,  <39.245499, 33.193020, 25.630323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773720, 32.842968, 25.141293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464214, 32.591694, 25.173967>,  <39.278511, 32.440929, 25.193573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464214, 32.591694, 25.173967>,  <39.773720, 32.842968, 25.141293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464214, 32.591694, 25.173967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007262, -0.137740, -0.990442,
		0.633431, -0.765776, 0.111140,
		-0.773765, -0.628184, 0.081688,
		39.232086, 32.403240, 25.198473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901711, 32.470585, 24.543314>,  <39.773720, 32.842968, 25.141293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901711, 32.470585, 24.543314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546913, 32.343258, 24.677126>,  <39.334034, 32.266861, 24.757414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546913, 32.343258, 24.677126>,  <39.901711, 32.470585, 24.543314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546913, 32.343258, 24.677126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205686, -0.376261, -0.903394,
		0.413439, -0.870116, 0.268268,
		-0.886996, -0.318319, 0.334531,
		39.280815, 32.247761, 24.777485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998615, 31.750982, 24.495628>,  <39.901711, 32.470585, 24.543314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998615, 31.750982, 24.495628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617939, 31.870628, 24.467894>,  <39.389534, 31.942415, 24.451252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617939, 31.870628, 24.467894>,  <39.998615, 31.750982, 24.495628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617939, 31.870628, 24.467894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056803, -0.393435, -0.917596,
		-0.301743, -0.869334, 0.391421,
		-0.951696, 0.299112, -0.069336,
		39.332432, 31.960363, 24.447092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761673, 31.132524, 24.200300>,  <39.998615, 31.750982, 24.495628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761673, 31.132524, 24.200300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.473270, 31.402718, 24.138487>,  <39.300228, 31.564833, 24.101398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.473270, 31.402718, 24.138487>,  <39.761673, 31.132524, 24.200300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473270, 31.402718, 24.138487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226157, -0.440191, -0.868956,
		-0.654989, -0.591570, 0.470143,
		-0.721001, 0.675483, -0.154533,
		39.256969, 31.605362, 24.092127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052845, 30.867157, 24.036800>,  <39.761673, 31.132524, 24.200300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052845, 30.867157, 24.036800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062481, 31.235689, 23.881588>,  <39.068260, 31.456808, 23.788460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062481, 31.235689, 23.881588>,  <39.052845, 30.867157, 24.036800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062481, 31.235689, 23.881588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464498, -0.333390, -0.820422,
		-0.885246, 0.200002, 0.419926,
		0.024087, 0.921331, -0.388033,
		39.069706, 31.512089, 23.765179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445068, 30.833103, 23.646008>,  <39.052845, 30.867157, 24.036800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445068, 30.833103, 23.646008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.660660, 31.137217, 23.500971>,  <38.790016, 31.319685, 23.413950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.660660, 31.137217, 23.500971>,  <38.445068, 30.833103, 23.646008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660660, 31.137217, 23.500971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399739, -0.148031, -0.904597,
		-0.741423, 0.632501, 0.224128,
		0.538981, 0.760282, -0.362589,
		38.822353, 31.365301, 23.392195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959377, 31.282930, 23.234415>,  <38.445068, 30.833103, 23.646008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959377, 31.282930, 23.234415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332119, 31.324858, 23.095467>,  <38.555763, 31.350014, 23.012098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332119, 31.324858, 23.095467>,  <37.959377, 31.282930, 23.234415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332119, 31.324858, 23.095467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332421, -0.137084, -0.933115,
		-0.145424, 0.984998, -0.092899,
		0.931852, 0.104816, -0.347370,
		38.611675, 31.356302, 22.991255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883263, 31.600441, 22.647148>,  <37.959377, 31.282930, 23.234415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883263, 31.600441, 22.647148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262295, 31.479311, 22.606380>,  <38.489716, 31.406633, 22.581921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262295, 31.479311, 22.606380>,  <37.883263, 31.600441, 22.647148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262295, 31.479311, 22.606380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066813, 0.124128, -0.990014,
		0.312453, 0.944928, 0.097389,
		0.947581, -0.302826, -0.101917,
		38.546570, 31.388464, 22.575806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301510, 32.061615, 22.213198>,  <37.883263, 31.600441, 22.647148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301510, 32.061615, 22.213198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509373, 31.725534, 22.151197>,  <38.634090, 31.523888, 22.113998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509373, 31.725534, 22.151197>,  <38.301510, 32.061615, 22.213198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509373, 31.725534, 22.151197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046576, 0.153289, -0.987083,
		0.853104, 0.520165, 0.040525,
		0.519658, -0.840197, -0.154999,
		38.665272, 31.473475, 22.104698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713589, 32.242538, 21.657713>,  <38.301510, 32.061615, 22.213198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713589, 32.242538, 21.657713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.747368, 31.845234, 21.689457>,  <38.767635, 31.606852, 21.708504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.747368, 31.845234, 21.689457>,  <38.713589, 32.242538, 21.657713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747368, 31.845234, 21.689457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019121, -0.078016, -0.996769,
		0.996244, 0.085694, 0.012404,
		0.084450, -0.993262, 0.079361,
		38.772701, 31.547255, 21.713264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382206, 31.963381, 21.304226>,  <38.713589, 32.242538, 21.657713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382206, 31.963381, 21.304226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089016, 31.692142, 21.325878>,  <38.913101, 31.529400, 21.338869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089016, 31.692142, 21.325878>,  <39.382206, 31.963381, 21.304226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089016, 31.692142, 21.325878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047792, -0.130712, -0.990268,
		0.678573, -0.723256, 0.128217,
		-0.732977, -0.678097, 0.054132,
		38.869122, 31.488714, 21.342117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104462, 31.924500, 21.417343>,  <39.382206, 31.963381, 21.304226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104462, 31.924500, 21.417343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423306, 32.046883, 21.209112>,  <40.614613, 32.120312, 21.084173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423306, 32.046883, 21.209112>,  <40.104462, 31.924500, 21.417343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423306, 32.046883, 21.209112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348283, 0.471300, 0.810294,
		0.493272, -0.827200, 0.269114,
		0.797108, 0.305967, -0.520579,
		40.662441, 32.138668, 21.052940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664116, 31.646278, 21.728033>,  <40.104462, 31.924500, 21.417343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664116, 31.646278, 21.728033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.769630, 31.986580, 21.546206>,  <40.832939, 32.190762, 21.437109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.769630, 31.986580, 21.546206>,  <40.664116, 31.646278, 21.728033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769630, 31.986580, 21.546206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315426, 0.369272, 0.874154,
		0.911550, -0.373972, -0.170942,
		0.263785, 0.850755, -0.454570,
		40.848766, 32.241806, 21.409834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284065, 31.792294, 21.918753>,  <40.664116, 31.646278, 21.728033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284065, 31.792294, 21.918753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.214005, 32.163990, 21.788624>,  <41.171967, 32.387009, 21.710546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.214005, 32.163990, 21.788624>,  <41.284065, 31.792294, 21.918753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214005, 32.163990, 21.788624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342717, 0.367311, 0.864655,
		0.922966, 0.039955, -0.382802,
		-0.175155, 0.929240, -0.325323,
		41.161457, 32.442760, 21.691027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858902, 32.173481, 22.053740>,  <41.284065, 31.792294, 21.918753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858902, 32.173481, 22.053740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.577873, 32.454994, 22.011633>,  <41.409256, 32.623901, 21.986368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.577873, 32.454994, 22.011633>,  <41.858902, 32.173481, 22.053740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577873, 32.454994, 22.011633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331482, 0.454567, 0.826733,
		0.629696, 0.545943, -0.552657,
		-0.702569, 0.703787, -0.105268,
		41.367104, 32.666130, 21.980053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221237, 32.700489, 22.418953>,  <41.858902, 32.173481, 22.053740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221237, 32.700489, 22.418953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852493, 32.831062, 22.335409>,  <41.631248, 32.909405, 22.285282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.852493, 32.831062, 22.335409>,  <42.221237, 32.700489, 22.418953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852493, 32.831062, 22.335409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014421, 0.567475, 0.823264,
		0.387259, 0.755921, -0.527839,
		-0.921858, 0.326429, -0.208859,
		41.575935, 32.928989, 22.272751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221905, 33.452126, 22.460930>,  <42.221237, 32.700489, 22.418953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221905, 33.452126, 22.460930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.858261, 33.300526, 22.530064>,  <41.640076, 33.209564, 22.571545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.858261, 33.300526, 22.530064>,  <42.221905, 33.452126, 22.460930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858261, 33.300526, 22.530064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039052, 0.335550, 0.941212,
		-0.414714, 0.862419, -0.290252,
		-0.909114, -0.378999, 0.172837,
		41.585526, 33.186825, 22.581915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924267, 33.969902, 22.916742>,  <42.221905, 33.452126, 22.460930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924267, 33.969902, 22.916742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.737923, 33.619095, 22.963751>,  <41.626118, 33.408611, 22.991957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.737923, 33.619095, 22.963751>,  <41.924267, 33.969902, 22.916742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737923, 33.619095, 22.963751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026897, 0.118719, 0.992564,
		-0.884450, 0.465556, -0.031718,
		-0.465859, -0.877020, 0.117523,
		41.598164, 33.355988, 22.999008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334072, 34.076561, 23.393034>,  <41.924267, 33.969902, 22.916742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334072, 34.076561, 23.393034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404491, 33.682892, 23.384930>,  <41.446743, 33.446690, 23.380068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404491, 33.682892, 23.384930>,  <41.334072, 34.076561, 23.393034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404491, 33.682892, 23.384930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090370, -0.036654, 0.995234,
		-0.980225, -0.173374, -0.095392,
		0.176044, -0.984174, -0.020261,
		41.457306, 33.387638, 23.378851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874146, 33.862850, 23.927502>,  <41.334072, 34.076561, 23.393034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874146, 33.862850, 23.927502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.158859, 33.586037, 23.879406>,  <41.329685, 33.419949, 23.850550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.158859, 33.586037, 23.879406>,  <40.874146, 33.862850, 23.927502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158859, 33.586037, 23.879406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115709, -0.053319, 0.991851,
		-0.692805, -0.719893, 0.042123,
		0.711781, -0.692034, -0.120238,
		41.372395, 33.378426, 23.843334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640526, 33.383698, 24.298328>,  <40.874146, 33.862850, 23.927502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640526, 33.383698, 24.298328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.031189, 33.306976, 24.259649>,  <41.265587, 33.260944, 24.236443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.031189, 33.306976, 24.259649>,  <40.640526, 33.383698, 24.298328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031189, 33.306976, 24.259649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063928, -0.170216, 0.983331,
		-0.205075, -0.966558, -0.153980,
		0.976657, -0.191813, -0.096697,
		41.324184, 33.249435, 24.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708141, 32.757679, 24.652018>,  <40.640526, 33.383698, 24.298328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708141, 32.757679, 24.652018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073311, 32.919502, 24.630468>,  <41.292412, 33.016598, 24.617538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073311, 32.919502, 24.630468>,  <40.708141, 32.757679, 24.652018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073311, 32.919502, 24.630468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118941, -0.137456, 0.983341,
		0.390413, -0.904123, -0.173605,
		0.912924, 0.404557, -0.053873,
		41.347187, 33.040871, 24.614305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054935, 32.574959, 25.240503>,  <40.708141, 32.757679, 24.652018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054935, 32.574959, 25.240503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304359, 32.869053, 25.134224>,  <41.454014, 33.045509, 25.070456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304359, 32.869053, 25.134224>,  <41.054935, 32.574959, 25.240503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304359, 32.869053, 25.134224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232809, 0.149805, 0.960915,
		0.746305, -0.661047, -0.077757,
		0.623561, 0.735239, -0.265698,
		41.491428, 33.089626, 25.054514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812035, 32.419243, 25.485353>,  <41.054935, 32.574959, 25.240503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812035, 32.419243, 25.485353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.795807, 32.816517, 25.441633>,  <41.786072, 33.054882, 25.415401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.795807, 32.816517, 25.441633>,  <41.812035, 32.419243, 25.485353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795807, 32.816517, 25.441633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443827, 0.115920, 0.888583,
		0.895194, -0.012462, -0.445503,
		-0.040569, 0.993180, -0.109302,
		41.783634, 33.114471, 25.408842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318336, 32.594791, 25.924509>,  <41.812035, 32.419243, 25.485353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318336, 32.594791, 25.924509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.130817, 32.945282, 25.879854>,  <42.018307, 33.155575, 25.853062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.130817, 32.945282, 25.879854>,  <42.318336, 32.594791, 25.924509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130817, 32.945282, 25.879854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437120, 0.339955, 0.832680,
		0.767566, 0.341558, -0.542385,
		-0.468795, 0.876224, -0.111636,
		41.990177, 33.208149, 25.846363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.023891, 35.737476, 19.585653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.863564, 35.423206, 19.774147>,  <41.767368, 35.234646, 19.887243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.863564, 35.423206, 19.774147>,  <42.023891, 35.737476, 19.585653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863564, 35.423206, 19.774147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160656, -0.566662, -0.808136,
		0.901963, -0.248207, 0.353350,
		-0.400815, -0.785676, 0.471232,
		41.743320, 35.187504, 19.915516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433483, 35.148350, 19.446308>,  <42.023891, 35.737476, 19.585653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433483, 35.148350, 19.446308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.090649, 34.984066, 19.570707>,  <41.884949, 34.885498, 19.645348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.090649, 34.984066, 19.570707>,  <42.433483, 35.148350, 19.446308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090649, 34.984066, 19.570707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025979, -0.637369, -0.770120,
		0.514513, -0.651982, 0.556952,
		-0.857089, -0.410706, 0.310997,
		41.833523, 34.860855, 19.664007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619972, 34.432686, 19.238897>,  <42.433483, 35.148350, 19.446308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619972, 34.432686, 19.238897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225067, 34.486557, 19.272757>,  <41.988125, 34.518879, 19.293072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225067, 34.486557, 19.272757>,  <42.619972, 34.432686, 19.238897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225067, 34.486557, 19.272757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119513, -0.276812, -0.953463,
		-0.104977, -0.951439, 0.289383,
		-0.987267, 0.134677, 0.084650,
		41.928886, 34.526962, 19.298151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398907, 33.843929, 18.987059>,  <42.619972, 34.432686, 19.238897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398907, 33.843929, 18.987059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.091629, 34.099258, 18.967360>,  <41.907261, 34.252457, 18.955540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.091629, 34.099258, 18.967360>,  <42.398907, 33.843929, 18.987059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091629, 34.099258, 18.967360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230140, -0.347108, -0.909149,
		-0.597422, -0.687070, 0.413549,
		-0.768195, 0.638319, -0.049248,
		41.861172, 34.290752, 18.952585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888050, 33.418873, 18.757891>,  <42.398907, 33.843929, 18.987059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888050, 33.418873, 18.757891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.760887, 33.791389, 18.686752>,  <41.684589, 34.014900, 18.644070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.760887, 33.791389, 18.686752>,  <41.888050, 33.418873, 18.757891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760887, 33.791389, 18.686752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345496, -0.288468, -0.892983,
		-0.882931, -0.222443, 0.413464,
		-0.317909, 0.931292, -0.177844,
		41.665516, 34.070778, 18.633398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079510, 33.472076, 18.552860>,  <41.888050, 33.418873, 18.757891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079510, 33.472076, 18.552860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.263470, 33.800182, 18.416824>,  <41.373844, 33.997047, 18.335203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.263470, 33.800182, 18.416824>,  <41.079510, 33.472076, 18.552860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263470, 33.800182, 18.416824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461327, -0.106543, -0.880810,
		-0.758731, 0.561975, 0.329411,
		0.459897, 0.820264, -0.340092,
		41.401440, 34.046261, 18.314796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581955, 33.857822, 18.117884>,  <41.079510, 33.472076, 18.552860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581955, 33.857822, 18.117884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942059, 33.991421, 18.006184>,  <41.158119, 34.071579, 17.939163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942059, 33.991421, 18.006184>,  <40.581955, 33.857822, 18.117884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942059, 33.991421, 18.006184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226683, -0.188004, -0.955651,
		-0.371688, 0.923633, -0.093540,
		0.900257, 0.334000, -0.279250,
		41.212135, 34.091621, 17.922409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481663, 34.432045, 17.576992>,  <40.581955, 33.857822, 18.117884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481663, 34.432045, 17.576992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836887, 34.253830, 17.531675>,  <41.050022, 34.146900, 17.504484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836887, 34.253830, 17.531675>,  <40.481663, 34.432045, 17.576992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836887, 34.253830, 17.531675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209132, -0.172068, -0.962630,
		0.409395, 0.878571, -0.245984,
		0.888065, -0.445540, -0.113294,
		41.103306, 34.120167, 17.497686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727036, 34.693413, 16.905043>,  <40.481663, 34.432045, 17.576992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727036, 34.693413, 16.905043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.948013, 34.364830, 16.961634>,  <41.080601, 34.167683, 16.995588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.948013, 34.364830, 16.961634>,  <40.727036, 34.693413, 16.905043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948013, 34.364830, 16.961634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157153, -0.269327, -0.950140,
		0.818601, 0.502667, -0.277883,
		0.552445, -0.821455, 0.141476,
		41.113747, 34.118393, 17.004076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130585, 34.679962, 16.359413>,  <40.727036, 34.693413, 16.905043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130585, 34.679962, 16.359413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.144958, 34.302895, 16.492128>,  <41.153584, 34.076653, 16.571758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.144958, 34.302895, 16.492128>,  <41.130585, 34.679962, 16.359413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144958, 34.302895, 16.492128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145140, -0.333404, -0.931545,
		0.988759, -0.014684, -0.148798,
		0.035931, -0.942670, 0.331787,
		41.155739, 34.020092, 16.591665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502113, 34.270123, 15.795514>,  <41.130585, 34.679962, 16.359413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502113, 34.270123, 15.795514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.313560, 33.997311, 16.019169>,  <41.200428, 33.833622, 16.153362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.313560, 33.997311, 16.019169>,  <41.502113, 34.270123, 15.795514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313560, 33.997311, 16.019169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241145, -0.510156, -0.825585,
		0.848321, -0.523998, 0.076009,
		-0.471381, -0.682032, 0.559136,
		41.172146, 33.792702, 16.186909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631226, 33.679291, 15.483833>,  <41.502113, 34.270123, 15.795514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631226, 33.679291, 15.483833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.311123, 33.591984, 15.707244>,  <41.119061, 33.539600, 15.841290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.311123, 33.591984, 15.707244>,  <41.631226, 33.679291, 15.483833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311123, 33.591984, 15.707244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492208, -0.292933, -0.819709,
		0.342525, -0.930887, 0.126989,
		-0.800255, -0.218266, 0.558527,
		41.071045, 33.526505, 15.874802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335987, 32.884228, 15.515416>,  <41.631226, 33.679291, 15.483833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335987, 32.884228, 15.515416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.047146, 33.149853, 15.592964>,  <40.873840, 33.309227, 15.639493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.047146, 33.149853, 15.592964>,  <41.335987, 32.884228, 15.515416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047146, 33.149853, 15.592964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637035, -0.529042, -0.560625,
		-0.269725, -0.528332, 0.805055,
		-0.722104, 0.664063, 0.193871,
		40.830513, 33.349072, 15.651125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722355, 32.558220, 15.748653>,  <41.335987, 32.884228, 15.515416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722355, 32.558220, 15.748653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630287, 32.885830, 15.538428>,  <40.575047, 33.082397, 15.412293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630287, 32.885830, 15.538428>,  <40.722355, 32.558220, 15.748653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630287, 32.885830, 15.538428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640434, -0.534116, -0.551874,
		-0.732710, 0.209562, 0.647471,
		-0.230173, 0.819026, -0.525563,
		40.561234, 33.131538, 15.380759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818295, 31.841160, 15.683800>,  <40.722355, 32.558220, 15.748653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818295, 31.841160, 15.683800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787285, 31.442505, 15.673178>,  <40.768677, 31.203312, 15.666804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787285, 31.442505, 15.673178>,  <40.818295, 31.841160, 15.683800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787285, 31.442505, 15.673178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072320, -0.032187, 0.996862,
		-0.994364, 0.075363, 0.074572,
		-0.077527, -0.996636, -0.026556,
		40.764027, 31.143515, 15.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306225, 31.699266, 16.199680>,  <40.818295, 31.841160, 15.683800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306225, 31.699266, 16.199680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.473434, 31.340929, 16.139383>,  <40.573761, 31.125927, 16.103205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.473434, 31.340929, 16.139383>,  <40.306225, 31.699266, 16.199680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473434, 31.340929, 16.139383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022526, -0.176108, 0.984113,
		-0.908158, -0.407984, -0.093797,
		0.418021, -0.895843, -0.150743,
		40.598843, 31.072176, 16.094160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897324, 31.293945, 16.547333>,  <40.306225, 31.699266, 16.199680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897324, 31.293945, 16.547333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233322, 31.077751, 16.528223>,  <40.434921, 30.948036, 16.516758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233322, 31.077751, 16.528223>,  <39.897324, 31.293945, 16.547333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233322, 31.077751, 16.528223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018947, -0.117209, 0.992926,
		-0.542259, -0.833151, -0.108696,
		0.839998, -0.540483, -0.047772,
		40.485321, 30.915606, 16.513891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792389, 30.707308, 17.029955>,  <39.897324, 31.293945, 16.547333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792389, 30.707308, 17.029955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.188595, 30.728920, 16.979406>,  <40.426319, 30.741888, 16.949078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.188595, 30.728920, 16.979406>,  <39.792389, 30.707308, 17.029955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188595, 30.728920, 16.979406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129198, -0.052502, 0.990228,
		0.046871, -0.997158, -0.058985,
		0.990510, 0.054034, -0.126370,
		40.485748, 30.745129, 16.941496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982800, 30.305607, 17.530739>,  <39.792389, 30.707308, 17.029955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982800, 30.305607, 17.530739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.316982, 30.507671, 17.444191>,  <40.517494, 30.628910, 17.392263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.316982, 30.507671, 17.444191>,  <39.982800, 30.305607, 17.530739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316982, 30.507671, 17.444191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227515, 0.040446, 0.972934,
		0.500241, -0.862076, -0.081141,
		0.835462, 0.505163, -0.216368,
		40.567619, 30.659220, 17.379280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576477, 29.959244, 17.962490>,  <39.982800, 30.305607, 17.530739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576477, 29.959244, 17.962490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.651588, 30.336771, 17.853714>,  <40.696655, 30.563288, 17.788448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.651588, 30.336771, 17.853714>,  <40.576477, 29.959244, 17.962490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651588, 30.336771, 17.853714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156767, 0.244518, 0.956888,
		0.969621, -0.222312, -0.102045,
		0.187776, 0.943816, -0.271941,
		40.707920, 30.619915, 17.772131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131329, 30.068796, 18.287657>,  <40.576477, 29.959244, 17.962490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131329, 30.068796, 18.287657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016819, 30.440899, 18.195862>,  <40.948112, 30.664162, 18.140785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016819, 30.440899, 18.195862>,  <41.131329, 30.068796, 18.287657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016819, 30.440899, 18.195862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109753, 0.269775, 0.956648,
		0.951841, 0.248677, -0.179328,
		-0.286275, 0.930259, -0.229490,
		40.930935, 30.719976, 18.127014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612701, 30.523230, 18.609373>,  <41.131329, 30.068796, 18.287657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612701, 30.523230, 18.609373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.274487, 30.729864, 18.555407>,  <41.071556, 30.853846, 18.523026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.274487, 30.729864, 18.555407>,  <41.612701, 30.523230, 18.609373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274487, 30.729864, 18.555407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032565, 0.302125, 0.952712,
		0.532920, 0.801161, -0.272281,
		-0.845539, 0.516586, -0.134919,
		41.020824, 30.884840, 18.514931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823288, 31.177999, 18.781546>,  <41.612701, 30.523230, 18.609373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823288, 31.177999, 18.781546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.424549, 31.148344, 18.792891>,  <41.185307, 31.130550, 18.799698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.424549, 31.148344, 18.792891>,  <41.823288, 31.177999, 18.781546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424549, 31.148344, 18.792891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002512, 0.386577, 0.922254,
		-0.079339, 0.919272, -0.385544,
		-0.996845, -0.074139, 0.028361,
		41.125496, 31.126102, 18.801399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593758, 31.848577, 19.020189>,  <41.823288, 31.177999, 18.781546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593758, 31.848577, 19.020189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.297142, 31.592047, 19.098997>,  <41.119171, 31.438129, 19.146282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.297142, 31.592047, 19.098997>,  <41.593758, 31.848577, 19.020189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297142, 31.592047, 19.098997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216809, 0.506976, 0.834248,
		-0.634908, 0.575914, -0.514989,
		-0.741542, -0.641325, 0.197020,
		41.074680, 31.399649, 19.158104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041183, 32.264935, 19.162096>,  <41.593758, 31.848577, 19.020189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041183, 32.264935, 19.162096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.962433, 31.906763, 19.321819>,  <40.915180, 31.691860, 19.417654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.962433, 31.906763, 19.321819>,  <41.041183, 32.264935, 19.162096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962433, 31.906763, 19.321819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220156, 0.437257, 0.871973,
		-0.955390, 0.083762, -0.283220,
		-0.196878, -0.895427, 0.399310,
		40.903370, 31.638134, 19.441612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526455, 32.466133, 19.594982>,  <41.041183, 32.264935, 19.162096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526455, 32.466133, 19.594982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.618263, 32.092953, 19.705917>,  <40.673347, 31.869043, 19.772478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.618263, 32.092953, 19.705917>,  <40.526455, 32.466133, 19.594982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618263, 32.092953, 19.705917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120913, 0.255406, 0.959243,
		-0.965765, -0.253697, -0.054186,
		0.229518, -0.932955, 0.277337,
		40.687119, 31.813066, 19.789118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980228, 32.222965, 20.153517>,  <40.526455, 32.466133, 19.594982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980228, 32.222965, 20.153517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.331429, 32.032784, 20.175663>,  <40.542149, 31.918674, 20.188951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.331429, 32.032784, 20.175663>,  <39.980228, 32.222965, 20.153517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331429, 32.032784, 20.175663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010663, 0.135069, 0.990779,
		-0.478548, -0.869310, 0.123660,
		0.877997, -0.475454, 0.055368,
		40.594826, 31.890148, 20.192274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870056, 31.757452, 20.660765>,  <39.980228, 32.222965, 20.153517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870056, 31.757452, 20.660765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259338, 31.845467, 20.634037>,  <40.492908, 31.898275, 20.618000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259338, 31.845467, 20.634037>,  <39.870056, 31.757452, 20.660765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259338, 31.845467, 20.634037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001857, 0.283042, 0.959106,
		0.229947, -0.933527, 0.275048,
		0.973201, 0.220033, -0.066818,
		40.551300, 31.911478, 20.613991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436764, 31.139811, 20.547092>,  <39.870056, 31.757452, 20.660765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436764, 31.139811, 20.547092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069721, 31.128506, 20.705685>,  <38.849495, 31.121723, 20.800840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069721, 31.128506, 20.705685>,  <39.436764, 31.139811, 20.547092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069721, 31.128506, 20.705685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334667, -0.483237, -0.809000,
		0.214459, -0.875033, 0.433963,
		-0.917608, -0.028264, 0.396479,
		38.794437, 31.120026, 20.824629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188568, 30.531553, 20.404039>,  <39.436764, 31.139811, 20.547092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188568, 30.531553, 20.404039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849785, 30.729570, 20.481594>,  <38.646515, 30.848381, 20.528128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849785, 30.729570, 20.481594>,  <39.188568, 30.531553, 20.404039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849785, 30.729570, 20.481594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399156, -0.351191, -0.846959,
		-0.351191, -0.794730, 0.495044,
		0.846959, -0.495044, -0.193886,
		38.595695, 30.878084, 20.539761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832203, 30.074898, 20.189999>,  <39.188568, 30.531553, 20.404039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832203, 30.074898, 20.189999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591206, 30.394070, 20.182907>,  <38.446609, 30.585573, 20.178652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591206, 30.394070, 20.182907>,  <38.832203, 30.074898, 20.189999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591206, 30.394070, 20.182907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449697, -0.357733, -0.818413,
		-0.659378, -0.485112, 0.574357,
		-0.602489, 0.797931, -0.017728,
		38.410458, 30.633450, 20.177589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179981, 29.825741, 20.019470>,  <38.832203, 30.074898, 20.189999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179981, 29.825741, 20.019470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.120625, 30.214960, 19.948868>,  <38.085011, 30.448492, 19.906507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.120625, 30.214960, 19.948868>,  <38.179981, 29.825741, 20.019470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120625, 30.214960, 19.948868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528684, -0.228892, -0.817375,
		-0.835747, -0.027978, 0.548401,
		-0.148393, 0.973050, -0.176504,
		38.076107, 30.506876, 19.895916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482380, 29.966646, 19.825371>,  <38.179981, 29.825741, 20.019470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482380, 29.966646, 19.825371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.716877, 30.239830, 19.651066>,  <37.857574, 30.403740, 19.546482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.716877, 30.239830, 19.651066>,  <37.482380, 29.966646, 19.825371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716877, 30.239830, 19.651066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372379, -0.250538, -0.893624,
		-0.719485, 0.686147, 0.107444,
		0.586239, 0.682959, -0.435765,
		37.892750, 30.444717, 19.520336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982471, 30.065823, 19.245506>,  <37.482380, 29.966646, 19.825371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982471, 30.065823, 19.245506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335037, 30.234838, 19.161055>,  <37.546577, 30.336248, 19.110384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335037, 30.234838, 19.161055>,  <36.982471, 30.065823, 19.245506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335037, 30.234838, 19.161055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185161, -0.102122, -0.977388,
		-0.434547, 0.900572, -0.011773,
		0.881410, 0.422541, -0.211128,
		37.599461, 30.361601, 19.097717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872044, 30.568651, 18.685055>,  <36.982471, 30.065823, 19.245506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872044, 30.568651, 18.685055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257641, 30.462450, 18.679028>,  <37.488998, 30.398729, 18.675411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257641, 30.462450, 18.679028>,  <36.872044, 30.568651, 18.685055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257641, 30.462450, 18.679028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059871, -0.161481, -0.985058,
		0.259101, 0.950491, -0.171562,
		0.963993, -0.265501, -0.015067,
		37.546837, 30.382799, 18.674507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541290, 31.093773, 18.472832>,  <36.872044, 30.568651, 18.685055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541290, 31.093773, 18.472832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162582, 30.974787, 18.522038>,  <35.935356, 30.903395, 18.551561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162582, 30.974787, 18.522038>,  <36.541290, 31.093773, 18.472832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162582, 30.974787, 18.522038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120720, 0.026151, 0.992342,
		-0.298405, 0.954374, 0.011151,
		-0.946774, -0.297466, 0.123015,
		35.878551, 30.885548, 18.558943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261063, 31.510399, 19.049345>,  <36.541290, 31.093773, 18.472832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261063, 31.510399, 19.049345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002377, 31.205759, 19.032730>,  <35.847164, 31.022976, 19.022762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002377, 31.205759, 19.032730>,  <36.261063, 31.510399, 19.049345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002377, 31.205759, 19.032730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045637, -0.015720, 0.998834,
		-0.761365, 0.647857, -0.024591,
		-0.646715, -0.761600, -0.041535,
		35.808361, 30.977280, 19.020269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730839, 31.701702, 19.427235>,  <36.261063, 31.510399, 19.049345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730839, 31.701702, 19.427235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720203, 31.301857, 19.423862>,  <35.713821, 31.061951, 19.421839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720203, 31.301857, 19.423862>,  <35.730839, 31.701702, 19.427235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720203, 31.301857, 19.423862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031807, -0.007583, 0.999465,
		-0.999140, 0.026839, -0.031593,
		-0.026585, -0.999611, -0.008430,
		35.712227, 31.001974, 19.421333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128052, 31.484291, 19.861067>,  <35.730839, 31.701702, 19.427235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128052, 31.484291, 19.861067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363907, 31.161295, 19.854292>,  <35.505421, 30.967497, 19.850227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363907, 31.161295, 19.854292>,  <35.128052, 31.484291, 19.861067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363907, 31.161295, 19.854292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114926, -0.104640, 0.987848,
		-0.799452, -0.580523, -0.154501,
		0.589635, -0.807493, -0.016938,
		35.540798, 30.919046, 19.849211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827530, 30.990850, 20.300211>,  <35.128052, 31.484291, 19.861067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827530, 30.990850, 20.300211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204121, 30.862831, 20.257904>,  <35.430077, 30.786020, 20.232519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204121, 30.862831, 20.257904>,  <34.827530, 30.990850, 20.300211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204121, 30.862831, 20.257904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098410, -0.039128, 0.994376,
		-0.322386, -0.946593, -0.005342,
		0.941479, -0.320047, -0.105768,
		35.486565, 30.766817, 20.226173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823135, 30.327442, 20.631012>,  <34.827530, 30.990850, 20.300211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823135, 30.327442, 20.631012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176708, 30.514446, 20.634964>,  <35.388851, 30.626648, 20.637335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176708, 30.514446, 20.634964>,  <34.823135, 30.327442, 20.631012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176708, 30.514446, 20.634964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028097, -0.074192, 0.996848,
		0.466768, -0.880870, -0.078716,
		0.883934, 0.467508, 0.009881,
		35.441887, 30.654699, 20.637928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203125, 29.889006, 21.084614>,  <34.823135, 30.327442, 20.631012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203125, 29.889006, 21.084614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460194, 30.195255, 21.073338>,  <35.614433, 30.379005, 21.066572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460194, 30.195255, 21.073338>,  <35.203125, 29.889006, 21.084614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460194, 30.195255, 21.073338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237601, -0.164192, 0.957385,
		0.728368, -0.621982, -0.287434,
		0.642671, 0.765623, -0.028192,
		35.652996, 30.424942, 21.064880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.357296, 33.949055, 15.972737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750584, 33.920769, 16.040010>,  <38.986557, 33.903797, 16.080374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750584, 33.920769, 16.040010>,  <38.357296, 33.949055, 15.972737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750584, 33.920769, 16.040010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098690, 0.569165, 0.816279,
		-0.153450, -0.819176, 0.552633,
		0.983216, -0.070719, 0.168183,
		39.045547, 33.899551, 16.090466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297203, 33.848164, 16.708645>,  <38.357296, 33.949055, 15.972737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297203, 33.848164, 16.708645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.665367, 33.971062, 16.611940>,  <38.886265, 34.044800, 16.553919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.665367, 33.971062, 16.611940>,  <38.297203, 33.848164, 16.708645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665367, 33.971062, 16.611940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021415, 0.657068, 0.753527,
		0.390372, -0.688375, 0.611351,
		0.920408, 0.307248, -0.241759,
		38.941490, 34.063236, 16.539413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789009, 33.554939, 17.175611>,  <38.297203, 33.848164, 16.708645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789009, 33.554939, 17.175611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.942978, 33.892960, 17.027164>,  <39.035358, 34.095772, 16.938097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.942978, 33.892960, 17.027164>,  <38.789009, 33.554939, 17.175611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942978, 33.892960, 17.027164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053644, 0.380934, 0.923045,
		0.921387, -0.375211, 0.101300,
		0.384925, 0.845048, -0.371116,
		39.058456, 34.146473, 16.915829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420002, 33.779125, 17.591856>,  <38.789009, 33.554939, 17.175611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420002, 33.779125, 17.591856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293644, 34.118614, 17.422205>,  <39.217831, 34.322308, 17.320415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293644, 34.118614, 17.422205>,  <39.420002, 33.779125, 17.591856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293644, 34.118614, 17.422205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102470, 0.474919, 0.874044,
		0.943245, 0.232644, -0.236992,
		-0.315893, 0.848722, -0.424126,
		39.198875, 34.373230, 17.294968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758751, 34.202332, 17.954842>,  <39.420002, 33.779125, 17.591856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758751, 34.202332, 17.954842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487747, 34.437691, 17.778309>,  <39.325146, 34.578907, 17.672390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487747, 34.437691, 17.778309>,  <39.758751, 34.202332, 17.954842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487747, 34.437691, 17.778309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068740, 0.546750, 0.834469,
		0.732294, 0.595699, -0.329983,
		-0.677511, 0.588393, -0.441330,
		39.284492, 34.614208, 17.645910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957390, 34.838364, 18.161404>,  <39.758751, 34.202332, 17.954842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957390, 34.838364, 18.161404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576954, 34.885578, 18.047216>,  <39.348690, 34.913906, 17.978704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576954, 34.885578, 18.047216>,  <39.957390, 34.838364, 18.161404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576954, 34.885578, 18.047216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175291, 0.554702, 0.813375,
		0.254353, 0.823634, -0.506883,
		-0.951093, 0.118032, -0.285466,
		39.291626, 34.920986, 17.961576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845711, 35.531979, 18.087063>,  <39.957390, 34.838364, 18.161404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845711, 35.531979, 18.087063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490692, 35.355255, 18.139313>,  <39.277679, 35.249222, 18.170664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490692, 35.355255, 18.139313>,  <39.845711, 35.531979, 18.087063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490692, 35.355255, 18.139313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190085, 0.609430, 0.769716,
		-0.419678, 0.658328, -0.624880,
		-0.887546, -0.441813, 0.130626,
		39.224430, 35.222710, 18.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407471, 36.131207, 18.106920>,  <39.845711, 35.531979, 18.087063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407471, 36.131207, 18.106920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166050, 35.831768, 18.216711>,  <39.021198, 35.652107, 18.282585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166050, 35.831768, 18.216711>,  <39.407471, 36.131207, 18.106920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166050, 35.831768, 18.216711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282360, 0.522612, 0.804456,
		-0.745656, 0.408027, -0.526794,
		-0.603549, -0.748592, 0.274479,
		38.984985, 35.607189, 18.299055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809601, 36.402264, 18.286274>,  <39.407471, 36.131207, 18.106920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809601, 36.402264, 18.286274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797977, 36.060158, 18.493225>,  <38.791004, 35.854897, 18.617395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797977, 36.060158, 18.493225>,  <38.809601, 36.402264, 18.286274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797977, 36.060158, 18.493225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216442, 0.510702, 0.832067,
		-0.975863, -0.087804, -0.199955,
		-0.029059, -0.855262, 0.517380,
		38.789261, 35.803577, 18.648439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230648, 36.392082, 18.747097>,  <38.809601, 36.402264, 18.286274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230648, 36.392082, 18.747097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405701, 36.092529, 18.946159>,  <38.510731, 35.912796, 19.065596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405701, 36.092529, 18.946159>,  <38.230648, 36.392082, 18.747097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405701, 36.092529, 18.946159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241143, 0.435441, 0.867319,
		-0.866217, -0.499568, 0.009973,
		0.437627, -0.748881, 0.497653,
		38.536987, 35.867867, 19.095455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731197, 36.140099, 19.243458>,  <38.230648, 36.392082, 18.747097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731197, 36.140099, 19.243458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.098045, 36.033417, 19.361959>,  <38.318153, 35.969410, 19.433060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.098045, 36.033417, 19.361959>,  <37.731197, 36.140099, 19.243458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098045, 36.033417, 19.361959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174062, 0.400658, 0.899542,
		-0.358605, -0.876552, 0.321028,
		0.917118, -0.266702, 0.296252,
		38.373180, 35.953407, 19.450834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649555, 35.659286, 19.706829>,  <37.731197, 36.140099, 19.243458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649555, 35.659286, 19.706829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013676, 35.804096, 19.787127>,  <38.232147, 35.890984, 19.835304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013676, 35.804096, 19.787127>,  <37.649555, 35.659286, 19.706829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013676, 35.804096, 19.787127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313792, 0.287187, 0.905018,
		0.269980, -0.886830, 0.375024,
		0.910300, 0.362016, 0.200745,
		38.286766, 35.912704, 19.847349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199478, 35.135395, 19.931585>,  <37.649555, 35.659286, 19.706829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199478, 35.135395, 19.931585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811470, 35.165649, 20.023962>,  <36.578663, 35.183800, 20.079388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811470, 35.165649, 20.023962>,  <37.199478, 35.135395, 19.931585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811470, 35.165649, 20.023962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241043, -0.178810, -0.953900,
		-0.030848, -0.980973, 0.191680,
		-0.970024, 0.075629, 0.230941,
		36.520462, 35.188339, 20.093245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946434, 34.528160, 19.729591>,  <37.199478, 35.135395, 19.931585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946434, 34.528160, 19.729591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644989, 34.791008, 19.736038>,  <36.464123, 34.948715, 19.739906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644989, 34.791008, 19.736038>,  <36.946434, 34.528160, 19.729591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644989, 34.791008, 19.736038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250830, -0.264831, -0.931101,
		-0.607574, -0.705735, 0.364406,
		-0.753617, 0.657117, 0.016115,
		36.418903, 34.988144, 19.740873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432682, 34.223221, 19.295431>,  <36.946434, 34.528160, 19.729591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432682, 34.223221, 19.295431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.304585, 34.602123, 19.300371>,  <36.227726, 34.829464, 19.303335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.304585, 34.602123, 19.300371>,  <36.432682, 34.223221, 19.295431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304585, 34.602123, 19.300371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501318, -0.158390, -0.850643,
		-0.803820, -0.278601, 0.525599,
		-0.320240, 0.947256, 0.012351,
		36.208511, 34.886299, 19.304077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767422, 34.202137, 19.097282>,  <36.432682, 34.223221, 19.295431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767422, 34.202137, 19.097282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.851852, 34.579556, 18.995174>,  <35.902512, 34.806007, 18.933908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.851852, 34.579556, 18.995174>,  <35.767422, 34.202137, 19.097282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851852, 34.579556, 18.995174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533026, -0.107798, -0.839204,
		-0.819346, 0.313206, 0.480181,
		0.211081, 0.943547, -0.255271,
		35.915176, 34.862621, 18.918592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163200, 34.462292, 18.831146>,  <35.767422, 34.202137, 19.097282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163200, 34.462292, 18.831146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.439716, 34.716892, 18.694340>,  <35.605625, 34.869652, 18.612255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.439716, 34.716892, 18.694340>,  <35.163200, 34.462292, 18.831146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439716, 34.716892, 18.694340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530085, 0.125066, -0.838671,
		-0.491042, 0.761066, 0.423858,
		0.691294, 0.636504, -0.342017,
		35.647106, 34.907845, 18.591734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828423, 35.122234, 18.450392>,  <35.163200, 34.462292, 18.831146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828423, 35.122234, 18.450392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.202785, 35.041023, 18.335255>,  <35.427402, 34.992298, 18.266172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.202785, 35.041023, 18.335255>,  <34.828423, 35.122234, 18.450392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202785, 35.041023, 18.335255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281220, 0.061401, -0.957677,
		0.212109, 0.977246, 0.000370,
		0.935909, -0.203027, -0.287845,
		35.483559, 34.980114, 18.248901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812469, 35.315487, 17.717455>,  <34.828423, 35.122234, 18.450392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812469, 35.315487, 17.717455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.171455, 35.139935, 17.735069>,  <35.386848, 35.034603, 17.745638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.171455, 35.139935, 17.735069>,  <34.812469, 35.315487, 17.717455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171455, 35.139935, 17.735069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026663, -0.045676, -0.998600,
		0.440278, 0.897384, -0.029291,
		0.897465, -0.438881, 0.044037,
		35.440697, 35.008270, 17.748280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261112, 35.678535, 17.297001>,  <34.812469, 35.315487, 17.717455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261112, 35.678535, 17.297001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.436928, 35.321110, 17.333553>,  <35.542416, 35.106655, 17.355484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.436928, 35.321110, 17.333553>,  <35.261112, 35.678535, 17.297001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436928, 35.321110, 17.333553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043963, -0.080212, -0.995808,
		0.897149, 0.441711, 0.004027,
		0.439536, -0.893565, 0.091381,
		35.568790, 35.053040, 17.360968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679413, 35.678440, 16.704670>,  <35.261112, 35.678535, 17.297001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679413, 35.678440, 16.704670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.666187, 35.292805, 16.810081>,  <35.658253, 35.061424, 16.873329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.666187, 35.292805, 16.810081>,  <35.679413, 35.678440, 16.704670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666187, 35.292805, 16.810081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045038, -0.261968, -0.964025,
		0.998438, -0.043744, -0.034758,
		-0.033065, -0.964085, 0.263529,
		35.656269, 35.003578, 16.889139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152489, 35.297379, 16.323627>,  <35.679413, 35.678440, 16.704670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152489, 35.297379, 16.323627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.874107, 35.045227, 16.461193>,  <35.707081, 34.893936, 16.543734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.874107, 35.045227, 16.461193>,  <36.152489, 35.297379, 16.323627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874107, 35.045227, 16.461193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070740, -0.416417, -0.906417,
		0.714597, -0.655150, 0.245213,
		-0.695951, -0.630376, 0.343916,
		35.665321, 34.856113, 16.564367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348186, 34.622185, 15.885342>,  <36.152489, 35.297379, 16.323627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348186, 34.622185, 15.885342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973869, 34.607563, 16.025604>,  <35.749279, 34.598789, 16.109762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973869, 34.607563, 16.025604>,  <36.348186, 34.622185, 15.885342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973869, 34.607563, 16.025604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266806, -0.576726, -0.772141,
		0.230457, -0.816119, 0.529942,
		-0.935790, -0.036554, 0.350656,
		35.693130, 34.596596, 16.130800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139210, 34.010128, 15.860737>,  <36.348186, 34.622185, 15.885342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139210, 34.010128, 15.860737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.779861, 34.185658, 15.853127>,  <35.564251, 34.290974, 15.848562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.779861, 34.185658, 15.853127>,  <36.139210, 34.010128, 15.860737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779861, 34.185658, 15.853127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265370, -0.576772, -0.772601,
		-0.350005, -0.689037, 0.634606,
		-0.898373, 0.438820, -0.019023,
		35.510349, 34.317303, 15.847421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671909, 33.492348, 15.603381>,  <36.139210, 34.010128, 15.860737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671909, 33.492348, 15.603381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.449886, 33.820732, 15.549803>,  <35.316673, 34.017761, 15.517656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.449886, 33.820732, 15.549803>,  <35.671909, 33.492348, 15.603381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449886, 33.820732, 15.549803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392595, -0.400516, -0.827923,
		-0.733338, -0.406956, 0.544612,
		-0.555054, 0.820959, -0.133945,
		35.283371, 34.067020, 15.509620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371529, 33.252861, 16.161192>,  <35.671909, 33.492348, 15.603381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371529, 33.252861, 16.161192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.378002, 32.892860, 15.986955>,  <35.381886, 32.676861, 15.882413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.378002, 32.892860, 15.986955>,  <35.371529, 33.252861, 16.161192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378002, 32.892860, 15.986955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224774, -0.427774, 0.875492,
		-0.974276, 0.083740, -0.209220,
		0.016185, -0.899998, -0.435593,
		35.382858, 32.622860, 15.856277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794270, 32.877457, 16.351725>,  <35.371529, 33.252861, 16.161192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794270, 32.877457, 16.351725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.047550, 32.579735, 16.266806>,  <35.199516, 32.401100, 16.215855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.047550, 32.579735, 16.266806>,  <34.794270, 32.877457, 16.351725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047550, 32.579735, 16.266806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173193, -0.403589, 0.898399,
		-0.754362, -0.532098, -0.384461,
		0.633200, -0.744304, -0.212296,
		35.237511, 32.356445, 16.203117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450840, 32.280766, 16.566256>,  <34.794270, 32.877457, 16.351725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450840, 32.280766, 16.566256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.828735, 32.153187, 16.535955>,  <35.055473, 32.076641, 16.517775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.828735, 32.153187, 16.535955>,  <34.450840, 32.280766, 16.566256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828735, 32.153187, 16.535955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134596, -0.588102, 0.797508,
		-0.298909, -0.743244, -0.598533,
		0.944742, -0.318943, -0.075751,
		35.112160, 32.057503, 16.513229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455738, 31.531275, 16.622541>,  <34.450840, 32.280766, 16.566256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455738, 31.531275, 16.622541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.826035, 31.649519, 16.716873>,  <35.048214, 31.720465, 16.773472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.826035, 31.649519, 16.716873>,  <34.455738, 31.531275, 16.622541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826035, 31.649519, 16.716873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043562, -0.536114, 0.843020,
		0.375636, -0.790693, -0.483427,
		0.925742, 0.295610, 0.235828,
		35.103756, 31.738201, 16.787622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770233, 30.893734, 16.993856>,  <34.455738, 31.531275, 16.622541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770233, 30.893734, 16.993856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028584, 31.177385, 17.106977>,  <35.183594, 31.347576, 17.174850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028584, 31.177385, 17.106977>,  <34.770233, 30.893734, 16.993856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028584, 31.177385, 17.106977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212241, -0.522612, 0.825730,
		0.733344, -0.473300, -0.488051,
		0.645880, 0.709129, 0.282800,
		35.222347, 31.390123, 17.191818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395287, 30.553711, 17.058537>,  <34.770233, 30.893734, 16.993856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395287, 30.553711, 17.058537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.380920, 30.875513, 17.295679>,  <35.372299, 31.068594, 17.437965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.380920, 30.875513, 17.295679>,  <35.395287, 30.553711, 17.058537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380920, 30.875513, 17.295679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344102, -0.547007, 0.763136,
		0.938245, 0.231412, -0.257187,
		-0.035916, 0.804507, 0.592856,
		35.370144, 31.116865, 17.473536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800388, 30.323641, 17.526070>,  <35.395287, 30.553711, 17.058537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800388, 30.323641, 17.526070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.703472, 30.682055, 17.674887>,  <35.645321, 30.897102, 17.764177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.703472, 30.682055, 17.674887>,  <35.800388, 30.323641, 17.526070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703472, 30.682055, 17.674887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314392, -0.290267, 0.903827,
		0.917852, 0.335957, -0.211377,
		-0.242291, 0.896035, 0.372045,
		35.630783, 30.950865, 17.786501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399319, 30.513399, 17.959480>,  <35.800388, 30.323641, 17.526070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399319, 30.513399, 17.959480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.057945, 30.687380, 18.074348>,  <35.853123, 30.791769, 18.143269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.057945, 30.687380, 18.074348>,  <36.399319, 30.513399, 17.959480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057945, 30.687380, 18.074348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194179, -0.245969, 0.949628,
		0.483677, 0.866208, 0.125460,
		-0.853435, 0.434952, 0.287169,
		35.801914, 30.817865, 18.160500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066753, 30.846605, 17.981337>,  <36.399319, 30.513399, 17.959480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066753, 30.846605, 17.981337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374763, 30.613420, 18.085037>,  <37.559570, 30.473511, 18.147257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.374763, 30.613420, 18.085037>,  <37.066753, 30.846605, 17.981337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374763, 30.613420, 18.085037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204407, -0.159506, -0.965803,
		0.604377, 0.796690, -0.003663,
		0.770030, -0.582961, 0.259251,
		37.605774, 30.438532, 18.162813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676266, 31.068769, 17.680052>,  <37.066753, 30.846605, 17.981337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676266, 31.068769, 17.680052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.750736, 30.684555, 17.762716>,  <37.795418, 30.454027, 17.812315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.750736, 30.684555, 17.762716>,  <37.676266, 31.068769, 17.680052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750736, 30.684555, 17.762716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336657, -0.135237, -0.931865,
		0.923038, 0.243068, 0.298192,
		0.186180, -0.960536, 0.206659,
		37.806591, 30.396395, 17.824715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298794, 30.808945, 17.322521>,  <37.676266, 31.068769, 17.680052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298794, 30.808945, 17.322521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118053, 30.461548, 17.404057>,  <38.009609, 30.253111, 17.452978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118053, 30.461548, 17.404057>,  <38.298794, 30.808945, 17.322521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118053, 30.461548, 17.404057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363307, -0.387840, -0.847106,
		0.814761, -0.308713, 0.490776,
		-0.451855, -0.868491, 0.203839,
		37.982498, 30.201000, 17.465208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773342, 30.289135, 17.140020>,  <38.298794, 30.808945, 17.322521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773342, 30.289135, 17.140020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.440491, 30.071716, 17.184048>,  <38.240780, 29.941265, 17.210464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.440491, 30.071716, 17.184048>,  <38.773342, 30.289135, 17.140020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440491, 30.071716, 17.184048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142790, -0.401771, -0.904539,
		0.535881, -0.736979, 0.411939,
		-0.832132, -0.543546, 0.110068,
		38.190849, 29.908653, 17.217068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047764, 29.709906, 16.943081>,  <38.773342, 30.289135, 17.140020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047764, 29.709906, 16.943081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.651699, 29.659605, 16.918535>,  <38.414059, 29.629425, 16.903809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.651699, 29.659605, 16.918535>,  <39.047764, 29.709906, 16.943081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651699, 29.659605, 16.918535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092917, -0.263013, -0.960307,
		0.104621, -0.956562, 0.272110,
		-0.990162, -0.125752, -0.061365,
		38.354649, 29.621880, 16.900126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932102, 29.012190, 16.630182>,  <39.047764, 29.709906, 16.943081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932102, 29.012190, 16.630182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.627815, 29.262274, 16.560415>,  <38.445244, 29.412323, 16.518555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.627815, 29.262274, 16.560415>,  <38.932102, 29.012190, 16.630182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627815, 29.262274, 16.560415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062181, -0.197285, -0.978372,
		-0.646097, -0.755111, 0.111203,
		-0.760719, 0.625208, -0.174419,
		38.399601, 29.449837, 16.508089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622795, 28.747717, 16.052738>,  <38.932102, 29.012190, 16.630182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622795, 28.747717, 16.052738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.488289, 29.123785, 16.074686>,  <38.407585, 29.349426, 16.087854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.488289, 29.123785, 16.074686>,  <38.622795, 28.747717, 16.052738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488289, 29.123785, 16.074686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041786, 0.043310, -0.998187,
		-0.940841, -0.337947, 0.024722,
		-0.336263, 0.940168, 0.054870,
		38.387409, 29.405836, 16.091146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227276, 28.828362, 15.423527>,  <38.622795, 28.747717, 16.052738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227276, 28.828362, 15.423527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285816, 29.203987, 15.547936>,  <38.320942, 29.429363, 15.622582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285816, 29.203987, 15.547936>,  <38.227276, 28.828362, 15.423527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285816, 29.203987, 15.547936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099760, 0.298797, -0.949088,
		-0.984189, 0.169931, -0.049951,
		0.146355, 0.939065, 0.311025,
		38.329723, 29.485706, 15.641244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711205, 29.302010, 15.177009>,  <38.227276, 28.828362, 15.423527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711205, 29.302010, 15.177009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.072041, 29.461071, 15.244076>,  <38.288540, 29.556509, 15.284316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.072041, 29.461071, 15.244076>,  <37.711205, 29.302010, 15.177009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072041, 29.461071, 15.244076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042687, 0.304395, -0.951589,
		-0.429441, 0.865572, 0.257616,
		0.902085, 0.397655, 0.167668,
		38.342667, 29.580368, 15.294376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.272423, 34.011490, 31.193098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621033, 34.175903, 31.086143>,  <38.830200, 34.274551, 31.021971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621033, 34.175903, 31.086143>,  <38.272423, 34.011490, 31.193098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621033, 34.175903, 31.086143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091930, -0.398668, -0.912476,
		-0.481659, 0.819825, -0.309662,
		0.871523, 0.411035, -0.267389,
		38.882488, 34.299213, 31.005926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079571, 34.385452, 30.573603>,  <38.272423, 34.011490, 31.193098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079571, 34.385452, 30.573603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476559, 34.337914, 30.561747>,  <38.714752, 34.309391, 30.554632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476559, 34.337914, 30.561747>,  <38.079571, 34.385452, 30.573603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476559, 34.337914, 30.561747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077940, -0.426073, -0.901325,
		0.094486, 0.896849, -0.432127,
		0.992471, -0.118843, -0.029642,
		38.774300, 34.302261, 30.552855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358467, 34.625141, 29.888340>,  <38.079571, 34.385452, 30.573603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358467, 34.625141, 29.888340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.652309, 34.387096, 30.018694>,  <38.828613, 34.244270, 30.096907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.652309, 34.387096, 30.018694>,  <38.358467, 34.625141, 29.888340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652309, 34.387096, 30.018694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146500, -0.329851, -0.932596,
		0.662488, 0.732834, -0.155127,
		0.734607, -0.595108, 0.325882,
		38.872692, 34.208565, 30.116459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837944, 34.615566, 29.384386>,  <38.358467, 34.625141, 29.888340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837944, 34.615566, 29.384386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956936, 34.281715, 29.569817>,  <39.028332, 34.081406, 29.681076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956936, 34.281715, 29.569817>,  <38.837944, 34.615566, 29.384386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956936, 34.281715, 29.569817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154260, -0.437161, -0.886055,
		0.942184, 0.335094, -0.001296,
		0.297478, -0.834627, 0.463578,
		39.046181, 34.031326, 29.708889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508064, 34.353306, 29.097849>,  <38.837944, 34.615566, 29.384386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508064, 34.353306, 29.097849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319008, 34.045277, 29.269245>,  <39.205574, 33.860458, 29.372084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319008, 34.045277, 29.269245>,  <39.508064, 34.353306, 29.097849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319008, 34.045277, 29.269245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040288, -0.466837, -0.883425,
		0.880335, -0.434803, 0.189621,
		-0.472638, -0.770071, 0.428490,
		39.177216, 33.814255, 29.397793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904697, 33.706745, 28.903154>,  <39.508064, 34.353306, 29.097849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904697, 33.706745, 28.903154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539055, 33.589565, 29.015291>,  <39.319668, 33.519257, 29.082573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539055, 33.589565, 29.015291>,  <39.904697, 33.706745, 28.903154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539055, 33.589565, 29.015291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045308, -0.613265, -0.788577,
		0.402938, -0.733544, 0.547316,
		-0.914105, -0.292949, 0.280343,
		39.264824, 33.501682, 29.099394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960274, 33.053379, 28.794464>,  <39.904697, 33.706745, 28.903154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960274, 33.053379, 28.794464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566544, 33.118797, 28.820841>,  <39.330303, 33.158047, 28.836666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566544, 33.118797, 28.820841>,  <39.960274, 33.053379, 28.794464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566544, 33.118797, 28.820841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148390, -0.566201, -0.810800,
		-0.095264, -0.807880, 0.581597,
		-0.984330, 0.163544, 0.065943,
		39.271244, 33.167862, 28.840624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564663, 32.456318, 28.752474>,  <39.960274, 33.053379, 28.794464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564663, 32.456318, 28.752474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.320229, 32.731194, 28.595331>,  <39.173569, 32.896118, 28.501045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.320229, 32.731194, 28.595331>,  <39.564663, 32.456318, 28.752474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320229, 32.731194, 28.595331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013688, -0.487058, -0.873262,
		-0.791445, -0.539016, 0.288229,
		-0.611087, 0.687194, -0.392858,
		39.136902, 32.937351, 28.477474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981266, 32.007973, 28.313433>,  <39.564663, 32.456318, 28.752474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981266, 32.007973, 28.313433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907246, 32.380970, 28.189365>,  <38.862835, 32.604771, 28.114925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907246, 32.380970, 28.189365>,  <38.981266, 32.007973, 28.313433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907246, 32.380970, 28.189365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226334, -0.347576, -0.909925,
		-0.956310, -0.098180, 0.275375,
		-0.185050, 0.932497, -0.310169,
		38.851730, 32.660721, 28.096315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308922, 32.047882, 27.969452>,  <38.981266, 32.007973, 28.313433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308922, 32.047882, 27.969452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539097, 32.343311, 27.828955>,  <38.677204, 32.520569, 27.744656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539097, 32.343311, 27.828955>,  <38.308922, 32.047882, 27.969452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539097, 32.343311, 27.828955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288036, -0.218937, -0.932256,
		-0.765443, 0.637629, 0.086751,
		0.575440, 0.738577, -0.351244,
		38.711727, 32.564884, 27.723581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035412, 31.995457, 27.364283>,  <38.308922, 32.047882, 27.969452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035412, 31.995457, 27.364283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345245, 32.243477, 27.314400>,  <38.531147, 32.392288, 27.284470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345245, 32.243477, 27.314400>,  <38.035412, 31.995457, 27.364283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345245, 32.243477, 27.314400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139184, -0.025227, -0.989945,
		-0.616963, 0.784155, 0.066760,
		0.774587, 0.620052, -0.124706,
		38.577621, 32.429493, 27.276987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821899, 32.560379, 26.876009>,  <38.035412, 31.995457, 27.364283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821899, 32.560379, 26.876009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221733, 32.549168, 26.873249>,  <38.461632, 32.542439, 26.871593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221733, 32.549168, 26.873249>,  <37.821899, 32.560379, 26.876009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221733, 32.549168, 26.873249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007146, -0.008627, -0.999937,
		0.027970, 0.999570, -0.008824,
		0.999583, -0.028032, -0.006902,
		38.521606, 32.540760, 26.871178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240261, 32.994736, 26.569855>,  <37.821899, 32.560379, 26.876009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240261, 32.994736, 26.569855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.011082, 32.672352, 26.629395>,  <36.873573, 32.478920, 26.665117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.011082, 32.672352, 26.629395>,  <37.240261, 32.994736, 26.569855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011082, 32.672352, 26.629395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056171, 0.142570, 0.988189,
		-0.817665, 0.574542, -0.036413,
		-0.572948, -0.805962, 0.148848,
		36.839199, 32.430565, 26.674049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843697, 33.232555, 27.151909>,  <37.240261, 32.994736, 26.569855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843697, 33.232555, 27.151909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788494, 32.836491, 27.161083>,  <36.755375, 32.598850, 27.166588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788494, 32.836491, 27.161083>,  <36.843697, 33.232555, 27.151909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788494, 32.836491, 27.161083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153299, 0.044232, 0.987190,
		-0.978496, 0.132720, -0.157895,
		-0.138004, -0.990166, 0.022935,
		36.747093, 32.539440, 27.167963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238052, 33.256699, 27.456928>,  <36.843697, 33.232555, 27.151909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238052, 33.256699, 27.456928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386421, 32.888969, 27.509468>,  <36.475445, 32.668331, 27.540993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386421, 32.888969, 27.509468>,  <36.238052, 33.256699, 27.456928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386421, 32.888969, 27.509468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344556, -0.004895, 0.938753,
		-0.862378, -0.393464, -0.318575,
		0.370925, -0.919327, 0.131349,
		36.497700, 32.613171, 27.548872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683681, 32.887363, 27.659964>,  <36.238052, 33.256699, 27.456928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683681, 32.887363, 27.659964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006805, 32.681015, 27.774025>,  <36.200680, 32.557205, 27.842463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006805, 32.681015, 27.774025>,  <35.683681, 32.887363, 27.659964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006805, 32.681015, 27.774025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318501, 0.025046, 0.947591,
		-0.495979, -0.856299, -0.144074,
		0.807813, -0.515873, 0.285154,
		36.249149, 32.526253, 27.859571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449055, 32.390091, 28.220766>,  <35.683681, 32.887363, 27.659964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449055, 32.390091, 28.220766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845703, 32.413883, 28.266632>,  <36.083691, 32.428158, 28.294151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845703, 32.413883, 28.266632>,  <35.449055, 32.390091, 28.220766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845703, 32.413883, 28.266632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105473, -0.139629, 0.984571,
		0.074577, -0.988416, -0.132185,
		0.991622, 0.059485, 0.114664,
		36.143188, 32.431728, 28.301031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652847, 31.880554, 28.746313>,  <35.449055, 32.390091, 28.220766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652847, 31.880554, 28.746313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915440, 32.181919, 28.731323>,  <36.072994, 32.362740, 28.722330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915440, 32.181919, 28.731323>,  <35.652847, 31.880554, 28.746313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915440, 32.181919, 28.731323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058642, 0.100500, 0.993208,
		0.752062, -0.649822, 0.110157,
		0.656479, 0.753413, -0.037475,
		36.112385, 32.407944, 28.720081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010174, 31.793236, 29.324743>,  <35.652847, 31.880554, 28.746313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010174, 31.793236, 29.324743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100998, 32.172081, 29.234043>,  <36.155491, 32.399387, 29.179623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100998, 32.172081, 29.234043>,  <36.010174, 31.793236, 29.324743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100998, 32.172081, 29.234043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066914, 0.247454, 0.966586,
		0.971579, -0.204302, 0.119562,
		0.227061, 0.947115, -0.226750,
		36.169117, 32.456215, 29.166018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453270, 31.951252, 29.781385>,  <36.010174, 31.793236, 29.324743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453270, 31.951252, 29.781385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314285, 32.307323, 29.663504>,  <36.230896, 32.520966, 29.592773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314285, 32.307323, 29.663504>,  <36.453270, 31.951252, 29.781385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314285, 32.307323, 29.663504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066442, 0.290126, 0.954679,
		0.935338, 0.351292, -0.041662,
		-0.347459, 0.890180, -0.294707,
		36.210049, 32.574379, 29.575092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938358, 32.358536, 30.083244>,  <36.453270, 31.951252, 29.781385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938358, 32.358536, 30.083244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615124, 32.579563, 30.001593>,  <36.421185, 32.712181, 29.952600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615124, 32.579563, 30.001593>,  <36.938358, 32.358536, 30.083244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615124, 32.579563, 30.001593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069402, 0.433423, 0.898514,
		0.584967, 0.711906, -0.388591,
		-0.808082, 0.552570, -0.204131,
		36.372700, 32.745335, 29.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961479, 32.796013, 30.544102>,  <36.938358, 32.358536, 30.083244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961479, 32.796013, 30.544102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590839, 32.887505, 30.424711>,  <36.368454, 32.942402, 30.353077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590839, 32.887505, 30.424711>,  <36.961479, 32.796013, 30.544102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590839, 32.887505, 30.424711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153855, 0.493659, 0.855938,
		0.343125, 0.839037, -0.422234,
		-0.926603, 0.228731, -0.298477,
		36.312859, 32.956123, 30.335169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827614, 33.575565, 30.648571>,  <36.961479, 32.796013, 30.544102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827614, 33.575565, 30.648571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469425, 33.398602, 30.628975>,  <36.254513, 33.292423, 30.617218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469425, 33.398602, 30.628975>,  <36.827614, 33.575565, 30.648571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469425, 33.398602, 30.628975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258086, 0.426389, 0.866940,
		-0.362656, 0.788965, -0.496000,
		-0.895473, -0.442411, -0.048988,
		36.200783, 33.265877, 30.614279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355335, 34.118206, 30.740833>,  <36.827614, 33.575565, 30.648571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355335, 34.118206, 30.740833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142788, 33.787960, 30.816738>,  <36.015259, 33.589813, 30.862280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142788, 33.787960, 30.816738>,  <36.355335, 34.118206, 30.740833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142788, 33.787960, 30.816738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395896, 0.440051, 0.805991,
		-0.748941, 0.353154, -0.560687,
		-0.531370, -0.825613, 0.189760,
		35.983376, 33.540276, 30.873667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678806, 34.353382, 30.803654>,  <36.355335, 34.118206, 30.740833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678806, 34.353382, 30.803654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680897, 33.998508, 30.988211>,  <35.682152, 33.785583, 31.098944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680897, 33.998508, 30.988211>,  <35.678806, 34.353382, 30.803654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680897, 33.998508, 30.988211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662117, 0.342697, 0.666453,
		-0.749382, -0.308978, -0.585627,
		0.005227, -0.887182, 0.461391,
		35.682465, 33.732353, 31.126627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030098, 34.368507, 31.063631>,  <35.678806, 34.353382, 30.803654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030098, 34.368507, 31.063631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221466, 34.089462, 31.276968>,  <35.336288, 33.922035, 31.404970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221466, 34.089462, 31.276968>,  <35.030098, 34.368507, 31.063631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221466, 34.089462, 31.276968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555965, 0.229497, 0.798896,
		-0.679718, -0.678728, -0.278050,
		0.478421, -0.697610, 0.533342,
		35.364994, 33.880180, 31.436970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293507, 35.063370, 31.376814>,  <35.030098, 34.368507, 31.063631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293507, 35.063370, 31.376814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323357, 35.379341, 31.620270>,  <35.341267, 35.568924, 31.766344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323357, 35.379341, 31.620270>,  <35.293507, 35.063370, 31.376814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323357, 35.379341, 31.620270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617443, -0.515877, 0.593831,
		0.783068, 0.331488, -0.526232,
		0.074623, 0.789928, 0.608642,
		35.345745, 35.616318, 31.802862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883781, 35.314972, 30.906044>,  <35.293507, 35.063370, 31.376814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883781, 35.314972, 30.906044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201504, 35.507370, 30.757605>,  <36.392139, 35.622810, 30.668541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201504, 35.507370, 30.757605>,  <35.883781, 35.314972, 30.906044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201504, 35.507370, 30.757605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494312, 0.156597, -0.855063,
		-0.353172, 0.862622, 0.362150,
		0.794308, 0.481000, -0.371099,
		36.439796, 35.651669, 30.646275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587578, 35.937534, 30.559563>,  <35.883781, 35.314972, 30.906044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587578, 35.937534, 30.559563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960197, 35.859890, 30.436569>,  <36.183769, 35.813305, 30.362774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960197, 35.859890, 30.436569>,  <35.587578, 35.937534, 30.559563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960197, 35.859890, 30.436569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283389, 0.142310, -0.948387,
		0.227849, 0.970603, 0.077560,
		0.931545, -0.194109, -0.307484,
		36.239662, 35.801659, 30.344324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752254, 36.475548, 30.126783>,  <35.587578, 35.937534, 30.559563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752254, 36.475548, 30.126783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960030, 36.154644, 30.009094>,  <36.084694, 35.962101, 29.938480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960030, 36.154644, 30.009094>,  <35.752254, 36.475548, 30.126783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960030, 36.154644, 30.009094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242067, 0.192064, -0.951060,
		0.819505, 0.565238, -0.094434,
		0.519437, -0.802258, -0.294223,
		36.115860, 35.913967, 29.920828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015984, 36.706787, 29.477312>,  <35.752254, 36.475548, 30.126783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015984, 36.706787, 29.477312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120605, 36.322308, 29.442228>,  <36.183380, 36.091621, 29.421177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120605, 36.322308, 29.442228>,  <36.015984, 36.706787, 29.477312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120605, 36.322308, 29.442228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200151, 0.034885, -0.979144,
		0.944208, 0.273655, -0.183260,
		0.261555, -0.961195, -0.087711,
		36.199070, 36.033951, 29.415915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577564, 36.605331, 28.965178>,  <36.015984, 36.706787, 29.477312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577564, 36.605331, 28.965178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394428, 36.250156, 28.982805>,  <36.284546, 36.037052, 28.993382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394428, 36.250156, 28.982805>,  <36.577564, 36.605331, 28.965178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394428, 36.250156, 28.982805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016483, -0.058038, -0.998178,
		0.888882, -0.456280, 0.041208,
		-0.457840, -0.887942, 0.044068,
		36.257076, 35.983772, 28.996025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935642, 36.236725, 28.497643>,  <36.577564, 36.605331, 28.965178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935642, 36.236725, 28.497643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611420, 36.009228, 28.553551>,  <36.416885, 35.872730, 28.587095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611420, 36.009228, 28.553551>,  <36.935642, 36.236725, 28.497643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611420, 36.009228, 28.553551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026692, -0.274275, -0.961281,
		0.585056, -0.775439, 0.237495,
		-0.810554, -0.568742, 0.139769,
		36.368252, 35.838604, 28.595482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049522, 35.500946, 28.290207>,  <36.935642, 36.236725, 28.497643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049522, 35.500946, 28.290207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656639, 35.568707, 28.257797>,  <36.420910, 35.609364, 28.238352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656639, 35.568707, 28.257797>,  <37.049522, 35.500946, 28.290207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656639, 35.568707, 28.257797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011745, -0.375234, -0.926856,
		-0.187409, -0.911320, 0.366570,
		-0.982212, 0.169396, -0.081025,
		36.361977, 35.619526, 28.233490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774754, 34.947235, 28.020287>,  <37.049522, 35.500946, 28.290207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774754, 34.947235, 28.020287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506115, 35.225151, 27.917355>,  <36.344933, 35.391903, 27.855595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506115, 35.225151, 27.917355>,  <36.774754, 34.947235, 28.020287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506115, 35.225151, 27.917355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102571, -0.431156, -0.896429,
		-0.733782, -0.575644, 0.360829,
		-0.671597, 0.694794, -0.257330,
		36.304634, 35.433590, 27.840155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212460, 34.581112, 27.772398>,  <36.774754, 34.947235, 28.020287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212460, 34.581112, 27.772398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.144573, 34.944916, 27.620615>,  <36.103840, 35.163197, 27.529545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.144573, 34.944916, 27.620615>,  <36.212460, 34.581112, 27.772398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144573, 34.944916, 27.620615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022865, -0.388573, -0.921134,
		-0.985227, -0.147658, 0.086744,
		-0.169719, 0.909510, -0.379457,
		36.093658, 35.217770, 27.506779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799999, 34.508579, 27.234789>,  <36.212460, 34.581112, 27.772398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799999, 34.508579, 27.234789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912743, 34.883720, 27.153797>,  <35.980389, 35.108803, 27.105202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.912743, 34.883720, 27.153797>,  <35.799999, 34.508579, 27.234789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912743, 34.883720, 27.153797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084422, -0.185976, -0.978921,
		-0.955736, 0.293008, 0.026756,
		0.281856, 0.937848, -0.202480,
		35.997299, 35.165073, 27.093054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363945, 34.677685, 26.659956>,  <35.799999, 34.508579, 27.234789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363945, 34.677685, 26.659956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686378, 34.914253, 26.668386>,  <35.879841, 35.056194, 26.673445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686378, 34.914253, 26.668386>,  <35.363945, 34.677685, 26.659956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686378, 34.914253, 26.668386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102333, -0.104218, -0.989276,
		-0.582884, 0.799598, -0.144530,
		0.806086, 0.591423, 0.021078,
		35.928204, 35.091679, 26.674709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106808, 35.161057, 26.225155>,  <35.363945, 34.677685, 26.659956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106808, 35.161057, 26.225155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504810, 35.197842, 26.240685>,  <35.743610, 35.219913, 26.250002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504810, 35.197842, 26.240685>,  <35.106808, 35.161057, 26.225155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504810, 35.197842, 26.240685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034403, 0.049205, -0.998196,
		-0.093709, 0.994546, 0.045796,
		0.995005, 0.091964, 0.038826,
		35.803310, 35.225430, 26.252333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223293, 35.714127, 25.822495>,  <35.106808, 35.161057, 26.225155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223293, 35.714127, 25.822495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578011, 35.530209, 25.841204>,  <35.790840, 35.419857, 25.852428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578011, 35.530209, 25.841204>,  <35.223293, 35.714127, 25.822495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578011, 35.530209, 25.841204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157092, 0.204700, -0.966137,
		0.434650, 0.864111, 0.253756,
		0.886793, -0.459794, 0.046772,
		35.844048, 35.392269, 25.855236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693951, 36.162994, 25.694773>,  <35.223293, 35.714127, 25.822495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693951, 36.162994, 25.694773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905174, 35.831326, 25.621422>,  <36.031910, 35.632324, 25.577412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905174, 35.831326, 25.621422>,  <35.693951, 36.162994, 25.694773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905174, 35.831326, 25.621422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236425, 0.350948, -0.906057,
		0.815633, 0.435096, 0.381358,
		0.528058, -0.829173, -0.183377,
		36.063591, 35.582573, 25.566408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331299, 36.364525, 25.508785>,  <35.693951, 36.162994, 25.694773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331299, 36.364525, 25.508785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287052, 35.999180, 25.352051>,  <36.260502, 35.779972, 25.258011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287052, 35.999180, 25.352051>,  <36.331299, 36.364525, 25.508785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287052, 35.999180, 25.352051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140321, 0.375954, -0.915953,
		0.983907, -0.156305, 0.086576,
		-0.110619, -0.913361, -0.391836,
		36.253868, 35.725170, 25.234499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823589, 36.303547, 24.954988>,  <36.331299, 36.364525, 25.508785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823589, 36.303547, 24.954988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555172, 36.015858, 24.882969>,  <36.394123, 35.843243, 24.839758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555172, 36.015858, 24.882969>,  <36.823589, 36.303547, 24.954988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555172, 36.015858, 24.882969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045834, 0.202137, -0.978284,
		0.740001, -0.664722, -0.102677,
		-0.671042, -0.719226, -0.180049,
		36.353859, 35.800091, 24.828955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101582, 35.951916, 24.329126>,  <36.823589, 36.303547, 24.954988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101582, 35.951916, 24.329126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720646, 35.830563, 24.341887>,  <36.492085, 35.757751, 24.349543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720646, 35.830563, 24.341887>,  <37.101582, 35.951916, 24.329126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720646, 35.830563, 24.341887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034130, 0.002047, -0.999415,
		0.303136, -0.952868, -0.012303,
		-0.952336, -0.303379, 0.031901,
		36.434944, 35.739548, 24.351458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025711, 35.598209, 23.796101>,  <37.101582, 35.951916, 24.329126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025711, 35.598209, 23.796101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636288, 35.615887, 23.885756>,  <36.402634, 35.626495, 23.939548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636288, 35.615887, 23.885756>,  <37.025711, 35.598209, 23.796101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636288, 35.615887, 23.885756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228431, -0.201889, -0.952397,
		0.003160, -0.978411, 0.206645,
		-0.973555, 0.044194, 0.224138,
		36.344223, 35.629147, 23.952997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802208, 35.024139, 23.520433>,  <37.025711, 35.598209, 23.796101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802208, 35.024139, 23.520433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480499, 35.259922, 23.550596>,  <36.287476, 35.401394, 23.568693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480499, 35.259922, 23.550596>,  <36.802208, 35.024139, 23.520433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480499, 35.259922, 23.550596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179509, -0.120019, -0.976408,
		-0.566503, -0.798832, 0.202341,
		-0.804270, 0.589460, 0.075406,
		36.239220, 35.436760, 23.573217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113514, 34.697960, 23.156687>,  <36.802208, 35.024139, 23.520433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113514, 34.697960, 23.156687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065609, 35.094681, 23.174536>,  <36.036865, 35.332714, 23.185246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065609, 35.094681, 23.174536>,  <36.113514, 34.697960, 23.156687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065609, 35.094681, 23.174536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168776, 0.023952, -0.985364,
		-0.978352, -0.125539, 0.164523,
		-0.119761, 0.991799, 0.044622,
		36.029682, 35.392220, 23.187922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530067, 34.808357, 22.808306>,  <36.113514, 34.697960, 23.156687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530067, 34.808357, 22.808306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719376, 35.160042, 22.830212>,  <35.832962, 35.371052, 22.843355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719376, 35.160042, 22.830212>,  <35.530067, 34.808357, 22.808306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719376, 35.160042, 22.830212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125754, 0.128962, -0.983644,
		-0.871895, 0.458643, 0.171599,
		0.473271, 0.879213, 0.054765,
		35.861359, 35.423805, 22.846642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113590, 35.308743, 22.557875>,  <35.530067, 34.808357, 22.808306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113590, 35.308743, 22.557875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.483528, 35.455353, 22.517221>,  <35.705490, 35.543320, 22.492828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.483528, 35.455353, 22.517221>,  <35.113590, 35.308743, 22.557875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483528, 35.455353, 22.517221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149405, 0.104339, -0.983256,
		-0.349782, 0.924540, 0.151257,
		0.924841, 0.366524, -0.101635,
		35.760979, 35.565311, 22.486731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081802, 35.886391, 22.151649>,  <35.113590, 35.308743, 22.557875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081802, 35.886391, 22.151649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463406, 35.772636, 22.113729>,  <35.692368, 35.704384, 22.090979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463406, 35.772636, 22.113729>,  <35.081802, 35.886391, 22.151649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463406, 35.772636, 22.113729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063870, 0.116143, -0.991177,
		0.292890, 0.951648, 0.092638,
		0.954011, -0.284389, -0.094799,
		35.749607, 35.687321, 22.085289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523205, 36.308044, 21.623217>,  <35.081802, 35.886391, 22.151649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523205, 36.308044, 21.623217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737564, 35.972992, 21.665525>,  <35.866180, 35.771961, 21.690910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737564, 35.972992, 21.665525>,  <35.523205, 36.308044, 21.623217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737564, 35.972992, 21.665525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219480, 0.017243, -0.975465,
		0.815253, 0.545969, 0.193083,
		0.535902, -0.837628, 0.105772,
		35.898335, 35.721703, 21.697256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014133, 36.370464, 21.119720>,  <35.523205, 36.308044, 21.623217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014133, 36.370464, 21.119720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092136, 35.991337, 21.220613>,  <36.138939, 35.763863, 21.281149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092136, 35.991337, 21.220613>,  <36.014133, 36.370464, 21.119720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092136, 35.991337, 21.220613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166571, -0.221429, -0.960845,
		0.966555, 0.229383, 0.114699,
		0.195004, -0.947815, 0.252231,
		36.150639, 35.706993, 21.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745464, 36.146889, 20.861502>,  <36.014133, 36.370464, 21.119720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745464, 36.146889, 20.861502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552868, 35.797298, 20.887835>,  <36.437309, 35.587543, 20.903633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552868, 35.797298, 20.887835>,  <36.745464, 36.146889, 20.861502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552868, 35.797298, 20.887835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184210, -0.174345, -0.967301,
		0.856875, -0.453618, 0.244940,
		-0.481489, -0.873976, 0.065831,
		36.408421, 35.535107, 20.907583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195156, 35.713543, 20.531898>,  <36.745464, 36.146889, 20.861502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195156, 35.713543, 20.531898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844452, 35.521217, 20.535946>,  <36.634029, 35.405823, 20.538374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844452, 35.521217, 20.535946>,  <37.195156, 35.713543, 20.531898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844452, 35.521217, 20.535946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032243, -0.079757, -0.996293,
		0.479840, -0.873187, 0.085431,
		-0.876764, -0.480816, 0.010117,
		36.581425, 35.376972, 20.538980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870289, 35.397022, 20.330366>,  <37.195156, 35.713543, 20.531898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870289, 35.397022, 20.330366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109760, 35.717144, 20.317106>,  <38.253445, 35.909218, 20.309151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109760, 35.717144, 20.317106>,  <37.870289, 35.397022, 20.330366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109760, 35.717144, 20.317106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130417, 0.138228, 0.981776,
		0.790298, -0.583448, 0.187128,
		0.598682, 0.800301, -0.033150,
		38.289364, 35.957233, 20.307161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281635, 35.353737, 20.937860>,  <37.870289, 35.397022, 20.330366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281635, 35.353737, 20.937860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.340111, 35.728111, 20.809700>,  <38.375195, 35.952736, 20.732803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.340111, 35.728111, 20.809700>,  <38.281635, 35.353737, 20.937860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340111, 35.728111, 20.809700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283112, 0.270752, 0.920077,
		0.947881, -0.225210, -0.225395,
		0.146184, 0.935935, -0.320400,
		38.383965, 36.008892, 20.713579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982082, 35.467682, 21.074631>,  <38.281635, 35.353737, 20.937860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982082, 35.467682, 21.074631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.771629, 35.806984, 21.050468>,  <38.645355, 36.010563, 21.035971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.771629, 35.806984, 21.050468>,  <38.982082, 35.467682, 21.074631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771629, 35.806984, 21.050468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398166, 0.308487, 0.863887,
		0.751429, 0.430469, -0.500051,
		-0.526136, 0.848252, -0.060408,
		38.613789, 36.061459, 21.032347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470692, 35.951324, 21.229885>,  <38.982082, 35.467682, 21.074631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470692, 35.951324, 21.229885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121193, 36.140762, 21.274210>,  <38.911495, 36.254425, 21.300804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121193, 36.140762, 21.274210>,  <39.470692, 35.951324, 21.229885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121193, 36.140762, 21.274210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326175, 0.401527, 0.855796,
		0.360806, 0.783891, -0.505306,
		-0.873744, 0.473594, 0.110813,
		38.859070, 36.282841, 21.307453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730717, 36.610947, 21.257854>,  <39.470692, 35.951324, 21.229885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730717, 36.610947, 21.257854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.369148, 36.612736, 21.428923>,  <39.152206, 36.613811, 21.531563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.369148, 36.612736, 21.428923>,  <39.730717, 36.610947, 21.257854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369148, 36.612736, 21.428923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361395, 0.542758, 0.758160,
		-0.228727, 0.839877, -0.492230,
		-0.903923, 0.004477, 0.427671,
		39.097973, 36.614079, 21.557224>
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
