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
	<0.665138, 3.320295, 1.864193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.927879, 3.608818, 1.952065>,  <1.085524, 3.781932, 2.004787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.927879, 3.608818, 1.952065>,  <0.665138, 3.320295, 1.864193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.927879, 3.608818, 1.952065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265292, 0.493795, -0.828123,
		-0.705808, 0.485676, 0.515707,
		0.656853, 0.721309, 0.219678,
		1.124935, 3.825211, 2.017968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.420536, 4.106144, 1.997377>,  <0.665138, 3.320295, 1.864193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.420536, 4.106144, 1.997377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.773422, 4.057327, 1.815475>,  <0.985154, 4.028037, 1.706335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.773422, 4.057327, 1.815475>,  <0.420536, 4.106144, 1.997377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.773422, 4.057327, 1.815475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280229, 0.640046, -0.715411,
		0.378374, 0.758582, 0.530459,
		0.882216, -0.122043, -0.454753,
		1.038087, 4.020714, 1.679049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.029538, 4.587656, 2.076338>,  <0.420536, 4.106144, 1.997377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.029538, 4.587656, 2.076338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.988152, 4.418850, 1.716072>,  <0.963320, 4.317566, 1.499912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.988152, 4.418850, 1.716072>,  <1.029538, 4.587656, 2.076338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.988152, 4.418850, 1.716072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037059, 0.906532, -0.420507,
		0.993942, -0.010130, -0.109434,
		-0.103465, -0.422015, -0.900665,
		0.957112, 4.292245, 1.445873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469648, 4.860799, 1.687170>,  <1.029538, 4.587656, 2.076338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469648, 4.860799, 1.687170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.184540, 4.739086, 1.434387>,  <1.013475, 4.666058, 1.282718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.184540, 4.739086, 1.434387>,  <1.469648, 4.860799, 1.687170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.184540, 4.739086, 1.434387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066792, 0.867457, -0.493008,
		0.698209, -0.393611, -0.597974,
		-0.712771, -0.304283, -0.631957,
		0.970708, 4.647801, 1.244800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.639869, 5.104290, 1.108678>,  <1.469648, 4.860799, 1.687170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.639869, 5.104290, 1.108678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.270103, 4.994770, 1.002476>,  <1.048244, 4.929059, 0.938754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.270103, 4.994770, 1.002476>,  <1.639869, 5.104290, 1.108678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.270103, 4.994770, 1.002476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060851, 0.793117, -0.606022,
		0.376504, -0.544059, -0.749829,
		-0.924414, -0.273798, -0.265505,
		0.992779, 4.912631, 0.922824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713272, 4.941428, 0.292259>,  <1.639869, 5.104290, 1.108678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713272, 4.941428, 0.292259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.334572, 5.003456, 0.405125>,  <1.107352, 5.040673, 0.472844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.334572, 5.003456, 0.405125>,  <1.713272, 4.941428, 0.292259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.334572, 5.003456, 0.405125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080274, 0.735010, -0.673288,
		-0.311800, -0.660086, -0.683423,
		-0.946751, 0.155070, 0.282164,
		1.050547, 5.049977, 0.489774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.378955, 4.963092, -0.336881>,  <1.713272, 4.941428, 0.292259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.378955, 4.963092, -0.336881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156494, 5.148579, -0.061008>,  <1.023017, 5.259871, 0.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.156494, 5.148579, -0.061008>,  <1.378955, 4.963092, -0.336881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.156494, 5.148579, -0.061008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181504, 0.742058, -0.645295,
		-0.811018, -0.484063, -0.328532,
		-0.556153, 0.463716, 0.689682,
		0.989648, 5.287694, 0.145896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801248, 5.277529, -0.704070>,  <1.378955, 4.963092, -0.336881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801248, 5.277529, -0.704070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.814751, 5.470539, -0.353977>,  <0.822852, 5.586345, -0.143922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.814751, 5.470539, -0.353977>,  <0.801248, 5.277529, -0.704070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.814751, 5.470539, -0.353977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275200, 0.846364, -0.455997,
		-0.960794, -0.225471, 0.161361,
		0.033757, 0.482526, 0.875231,
		0.824878, 5.615297, -0.091408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.958683, 1.842658, -0.687617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.685173, 1.899887, -0.401405>,  <0.521067, 1.934224, -0.229678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.685173, 1.899887, -0.401405>,  <0.958683, 1.842658, -0.687617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.685173, 1.899887, -0.401405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258677, -0.869379, 0.421031,
		0.682304, 0.472981, 0.557450,
		-0.683774, 0.143072, 0.715530,
		0.480041, 1.942809, -0.186746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.257926, 1.625595, -0.001825>,  <0.958683, 1.842658, -0.687617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.257926, 1.625595, -0.001825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.860779, 1.579422, -0.013741>,  <0.622490, 1.551718, -0.020890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.860779, 1.579422, -0.013741>,  <1.257926, 1.625595, -0.001825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.860779, 1.579422, -0.013741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080013, -0.830479, 0.551273,
		-0.088374, 0.544958, 0.833793,
		-0.992868, -0.115432, -0.029789,
		0.562918, 1.544792, -0.022677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.122157, 1.554734, 0.656337>,  <1.257926, 1.625595, -0.001825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.122157, 1.554734, 0.656337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.861855, 1.376190, 0.410645>,  <0.705673, 1.269064, 0.263229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.861855, 1.376190, 0.410645>,  <1.122157, 1.554734, 0.656337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.861855, 1.376190, 0.410645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210639, -0.883333, 0.418752,
		-0.729485, 0.143124, 0.668855,
		-0.650755, -0.446360, -0.614231,
		0.666628, 1.242282, 0.226375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.697751, 1.238502, 1.045714>,  <1.122157, 1.554734, 0.656337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.697751, 1.238502, 1.045714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.726582, 1.055443, 0.691231>,  <0.743880, 0.945607, 0.478541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.726582, 1.055443, 0.691231>,  <0.697751, 1.238502, 1.045714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.726582, 1.055443, 0.691231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071991, -0.888588, 0.453022,
		-0.994798, 0.031146, -0.096994,
		0.072077, -0.457648, -0.886207,
		0.748205, 0.918148, 0.425369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.134032, 0.757292, 0.944591>,  <0.697751, 1.238502, 1.045714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.134032, 0.757292, 0.944591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.434757, 0.625717, 0.716003>,  <0.615193, 0.546772, 0.578851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.434757, 0.625717, 0.716003>,  <0.134032, 0.757292, 0.944591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.434757, 0.625717, 0.716003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104552, -0.915186, 0.389235,
		-0.651034, -0.232884, -0.722440,
		0.751814, -0.328938, -0.571468,
		0.660301, 0.527036, 0.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.234224, 0.229161, 0.738129>,  <0.134032, 0.757292, 0.944591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.234224, 0.229161, 0.738129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.157333, 0.172569, 0.679138>,  <0.392268, 0.138614, 0.643744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.157333, 0.172569, 0.679138>,  <-0.234224, 0.229161, 0.738129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.157333, 0.172569, 0.679138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083732, -0.935930, 0.342087,
		-0.186426, -0.322519, -0.928023,
		0.978895, -0.141479, -0.147476,
		0.451002, 0.130126, 0.634895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.210170, -0.425835, 0.522758>,  <-0.234224, 0.229161, 0.738129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.210170, -0.425835, 0.522758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.161720, -0.333977, 0.637909>,  <0.384854, -0.278862, 0.706999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.161720, -0.333977, 0.637909>,  <-0.210170, -0.425835, 0.522758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.161720, -0.333977, 0.637909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064089, -0.870711, 0.487602,
		0.362633, -0.434886, -0.824240,
		0.929726, 0.229645, 0.287877,
		0.440638, -0.265083, 0.724272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.187310, -0.968840, 0.458620>,  <-0.210170, -0.425835, 0.522758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.187310, -0.968840, 0.458620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.449657, -0.768814, 0.684814>,  <0.607066, -0.648799, 0.820531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.449657, -0.768814, 0.684814>,  <0.187310, -0.968840, 0.458620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.449657, -0.768814, 0.684814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062197, -0.782362, 0.619711,
		0.752309, -0.371277, -0.544228,
		0.655868, 0.500064, 0.565485,
		0.646418, -0.618795, 0.854460>
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
