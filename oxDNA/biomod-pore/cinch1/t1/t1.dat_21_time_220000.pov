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
	<42.551571, 33.008171, 22.745674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725540, 32.650158, 22.785194>,  <42.829922, 32.435352, 22.808907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725540, 32.650158, 22.785194>,  <42.551571, 33.008171, 22.745674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725540, 32.650158, 22.785194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824687, 0.351864, -0.442813,
		0.361566, 0.274072, 0.891154,
		0.434927, -0.895029, 0.098802,
		42.856018, 32.381649, 22.814835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204773, 33.118279, 23.158047>,  <42.551571, 33.008171, 22.745674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204773, 33.118279, 23.158047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231243, 32.806690, 22.908623>,  <43.247124, 32.619736, 22.758968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231243, 32.806690, 22.908623>,  <43.204773, 33.118279, 23.158047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231243, 32.806690, 22.908623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738856, 0.458254, -0.494060,
		0.670607, -0.428027, 0.605871,
		0.066172, -0.778971, -0.623559,
		43.251095, 32.572998, 22.721556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339596, 33.771080, 23.123579>,  <43.204773, 33.118279, 23.158047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339596, 33.771080, 23.123579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214561, 34.101349, 23.311436>,  <43.139542, 34.299511, 23.424149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214561, 34.101349, 23.311436>,  <43.339596, 33.771080, 23.123579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214561, 34.101349, 23.311436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278556, 0.393000, -0.876332,
		-0.908129, -0.404748, 0.107150,
		-0.312584, 0.825669, 0.469639,
		43.120785, 34.349049, 23.452328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701511, 33.992661, 22.857656>,  <43.339596, 33.771080, 23.123579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701511, 33.992661, 22.857656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912010, 34.307926, 22.985321>,  <43.038307, 34.497086, 23.061920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912010, 34.307926, 22.985321>,  <42.701511, 33.992661, 22.857656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912010, 34.307926, 22.985321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132715, 0.446864, -0.884703,
		-0.839913, 0.423212, 0.339761,
		0.526243, 0.788165, 0.319161,
		43.069881, 34.544376, 23.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637718, 33.663918, 22.172134>,  <42.701511, 33.992661, 22.857656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637718, 33.663918, 22.172134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743767, 33.297504, 22.051739>,  <42.807396, 33.077656, 21.979502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743767, 33.297504, 22.051739>,  <42.637718, 33.663918, 22.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743767, 33.297504, 22.051739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884668, -0.106939, -0.453791,
		0.383501, 0.386584, -0.838737,
		0.265122, -0.916033, -0.300987,
		42.823303, 33.022694, 21.961443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520741, 33.590557, 21.488997>,  <42.637718, 33.663918, 22.172134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520741, 33.590557, 21.488997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486641, 33.229641, 21.658043>,  <42.466183, 33.013092, 21.759470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486641, 33.229641, 21.658043>,  <42.520741, 33.590557, 21.488997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486641, 33.229641, 21.658043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790097, -0.197196, -0.580397,
		0.607025, -0.383384, -0.696087,
		-0.085250, -0.902291, 0.422614,
		42.461067, 32.958954, 21.784826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787411, 33.596752, 21.660814>,  <42.520741, 33.590557, 21.488997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787411, 33.596752, 21.660814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435574, 33.749756, 21.547672>,  <41.224472, 33.841557, 21.479786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435574, 33.749756, 21.547672>,  <41.787411, 33.596752, 21.660814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435574, 33.749756, 21.547672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435851, 0.409649, -0.801387,
		-0.190664, -0.828176, -0.527040,
		-0.879591, 0.382506, -0.282856,
		41.171696, 33.864506, 21.462814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785954, 33.507843, 20.998484>,  <41.787411, 33.596752, 21.660814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785954, 33.507843, 20.998484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523052, 33.807224, 21.033920>,  <41.365311, 33.986851, 21.055183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523052, 33.807224, 21.033920>,  <41.785954, 33.507843, 20.998484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523052, 33.807224, 21.033920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470005, 0.498923, -0.728129,
		-0.589168, -0.436922, -0.679691,
		-0.657248, 0.748449, 0.088594,
		41.325878, 34.031757, 21.060499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504086, 33.591488, 20.300873>,  <41.785954, 33.507843, 20.998484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504086, 33.591488, 20.300873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439575, 33.928761, 20.506023>,  <41.400867, 34.131123, 20.629114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439575, 33.928761, 20.506023>,  <41.504086, 33.591488, 20.300873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439575, 33.928761, 20.506023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304663, 0.536830, -0.786762,
		-0.938707, 0.029369, -0.343462,
		-0.161275, 0.843179, 0.512874,
		41.391193, 34.181713, 20.659885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999134, 34.028091, 19.922319>,  <41.504086, 33.591488, 20.300873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999134, 34.028091, 19.922319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182953, 34.296150, 20.155460>,  <41.293243, 34.456985, 20.295345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182953, 34.296150, 20.155460>,  <40.999134, 34.028091, 19.922319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182953, 34.296150, 20.155460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138345, 0.594232, -0.792306,
		-0.877310, 0.444740, 0.180369,
		0.459551, 0.670145, 0.582853,
		41.320820, 34.497192, 20.330317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836441, 34.629242, 19.595865>,  <40.999134, 34.028091, 19.922319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836441, 34.629242, 19.595865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151268, 34.705902, 19.830402>,  <41.340164, 34.751896, 19.971125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151268, 34.705902, 19.830402>,  <40.836441, 34.629242, 19.595865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151268, 34.705902, 19.830402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397187, 0.569826, -0.719403,
		-0.471986, 0.799105, 0.372370,
		0.787065, 0.191647, 0.586344,
		41.387386, 34.763397, 20.006306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894775, 35.248249, 19.510111>,  <40.836441, 34.629242, 19.595865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894775, 35.248249, 19.510111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256855, 35.141312, 19.642254>,  <41.474102, 35.077148, 19.721540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256855, 35.141312, 19.642254>,  <40.894775, 35.248249, 19.510111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256855, 35.141312, 19.642254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415535, 0.393805, -0.819907,
		0.089096, 0.879459, 0.467562,
		0.905203, -0.267339, 0.330360,
		41.528416, 35.061111, 19.741362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359329, 35.873104, 19.634085>,  <40.894775, 35.248249, 19.510111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359329, 35.873104, 19.634085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597725, 35.557961, 19.572025>,  <41.740761, 35.368874, 19.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597725, 35.557961, 19.572025>,  <41.359329, 35.873104, 19.634085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597725, 35.557961, 19.572025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455428, 0.490784, -0.742776,
		0.661350, 0.372028, 0.651316,
		0.595988, -0.787862, -0.155148,
		41.776520, 35.321602, 19.525480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052307, 36.190125, 19.538805>,  <41.359329, 35.873104, 19.634085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052307, 36.190125, 19.538805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111607, 35.819382, 19.400841>,  <42.147186, 35.596935, 19.318062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111607, 35.819382, 19.400841>,  <42.052307, 36.190125, 19.538805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111607, 35.819382, 19.400841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571282, 0.364951, -0.735152,
		0.807254, -0.088054, 0.583599,
		0.148252, -0.926854, -0.344912,
		42.156082, 35.541325, 19.297367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816151, 36.107761, 19.470926>,  <42.052307, 36.190125, 19.538805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816151, 36.107761, 19.470926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676632, 35.819252, 19.231556>,  <42.592922, 35.646149, 19.087934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676632, 35.819252, 19.231556>,  <42.816151, 36.107761, 19.470926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676632, 35.819252, 19.231556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578296, 0.336836, -0.743044,
		0.737507, -0.605236, 0.299621,
		-0.348794, -0.721270, -0.598425,
		42.571995, 35.602871, 19.052029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343197, 35.912498, 19.111988>,  <42.816151, 36.107761, 19.470926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343197, 35.912498, 19.111988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034878, 35.746716, 18.918457>,  <42.849884, 35.647243, 18.802338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034878, 35.746716, 18.918457>,  <43.343197, 35.912498, 19.111988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034878, 35.746716, 18.918457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402015, 0.272717, -0.874076,
		0.494218, -0.868244, -0.043591,
		-0.770800, -0.414460, -0.483829,
		42.803638, 35.622379, 18.773308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655151, 35.599869, 18.635336>,  <43.343197, 35.912498, 19.111988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655151, 35.599869, 18.635336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288937, 35.627834, 18.476891>,  <43.069206, 35.644615, 18.381823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288937, 35.627834, 18.476891>,  <43.655151, 35.599869, 18.635336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288937, 35.627834, 18.476891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402192, 0.173766, -0.898914,
		0.005982, -0.982302, -0.187209,
		-0.915536, 0.069917, -0.396114,
		43.014275, 35.648808, 18.358057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678871, 35.131058, 18.067667>,  <43.655151, 35.599869, 18.635336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678871, 35.131058, 18.067667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400864, 35.413151, 18.011665>,  <43.234058, 35.582405, 17.978065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400864, 35.413151, 18.011665>,  <43.678871, 35.131058, 18.067667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400864, 35.413151, 18.011665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318091, 0.126972, -0.939519,
		-0.644799, -0.697518, -0.312575,
		-0.695020, 0.705228, -0.140003,
		43.192356, 35.624718, 17.969664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512577, 35.057438, 17.437094>,  <43.678871, 35.131058, 18.067667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512577, 35.057438, 17.437094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331375, 35.404240, 17.520119>,  <43.222652, 35.612320, 17.569933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331375, 35.404240, 17.520119>,  <43.512577, 35.057438, 17.437094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331375, 35.404240, 17.520119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255017, 0.349117, -0.901712,
		-0.854254, -0.355550, -0.379254,
		-0.453007, 0.867007, 0.207563,
		43.195473, 35.664341, 17.582388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185966, 35.224556, 16.829918>,  <43.512577, 35.057438, 17.437094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185966, 35.224556, 16.829918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228317, 35.566357, 17.033333>,  <43.253727, 35.771439, 17.155382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228317, 35.566357, 17.033333>,  <43.185966, 35.224556, 16.829918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228317, 35.566357, 17.033333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199853, 0.482692, -0.852682,
		-0.974089, 0.191914, -0.119668,
		0.105879, 0.854504, 0.508539,
		43.260082, 35.822708, 17.185894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684856, 35.737263, 16.611307>,  <43.185966, 35.224556, 16.829918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684856, 35.737263, 16.611307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962578, 35.960102, 16.793549>,  <43.129211, 36.093807, 16.902893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962578, 35.960102, 16.793549>,  <42.684856, 35.737263, 16.611307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962578, 35.960102, 16.793549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068925, 0.578683, -0.812634,
		-0.716372, 0.595620, 0.363385,
		0.694306, 0.557102, 0.455606,
		43.170868, 36.127232, 16.930231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536594, 36.396275, 16.441223>,  <42.684856, 35.737263, 16.611307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536594, 36.396275, 16.441223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922142, 36.409210, 16.546982>,  <43.153473, 36.416973, 16.610437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922142, 36.409210, 16.546982>,  <42.536594, 36.396275, 16.441223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922142, 36.409210, 16.546982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216718, 0.481894, -0.849006,
		-0.154868, 0.875633, 0.457475,
		0.963872, 0.032341, 0.264396,
		43.211304, 36.418911, 16.626301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705276, 37.068981, 16.271072>,  <42.536594, 36.396275, 16.441223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705276, 37.068981, 16.271072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070976, 36.914169, 16.318989>,  <43.290398, 36.821281, 16.347738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070976, 36.914169, 16.318989>,  <42.705276, 37.068981, 16.271072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070976, 36.914169, 16.318989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349808, 0.604925, -0.715332,
		0.204390, 0.695898, 0.688441,
		0.914253, -0.387029, 0.119791,
		43.345253, 36.798061, 16.354925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151180, 37.663822, 16.156254>,  <42.705276, 37.068981, 16.271072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151180, 37.663822, 16.156254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371498, 37.335510, 16.095661>,  <43.503689, 37.138523, 16.059305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371498, 37.335510, 16.095661>,  <43.151180, 37.663822, 16.156254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371498, 37.335510, 16.095661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495723, 0.467714, -0.731780,
		0.671482, 0.327966, 0.664493,
		0.550791, -0.820782, -0.151481,
		43.536736, 37.089275, 16.050217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827972, 37.947319, 16.142942>,  <43.151180, 37.663822, 16.156254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827972, 37.947319, 16.142942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843613, 37.587856, 15.968177>,  <43.852997, 37.372181, 15.863317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843613, 37.587856, 15.968177>,  <43.827972, 37.947319, 16.142942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843613, 37.587856, 15.968177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772319, 0.304617, -0.557432,
		0.634030, -0.315641, 0.705958,
		0.039099, -0.898654, -0.436912,
		43.855343, 37.318260, 15.837103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511108, 37.697479, 16.053587>,  <43.827972, 37.947319, 16.142942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511108, 37.697479, 16.053587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313255, 37.482372, 15.780488>,  <44.194542, 37.353306, 15.616630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313255, 37.482372, 15.780488>,  <44.511108, 37.697479, 16.053587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313255, 37.482372, 15.780488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612140, 0.342083, -0.712926,
		0.616946, -0.770573, 0.159985,
		-0.494633, -0.537770, -0.682745,
		44.164864, 37.321041, 15.575665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954662, 37.524986, 15.448315>,  <44.511108, 37.697479, 16.053587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954662, 37.524986, 15.448315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581482, 37.524551, 15.304315>,  <44.357574, 37.524292, 15.217915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581482, 37.524551, 15.304315>,  <44.954662, 37.524986, 15.448315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581482, 37.524551, 15.304315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283410, 0.614424, -0.736316,
		0.221991, -0.788975, -0.572921,
		-0.932952, -0.001084, -0.360000,
		44.301598, 37.524227, 15.196315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872990, 37.132858, 14.814332>,  <44.954662, 37.524986, 15.448315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872990, 37.132858, 14.814332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674030, 37.467068, 14.907706>,  <44.554657, 37.667595, 14.963731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674030, 37.467068, 14.907706>,  <44.872990, 37.132858, 14.814332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674030, 37.467068, 14.907706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469725, 0.485610, -0.737253,
		-0.729354, -0.257055, -0.634007,
		-0.497395, 0.835527, 0.233436,
		44.524811, 37.717728, 14.977737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569805, 37.531479, 14.225800>,  <44.872990, 37.132858, 14.814332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569805, 37.531479, 14.225800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654640, 37.829918, 14.478261>,  <44.705540, 38.008984, 14.629738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654640, 37.829918, 14.478261>,  <44.569805, 37.531479, 14.225800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654640, 37.829918, 14.478261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415941, 0.515510, -0.749161,
		-0.884315, 0.421408, -0.201002,
		0.212084, 0.746100, 0.631154,
		44.718266, 38.053749, 14.667607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296295, 38.201927, 13.874269>,  <44.569805, 37.531479, 14.225800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296295, 38.201927, 13.874269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620361, 38.236057, 14.106252>,  <44.814800, 38.256535, 14.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620361, 38.236057, 14.106252>,  <44.296295, 38.201927, 13.874269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620361, 38.236057, 14.106252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479937, 0.471520, -0.739817,
		-0.336584, 0.877718, 0.341061,
		0.810168, 0.085323, 0.579955,
		44.863411, 38.261654, 14.280238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926579, 38.775734, 13.476791>,  <44.296295, 38.201927, 13.874269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926579, 38.775734, 13.476791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942448, 38.843262, 13.870730>,  <43.951969, 38.883778, 14.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942448, 38.843262, 13.870730>,  <43.926579, 38.775734, 13.476791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942448, 38.843262, 13.870730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711851, 0.696449, -0.090702,
		-0.701209, -0.697467, 0.147805,
		0.039677, 0.168816, 0.984849,
		43.954350, 38.893906, 14.166185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263969, 38.881599, 13.736117>,  <43.926579, 38.775734, 13.476791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263969, 38.881599, 13.736117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517445, 39.053196, 13.993615>,  <43.669529, 39.156155, 14.148114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517445, 39.053196, 13.993615>,  <43.263969, 38.881599, 13.736117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517445, 39.053196, 13.993615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621898, 0.777423, 0.094103,
		-0.460093, -0.459976, 0.759432,
		0.633685, 0.428994, 0.643745,
		43.707550, 39.181892, 14.186739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643776, 39.278866, 13.475142>,  <43.263969, 38.881599, 13.736117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643776, 39.278866, 13.475142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875401, 39.548656, 13.658345>,  <43.014374, 39.710529, 13.768267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875401, 39.548656, 13.658345>,  <42.643776, 39.278866, 13.475142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875401, 39.548656, 13.658345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137078, -0.473233, 0.870207,
		0.803678, -0.566685, -0.181574,
		0.579061, 0.674477, 0.458007,
		43.049118, 39.750999, 13.795748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879593, 39.339569, 13.749218>,  <42.643776, 39.278866, 13.475142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879593, 39.339569, 13.749218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894257, 39.207844, 13.371814>,  <41.903057, 39.128811, 13.145371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894257, 39.207844, 13.371814>,  <41.879593, 39.339569, 13.749218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894257, 39.207844, 13.371814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204831, -0.926575, 0.315440,
		-0.978110, 0.181695, -0.101424,
		0.036663, -0.329310, -0.943510,
		41.905254, 39.109051, 13.088761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191029, 39.157909, 13.494345>,  <41.879593, 39.339569, 13.749218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191029, 39.157909, 13.494345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503872, 38.956799, 13.347095>,  <41.691578, 38.836132, 13.258744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503872, 38.956799, 13.347095>,  <41.191029, 39.157909, 13.494345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503872, 38.956799, 13.347095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274866, -0.808538, 0.520303,
		-0.559239, -0.305751, -0.770564,
		0.782113, -0.502776, -0.368125,
		41.738506, 38.805965, 13.236657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853889, 38.546486, 13.149396>,  <41.191029, 39.157909, 13.494345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853889, 38.546486, 13.149396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223740, 38.496941, 13.293466>,  <41.445648, 38.467213, 13.379908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223740, 38.496941, 13.293466>,  <40.853889, 38.546486, 13.149396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223740, 38.496941, 13.293466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310805, -0.791977, 0.525521,
		0.220156, -0.597854, -0.770780,
		0.924625, -0.123866, 0.360175,
		41.501125, 38.459782, 13.401518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997890, 37.817249, 13.098361>,  <40.853889, 38.546486, 13.149396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997890, 37.817249, 13.098361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228996, 37.963047, 13.390481>,  <41.367661, 38.050526, 13.565753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228996, 37.963047, 13.390481>,  <40.997890, 37.817249, 13.098361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228996, 37.963047, 13.390481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116122, -0.848940, 0.515574,
		0.807904, -0.382682, -0.448158,
		0.577761, 0.364493, 0.730299,
		41.402325, 38.072395, 13.609571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482620, 37.394253, 13.272798>,  <40.997890, 37.817249, 13.098361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482620, 37.394253, 13.272798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470375, 37.608067, 13.610635>,  <41.463028, 37.736355, 13.813337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470375, 37.608067, 13.610635>,  <41.482620, 37.394253, 13.272798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470375, 37.608067, 13.610635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048721, -0.843188, 0.535407,
		0.998343, 0.057540, -0.000230,
		-0.030613, 0.534531, 0.844594,
		41.461193, 37.768425, 13.864013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982349, 37.114544, 13.659052>,  <41.482620, 37.394253, 13.272798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982349, 37.114544, 13.659052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738476, 37.283424, 13.927388>,  <41.592152, 37.384754, 14.088389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738476, 37.283424, 13.927388>,  <41.982349, 37.114544, 13.659052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738476, 37.283424, 13.927388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036630, -0.830422, 0.555930,
		0.791796, 0.363516, 0.490831,
		-0.609686, 0.422204, 0.670840,
		41.555569, 37.410084, 14.128640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301968, 36.946217, 14.405333>,  <41.982349, 37.114544, 13.659052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301968, 36.946217, 14.405333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908501, 37.015583, 14.424621>,  <41.672421, 37.057201, 14.436193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908501, 37.015583, 14.424621>,  <42.301968, 36.946217, 14.405333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908501, 37.015583, 14.424621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073211, -0.630218, 0.772959,
		0.164431, 0.756805, 0.632621,
		-0.983668, 0.173413, 0.048220,
		41.613400, 37.067608, 14.439087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093449, 37.146114, 15.143385>,  <42.301968, 36.946217, 14.405333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093449, 37.146114, 15.143385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772141, 36.974010, 14.978639>,  <41.579357, 36.870750, 14.879791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772141, 36.974010, 14.978639>,  <42.093449, 37.146114, 15.143385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772141, 36.974010, 14.978639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169778, -0.497407, 0.850742,
		-0.570903, 0.753302, 0.326505,
		-0.803271, -0.430258, -0.411866,
		41.531158, 36.844933, 14.855079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726608, 37.027031, 15.701037>,  <42.093449, 37.146114, 15.143385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726608, 37.027031, 15.701037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515850, 36.823822, 15.428479>,  <41.389397, 36.701897, 15.264944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515850, 36.823822, 15.428479>,  <41.726608, 37.027031, 15.701037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515850, 36.823822, 15.428479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374317, -0.581070, 0.722664,
		-0.763067, 0.635824, 0.115999,
		-0.526891, -0.508021, -0.681396,
		41.357784, 36.671417, 15.224060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048363, 37.046631, 16.001957>,  <41.726608, 37.027031, 15.701037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048363, 37.046631, 16.001957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041435, 36.744541, 15.739861>,  <41.037281, 36.563290, 15.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041435, 36.744541, 15.739861>,  <41.048363, 37.046631, 16.001957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041435, 36.744541, 15.739861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506617, -0.558358, 0.656944,
		-0.861997, 0.343331, -0.372940,
		-0.017315, -0.755221, -0.655241,
		41.036240, 36.517975, 15.543289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339954, 36.811729, 15.853593>,  <41.048363, 37.046631, 16.001957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339954, 36.811729, 15.853593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545509, 36.479782, 15.766665>,  <40.668842, 36.280613, 15.714509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545509, 36.479782, 15.766665>,  <40.339954, 36.811729, 15.853593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545509, 36.479782, 15.766665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442092, -0.473290, 0.761939,
		-0.735167, -0.295479, -0.610100,
		0.513892, -0.829873, -0.217318,
		40.699677, 36.230820, 15.701470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885704, 36.326511, 16.010670>,  <40.339954, 36.811729, 15.853593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885704, 36.326511, 16.010670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218414, 36.108208, 15.970094>,  <40.418041, 35.977226, 15.945748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218414, 36.108208, 15.970094>,  <39.885704, 36.326511, 16.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218414, 36.108208, 15.970094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223875, -0.497028, 0.838357,
		-0.507968, -0.674613, -0.535598,
		0.831774, -0.545766, -0.101446,
		40.467949, 35.944481, 15.939661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710892, 35.589497, 15.884642>,  <39.885704, 36.326511, 16.010670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710892, 35.589497, 15.884642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086323, 35.594372, 16.022579>,  <40.311581, 35.597298, 16.105343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086323, 35.594372, 16.022579>,  <39.710892, 35.589497, 15.884642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086323, 35.594372, 16.022579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257561, -0.640312, 0.723646,
		0.229628, -0.768019, -0.597845,
		0.938580, 0.012188, 0.344845,
		40.367897, 35.598026, 16.126032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775368, 35.000324, 16.180817>,  <39.710892, 35.589497, 15.884642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775368, 35.000324, 16.180817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069447, 35.195240, 16.369301>,  <40.245895, 35.312191, 16.482391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069447, 35.195240, 16.369301>,  <39.775368, 35.000324, 16.180817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069447, 35.195240, 16.369301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282970, -0.411055, 0.866581,
		0.615967, -0.770444, -0.164317,
		0.735196, 0.487288, 0.471209,
		40.290005, 35.341427, 16.510664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008022, 34.509731, 16.662832>,  <39.775368, 35.000324, 16.180817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008022, 34.509731, 16.662832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154022, 34.859055, 16.791889>,  <40.241623, 35.068649, 16.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154022, 34.859055, 16.791889>,  <40.008022, 34.509731, 16.662832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154022, 34.859055, 16.791889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203153, -0.263492, 0.943027,
		0.908572, -0.409752, 0.081241,
		0.365001, 0.873313, 0.322644,
		40.263523, 35.121048, 16.888683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448345, 34.319366, 17.292755>,  <40.008022, 34.509731, 16.662832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448345, 34.319366, 17.292755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344761, 34.705318, 17.310394>,  <40.282612, 34.936890, 17.320978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344761, 34.705318, 17.310394>,  <40.448345, 34.319366, 17.292755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344761, 34.705318, 17.310394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143467, -0.083573, 0.986120,
		0.955173, 0.249040, 0.160071,
		-0.258961, 0.964880, 0.044098,
		40.267071, 34.994781, 17.323624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850868, 34.700455, 17.692390>,  <40.448345, 34.319366, 17.292755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850868, 34.700455, 17.692390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498550, 34.889751, 17.686279>,  <40.287159, 35.003330, 17.682613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498550, 34.889751, 17.686279>,  <40.850868, 34.700455, 17.692390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498550, 34.889751, 17.686279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118508, -0.189100, 0.974780,
		0.458421, 0.860395, 0.222642,
		-0.880798, 0.473245, -0.015276,
		40.234310, 35.031727, 17.681696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627201, 34.677177, 18.427811>,  <40.850868, 34.700455, 17.692390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627201, 34.677177, 18.427811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318439, 34.859226, 18.250263>,  <40.133183, 34.968456, 18.143734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318439, 34.859226, 18.250263>,  <40.627201, 34.677177, 18.427811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318439, 34.859226, 18.250263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469928, 0.061750, 0.880543,
		0.428167, 0.888283, 0.166211,
		-0.771907, 0.455127, -0.443868,
		40.086868, 34.995766, 18.117104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450474, 35.348984, 18.796007>,  <40.627201, 34.677177, 18.427811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450474, 35.348984, 18.796007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131596, 35.211926, 18.597183>,  <39.940269, 35.129692, 18.477890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131596, 35.211926, 18.597183>,  <40.450474, 35.348984, 18.796007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131596, 35.211926, 18.597183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532795, 0.012125, 0.846158,
		-0.283906, 0.939386, -0.192227,
		-0.797199, -0.342647, -0.497058,
		39.892437, 35.109131, 18.448067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953064, 35.659237, 19.162540>,  <40.450474, 35.348984, 18.796007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953064, 35.659237, 19.162540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791836, 35.343685, 18.976978>,  <39.695099, 35.154354, 18.865641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791836, 35.343685, 18.976978>,  <39.953064, 35.659237, 19.162540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791836, 35.343685, 18.976978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669907, -0.091026, 0.736844,
		-0.623507, 0.607773, -0.491784,
		-0.403068, -0.788877, -0.463906,
		39.670914, 35.107021, 18.837807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278603, 35.645336, 19.419136>,  <39.953064, 35.659237, 19.162540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278603, 35.645336, 19.419136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312996, 35.283855, 19.251362>,  <39.333633, 35.066967, 19.150698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312996, 35.283855, 19.251362>,  <39.278603, 35.645336, 19.419136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312996, 35.283855, 19.251362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601730, -0.382641, 0.701075,
		-0.794057, 0.192107, -0.576687,
		0.085983, -0.903704, -0.419436,
		39.338791, 35.012745, 19.125530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599140, 35.379368, 19.441441>,  <39.278603, 35.645336, 19.419136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599140, 35.379368, 19.441441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839622, 35.064869, 19.384361>,  <38.983913, 34.876167, 19.350113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839622, 35.064869, 19.384361>,  <38.599140, 35.379368, 19.441441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839622, 35.064869, 19.384361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522827, -0.522078, 0.673859,
		-0.604323, -0.330520, -0.724948,
		0.601204, -0.786251, -0.142700,
		39.019985, 34.828995, 19.341553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188450, 34.800289, 19.361450>,  <38.599140, 35.379368, 19.441441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188450, 34.800289, 19.361450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542316, 34.654381, 19.477596>,  <38.754635, 34.566837, 19.547285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542316, 34.654381, 19.477596>,  <38.188450, 34.800289, 19.361450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542316, 34.654381, 19.477596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462975, -0.613839, 0.639418,
		-0.055002, -0.700103, -0.711920,
		0.884663, -0.364771, 0.290368,
		38.807716, 34.544949, 19.564707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095215, 34.020290, 19.413267>,  <38.188450, 34.800289, 19.361450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095215, 34.020290, 19.413267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414032, 34.102783, 19.640316>,  <38.605320, 34.152279, 19.776545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414032, 34.102783, 19.640316>,  <38.095215, 34.020290, 19.413267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414032, 34.102783, 19.640316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423069, -0.480051, 0.768482,
		0.430974, -0.852654, -0.295368,
		0.797041, 0.206235, 0.567621,
		38.653145, 34.164654, 19.810602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364262, 33.398033, 19.821220>,  <38.095215, 34.020290, 19.413267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364262, 33.398033, 19.821220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404354, 33.760399, 19.985790>,  <38.428410, 33.977818, 20.084532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404354, 33.760399, 19.985790>,  <38.364262, 33.398033, 19.821220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404354, 33.760399, 19.985790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444288, -0.329239, 0.833192,
		0.890259, -0.266303, 0.369488,
		0.100232, 0.905916, 0.411423,
		38.434425, 34.032173, 20.109217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662868, 33.303822, 20.440447>,  <38.364262, 33.398033, 19.821220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662868, 33.303822, 20.440447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455265, 33.645588, 20.450294>,  <38.330704, 33.850647, 20.456203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455265, 33.645588, 20.450294>,  <38.662868, 33.303822, 20.440447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455265, 33.645588, 20.450294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501426, -0.327661, 0.800756,
		0.692245, 0.403255, 0.598484,
		-0.519009, 0.854414, 0.024619,
		38.299564, 33.901913, 20.457680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667755, 33.604034, 21.116627>,  <38.662868, 33.303822, 20.440447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667755, 33.604034, 21.116627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329399, 33.698975, 20.925575>,  <38.126385, 33.755939, 20.810944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329399, 33.698975, 20.925575>,  <38.667755, 33.604034, 21.116627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329399, 33.698975, 20.925575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533050, -0.345895, 0.772150,
		0.018063, 0.907755, 0.419111,
		-0.845891, 0.237354, -0.477631,
		38.075630, 33.770180, 20.782286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 34.123158, 21.580021>,  <38.667755, 33.604034, 21.116627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199314, 34.123158, 21.580021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012974, 33.877930, 21.324795>,  <37.901169, 33.730793, 21.171659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012974, 33.877930, 21.324795>,  <38.199314, 34.123158, 21.580021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012974, 33.877930, 21.324795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410346, -0.489188, 0.769618,
		-0.783966, 0.620352, -0.023686,
		-0.465847, -0.613074, -0.638065,
		37.873219, 33.694008, 21.133375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467163, 34.269863, 21.631763>,  <38.199314, 34.123158, 21.580021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467163, 34.269863, 21.631763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587723, 33.897995, 21.547039>,  <37.660057, 33.674873, 21.496204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587723, 33.897995, 21.547039>,  <37.467163, 34.269863, 21.631763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587723, 33.897995, 21.547039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357342, -0.316085, 0.878861,
		-0.884006, -0.189196, -0.427479,
		0.301396, -0.929675, -0.211813,
		37.678143, 33.619091, 21.483496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905621, 33.746460, 21.675367>,  <37.467163, 34.269863, 21.631763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905621, 33.746460, 21.675367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249817, 33.554321, 21.743279>,  <37.456333, 33.439037, 21.784025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249817, 33.554321, 21.743279>,  <36.905621, 33.746460, 21.675367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249817, 33.554321, 21.743279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421328, -0.483587, 0.767220,
		-0.286430, -0.731717, -0.618505,
		0.860488, -0.480349, 0.169779,
		37.507965, 33.410217, 21.794212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887447, 32.922581, 21.660170>,  <36.905621, 33.746460, 21.675367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887447, 32.922581, 21.660170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133755, 33.099037, 21.921314>,  <37.281540, 33.204910, 22.078001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133755, 33.099037, 21.921314>,  <36.887447, 32.922581, 21.660170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133755, 33.099037, 21.921314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344207, -0.594730, 0.726511,
		0.708767, -0.672082, -0.214373,
		0.615769, 0.441138, 0.652860,
		37.318485, 33.231377, 22.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130852, 32.447037, 21.987806>,  <36.887447, 32.922581, 21.660170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130852, 32.447037, 21.987806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165131, 32.752899, 22.243294>,  <37.185699, 32.936417, 22.396585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165131, 32.752899, 22.243294>,  <37.130852, 32.447037, 21.987806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165131, 32.752899, 22.243294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342142, -0.579506, 0.739670,
		0.935732, -0.281919, 0.211959,
		0.085696, 0.764653, 0.638719,
		37.190838, 32.982296, 22.434910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317989, 32.154537, 22.510691>,  <37.130852, 32.447037, 21.987806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317989, 32.154537, 22.510691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194160, 32.502617, 22.664005>,  <37.119862, 32.711464, 22.755995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194160, 32.502617, 22.664005>,  <37.317989, 32.154537, 22.510691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194160, 32.502617, 22.664005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384923, -0.483272, 0.786309,
		0.869481, 0.095885, 0.484570,
		-0.309574, 0.870204, 0.383287,
		37.101288, 32.763680, 22.778992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635185, 32.312275, 23.260180>,  <37.317989, 32.154537, 22.510691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635185, 32.312275, 23.260180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286865, 32.506382, 23.228642>,  <37.077873, 32.622849, 23.209719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286865, 32.506382, 23.228642>,  <37.635185, 32.312275, 23.260180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286865, 32.506382, 23.228642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331235, -0.460588, 0.823494,
		0.363303, 0.743216, 0.561819,
		-0.870801, 0.485272, -0.078846,
		37.025623, 32.651962, 23.204988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492435, 32.414082, 23.974739>,  <37.635185, 32.312275, 23.260180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492435, 32.414082, 23.974739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153015, 32.442829, 23.765057>,  <36.949364, 32.460079, 23.639248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153015, 32.442829, 23.765057>,  <37.492435, 32.414082, 23.974739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153015, 32.442829, 23.765057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480025, -0.521305, 0.705561,
		-0.222562, 0.850338, 0.476855,
		-0.848553, 0.071872, -0.524207,
		36.898449, 32.464390, 23.607794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904163, 32.465103, 24.515440>,  <37.492435, 32.414082, 23.974739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904163, 32.465103, 24.515440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718128, 32.375313, 24.172909>,  <36.606506, 32.321438, 23.967390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718128, 32.375313, 24.172909>,  <36.904163, 32.465103, 24.515440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718128, 32.375313, 24.172909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724433, -0.459465, 0.513896,
		-0.508809, 0.859363, 0.051078,
		-0.465092, -0.224472, -0.856330,
		36.578602, 32.307972, 23.916010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213329, 32.520824, 24.747875>,  <36.904163, 32.465103, 24.515440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213329, 32.520824, 24.747875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208965, 32.324413, 24.399445>,  <36.206348, 32.206566, 24.190386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208965, 32.324413, 24.399445>,  <36.213329, 32.520824, 24.747875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208965, 32.324413, 24.399445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584404, -0.703735, 0.404017,
		-0.811390, 0.513467, -0.279282,
		-0.010909, -0.491028, -0.871075,
		36.205692, 32.177105, 24.138123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561649, 32.482407, 24.603947>,  <36.213329, 32.520824, 24.747875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561649, 32.482407, 24.603947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753017, 32.167736, 24.447868>,  <35.867840, 31.978933, 24.354221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753017, 32.167736, 24.447868>,  <35.561649, 32.482407, 24.603947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753017, 32.167736, 24.447868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624658, -0.617185, 0.478419,
		-0.617185, 0.014855, -0.786678,
		-0.478419, 0.786678, 0.390197,
		35.896542, 31.931732, 24.330809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061054, 31.976555, 24.595869>,  <35.561649, 32.482407, 24.603947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061054, 31.976555, 24.595869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398495, 31.766567, 24.550713>,  <35.600960, 31.640574, 24.523619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398495, 31.766567, 24.550713>,  <35.061054, 31.976555, 24.595869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398495, 31.766567, 24.550713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363887, -0.713505, 0.598746,
		-0.394874, -0.464022, -0.792943,
		0.843600, -0.524970, -0.112893,
		35.651573, 31.609076, 24.516844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787357, 31.349970, 24.331532>,  <35.061054, 31.976555, 24.595869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787357, 31.349970, 24.331532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144753, 31.291561, 24.501408>,  <35.359188, 31.256516, 24.603334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144753, 31.291561, 24.501408>,  <34.787357, 31.349970, 24.331532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144753, 31.291561, 24.501408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372990, -0.767980, 0.520659,
		0.250128, -0.623607, -0.740642,
		0.893484, -0.146020, 0.424692,
		35.412796, 31.247755, 24.628815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853718, 30.523073, 24.460052>,  <34.787357, 31.349970, 24.331532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853718, 30.523073, 24.460052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122196, 30.705502, 24.693802>,  <35.283283, 30.814959, 24.834051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122196, 30.705502, 24.693802>,  <34.853718, 30.523073, 24.460052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122196, 30.705502, 24.693802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283913, -0.570058, 0.770991,
		0.684753, -0.683399, -0.253138,
		0.671198, 0.456069, 0.584375,
		35.323555, 30.842321, 24.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220928, 29.980474, 24.813011>,  <34.853718, 30.523073, 24.460052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220928, 29.980474, 24.813011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293221, 30.315254, 25.019642>,  <35.336594, 30.516123, 25.143620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293221, 30.315254, 25.019642>,  <35.220928, 29.980474, 24.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293221, 30.315254, 25.019642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264254, -0.464591, 0.845177,
		0.947369, -0.289254, 0.137204,
		0.180727, 0.836951, 0.516576,
		35.347439, 30.566339, 25.174614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593037, 29.809824, 25.309759>,  <35.220928, 29.980474, 24.813011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593037, 29.809824, 25.309759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481590, 30.169018, 25.445992>,  <35.414722, 30.384535, 25.527731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481590, 30.169018, 25.445992>,  <35.593037, 29.809824, 25.309759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481590, 30.169018, 25.445992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021581, -0.360386, 0.932554,
		0.960159, 0.252478, 0.119790,
		-0.278620, 0.897985, 0.340579,
		35.398003, 30.438414, 25.548164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103092, 30.029528, 25.863823>,  <35.593037, 29.809824, 25.309759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103092, 30.029528, 25.863823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742931, 30.195328, 25.916695>,  <35.526836, 30.294807, 25.948418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742931, 30.195328, 25.916695>,  <36.103092, 30.029528, 25.863823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742931, 30.195328, 25.916695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001250, -0.306283, 0.951940,
		0.435063, 0.856961, 0.276295,
		-0.900399, 0.414499, 0.132181,
		35.472813, 30.319677, 25.956348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090790, 30.132643, 26.514862>,  <36.103092, 30.029528, 25.863823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090790, 30.132643, 26.514862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702950, 30.208202, 26.452637>,  <35.470245, 30.253538, 26.415300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702950, 30.208202, 26.452637>,  <36.090790, 30.132643, 26.514862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702950, 30.208202, 26.452637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201453, -0.255259, 0.945653,
		0.138924, 0.948240, 0.285553,
		-0.969596, 0.188899, -0.155565,
		35.412071, 30.264872, 26.405968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859875, 30.463238, 27.075993>,  <36.090790, 30.132643, 26.514862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859875, 30.463238, 27.075993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559792, 30.266048, 26.899734>,  <35.379742, 30.147736, 26.793980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559792, 30.266048, 26.899734>,  <35.859875, 30.463238, 27.075993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559792, 30.266048, 26.899734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192707, -0.474480, 0.858914,
		-0.632498, 0.729278, 0.260959,
		-0.750207, -0.492972, -0.440645,
		35.334728, 30.118156, 26.767542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228630, 30.495375, 27.556837>,  <35.859875, 30.463238, 27.075993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228630, 30.495375, 27.556837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153435, 30.187294, 27.313049>,  <35.108318, 30.002445, 27.166777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153435, 30.187294, 27.313049>,  <35.228630, 30.495375, 27.556837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153435, 30.187294, 27.313049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251093, -0.562223, 0.787945,
		-0.949533, 0.301159, -0.087699,
		-0.187990, -0.770200, -0.609468,
		35.097038, 29.956234, 27.130209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644741, 30.222229, 27.800125>,  <35.228630, 30.495375, 27.556837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644741, 30.222229, 27.800125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831036, 29.928967, 27.601906>,  <34.942814, 29.753010, 27.482975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831036, 29.928967, 27.601906>,  <34.644741, 30.222229, 27.800125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831036, 29.928967, 27.601906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001774, -0.559217, 0.829020,
		-0.884920, -0.386986, -0.259148,
		0.465739, -0.733157, -0.495549,
		34.970757, 29.709019, 27.453241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335201, 29.695038, 27.962397>,  <34.644741, 30.222229, 27.800125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335201, 29.695038, 27.962397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668514, 29.513931, 27.835503>,  <34.868504, 29.405268, 27.759367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668514, 29.513931, 27.835503>,  <34.335201, 29.695038, 27.962397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668514, 29.513931, 27.835503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056163, -0.640185, 0.766165,
		-0.549980, -0.620619, -0.558887,
		0.833287, -0.452764, -0.317233,
		34.918499, 29.378101, 27.740334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169395, 28.896950, 28.081442>,  <34.335201, 29.695038, 27.962397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169395, 28.896950, 28.081442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566532, 28.933453, 28.050621>,  <34.804813, 28.955355, 28.032129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566532, 28.933453, 28.050621>,  <34.169395, 28.896950, 28.081442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566532, 28.933453, 28.050621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114916, -0.554057, 0.824509,
		0.032553, -0.827461, -0.560578,
		0.992842, 0.091259, -0.077052,
		34.864384, 28.960831, 28.027506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385780, 28.235996, 28.092865>,  <34.169395, 28.896950, 28.081442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385780, 28.235996, 28.092865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720406, 28.432987, 28.188889>,  <34.921181, 28.551182, 28.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720406, 28.432987, 28.188889>,  <34.385780, 28.235996, 28.092865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720406, 28.432987, 28.188889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121038, -0.593470, 0.795703,
		0.534332, -0.636600, -0.556084,
		0.836564, 0.492477, 0.240057,
		34.971375, 28.580730, 28.260906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868195, 27.734676, 28.114513>,  <34.385780, 28.235996, 28.092865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868195, 27.734676, 28.114513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005970, 28.044895, 28.326130>,  <35.088634, 28.231026, 28.453100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005970, 28.044895, 28.326130>,  <34.868195, 27.734676, 28.114513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005970, 28.044895, 28.326130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123895, -0.596150, 0.793256,
		0.930596, -0.207686, -0.301426,
		0.344443, 0.775546, 0.529043,
		35.109303, 28.277559, 28.484842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357395, 27.483110, 28.534405>,  <34.868195, 27.734676, 28.114513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357395, 27.483110, 28.534405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277180, 27.823673, 28.728268>,  <35.229050, 28.028011, 28.844585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277180, 27.823673, 28.728268>,  <35.357395, 27.483110, 28.534405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277180, 27.823673, 28.728268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285178, -0.422549, 0.860306,
		0.937260, 0.310741, -0.158063,
		-0.200543, 0.851406, 0.484655,
		35.217018, 28.079096, 28.873665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820965, 27.508968, 29.095259>,  <35.357395, 27.483110, 28.534405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820965, 27.508968, 29.095259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561138, 27.793354, 29.203030>,  <35.405243, 27.963985, 29.267693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561138, 27.793354, 29.203030>,  <35.820965, 27.508968, 29.095259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561138, 27.793354, 29.203030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082044, -0.286753, 0.954485,
		0.755865, 0.642107, 0.127935,
		-0.649567, 0.710965, 0.269428,
		35.366268, 28.006643, 29.283857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179714, 28.048283, 29.514151>,  <35.820965, 27.508968, 29.095259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179714, 28.048283, 29.514151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788486, 28.013626, 29.589905>,  <35.553749, 27.992832, 29.635357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788486, 28.013626, 29.589905>,  <36.179714, 28.048283, 29.514151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788486, 28.013626, 29.589905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207113, -0.500139, 0.840812,
		0.021869, 0.861600, 0.507117,
		-0.978073, -0.086643, 0.189386,
		35.495064, 27.987633, 29.646721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006420, 28.314363, 30.266993>,  <36.179714, 28.048283, 29.514151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006420, 28.314363, 30.266993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695885, 28.083412, 30.165855>,  <35.509563, 27.944841, 30.105173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695885, 28.083412, 30.165855>,  <36.006420, 28.314363, 30.266993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695885, 28.083412, 30.165855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102145, -0.511078, 0.853443,
		-0.621983, 0.636735, 0.455747,
		-0.776340, -0.577380, -0.252842,
		35.462982, 27.910198, 30.090002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628029, 28.153208, 30.909515>,  <36.006420, 28.314363, 30.266993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628029, 28.153208, 30.909515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516373, 27.859539, 30.661945>,  <35.449379, 27.683338, 30.513403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516373, 27.859539, 30.661945>,  <35.628029, 28.153208, 30.909515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516373, 27.859539, 30.661945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046508, -0.633452, 0.772383,
		-0.959122, 0.244391, 0.142679,
		-0.279144, -0.734174, -0.618924,
		35.432629, 27.639286, 30.476269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038177, 27.825508, 31.167645>,  <35.628029, 28.153208, 30.909515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038177, 27.825508, 31.167645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138233, 27.539261, 30.906776>,  <35.198265, 27.367512, 30.750256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138233, 27.539261, 30.906776>,  <35.038177, 27.825508, 31.167645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138233, 27.539261, 30.906776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058288, -0.683489, 0.727630,
		-0.966455, -0.143993, -0.212677,
		0.250137, -0.715618, -0.652168,
		35.213276, 27.324575, 30.711126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557041, 27.325964, 31.311981>,  <35.038177, 27.825508, 31.167645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557041, 27.325964, 31.311981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872841, 27.138660, 31.153275>,  <35.062321, 27.026278, 31.058050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872841, 27.138660, 31.153275>,  <34.557041, 27.325964, 31.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872841, 27.138660, 31.153275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081840, -0.721008, 0.688077,
		-0.608270, -0.510766, -0.607558,
		0.789500, -0.468260, -0.396766,
		35.109692, 26.998182, 31.034245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404633, 26.715090, 31.259270>,  <34.557041, 27.325964, 31.311981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404633, 26.715090, 31.259270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799809, 26.656948, 31.237926>,  <35.036915, 26.622063, 31.225121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799809, 26.656948, 31.237926>,  <34.404633, 26.715090, 31.259270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799809, 26.656948, 31.237926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083462, -0.790167, 0.607183,
		-0.130418, -0.595407, -0.792769,
		0.987940, -0.145354, -0.053358,
		35.096191, 26.613342, 31.221918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511864, 25.978983, 31.061094>,  <34.404633, 26.715090, 31.259270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511864, 25.978983, 31.061094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858059, 26.081238, 31.233410>,  <35.065777, 26.142590, 31.336800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858059, 26.081238, 31.233410>,  <34.511864, 25.978983, 31.061094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858059, 26.081238, 31.233410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028928, -0.833040, 0.552456,
		0.500093, -0.490606, -0.713591,
		0.865489, 0.255636, 0.430790,
		35.117706, 26.157928, 31.362646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913994, 25.376577, 30.947676>,  <34.511864, 25.978983, 31.061094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913994, 25.376577, 30.947676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062782, 25.601048, 31.243439>,  <35.152054, 25.735729, 31.420897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062782, 25.601048, 31.243439>,  <34.913994, 25.376577, 30.947676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062782, 25.601048, 31.243439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030772, -0.788672, 0.614044,
		0.927734, -0.251159, -0.276095,
		0.371971, 0.561174, 0.739406,
		35.174374, 25.769400, 31.465261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283958, 24.836554, 31.370846>,  <34.913994, 25.376577, 30.947676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283958, 24.836554, 31.370846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237232, 25.161667, 31.599140>,  <35.209194, 25.356735, 31.736116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237232, 25.161667, 31.599140>,  <35.283958, 24.836554, 31.370846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237232, 25.161667, 31.599140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100626, -0.562026, 0.820976,
		0.988042, 0.153337, -0.016131,
		-0.116820, 0.812782, 0.570735,
		35.202187, 25.405502, 31.770361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810055, 24.805847, 31.819208>,  <35.283958, 24.836554, 31.370846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810055, 24.805847, 31.819208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502983, 25.016155, 31.965755>,  <35.318741, 25.142340, 32.053684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502983, 25.016155, 31.965755>,  <35.810055, 24.805847, 31.819208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502983, 25.016155, 31.965755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007248, -0.578800, 0.815437,
		0.640789, 0.623342, 0.448146,
		-0.767683, 0.525771, 0.366371,
		35.272678, 25.173887, 32.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902878, 24.849566, 32.617249>,  <35.810055, 24.805847, 31.819208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902878, 24.849566, 32.617249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517582, 24.942589, 32.563446>,  <35.286404, 24.998404, 32.531162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517582, 24.942589, 32.563446>,  <35.902878, 24.849566, 32.617249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517582, 24.942589, 32.563446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224927, -0.424298, 0.877142,
		0.146915, 0.875150, 0.461008,
		-0.963236, 0.232559, -0.134509,
		35.228611, 25.012356, 32.523094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696247, 25.013941, 33.208939>,  <35.902878, 24.849566, 32.617249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696247, 25.013941, 33.208939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337215, 24.950550, 33.044384>,  <35.121796, 24.912516, 32.945652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337215, 24.950550, 33.044384>,  <35.696247, 25.013941, 33.208939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337215, 24.950550, 33.044384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296381, -0.473888, 0.829210,
		-0.326362, 0.866207, 0.378381,
		-0.897578, -0.158478, -0.411387,
		35.067944, 24.903008, 32.920967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150642, 25.279512, 33.700314>,  <35.696247, 25.013941, 33.208939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150642, 25.279512, 33.700314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955654, 25.023949, 33.462265>,  <34.838661, 24.870611, 33.319435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955654, 25.023949, 33.462265>,  <35.150642, 25.279512, 33.700314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955654, 25.023949, 33.462265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423238, -0.423258, 0.801076,
		-0.763703, 0.642379, -0.064084,
		-0.487470, -0.638907, -0.595123,
		34.809414, 24.832277, 33.283730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606628, 25.088375, 34.105148>,  <35.150642, 25.279512, 33.700314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606628, 25.088375, 34.105148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593903, 24.811047, 33.817177>,  <34.586266, 24.644650, 33.644394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593903, 24.811047, 33.817177>,  <34.606628, 25.088375, 34.105148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593903, 24.811047, 33.817177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539679, -0.594350, 0.596233,
		-0.841269, 0.407501, -0.355259,
		-0.031818, -0.693319, -0.719928,
		34.584358, 24.603050, 33.601200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997669, 24.859528, 34.088295>,  <34.606628, 25.088375, 34.105148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997669, 24.859528, 34.088295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213306, 24.562717, 33.928909>,  <34.342690, 24.384630, 33.833279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213306, 24.562717, 33.928909>,  <33.997669, 24.859528, 34.088295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213306, 24.562717, 33.928909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254077, -0.594333, 0.763029,
		-0.803010, -0.310102, -0.508933,
		0.539092, -0.742028, -0.398465,
		34.375034, 24.340109, 33.809368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582230, 24.271118, 33.925434>,  <33.997669, 24.859528, 34.088295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582230, 24.271118, 33.925434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955029, 24.152424, 34.008698>,  <34.178707, 24.081207, 34.058655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955029, 24.152424, 34.008698>,  <33.582230, 24.271118, 33.925434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955029, 24.152424, 34.008698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358737, -0.672911, 0.646915,
		-0.051888, -0.677597, -0.733600,
		0.931995, -0.296736, 0.208163,
		34.234627, 24.063402, 34.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551395, 23.542194, 33.917812>,  <33.582230, 24.271118, 33.925434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551395, 23.542194, 33.917812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893158, 23.611069, 34.113907>,  <34.098217, 23.652393, 34.231564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893158, 23.611069, 34.113907>,  <33.551395, 23.542194, 33.917812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893158, 23.611069, 34.113907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224005, -0.729249, 0.646543,
		0.468832, -0.662229, -0.584507,
		0.854411, 0.172188, 0.490238,
		34.149483, 23.662725, 34.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997749, 22.928547, 33.898788>,  <33.551395, 23.542194, 33.917812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997749, 22.928547, 33.898788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172562, 23.127193, 34.198753>,  <34.277451, 23.246382, 34.378735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172562, 23.127193, 34.198753>,  <33.997749, 22.928547, 33.898788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172562, 23.127193, 34.198753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031646, -0.841728, 0.538974,
		0.898889, -0.211817, -0.383578,
		0.437032, 0.496617, 0.749916,
		34.303673, 23.276178, 34.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542873, 22.524378, 34.057079>,  <33.997749, 22.928547, 33.898788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542873, 22.524378, 34.057079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447224, 22.761017, 34.365063>,  <34.389835, 22.903000, 34.549850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447224, 22.761017, 34.365063>,  <34.542873, 22.524378, 34.057079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447224, 22.761017, 34.365063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043197, -0.798657, 0.600234,
		0.970028, 0.110271, 0.216534,
		-0.239125, 0.591598, 0.769956,
		34.375484, 22.938496, 34.596050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985229, 22.295849, 34.521732>,  <34.542873, 22.524378, 34.057079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985229, 22.295849, 34.521732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652687, 22.457150, 34.674694>,  <34.453159, 22.553930, 34.766472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652687, 22.457150, 34.674694>,  <34.985229, 22.295849, 34.521732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652687, 22.457150, 34.674694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068157, -0.756893, 0.649975,
		0.551542, 0.514299, 0.656733,
		-0.831358, 0.403249, 0.382405,
		34.403278, 22.578125, 34.789417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068260, 22.294991, 35.246975>,  <34.985229, 22.295849, 34.521732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068260, 22.294991, 35.246975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688492, 22.256111, 35.127537>,  <34.460632, 22.232784, 35.055874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688492, 22.256111, 35.127537>,  <35.068260, 22.294991, 35.246975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688492, 22.256111, 35.127537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151394, -0.691396, 0.706436,
		-0.275113, 0.715908, 0.641707,
		-0.949417, -0.097199, -0.298596,
		34.403667, 22.226952, 35.037956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660736, 22.050501, 35.848984>,  <35.068260, 22.294991, 35.246975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660736, 22.050501, 35.848984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447826, 21.924103, 35.534828>,  <34.320080, 21.848265, 35.346336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447826, 21.924103, 35.534828>,  <34.660736, 22.050501, 35.848984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447826, 21.924103, 35.534828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440703, -0.688683, 0.575758,
		-0.722819, 0.652583, 0.227308,
		-0.532273, -0.315993, -0.785388,
		34.288143, 21.829306, 35.299213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893936, 22.195641, 36.045013>,  <34.660736, 22.050501, 35.848984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893936, 22.195641, 36.045013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006783, 21.891090, 35.811531>,  <34.074490, 21.708361, 35.671440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006783, 21.891090, 35.811531>,  <33.893936, 22.195641, 36.045013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006783, 21.891090, 35.811531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409079, -0.645806, 0.644662,
		-0.867792, 0.056911, -0.493658,
		0.282119, -0.761377, -0.583706,
		34.091419, 21.662678, 35.636417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634480, 22.422203, 36.651051>,  <33.893936, 22.195641, 36.045013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634480, 22.422203, 36.651051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331779, 22.160950, 36.661987>,  <33.150158, 22.004198, 36.668549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331779, 22.160950, 36.661987>,  <33.634480, 22.422203, 36.651051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331779, 22.160950, 36.661987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338227, 0.355406, -0.871372,
		0.559403, -0.668659, -0.489860,
		-0.756750, -0.653132, 0.027344,
		33.104755, 21.965010, 36.670189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800774, 23.127415, 36.769413>,  <33.634480, 22.422203, 36.651051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800774, 23.127415, 36.769413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565304, 22.864761, 36.958008>,  <33.424023, 22.707170, 37.071163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565304, 22.864761, 36.958008>,  <33.800774, 23.127415, 36.769413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565304, 22.864761, 36.958008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783672, -0.606638, 0.133599,
		0.198295, 0.448136, 0.871696,
		-0.588674, -0.656632, 0.471485,
		33.388702, 22.667772, 37.099453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164814, 23.390772, 36.941505>,  <33.800774, 23.127415, 36.769413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164814, 23.390772, 36.941505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933929, 23.432999, 37.265404>,  <32.795399, 23.458334, 37.459743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933929, 23.432999, 37.265404>,  <33.164814, 23.390772, 36.941505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933929, 23.432999, 37.265404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107788, 0.992782, -0.052593,
		-0.809450, 0.056923, -0.584423,
		-0.577210, 0.105565, 0.809743,
		32.760765, 23.464668, 37.508327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598888, 23.791115, 36.820175>,  <33.164814, 23.390772, 36.941505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598888, 23.791115, 36.820175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703724, 23.833313, 37.203880>,  <32.766624, 23.858631, 37.434101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703724, 23.833313, 37.203880>,  <32.598888, 23.791115, 36.820175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703724, 23.833313, 37.203880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081157, 0.988076, -0.130838,
		-0.961626, 0.112142, 0.250400,
		0.262087, 0.105496, 0.959261,
		32.782349, 23.864962, 37.491657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381958, 24.377918, 37.002354>,  <32.598888, 23.791115, 36.820175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381958, 24.377918, 37.002354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708031, 24.309700, 37.223763>,  <32.903675, 24.268768, 37.356609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708031, 24.309700, 37.223763>,  <32.381958, 24.377918, 37.002354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708031, 24.309700, 37.223763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406694, 0.848994, -0.337358,
		-0.412404, 0.500124, 0.761445,
		0.815183, -0.170547, 0.553526,
		32.952587, 24.258535, 37.389820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589451, 24.933392, 37.399372>,  <32.381958, 24.377918, 37.002354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589451, 24.933392, 37.399372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954727, 24.783451, 37.335411>,  <33.173893, 24.693487, 37.297035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954727, 24.783451, 37.335411>,  <32.589451, 24.933392, 37.399372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954727, 24.783451, 37.335411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260497, 0.838657, -0.478326,
		0.313405, 0.395148, 0.863502,
		0.913191, -0.374850, -0.159905,
		33.228683, 24.670996, 37.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990055, 25.522999, 37.326492>,  <32.589451, 24.933392, 37.399372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990055, 25.522999, 37.326492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212097, 25.243279, 37.146343>,  <33.345322, 25.075447, 37.038254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212097, 25.243279, 37.146343>,  <32.990055, 25.522999, 37.326492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212097, 25.243279, 37.146343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429725, 0.704709, -0.564554,
		0.712175, 0.119851, 0.691695,
		0.555106, -0.699300, -0.450373,
		33.378628, 25.033489, 37.011230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721355, 25.648451, 37.335770>,  <32.990055, 25.522999, 37.326492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721355, 25.648451, 37.335770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593754, 25.458618, 37.007622>,  <33.517193, 25.344719, 36.810734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593754, 25.458618, 37.007622>,  <33.721355, 25.648451, 37.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593754, 25.458618, 37.007622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305318, 0.767992, -0.563001,
		0.897228, -0.430073, -0.100094,
		-0.319003, -0.474580, -0.820373,
		33.498055, 25.316244, 36.761509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269367, 25.596092, 36.893414>,  <33.721355, 25.648451, 37.335770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269367, 25.596092, 36.893414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953575, 25.550835, 36.652107>,  <33.764099, 25.523680, 36.507324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953575, 25.550835, 36.652107>,  <34.269367, 25.596092, 36.893414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953575, 25.550835, 36.652107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427440, 0.604000, -0.672666,
		0.440477, -0.788912, -0.428482,
		-0.789477, -0.113144, -0.603261,
		33.716732, 25.516891, 36.471130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594608, 25.502052, 36.267471>,  <34.269367, 25.596092, 36.893414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594608, 25.502052, 36.267471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219070, 25.608643, 36.180233>,  <33.993748, 25.672596, 36.127892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219070, 25.608643, 36.180233>,  <34.594608, 25.502052, 36.267471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219070, 25.608643, 36.180233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341564, 0.640347, -0.687960,
		-0.043669, -0.720379, -0.692204,
		-0.938843, 0.266474, -0.218092,
		33.937416, 25.688585, 36.114807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567852, 25.571636, 35.566418>,  <34.594608, 25.502052, 36.267471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567852, 25.571636, 35.566418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241241, 25.773724, 35.678158>,  <34.045273, 25.894976, 35.745201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241241, 25.773724, 35.678158>,  <34.567852, 25.571636, 35.566418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241241, 25.773724, 35.678158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187210, 0.689458, -0.699714,
		-0.546107, -0.519040, -0.657545,
		-0.816529, 0.505218, 0.279348,
		33.996284, 25.925289, 35.761963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145638, 25.615824, 34.962566>,  <34.567852, 25.571636, 35.566418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145638, 25.615824, 34.962566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025322, 25.901348, 35.215546>,  <33.953133, 26.072662, 35.367332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025322, 25.901348, 35.215546>,  <34.145638, 25.615824, 34.962566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025322, 25.901348, 35.215546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199191, 0.695560, -0.690304,
		-0.932656, -0.081659, -0.351404,
		-0.300793, 0.713812, 0.632452,
		33.935085, 26.115492, 35.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860245, 26.022532, 34.537716>,  <34.145638, 25.615824, 34.962566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860245, 26.022532, 34.537716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908485, 26.265553, 34.851746>,  <33.937431, 26.411366, 35.040161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908485, 26.265553, 34.851746>,  <33.860245, 26.022532, 34.537716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908485, 26.265553, 34.851746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148697, 0.770865, -0.619400,
		-0.981501, 0.191441, 0.002630,
		0.120606, 0.607551, 0.785071,
		33.944668, 26.447817, 35.087265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484180, 26.630083, 34.381908>,  <33.860245, 26.022532, 34.537716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484180, 26.630083, 34.381908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713905, 26.768799, 34.678532>,  <33.851738, 26.852028, 34.856506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713905, 26.768799, 34.678532>,  <33.484180, 26.630083, 34.381908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713905, 26.768799, 34.678532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085869, 0.875324, -0.475851,
		-0.814122, 0.336962, 0.472929,
		0.574310, 0.346790, 0.741555,
		33.886200, 26.872835, 34.900997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178978, 27.284286, 34.587536>,  <33.484180, 26.630083, 34.381908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178978, 27.284286, 34.587536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561108, 27.290489, 34.705589>,  <33.790386, 27.294210, 34.776421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561108, 27.290489, 34.705589>,  <33.178978, 27.284286, 34.587536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561108, 27.290489, 34.705589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156620, 0.820305, -0.550063,
		-0.250633, 0.571716, 0.781232,
		0.955329, 0.015507, 0.295138,
		33.847706, 27.295141, 34.794132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275539, 27.955761, 34.899342>,  <33.178978, 27.284286, 34.587536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275539, 27.955761, 34.899342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630749, 27.808872, 34.788658>,  <33.843872, 27.720739, 34.722248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630749, 27.808872, 34.788658>,  <33.275539, 27.955761, 34.899342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630749, 27.808872, 34.788658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161860, 0.812936, -0.559407,
		0.430374, 0.451976, 0.781342,
		0.888020, -0.367222, -0.276710,
		33.897156, 27.698706, 34.705647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799652, 28.501837, 35.023521>,  <33.275539, 27.955761, 34.899342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799652, 28.501837, 35.023521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954342, 28.252666, 34.751518>,  <34.047153, 28.103165, 34.588318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954342, 28.252666, 34.751518>,  <33.799652, 28.501837, 35.023521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954342, 28.252666, 34.751518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187610, 0.775102, -0.603341,
		0.902911, 0.105749, 0.416616,
		0.386723, -0.622925, -0.680008,
		34.070358, 28.065788, 34.547516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575153, 28.741430, 34.954380>,  <33.799652, 28.501837, 35.023521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575153, 28.741430, 34.954380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516769, 28.510464, 34.633060>,  <34.481739, 28.371883, 34.440269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516769, 28.510464, 34.633060>,  <34.575153, 28.741430, 34.954380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516769, 28.510464, 34.633060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494882, 0.660479, -0.564677,
		0.856614, -0.479956, 0.189350,
		-0.145958, -0.577417, -0.803297,
		34.472980, 28.337238, 34.392071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207050, 28.858335, 34.610077>,  <34.575153, 28.741430, 34.954380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207050, 28.858335, 34.610077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973602, 28.730621, 34.311428>,  <34.833534, 28.653994, 34.132236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973602, 28.730621, 34.311428>,  <35.207050, 28.858335, 34.610077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973602, 28.730621, 34.311428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421253, 0.667015, -0.614522,
		0.694220, -0.673161, -0.254778,
		-0.583613, -0.319287, -0.746627,
		34.798515, 28.634836, 34.087440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644012, 28.951508, 33.983170>,  <35.207050, 28.858335, 34.610077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644012, 28.951508, 33.983170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280819, 28.889137, 33.827606>,  <35.062901, 28.851715, 33.734268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280819, 28.889137, 33.827606>,  <35.644012, 28.951508, 33.983170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280819, 28.889137, 33.827606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287280, 0.443989, -0.848731,
		0.305005, -0.882362, -0.358343,
		-0.907988, -0.155923, -0.388904,
		35.008423, 28.842360, 33.710934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727882, 28.662788, 33.349342>,  <35.644012, 28.951508, 33.983170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727882, 28.662788, 33.349342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369965, 28.840446, 33.331112>,  <35.155212, 28.947041, 33.320175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369965, 28.840446, 33.331112>,  <35.727882, 28.662788, 33.349342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369965, 28.840446, 33.331112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290202, 0.500990, -0.815348,
		-0.339299, -0.742795, -0.577175,
		-0.894795, 0.444144, -0.045575,
		35.101524, 28.973690, 33.317440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602722, 28.599258, 32.657017>,  <35.727882, 28.662788, 33.349342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602722, 28.599258, 32.657017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358032, 28.880356, 32.802311>,  <35.211216, 29.049015, 32.889488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358032, 28.880356, 32.802311>,  <35.602722, 28.599258, 32.657017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358032, 28.880356, 32.802311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118904, 0.535635, -0.836036,
		-0.782082, -0.468236, -0.411222,
		-0.611727, 0.702744, 0.363236,
		35.174515, 29.091179, 32.911282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085464, 28.772285, 32.150341>,  <35.602722, 28.599258, 32.657017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085464, 28.772285, 32.150341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075035, 29.106834, 32.369358>,  <35.068779, 29.307564, 32.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075035, 29.106834, 32.369358>,  <35.085464, 28.772285, 32.150341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075035, 29.106834, 32.369358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210432, 0.540044, -0.814905,
		-0.977261, 0.093976, -0.190078,
		-0.026069, 0.836374, 0.547540,
		35.067215, 29.357746, 32.533619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865421, 29.252890, 31.679344>,  <35.085464, 28.772285, 32.150341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865421, 29.252890, 31.679344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983028, 29.492783, 31.977036>,  <35.053593, 29.636719, 32.155651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983028, 29.492783, 31.977036>,  <34.865421, 29.252890, 31.679344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983028, 29.492783, 31.977036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201985, 0.722074, -0.661673,
		-0.934214, 0.344866, 0.091165,
		0.294016, 0.599730, 0.744230,
		35.071232, 29.672701, 32.200306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616405, 29.925301, 31.489925>,  <34.865421, 29.252890, 31.679344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616405, 29.925301, 31.489925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907688, 29.978642, 31.758827>,  <35.082458, 30.010647, 31.920168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907688, 29.978642, 31.758827>,  <34.616405, 29.925301, 31.489925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907688, 29.978642, 31.758827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307545, 0.813000, -0.494415,
		-0.612475, 0.566787, 0.551023,
		0.728210, 0.133353, 0.672256,
		35.126152, 30.018648, 31.960505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636463, 30.688755, 31.649986>,  <34.616405, 29.925301, 31.489925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636463, 30.688755, 31.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993385, 30.537224, 31.748199>,  <35.207539, 30.446306, 31.807127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993385, 30.537224, 31.748199>,  <34.636463, 30.688755, 31.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993385, 30.537224, 31.748199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445001, 0.646577, -0.619607,
		0.075966, 0.662140, 0.745520,
		0.892302, -0.378826, 0.245535,
		35.261078, 30.423576, 31.821859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158092, 31.272570, 31.794155>,  <34.636463, 30.688755, 31.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158092, 31.272570, 31.794155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361217, 30.943359, 31.692364>,  <35.483093, 30.745832, 31.631289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361217, 30.943359, 31.692364>,  <35.158092, 31.272570, 31.794155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361217, 30.943359, 31.692364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286036, 0.439725, -0.851367,
		0.812597, 0.359541, 0.458711,
		0.507808, -0.823026, -0.254477,
		35.513561, 30.696451, 31.616020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853134, 31.532158, 31.541494>,  <35.158092, 31.272570, 31.794155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853134, 31.532158, 31.541494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788624, 31.163853, 31.399406>,  <35.749916, 30.942869, 31.314154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788624, 31.163853, 31.399406>,  <35.853134, 31.532158, 31.541494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788624, 31.163853, 31.399406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287355, 0.300526, -0.909457,
		0.944148, -0.248752, 0.216117,
		-0.161280, -0.920764, -0.355221,
		35.740238, 30.887623, 31.292841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444592, 31.467684, 31.099636>,  <35.853134, 31.532158, 31.541494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444592, 31.467684, 31.099636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187908, 31.184326, 30.982067>,  <36.033897, 31.014311, 30.911526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187908, 31.184326, 30.982067>,  <36.444592, 31.467684, 31.099636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187908, 31.184326, 30.982067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348886, 0.071662, -0.934421,
		0.683001, -0.702170, 0.201162,
		-0.641707, -0.708394, -0.293922,
		35.995396, 30.971807, 30.893890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914192, 30.924026, 30.636913>,  <36.444592, 31.467684, 31.099636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914192, 30.924026, 30.636913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524529, 30.892597, 30.552204>,  <36.290730, 30.873739, 30.501379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524529, 30.892597, 30.552204>,  <36.914192, 30.924026, 30.636913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524529, 30.892597, 30.552204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213935, -0.020108, -0.976641,
		0.072479, -0.996706, 0.036398,
		-0.974155, -0.078572, -0.211773,
		36.232281, 30.869026, 30.488672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895222, 30.343437, 30.122492>,  <36.914192, 30.924026, 30.636913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895222, 30.343437, 30.122492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561584, 30.562294, 30.094425>,  <36.361401, 30.693607, 30.077585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561584, 30.562294, 30.094425>,  <36.895222, 30.343437, 30.122492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561584, 30.562294, 30.094425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125072, 0.063694, -0.990101,
		-0.537255, -0.834614, -0.121559,
		-0.834095, 0.547140, -0.070167,
		36.311356, 30.726437, 30.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487167, 30.106335, 29.563251>,  <36.895222, 30.343437, 30.122492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487167, 30.106335, 29.563251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348068, 30.478569, 29.608997>,  <36.264606, 30.701910, 29.636446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348068, 30.478569, 29.608997>,  <36.487167, 30.106335, 29.563251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348068, 30.478569, 29.608997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001091, 0.122382, -0.992483,
		-0.937586, -0.345012, -0.043574,
		-0.347751, 0.930585, 0.114367,
		36.243744, 30.757744, 29.643307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920807, 30.120941, 29.143841>,  <36.487167, 30.106335, 29.563251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920807, 30.120941, 29.143841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029465, 30.499752, 29.212372>,  <36.094658, 30.727037, 29.253490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029465, 30.499752, 29.212372>,  <35.920807, 30.120941, 29.143841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029465, 30.499752, 29.212372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066498, 0.159128, -0.985016,
		-0.960098, 0.278966, -0.019750,
		0.271643, 0.947025, 0.171329,
		36.110958, 30.783859, 29.263771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512146, 30.614578, 28.737307>,  <35.920807, 30.120941, 29.143841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512146, 30.614578, 28.737307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818592, 30.851921, 28.836098>,  <36.002460, 30.994328, 28.895372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818592, 30.851921, 28.836098>,  <35.512146, 30.614578, 28.737307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818592, 30.851921, 28.836098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056917, 0.320129, -0.945663,
		-0.640181, 0.738541, 0.211483,
		0.766113, 0.593358, 0.246976,
		36.048428, 31.029928, 28.910191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460690, 31.256922, 28.403749>,  <35.512146, 30.614578, 28.737307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460690, 31.256922, 28.403749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842102, 31.282333, 28.521564>,  <36.070950, 31.297581, 28.592253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842102, 31.282333, 28.521564>,  <35.460690, 31.256922, 28.403749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842102, 31.282333, 28.521564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240185, 0.429962, -0.870312,
		-0.181929, 0.900609, 0.394722,
		0.953527, 0.063529, 0.294535,
		36.128159, 31.301392, 28.609924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646152, 32.006897, 28.417950>,  <35.460690, 31.256922, 28.403749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646152, 32.006897, 28.417950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007793, 31.839951, 28.381268>,  <36.224777, 31.739782, 28.359259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007793, 31.839951, 28.381268>,  <35.646152, 32.006897, 28.417950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007793, 31.839951, 28.381268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254175, 0.697752, -0.669730,
		0.343510, 0.582193, 0.736921,
		0.904100, -0.417366, -0.091705,
		36.279022, 31.714741, 28.353756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191242, 32.561962, 28.473888>,  <35.646152, 32.006897, 28.417950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191242, 32.561962, 28.473888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360645, 32.259350, 28.274570>,  <36.462288, 32.077782, 28.154980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360645, 32.259350, 28.274570>,  <36.191242, 32.561962, 28.473888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360645, 32.259350, 28.274570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360550, 0.645381, -0.673414,
		0.831051, 0.105536, 0.546092,
		0.423507, -0.756535, -0.498293,
		36.487698, 32.032391, 28.125082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959190, 32.760342, 28.328772>,  <36.191242, 32.561962, 28.473888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959190, 32.760342, 28.328772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835621, 32.475674, 28.076393>,  <36.761478, 32.304874, 27.924965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835621, 32.475674, 28.076393>,  <36.959190, 32.760342, 28.328772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835621, 32.475674, 28.076393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419595, 0.493367, -0.761925,
		0.853527, -0.500116, 0.146202,
		-0.308919, -0.711669, -0.630948,
		36.742947, 32.262173, 27.887108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501781, 32.838799, 27.928532>,  <36.959190, 32.760342, 28.328772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501781, 32.838799, 27.928532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214024, 32.659523, 27.716267>,  <37.041370, 32.551956, 27.588907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214024, 32.659523, 27.716267>,  <37.501781, 32.838799, 27.928532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214024, 32.659523, 27.716267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314534, 0.470966, -0.824172,
		0.619310, -0.759813, -0.197838,
		-0.719391, -0.448191, -0.530661,
		36.998207, 32.525066, 27.557068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855942, 32.510616, 27.396893>,  <37.501781, 32.838799, 27.928532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855942, 32.510616, 27.396893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478573, 32.562057, 27.274635>,  <37.252151, 32.592922, 27.201281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478573, 32.562057, 27.274635>,  <37.855942, 32.510616, 27.396893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478573, 32.562057, 27.274635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328935, 0.479544, -0.813535,
		0.041942, -0.868043, -0.494715,
		-0.943421, 0.128608, -0.305643,
		37.195545, 32.600639, 27.182941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853168, 32.432510, 26.599516>,  <37.855942, 32.510616, 27.396893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853168, 32.432510, 26.599516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492245, 32.592354, 26.664200>,  <37.275688, 32.688259, 26.703011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492245, 32.592354, 26.664200>,  <37.853168, 32.432510, 26.599516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492245, 32.592354, 26.664200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066809, 0.500219, -0.863318,
		-0.425876, -0.768178, -0.478051,
		-0.902312, 0.399604, 0.161710,
		37.221550, 32.712234, 26.712713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409584, 32.399467, 25.916107>,  <37.853168, 32.432510, 26.599516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409584, 32.399467, 25.916107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270527, 32.705105, 26.133472>,  <37.187092, 32.888489, 26.263891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270527, 32.705105, 26.133472>,  <37.409584, 32.399467, 25.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270527, 32.705105, 26.133472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189572, 0.510314, -0.838834,
		-0.918261, -0.394634, -0.032557,
		-0.347646, 0.764097, 0.543413,
		37.166233, 32.934334, 26.296495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022511, 32.699474, 25.524483>,  <37.409584, 32.399467, 25.916107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022511, 32.699474, 25.524483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057674, 33.017540, 25.764481>,  <37.078773, 33.208378, 25.908480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057674, 33.017540, 25.764481>,  <37.022511, 32.699474, 25.524483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057674, 33.017540, 25.764481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119471, 0.606393, -0.786139,
		-0.988938, -0.002572, 0.148308,
		0.087911, 0.795161, 0.599992,
		37.084049, 33.256088, 25.944479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414810, 33.008965, 25.359463>,  <37.022511, 32.699474, 25.524483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414810, 33.008965, 25.359463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638126, 33.294384, 25.528774>,  <36.772114, 33.465637, 25.630362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638126, 33.294384, 25.528774>,  <36.414810, 33.008965, 25.359463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638126, 33.294384, 25.528774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261673, 0.635594, -0.726325,
		-0.787301, 0.294738, 0.541560,
		0.558288, 0.713547, 0.423279,
		36.805614, 33.508450, 25.655758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984608, 33.653191, 25.455153>,  <36.414810, 33.008965, 25.359463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984608, 33.653191, 25.455153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375038, 33.739433, 25.443874>,  <36.609295, 33.791180, 25.437107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375038, 33.739433, 25.443874>,  <35.984608, 33.653191, 25.455153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375038, 33.739433, 25.443874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175686, 0.705575, -0.686512,
		-0.128121, 0.675040, 0.726571,
		0.976074, 0.215605, -0.028196,
		36.667862, 33.804115, 25.435415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001316, 34.437641, 25.330851>,  <35.984608, 33.653191, 25.455153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001316, 34.437641, 25.330851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360615, 34.277473, 25.258385>,  <36.576195, 34.181374, 25.214905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360615, 34.277473, 25.258385>,  <36.001316, 34.437641, 25.330851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360615, 34.277473, 25.258385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082461, 0.558437, -0.825438,
		0.431693, 0.726505, 0.534632,
		0.898243, -0.400423, -0.181165,
		36.630089, 34.157345, 25.204035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968327, 34.989479, 25.794996>,  <36.001316, 34.437641, 25.330851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968327, 34.989479, 25.794996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668949, 35.248520, 25.737801>,  <35.489323, 35.403946, 25.703484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668949, 35.248520, 25.737801>,  <35.968327, 34.989479, 25.794996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668949, 35.248520, 25.737801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292787, -0.129189, 0.947410,
		0.595072, 0.750947, 0.286300,
		-0.748442, 0.647602, -0.142991,
		35.444416, 35.442799, 25.694902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855980, 35.526524, 26.402365>,  <35.968327, 34.989479, 25.794996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855980, 35.526524, 26.402365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493004, 35.517662, 26.234528>,  <35.275219, 35.512344, 26.133825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493004, 35.517662, 26.234528>,  <35.855980, 35.526524, 26.402365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493004, 35.517662, 26.234528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388615, -0.335475, 0.858158,
		-0.159775, 0.941788, 0.295814,
		-0.907442, -0.022154, -0.419594,
		35.220772, 35.511017, 26.108650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375401, 35.805920, 26.922699>,  <35.855980, 35.526524, 26.402365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375401, 35.805920, 26.922699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155209, 35.573277, 26.683132>,  <35.023094, 35.433689, 26.539392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155209, 35.573277, 26.683132>,  <35.375401, 35.805920, 26.922699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155209, 35.573277, 26.683132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485567, -0.360523, 0.796397,
		-0.679117, 0.729213, -0.083952,
		-0.550477, -0.581611, -0.598919,
		34.990067, 35.398792, 26.503456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646156, 35.881664, 27.041376>,  <35.375401, 35.805920, 26.922699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646156, 35.881664, 27.041376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672886, 35.529861, 26.852905>,  <34.688923, 35.318779, 26.739822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672886, 35.529861, 26.852905>,  <34.646156, 35.881664, 27.041376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672886, 35.529861, 26.852905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560619, -0.423738, 0.711444,
		-0.825373, 0.216610, -0.521382,
		0.066823, -0.879503, -0.471178,
		34.692932, 35.266010, 26.711552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083115, 35.503372, 27.103100>,  <34.646156, 35.881664, 27.041376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083115, 35.503372, 27.103100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327652, 35.198460, 27.018074>,  <34.474377, 35.015514, 26.967058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327652, 35.198460, 27.018074>,  <34.083115, 35.503372, 27.103100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327652, 35.198460, 27.018074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407504, -0.533496, 0.741163,
		-0.678377, -0.366485, -0.636783,
		0.611346, -0.762280, -0.212567,
		34.511055, 34.969776, 26.954304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726101, 34.982643, 27.276690>,  <34.083115, 35.503372, 27.103100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726101, 34.982643, 27.276690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086487, 34.812401, 27.242954>,  <34.302719, 34.710255, 27.222713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086487, 34.812401, 27.242954>,  <33.726101, 34.982643, 27.276690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086487, 34.812401, 27.242954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247373, -0.663573, 0.706029,
		-0.356457, -0.615247, -0.703142,
		0.900969, -0.425607, -0.084340,
		34.356777, 34.684719, 27.217651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538528, 34.331314, 27.087894>,  <33.726101, 34.982643, 27.276690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538528, 34.331314, 27.087894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896931, 34.353039, 27.264175>,  <34.111973, 34.366074, 27.369944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896931, 34.353039, 27.264175>,  <33.538528, 34.331314, 27.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896931, 34.353039, 27.264175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313006, -0.626712, 0.713624,
		0.314953, -0.777355, -0.544539,
		0.896009, 0.054314, 0.440702,
		34.165733, 34.369331, 27.396385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763969, 33.640503, 27.218176>,  <33.538528, 34.331314, 27.087894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763969, 33.640503, 27.218176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987823, 33.838486, 27.484058>,  <34.122135, 33.957275, 27.643587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987823, 33.838486, 27.484058>,  <33.763969, 33.640503, 27.218176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987823, 33.838486, 27.484058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304183, -0.623409, 0.720301,
		0.770899, -0.605296, -0.198323,
		0.559632, 0.494952, 0.664707,
		34.155712, 33.986973, 27.683470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164974, 33.137981, 27.541082>,  <33.763969, 33.640503, 27.218176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164974, 33.137981, 27.541082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159748, 33.447548, 27.794346>,  <34.156612, 33.633286, 27.946304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159748, 33.447548, 27.794346>,  <34.164974, 33.137981, 27.541082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159748, 33.447548, 27.794346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221991, -0.619654, 0.752827,
		0.974961, -0.130718, 0.179898,
		-0.013067, 0.773913, 0.633157,
		34.155827, 33.679722, 27.984293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615620, 32.922535, 28.170282>,  <34.164974, 33.137981, 27.541082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615620, 32.922535, 28.170282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370670, 33.221672, 28.272842>,  <34.223701, 33.401154, 28.334377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370670, 33.221672, 28.272842>,  <34.615620, 32.922535, 28.170282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370670, 33.221672, 28.272842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161255, -0.435657, 0.885550,
		0.773950, 0.500940, 0.387376,
		-0.612371, 0.747838, 0.256398,
		34.186958, 33.446022, 28.349762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681808, 32.937531, 28.850122>,  <34.615620, 32.922535, 28.170282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681808, 32.937531, 28.850122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330734, 33.123470, 28.803501>,  <34.120090, 33.235035, 28.775528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330734, 33.123470, 28.803501>,  <34.681808, 32.937531, 28.850122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330734, 33.123470, 28.803501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392740, -0.558301, 0.730791,
		0.274633, 0.687181, 0.672577,
		-0.877686, 0.464847, -0.116555,
		34.067429, 33.262924, 28.768536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502087, 33.102428, 29.544659>,  <34.681808, 32.937531, 28.850122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502087, 33.102428, 29.544659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172768, 33.143013, 29.321274>,  <33.975174, 33.167366, 29.187243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172768, 33.143013, 29.321274>,  <34.502087, 33.102428, 29.544659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172768, 33.143013, 29.321274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542476, -0.430163, 0.721582,
		-0.167015, 0.897031, 0.409196,
		-0.823302, 0.101464, -0.558461,
		33.925777, 33.173450, 29.153736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143177, 33.531715, 29.851435>,  <34.502087, 33.102428, 29.544659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143177, 33.531715, 29.851435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871269, 33.327152, 29.641148>,  <33.708126, 33.204414, 29.514975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871269, 33.327152, 29.641148>,  <34.143177, 33.531715, 29.851435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871269, 33.327152, 29.641148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440577, -0.288324, 0.850154,
		-0.586354, 0.809524, -0.029323,
		-0.679765, -0.511410, -0.525717,
		33.667339, 33.173729, 29.483433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475773, 33.782360, 30.064409>,  <34.143177, 33.531715, 29.851435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475773, 33.782360, 30.064409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428135, 33.413960, 29.916046>,  <33.399551, 33.192921, 29.827028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428135, 33.413960, 29.916046>,  <33.475773, 33.782360, 30.064409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428135, 33.413960, 29.916046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431492, -0.288435, 0.854763,
		-0.894221, 0.261843, -0.363053,
		-0.119097, -0.921001, -0.370907,
		33.392406, 33.137657, 29.804773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849518, 33.479385, 30.350302>,  <33.475773, 33.782360, 30.064409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849518, 33.479385, 30.350302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995674, 33.158806, 30.160915>,  <33.083366, 32.966457, 30.047283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995674, 33.158806, 30.160915>,  <32.849518, 33.479385, 30.350302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995674, 33.158806, 30.160915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545349, -0.596514, 0.588868,
		-0.754377, 0.043038, -0.655029,
		0.365391, -0.801448, -0.473467,
		33.105293, 32.918373, 30.018875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286701, 33.090702, 30.265167>,  <32.849518, 33.479385, 30.350302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286701, 33.090702, 30.265167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595470, 32.836823, 30.250736>,  <32.780731, 32.684494, 30.242079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595470, 32.836823, 30.250736>,  <32.286701, 33.090702, 30.265167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595470, 32.836823, 30.250736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520784, -0.663888, 0.536691,
		-0.364585, -0.395495, -0.843008,
		0.771921, -0.634695, -0.036076,
		32.827045, 32.646416, 30.239914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960358, 32.415165, 30.300980>,  <32.286701, 33.090702, 30.265167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960358, 32.415165, 30.300980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341736, 32.333206, 30.389488>,  <32.570564, 32.284031, 30.442593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341736, 32.333206, 30.389488>,  <31.960358, 32.415165, 30.300980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341736, 32.333206, 30.389488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299592, -0.727455, 0.617296,
		0.034480, -0.654848, -0.754974,
		0.953444, -0.204900, 0.221270,
		32.627769, 32.271736, 30.455870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015671, 31.665194, 30.300940>,  <31.960358, 32.415165, 30.300980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015671, 31.665194, 30.300940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319832, 31.799313, 30.523418>,  <32.502331, 31.879784, 30.656906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319832, 31.799313, 30.523418>,  <32.015671, 31.665194, 30.300940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319832, 31.799313, 30.523418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132476, -0.758333, 0.638264,
		0.635792, -0.559023, -0.532223,
		0.760407, 0.335297, 0.556199,
		32.547955, 31.899902, 30.690279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370144, 30.997702, 30.520222>,  <32.015671, 31.665194, 30.300940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370144, 30.997702, 30.520222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493927, 31.281483, 30.773495>,  <32.568195, 31.451752, 30.925459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493927, 31.281483, 30.773495>,  <32.370144, 30.997702, 30.520222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493927, 31.281483, 30.773495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029339, -0.672672, 0.739359,
		0.950462, -0.210221, -0.228976,
		0.309455, 0.709450, 0.633181,
		32.586761, 31.494318, 30.963449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947639, 30.696669, 31.064556>,  <32.370144, 30.997702, 30.520222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947639, 30.696669, 31.064556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763214, 31.001884, 31.245750>,  <32.652557, 31.185013, 31.354467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763214, 31.001884, 31.245750>,  <32.947639, 30.696669, 31.064556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763214, 31.001884, 31.245750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044484, -0.529714, 0.847009,
		0.886252, 0.370373, 0.278174,
		-0.461062, 0.763038, 0.452984,
		32.624897, 31.230795, 31.381645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368206, 30.888861, 31.617842>,  <32.947639, 30.696669, 31.064556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368206, 30.888861, 31.617842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989502, 30.994560, 31.691399>,  <32.762280, 31.057980, 31.735533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989502, 30.994560, 31.691399>,  <33.368206, 30.888861, 31.617842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989502, 30.994560, 31.691399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005592, -0.584614, 0.811292,
		0.321887, 0.767072, 0.554968,
		-0.946761, 0.264248, 0.183890,
		32.705475, 31.073835, 31.746565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312340, 30.982525, 32.370453>,  <33.368206, 30.888861, 31.617842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312340, 30.982525, 32.370453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936939, 30.929668, 32.242859>,  <32.711697, 30.897955, 32.166302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936939, 30.929668, 32.242859>,  <33.312340, 30.982525, 32.370453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936939, 30.929668, 32.242859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241343, -0.409614, 0.879756,
		-0.246912, 0.902638, 0.352533,
		-0.938503, -0.132141, -0.318984,
		32.655388, 30.890026, 32.147163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961605, 30.975969, 32.939697>,  <33.312340, 30.982525, 32.370453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961605, 30.975969, 32.939697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709999, 30.799969, 32.683342>,  <32.559036, 30.694368, 32.529530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709999, 30.799969, 32.683342>,  <32.961605, 30.975969, 32.939697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709999, 30.799969, 32.683342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285735, -0.635845, 0.716977,
		-0.722978, 0.634114, 0.274232,
		-0.629014, -0.440001, -0.640890,
		32.521294, 30.667969, 32.491074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423283, 30.835781, 33.341740>,  <32.961605, 30.975969, 32.939697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423283, 30.835781, 33.341740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415073, 30.579567, 33.034676>,  <32.410149, 30.425838, 32.850437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415073, 30.579567, 33.034676>,  <32.423283, 30.835781, 33.341740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415073, 30.579567, 33.034676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231582, -0.743891, 0.626895,
		-0.972599, 0.190642, -0.133068,
		-0.020525, -0.640533, -0.767656,
		32.408916, 30.387407, 32.804379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874691, 30.324169, 33.695702>,  <32.423283, 30.835781, 33.341740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874691, 30.324169, 33.695702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038792, 30.177364, 33.361755>,  <32.137253, 30.089281, 33.161388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038792, 30.177364, 33.361755>,  <31.874691, 30.324169, 33.695702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038792, 30.177364, 33.361755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105862, -0.928424, 0.356122,
		-0.905806, -0.057720, -0.419742,
		0.410253, -0.367012, -0.834862,
		32.161865, 30.067261, 33.111298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466904, 29.737936, 33.398205>,  <31.874691, 30.324169, 33.695702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466904, 29.737936, 33.398205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831099, 29.680595, 33.243046>,  <32.049614, 29.646191, 33.149948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831099, 29.680595, 33.243046>,  <31.466904, 29.737936, 33.398205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831099, 29.680595, 33.243046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113370, -0.988584, 0.099238,
		-0.397698, -0.046379, -0.916343,
		0.910485, -0.143353, -0.387900,
		32.104244, 29.637590, 33.126675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343777, 29.062914, 33.005054>,  <31.466904, 29.737936, 33.398205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343777, 29.062914, 33.005054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739080, 29.115944, 33.035423>,  <31.976263, 29.147762, 33.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739080, 29.115944, 33.035423>,  <31.343777, 29.062914, 33.005054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739080, 29.115944, 33.035423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112872, -0.968495, 0.221986,
		0.102956, -0.210811, -0.972090,
		0.988261, 0.132576, 0.075918,
		32.035561, 29.155716, 33.058197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731358, 28.668257, 32.456890>,  <31.343777, 29.062914, 33.005054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731358, 28.668257, 32.456890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981134, 28.729046, 32.763348>,  <32.131001, 28.765518, 32.947224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981134, 28.729046, 32.763348>,  <31.731358, 28.668257, 32.456890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981134, 28.729046, 32.763348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094863, -0.988384, 0.118737,
		0.775291, -0.001465, -0.631602,
		0.624440, 0.151971, 0.766146,
		32.168465, 28.774637, 32.993191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263367, 28.200836, 32.356514>,  <31.731358, 28.668257, 32.456890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263367, 28.200836, 32.356514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211189, 28.254677, 32.749424>,  <32.179882, 28.286982, 32.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211189, 28.254677, 32.749424>,  <32.263367, 28.200836, 32.356514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211189, 28.254677, 32.749424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098218, -0.984114, 0.147898,
		0.986578, 0.115770, 0.115154,
		-0.130446, 0.134603, 0.982276,
		32.172054, 28.295057, 33.044106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537300, 27.685612, 32.664658>,  <32.263367, 28.200836, 32.356514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537300, 27.685612, 32.664658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388958, 27.812382, 33.013832>,  <32.299953, 27.888445, 33.223339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388958, 27.812382, 33.013832>,  <32.537300, 27.685612, 32.664658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388958, 27.812382, 33.013832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042107, -0.944740, 0.325105,
		0.927736, 0.083810, 0.363706,
		-0.370855, 0.316926, 0.872940,
		32.277702, 27.907459, 33.275715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922001, 27.365932, 33.221142>,  <32.537300, 27.685612, 32.664658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922001, 27.365932, 33.221142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584984, 27.453854, 33.417843>,  <32.382774, 27.506607, 33.535862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584984, 27.453854, 33.417843>,  <32.922001, 27.365932, 33.221142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584984, 27.453854, 33.417843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099777, -0.960837, 0.258526,
		0.529315, 0.168753, 0.831473,
		-0.842538, 0.219804, 0.491748,
		32.332222, 27.519794, 33.565369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935135, 26.941471, 33.798145>,  <32.922001, 27.365932, 33.221142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935135, 26.941471, 33.798145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546169, 27.029232, 33.766468>,  <32.312790, 27.081888, 33.747459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546169, 27.029232, 33.766468>,  <32.935135, 26.941471, 33.798145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546169, 27.029232, 33.766468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231061, -0.952528, 0.198248,
		-0.031941, 0.211078, 0.976947,
		-0.972415, 0.219402, -0.079196,
		32.254444, 27.095053, 33.742710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645775, 26.656013, 34.364342>,  <32.935135, 26.941471, 33.798145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645775, 26.656013, 34.364342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363655, 26.716709, 34.087349>,  <32.194386, 26.753126, 33.921154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363655, 26.716709, 34.087349>,  <32.645775, 26.656013, 34.364342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363655, 26.716709, 34.087349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313617, -0.942823, 0.112825,
		-0.635768, 0.296749, 0.712558,
		-0.705297, 0.151740, -0.692482,
		32.152065, 26.762232, 33.879604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985424, 26.533928, 34.668476>,  <32.645775, 26.656013, 34.364342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985424, 26.533928, 34.668476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903894, 26.470318, 34.282074>,  <31.854977, 26.432152, 34.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903894, 26.470318, 34.282074>,  <31.985424, 26.533928, 34.668476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903894, 26.470318, 34.282074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238259, -0.948995, 0.206496,
		-0.949573, 0.272249, 0.155537,
		-0.203822, -0.159025, -0.966006,
		31.842749, 26.422609, 33.992271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404369, 26.007826, 34.741074>,  <31.985424, 26.533928, 34.668476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404369, 26.007826, 34.741074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553070, 26.008503, 34.369740>,  <31.642290, 26.008909, 34.146938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553070, 26.008503, 34.369740>,  <31.404369, 26.007826, 34.741074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553070, 26.008503, 34.369740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237602, -0.966516, -0.096912,
		-0.897411, 0.256601, -0.358900,
		0.371751, 0.001695, -0.928331,
		31.664595, 26.009012, 34.091240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884174, 25.726601, 34.327869>,  <31.404369, 26.007826, 34.741074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884174, 25.726601, 34.327869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230520, 25.678364, 34.133659>,  <31.438328, 25.649422, 34.017132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230520, 25.678364, 34.133659>,  <30.884174, 25.726601, 34.327869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230520, 25.678364, 34.133659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239338, -0.952095, -0.190346,
		-0.439311, 0.281018, -0.853249,
		0.865866, -0.120594, -0.485524,
		31.490280, 25.642185, 33.988003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662720, 25.421875, 33.707695>,  <30.884174, 25.726601, 34.327869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662720, 25.421875, 33.707695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050507, 25.328899, 33.676430>,  <31.283178, 25.273113, 33.657673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050507, 25.328899, 33.676430>,  <30.662720, 25.421875, 33.707695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050507, 25.328899, 33.676430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242906, -0.953971, -0.175888,
		-0.033680, 0.189503, -0.981302,
		0.969465, -0.232441, -0.078161,
		31.341347, 25.259167, 33.652981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776407, 25.024176, 33.019920>,  <30.662720, 25.421875, 33.707695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776407, 25.024176, 33.019920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081404, 24.961437, 33.271000>,  <31.264402, 24.923794, 33.421646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081404, 24.961437, 33.271000>,  <30.776407, 25.024176, 33.019920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081404, 24.961437, 33.271000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096068, -0.986863, -0.129893,
		0.639824, 0.038741, -0.767544,
		0.762493, -0.156845, 0.627697,
		31.310152, 24.914383, 33.459309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282450, 24.443935, 32.836296>,  <30.776407, 25.024176, 33.019920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282450, 24.443935, 32.836296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003725, 24.400688, 32.552673>,  <29.836491, 24.374739, 32.382500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003725, 24.400688, 32.552673>,  <30.282450, 24.443935, 32.836296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003725, 24.400688, 32.552673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314564, 0.842362, -0.437580,
		0.644592, -0.527955, -0.552959,
		-0.696814, -0.108120, -0.709056,
		29.794682, 24.368252, 32.339958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610928, 24.554222, 32.180752>,  <30.282450, 24.443935, 32.836296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610928, 24.554222, 32.180752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223269, 24.624847, 32.111958>,  <29.990673, 24.667223, 32.070683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223269, 24.624847, 32.111958>,  <30.610928, 24.554222, 32.180752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223269, 24.624847, 32.111958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244699, 0.772957, -0.585372,
		0.029579, -0.609395, -0.792315,
		-0.969148, 0.176564, -0.171981,
		29.932524, 24.677816, 32.060364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502964, 24.467688, 31.466190>,  <30.610928, 24.554222, 32.180752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502964, 24.467688, 31.466190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187326, 24.682220, 31.585976>,  <29.997944, 24.810940, 31.657846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187326, 24.682220, 31.585976>,  <30.502964, 24.467688, 31.466190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187326, 24.682220, 31.585976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227272, 0.707822, -0.668831,
		-0.570684, -0.459710, -0.680431,
		-0.789093, 0.536335, 0.299463,
		29.950598, 24.843121, 31.675816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219095, 24.603010, 30.882935>,  <30.502964, 24.467688, 31.466190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219095, 24.603010, 30.882935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090487, 24.874222, 31.147327>,  <30.013321, 25.036949, 31.305964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090487, 24.874222, 31.147327>,  <30.219095, 24.603010, 30.882935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090487, 24.874222, 31.147327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266259, 0.734621, -0.624050,
		-0.908696, -0.024654, -0.416730,
		-0.321524, 0.678030, 0.660983,
		29.994030, 25.077631, 31.345623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789577, 25.064762, 30.499811>,  <30.219095, 24.603010, 30.882935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789577, 25.064762, 30.499811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925299, 25.243603, 30.830864>,  <30.006731, 25.350906, 31.029495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925299, 25.243603, 30.830864>,  <29.789577, 25.064762, 30.499811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925299, 25.243603, 30.830864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294320, 0.785195, -0.544835,
		-0.893448, 0.428452, 0.134828,
		0.339302, 0.447099, 0.827633,
		30.027090, 25.377733, 31.079153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564402, 25.685331, 30.384609>,  <29.789577, 25.064762, 30.499811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564402, 25.685331, 30.384609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854452, 25.724030, 30.657322>,  <30.028482, 25.747250, 30.820950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854452, 25.724030, 30.657322>,  <29.564402, 25.685331, 30.384609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854452, 25.724030, 30.657322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349475, 0.801400, -0.485413,
		-0.593343, 0.590253, 0.547307,
		0.725129, 0.096746, 0.681784,
		30.071991, 25.753054, 30.861856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534628, 26.348137, 30.413935>,  <29.564402, 25.685331, 30.384609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534628, 26.348137, 30.413935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876657, 26.251144, 30.597260>,  <30.081875, 26.192949, 30.707254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876657, 26.251144, 30.597260>,  <29.534628, 26.348137, 30.413935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876657, 26.251144, 30.597260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440672, 0.805636, -0.395927,
		-0.273228, 0.540513, 0.795734,
		0.855076, -0.242479, 0.458311,
		30.133181, 26.178400, 30.734753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761427, 26.995901, 30.574770>,  <29.534628, 26.348137, 30.413935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761427, 26.995901, 30.574770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098707, 26.784794, 30.615711>,  <30.301075, 26.658131, 30.640276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098707, 26.784794, 30.615711>,  <29.761427, 26.995901, 30.574770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098707, 26.784794, 30.615711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527038, 0.773964, -0.351015,
		0.106038, 0.349919, 0.930759,
		0.843201, -0.527766, 0.102351,
		30.351667, 26.626465, 30.646416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169500, 27.382431, 30.972866>,  <29.761427, 26.995901, 30.574770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169500, 27.382431, 30.972866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408674, 27.134773, 30.769245>,  <30.552179, 26.986179, 30.647072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408674, 27.134773, 30.769245>,  <30.169500, 27.382431, 30.972866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408674, 27.134773, 30.769245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550259, 0.778866, -0.300971,
		0.582827, -0.100149, 0.806401,
		0.597936, -0.619143, -0.509052,
		30.588055, 26.949030, 30.616529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844551, 27.740475, 30.954496>,  <30.169500, 27.382431, 30.972866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844551, 27.740475, 30.954496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877777, 27.465973, 30.665455>,  <30.897713, 27.301271, 30.492029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877777, 27.465973, 30.665455>,  <30.844551, 27.740475, 30.954496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877777, 27.465973, 30.665455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586839, 0.619736, -0.521102,
		0.805432, -0.380767, 0.454198,
		0.083065, -0.686253, -0.722604,
		30.902697, 27.260098, 30.448673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518456, 27.655865, 30.955235>,  <30.844551, 27.740475, 30.954496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518456, 27.655865, 30.955235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378162, 27.529953, 30.602440>,  <31.293987, 27.454407, 30.390762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378162, 27.529953, 30.602440>,  <31.518456, 27.655865, 30.955235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378162, 27.529953, 30.602440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599101, 0.648452, -0.469667,
		0.719768, -0.693127, -0.038849,
		-0.350731, -0.314777, -0.881988,
		31.272943, 27.435520, 30.337843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104839, 27.685131, 30.560427>,  <31.518456, 27.655865, 30.955235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104839, 27.685131, 30.560427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810499, 27.651264, 30.291695>,  <31.633896, 27.630943, 30.130455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810499, 27.651264, 30.291695>,  <32.104839, 27.685131, 30.560427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810499, 27.651264, 30.291695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355196, 0.796436, -0.489414,
		0.576506, -0.598767, -0.555984,
		-0.735851, -0.084667, -0.671829,
		31.589745, 27.625864, 30.090145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360664, 27.684471, 29.908951>,  <32.104839, 27.685131, 30.560427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360664, 27.684471, 29.908951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980860, 27.801739, 29.864265>,  <31.752977, 27.872099, 29.837454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980860, 27.801739, 29.864265>,  <32.360664, 27.684471, 29.908951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980860, 27.801739, 29.864265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303341, 0.767001, -0.565415,
		-0.080077, -0.570756, -0.817206,
		-0.949511, 0.293168, -0.111714,
		31.696007, 27.889688, 29.830751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226120, 27.758825, 29.177736>,  <32.360664, 27.684471, 29.908951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226120, 27.758825, 29.177736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940683, 27.979137, 29.350906>,  <31.769421, 28.111324, 29.454809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940683, 27.979137, 29.350906>,  <32.226120, 27.758825, 29.177736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940683, 27.979137, 29.350906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302439, 0.799621, -0.518785,
		-0.631912, -0.239269, -0.737182,
		-0.713595, 0.550779, 0.432926,
		31.726604, 28.144371, 29.480783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193478, 28.264822, 28.776314>,  <32.226120, 27.758825, 29.177736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193478, 28.264822, 28.776314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975744, 28.421005, 29.073296>,  <31.845104, 28.514715, 29.251484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975744, 28.421005, 29.073296>,  <32.193478, 28.264822, 28.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975744, 28.421005, 29.073296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131107, 0.913791, -0.384444,
		-0.828559, -0.111925, -0.548601,
		-0.544335, 0.390460, 0.742455,
		31.812443, 28.538143, 29.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688299, 28.682024, 28.553537>,  <32.193478, 28.264822, 28.776314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688299, 28.682024, 28.553537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755934, 28.818039, 28.923573>,  <31.796515, 28.899647, 29.145594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755934, 28.818039, 28.923573>,  <31.688299, 28.682024, 28.553537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755934, 28.818039, 28.923573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151127, 0.918557, -0.365258,
		-0.973946, 0.201565, 0.103927,
		0.169086, 0.340035, 0.925087,
		31.806660, 28.920050, 29.201099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339882, 29.360615, 28.553654>,  <31.688299, 28.682024, 28.553537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339882, 29.360615, 28.553654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570414, 29.392403, 28.878990>,  <31.708733, 29.411476, 29.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570414, 29.392403, 28.878990>,  <31.339882, 29.360615, 28.553654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570414, 29.392403, 28.878990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176412, 0.959696, -0.218776,
		-0.797948, 0.269571, 0.539082,
		0.576331, 0.079471, 0.813343,
		31.743313, 29.416245, 29.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115299, 30.028696, 28.949575>,  <31.339882, 29.360615, 28.553654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115299, 30.028696, 28.949575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493773, 29.901218, 28.972088>,  <31.720858, 29.824732, 28.985596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493773, 29.901218, 28.972088>,  <31.115299, 30.028696, 28.949575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493773, 29.901218, 28.972088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309500, 0.840271, -0.445146,
		0.094573, 0.438610, 0.893687,
		0.946185, -0.318695, 0.056283,
		31.777628, 29.805611, 28.988974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445017, 30.643873, 28.921602>,  <31.115299, 30.028696, 28.949575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445017, 30.643873, 28.921602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756800, 30.394653, 28.895504>,  <31.943869, 30.245121, 28.879845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756800, 30.394653, 28.895504>,  <31.445017, 30.643873, 28.921602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756800, 30.394653, 28.895504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520838, 0.702393, -0.485153,
		0.348100, 0.344174, 0.871992,
		0.779458, -0.623048, -0.065244,
		31.990637, 30.207739, 28.875931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995100, 30.970173, 29.241455>,  <31.445017, 30.643873, 28.921602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995100, 30.970173, 29.241455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153370, 30.689930, 29.003937>,  <32.248333, 30.521784, 28.861425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153370, 30.689930, 29.003937>,  <31.995100, 30.970173, 29.241455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153370, 30.689930, 29.003937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338650, 0.712302, -0.614770,
		0.853672, 0.042162, 0.519101,
		0.395676, -0.700606, -0.593794,
		32.272072, 30.479748, 28.825798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675396, 31.127007, 29.141970>,  <31.995100, 30.970173, 29.241455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675396, 31.127007, 29.141970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550926, 30.912174, 28.828354>,  <32.476246, 30.783276, 28.640184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550926, 30.912174, 28.828354>,  <32.675396, 31.127007, 29.141970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550926, 30.912174, 28.828354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229850, 0.757972, -0.610448,
		0.922140, -0.370164, -0.112410,
		-0.311170, -0.537081, -0.784039,
		32.457577, 30.751049, 28.593142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131821, 31.360765, 28.644878>,  <32.675396, 31.127007, 29.141970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131821, 31.360765, 28.644878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845100, 31.191692, 28.423054>,  <32.673069, 31.090248, 28.289959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845100, 31.191692, 28.423054>,  <33.131821, 31.360765, 28.644878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845100, 31.191692, 28.423054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034875, 0.772592, -0.633944,
		0.696405, -0.473752, -0.539054,
		-0.716801, -0.422682, -0.554559,
		32.630058, 31.064888, 28.256685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366375, 31.440159, 27.923845>,  <33.131821, 31.360765, 28.644878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366375, 31.440159, 27.923845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971680, 31.375759, 27.915558>,  <32.734863, 31.337118, 27.910585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971680, 31.375759, 27.915558>,  <33.366375, 31.440159, 27.923845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971680, 31.375759, 27.915558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104829, 0.729460, -0.675943,
		0.123940, -0.664806, -0.736662,
		-0.986737, -0.161000, -0.020719,
		32.675659, 31.327459, 27.909342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138649, 31.379440, 27.270035>,  <33.366375, 31.440159, 27.923845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138649, 31.379440, 27.270035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789436, 31.448898, 27.452312>,  <32.579906, 31.490572, 27.561680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789436, 31.448898, 27.452312>,  <33.138649, 31.379440, 27.270035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789436, 31.448898, 27.452312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199230, 0.725911, -0.658301,
		-0.445104, -0.665508, -0.599151,
		-0.873035, 0.173644, 0.455695,
		32.527527, 31.500992, 27.589022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726715, 31.768221, 26.767708>,  <33.138649, 31.379440, 27.270035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726715, 31.768221, 26.767708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516689, 31.824333, 27.103477>,  <32.390675, 31.858000, 27.304939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516689, 31.824333, 27.103477>,  <32.726715, 31.768221, 26.767708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516689, 31.824333, 27.103477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423347, 0.812587, -0.400600,
		-0.738301, -0.565707, -0.367271,
		-0.525062, 0.140281, 0.839424,
		32.359169, 31.866417, 27.355305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038437, 31.895636, 26.483871>,  <32.726715, 31.768221, 26.767708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038437, 31.895636, 26.483871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066746, 32.029537, 26.859730>,  <32.083733, 32.109879, 27.085245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066746, 32.029537, 26.859730>,  <32.038437, 31.895636, 26.483871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066746, 32.029537, 26.859730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529673, 0.810839, -0.248972,
		-0.845244, -0.480083, 0.234697,
		0.070774, 0.334755, 0.939644,
		32.087978, 32.129963, 27.141623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438911, 32.114841, 26.564531>,  <32.038437, 31.895636, 26.483871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438911, 32.114841, 26.564531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654596, 32.299061, 26.846565>,  <31.784008, 32.409592, 27.015785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654596, 32.299061, 26.846565>,  <31.438911, 32.114841, 26.564531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654596, 32.299061, 26.846565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560784, 0.820970, -0.107377,
		-0.628307, -0.337502, 0.700945,
		0.539214, 0.460544, 0.705086,
		31.816360, 32.437225, 27.058092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956255, 32.380257, 27.133486>,  <31.438911, 32.114841, 26.564531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956255, 32.380257, 27.133486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282774, 32.604469, 27.189293>,  <31.478685, 32.738995, 27.222778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282774, 32.604469, 27.189293>,  <30.956255, 32.380257, 27.133486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282774, 32.604469, 27.189293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553916, 0.828105, -0.086131,
		-0.163816, -0.006973, 0.986466,
		0.816298, 0.560529, 0.139519,
		31.527662, 32.772629, 27.231148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729361, 32.877975, 27.613838>,  <30.956255, 32.380257, 27.133486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729361, 32.877975, 27.613838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049784, 33.019516, 27.420719>,  <31.242037, 33.104443, 27.304848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049784, 33.019516, 27.420719>,  <30.729361, 32.877975, 27.613838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049784, 33.019516, 27.420719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484901, 0.856515, -0.176785,
		0.350966, 0.375723, 0.857703,
		0.801058, 0.353856, -0.482797,
		31.290100, 33.125671, 27.275881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791792, 33.537292, 27.878901>,  <30.729361, 32.877975, 27.613838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791792, 33.537292, 27.878901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989885, 33.532581, 27.531429>,  <31.108742, 33.529755, 27.322947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989885, 33.532581, 27.531429>,  <30.791792, 33.537292, 27.878901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989885, 33.532581, 27.531429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592318, 0.726895, -0.347538,
		0.635531, 0.686648, 0.353008,
		0.495236, -0.011779, -0.868679,
		31.138456, 33.529049, 27.270826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849218, 34.290993, 27.727814>,  <30.791792, 33.537292, 27.878901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849218, 34.290993, 27.727814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913733, 34.081139, 27.393448>,  <30.952442, 33.955227, 27.192829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913733, 34.081139, 27.393448>,  <30.849218, 34.290993, 27.727814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913733, 34.081139, 27.393448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477119, 0.699992, -0.531384,
		0.863912, 0.484534, -0.137412,
		0.161286, -0.524631, -0.835912,
		30.962118, 33.923748, 27.142673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907360, 34.789776, 27.203825>,  <30.849218, 34.290993, 27.727814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907360, 34.789776, 27.203825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843061, 34.459927, 26.986877>,  <30.804483, 34.262016, 26.856709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843061, 34.459927, 26.986877>,  <30.907360, 34.789776, 27.203825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843061, 34.459927, 26.986877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609573, 0.515131, -0.602545,
		0.776261, 0.233757, -0.585470,
		-0.160745, -0.824619, -0.542369,
		30.794838, 34.212540, 26.824167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917196, 34.982239, 26.522013>,  <30.907360, 34.789776, 27.203825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917196, 34.982239, 26.522013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710096, 34.641514, 26.490135>,  <30.585836, 34.437080, 26.471008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710096, 34.641514, 26.490135>,  <30.917196, 34.982239, 26.522013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710096, 34.641514, 26.490135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620969, 0.438240, -0.649879,
		0.588501, -0.286986, -0.755848,
		-0.517749, -0.851813, -0.079696,
		30.554771, 34.385971, 26.466227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712465, 34.945583, 25.837517>,  <30.917196, 34.982239, 26.522013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712465, 34.945583, 25.837517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490845, 34.655231, 26.000553>,  <30.357872, 34.481022, 26.098375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490845, 34.655231, 26.000553>,  <30.712465, 34.945583, 25.837517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490845, 34.655231, 26.000553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775776, 0.272588, -0.569094,
		0.301986, -0.631509, -0.714144,
		-0.554054, -0.725874, 0.407592,
		30.324629, 34.437469, 26.122829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465263, 34.588284, 25.304285>,  <30.712465, 34.945583, 25.837517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465263, 34.588284, 25.304285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211939, 34.489635, 25.597706>,  <30.059944, 34.430447, 25.773758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211939, 34.489635, 25.597706>,  <30.465263, 34.588284, 25.304285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211939, 34.489635, 25.597706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773069, 0.245459, -0.584906,
		-0.035807, -0.937512, -0.346106,
		-0.633311, -0.246620, 0.733550,
		30.021946, 34.415649, 25.817772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957985, 34.047161, 25.158375>,  <30.465263, 34.588284, 25.304285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957985, 34.047161, 25.158375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771837, 34.237003, 25.457222>,  <29.660149, 34.350910, 25.636530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771837, 34.237003, 25.457222>,  <29.957985, 34.047161, 25.158375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771837, 34.237003, 25.457222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841886, 0.023229, -0.539155,
		-0.273241, -0.879892, 0.388755,
		-0.465367, 0.474606, 0.747116,
		29.632227, 34.379387, 25.681356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283731, 33.743587, 25.183180>,  <29.957985, 34.047161, 25.158375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283731, 33.743587, 25.183180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227062, 34.084545, 25.384518>,  <29.193060, 34.289120, 25.505320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227062, 34.084545, 25.384518>,  <29.283731, 33.743587, 25.183180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227062, 34.084545, 25.384518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880572, 0.123779, -0.457463,
		-0.452242, -0.508041, 0.733056,
		-0.141673, 0.852393, 0.503345,
		29.184561, 34.340263, 25.535521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600735, 33.628212, 25.425928>,  <29.283731, 33.743587, 25.183180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600735, 33.628212, 25.425928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694479, 34.016766, 25.441330>,  <28.750725, 34.249897, 25.450571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694479, 34.016766, 25.441330>,  <28.600735, 33.628212, 25.425928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694479, 34.016766, 25.441330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848592, 0.223737, -0.479409,
		-0.474307, 0.079678, 0.876747,
		0.234359, 0.971387, 0.038506,
		28.764788, 34.308182, 25.452881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938265, 33.913769, 25.440231>,  <28.600735, 33.628212, 25.425928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938265, 33.913769, 25.440231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178503, 34.205460, 25.309078>,  <28.322647, 34.380474, 25.230387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178503, 34.205460, 25.309078>,  <27.938265, 33.913769, 25.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178503, 34.205460, 25.309078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762142, 0.398172, -0.510488,
		-0.241708, 0.556492, 0.794917,
		0.600597, 0.729229, -0.327885,
		28.358683, 34.424229, 25.210712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519691, 34.451942, 25.427637>,  <27.938265, 33.913769, 25.440231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519691, 34.451942, 25.427637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833334, 34.563854, 25.206043>,  <28.021519, 34.631001, 25.073086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833334, 34.563854, 25.206043>,  <27.519691, 34.451942, 25.427637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833334, 34.563854, 25.206043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620148, 0.318164, -0.717069,
		-0.024362, 0.905812, 0.422979,
		0.784106, 0.279779, -0.553986,
		28.068565, 34.647789, 25.039846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388075, 35.133713, 25.076647>,  <27.519691, 34.451942, 25.427637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388075, 35.133713, 25.076647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670710, 34.966782, 24.848061>,  <27.840290, 34.866623, 24.710909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670710, 34.966782, 24.848061>,  <27.388075, 35.133713, 25.076647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670710, 34.966782, 24.848061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377538, 0.460711, -0.803250,
		0.598496, 0.783317, 0.167977,
		0.706588, -0.417324, -0.571466,
		27.882687, 34.841583, 24.676620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129391, 35.359062, 25.765577>,  <27.388075, 35.133713, 25.076647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129391, 35.359062, 25.765577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784872, 35.394283, 25.565411>,  <26.578161, 35.415417, 25.445311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784872, 35.394283, 25.565411>,  <27.129391, 35.359062, 25.765577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784872, 35.394283, 25.565411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103106, 0.934093, 0.341818,
		0.497532, 0.346003, -0.795452,
		-0.861296, 0.088050, -0.500416,
		26.526484, 35.420700, 25.415285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258444, 35.959427, 25.277052>,  <27.129391, 35.359062, 25.765577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258444, 35.959427, 25.277052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883364, 35.887043, 25.395691>,  <26.658316, 35.843613, 25.466873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883364, 35.887043, 25.395691>,  <27.258444, 35.959427, 25.277052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883364, 35.887043, 25.395691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224989, 0.966761, -0.121463,
		-0.264757, -0.180627, -0.947247,
		-0.937701, -0.180962, 0.296596,
		26.602053, 35.832756, 25.484669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952000, 36.627792, 25.196993>,  <27.258444, 35.959427, 25.277052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952000, 36.627792, 25.196993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672941, 36.415325, 25.389305>,  <26.505507, 36.287846, 25.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672941, 36.415325, 25.389305>,  <26.952000, 36.627792, 25.196993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672941, 36.415325, 25.389305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577017, 0.814345, 0.062400,
		-0.424666, -0.233884, -0.874618,
		-0.697647, -0.531169, 0.480779,
		26.463648, 36.255974, 25.533539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307339, 37.010864, 25.067820>,  <26.952000, 36.627792, 25.196993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307339, 37.010864, 25.067820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213749, 36.771091, 25.374004>,  <26.157595, 36.627228, 25.557714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213749, 36.771091, 25.374004>,  <26.307339, 37.010864, 25.067820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213749, 36.771091, 25.374004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819867, 0.544818, 0.176043,
		-0.522565, -0.586387, -0.618932,
		-0.233976, -0.599436, 0.765462,
		26.143557, 36.591259, 25.603643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676710, 36.641968, 24.942198>,  <26.307339, 37.010864, 25.067820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676710, 36.641968, 24.942198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708836, 36.671665, 25.339798>,  <25.728111, 36.689484, 25.578358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708836, 36.671665, 25.339798>,  <25.676710, 36.641968, 24.942198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708836, 36.671665, 25.339798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749559, 0.661844, 0.011133,
		-0.657047, -0.745956, 0.108804,
		0.080316, 0.074240, 0.994001,
		25.732931, 36.693935, 25.637999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156912, 36.971951, 25.162043>,  <25.676710, 36.641968, 24.942198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156912, 36.971951, 25.162043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333008, 37.003841, 25.519775>,  <25.438665, 37.022976, 25.734415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333008, 37.003841, 25.519775>,  <25.156912, 36.971951, 25.162043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333008, 37.003841, 25.519775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533017, 0.824759, 0.188855,
		-0.722552, -0.559836, 0.405588,
		0.440241, 0.079728, 0.894333,
		25.465080, 37.027760, 25.788074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870983, 36.314270, 25.256666>,  <25.156912, 36.971951, 25.162043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870983, 36.314270, 25.256666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635780, 36.617199, 25.143032>,  <24.494659, 36.798958, 25.074852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635780, 36.617199, 25.143032>,  <24.870983, 36.314270, 25.256666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635780, 36.617199, 25.143032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533604, 0.099244, -0.839891,
		-0.607878, -0.645451, -0.462468,
		-0.588006, 0.757327, -0.284088,
		24.459379, 36.844398, 25.057806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813955, 36.250717, 24.462263>,  <24.870983, 36.314270, 25.256666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813955, 36.250717, 24.462263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698690, 36.624916, 24.544048>,  <24.629532, 36.849438, 24.593119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698690, 36.624916, 24.544048>,  <24.813955, 36.250717, 24.462263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698690, 36.624916, 24.544048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356115, 0.302898, -0.883988,
		-0.888902, -0.181918, -0.420428,
		-0.288161, 0.935499, 0.204463,
		24.612242, 36.905567, 24.605387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611841, 36.478828, 23.885551>,  <24.813955, 36.250717, 24.462263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611841, 36.478828, 23.885551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683855, 36.820549, 24.080593>,  <24.727064, 37.025581, 24.197618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683855, 36.820549, 24.080593>,  <24.611841, 36.478828, 23.885551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683855, 36.820549, 24.080593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528085, 0.334271, -0.780634,
		-0.829887, 0.398040, -0.390961,
		0.180037, 0.854299, 0.487606,
		24.737865, 37.076839, 24.226875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359196, 37.037148, 23.445654>,  <24.611841, 36.478828, 23.885551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359196, 37.037148, 23.445654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631119, 37.203430, 23.687332>,  <24.794271, 37.303200, 23.832338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631119, 37.203430, 23.687332>,  <24.359196, 37.037148, 23.445654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631119, 37.203430, 23.687332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474796, 0.378424, -0.794584,
		-0.558957, 0.827032, 0.059878,
		0.679806, 0.415708, 0.604194,
		24.835060, 37.328144, 23.868589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496422, 37.666206, 23.231701>,  <24.359196, 37.037148, 23.445654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496422, 37.666206, 23.231701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826523, 37.604267, 23.448948>,  <25.024584, 37.567104, 23.579296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826523, 37.604267, 23.448948>,  <24.496422, 37.666206, 23.231701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826523, 37.604267, 23.448948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544212, 0.475088, -0.691466,
		-0.150956, 0.866206, 0.476339,
		0.825255, -0.154849, 0.543118,
		25.074099, 37.557812, 23.611883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918688, 38.359138, 23.178741>,  <24.496422, 37.666206, 23.231701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918688, 38.359138, 23.178741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174952, 38.088528, 23.323994>,  <25.328709, 37.926159, 23.411146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174952, 38.088528, 23.323994>,  <24.918688, 38.359138, 23.178741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174952, 38.088528, 23.323994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735735, 0.405591, -0.542393,
		0.219662, 0.614658, 0.757591,
		0.640658, -0.676529, 0.363132,
		25.367149, 37.885571, 23.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423641, 38.757298, 23.409595>,  <24.918688, 38.359138, 23.178741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423641, 38.757298, 23.409595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551298, 38.391350, 23.310673>,  <25.627893, 38.171780, 23.251320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551298, 38.391350, 23.310673>,  <25.423641, 38.757298, 23.409595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551298, 38.391350, 23.310673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599099, 0.396955, -0.695347,
		0.734321, 0.073755, 0.674783,
		0.319144, -0.914870, -0.247306,
		25.647041, 38.116890, 23.236481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998590, 38.786301, 23.123880>,  <25.423641, 38.757298, 23.409595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998590, 38.786301, 23.123880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960922, 38.420658, 22.966125>,  <25.938322, 38.201271, 22.871473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960922, 38.420658, 22.966125>,  <25.998590, 38.786301, 23.123880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960922, 38.420658, 22.966125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498150, 0.299723, -0.813642,
		0.861962, -0.273083, 0.427138,
		-0.094168, -0.914107, -0.394386,
		25.932673, 38.146427, 22.847809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628370, 38.723019, 22.634779>,  <25.998590, 38.786301, 23.123880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628370, 38.723019, 22.634779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363337, 38.446075, 22.520500>,  <26.204317, 38.279911, 22.451933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363337, 38.446075, 22.520500>,  <26.628370, 38.723019, 22.634779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363337, 38.446075, 22.520500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140627, 0.259664, -0.955405,
		0.735668, -0.673212, -0.074685,
		-0.662583, -0.692358, -0.285698,
		26.164562, 38.238369, 22.434792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919382, 38.573219, 21.987812>,  <26.628370, 38.723019, 22.634779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919382, 38.573219, 21.987812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557369, 38.403294, 21.979343>,  <26.340160, 38.301338, 21.974262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557369, 38.403294, 21.979343>,  <26.919382, 38.573219, 21.987812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557369, 38.403294, 21.979343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051357, 0.158550, -0.986014,
		0.422228, -0.891289, -0.165310,
		-0.905034, -0.424813, -0.021171,
		26.285858, 38.275848, 21.972992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892790, 38.102646, 21.433037>,  <26.919382, 38.573219, 21.987812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892790, 38.102646, 21.433037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503641, 38.164967, 21.501446>,  <26.270153, 38.202358, 21.542492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503641, 38.164967, 21.501446>,  <26.892790, 38.102646, 21.433037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503641, 38.164967, 21.501446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183854, -0.071941, -0.980317,
		-0.140434, -0.985165, 0.098635,
		-0.972870, 0.155804, 0.171023,
		26.211781, 38.211708, 21.552753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453449, 37.508785, 21.158169>,  <26.892790, 38.102646, 21.433037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453449, 37.508785, 21.158169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223927, 37.835434, 21.183071>,  <26.086212, 38.031422, 21.198013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223927, 37.835434, 21.183071>,  <26.453449, 37.508785, 21.158169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223927, 37.835434, 21.183071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199950, -0.065971, -0.977583,
		-0.794208, -0.573391, 0.201138,
		-0.573806, 0.816622, 0.062255,
		26.051785, 38.080421, 21.201748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771891, 37.335499, 20.847897>,  <26.453449, 37.508785, 21.158169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771891, 37.335499, 20.847897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812649, 37.733406, 20.850838>,  <25.837105, 37.972149, 20.852602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812649, 37.733406, 20.850838>,  <25.771891, 37.335499, 20.847897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812649, 37.733406, 20.850838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215038, 0.029244, -0.976168,
		-0.971275, 0.097888, 0.216893,
		0.101898, 0.994768, 0.007354,
		25.843218, 38.031837, 20.853045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139242, 37.638527, 20.455854>,  <25.771891, 37.335499, 20.847897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139242, 37.638527, 20.455854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380087, 37.957718, 20.445362>,  <25.524593, 38.149235, 20.439066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380087, 37.957718, 20.445362>,  <25.139242, 37.638527, 20.455854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380087, 37.957718, 20.445362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330191, 0.218962, -0.918166,
		-0.726934, 0.561502, 0.395325,
		0.602114, 0.797979, -0.026232,
		25.560720, 38.197113, 20.437492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664999, 38.322533, 20.307169>,  <25.139242, 37.638527, 20.455854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664999, 38.322533, 20.307169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044588, 38.393551, 20.202919>,  <25.272343, 38.436161, 20.140369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044588, 38.393551, 20.202919>,  <24.664999, 38.322533, 20.307169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044588, 38.393551, 20.202919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294178, 0.200671, -0.934447,
		-0.113611, 0.963435, 0.242662,
		0.948974, 0.177549, -0.260623,
		25.329281, 38.446815, 20.124733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686079, 38.873840, 19.759899>,  <24.664999, 38.322533, 20.307169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686079, 38.873840, 19.759899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059952, 38.738968, 19.714859>,  <25.284275, 38.658043, 19.687836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059952, 38.738968, 19.714859>,  <24.686079, 38.873840, 19.759899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059952, 38.738968, 19.714859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042253, 0.209129, -0.976975,
		0.352969, 0.917917, 0.181222,
		0.934680, -0.337185, -0.112601,
		25.340357, 38.637814, 19.681078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118814, 39.444679, 19.446896>,  <24.686079, 38.873840, 19.759899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118814, 39.444679, 19.446896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299940, 39.098579, 19.360821>,  <25.408615, 38.890919, 19.309175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299940, 39.098579, 19.360821>,  <25.118814, 39.444679, 19.446896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299940, 39.098579, 19.360821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047259, 0.264301, -0.963282,
		0.890352, 0.426017, 0.160569,
		0.452813, -0.865248, -0.215188,
		25.435783, 38.839005, 19.296265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770222, 39.687202, 19.064268>,  <25.118814, 39.444679, 19.446896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770222, 39.687202, 19.064268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744482, 39.294655, 18.991844>,  <25.729038, 39.059128, 18.948391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744482, 39.294655, 18.991844>,  <25.770222, 39.687202, 19.064268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744482, 39.294655, 18.991844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135798, 0.171134, -0.975844,
		0.988644, -0.087383, 0.122255,
		-0.064351, -0.981365, -0.181058,
		25.725178, 39.000244, 18.937527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256311, 39.513515, 18.626177>,  <25.770222, 39.687202, 19.064268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256311, 39.513515, 18.626177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012064, 39.204037, 18.558605>,  <25.865515, 39.018349, 18.518063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012064, 39.204037, 18.558605>,  <26.256311, 39.513515, 18.626177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012064, 39.204037, 18.558605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140396, 0.104175, -0.984600,
		0.779380, -0.624933, 0.045013,
		-0.610619, -0.773696, -0.168930,
		25.828878, 38.971928, 18.507927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555342, 39.287983, 18.080713>,  <26.256311, 39.513515, 18.626177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555342, 39.287983, 18.080713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193083, 39.118385, 18.083126>,  <25.975727, 39.016628, 18.084574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193083, 39.118385, 18.083126>,  <26.555342, 39.287983, 18.080713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193083, 39.118385, 18.083126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003430, -0.021545, -0.999762,
		0.424023, -0.905409, 0.020966,
		-0.905645, -0.423994, 0.006030,
		25.921389, 38.991188, 18.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505220, 38.623447, 17.701025>,  <26.555342, 39.287983, 18.080713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505220, 38.623447, 17.701025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146734, 38.799091, 17.675797>,  <25.931643, 38.904476, 17.660660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146734, 38.799091, 17.675797>,  <26.505220, 38.623447, 17.701025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146734, 38.799091, 17.675797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044783, -0.051895, -0.997648,
		-0.441349, -0.896934, 0.026844,
		-0.896217, 0.439108, -0.063071,
		25.877869, 38.930824, 17.656876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914005, 38.175331, 17.519230>,  <26.505220, 38.623447, 17.701025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914005, 38.175331, 17.519230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842783, 38.539288, 17.369350>,  <25.800049, 38.757660, 17.279423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842783, 38.539288, 17.369350>,  <25.914005, 38.175331, 17.519230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842783, 38.539288, 17.369350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000249, -0.380824, -0.924648,
		-0.984020, -0.164546, 0.068035,
		-0.178057, 0.909889, -0.374698,
		25.789366, 38.812256, 17.256941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509933, 38.052372, 17.052437>,  <25.914005, 38.175331, 17.519230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509933, 38.052372, 17.052437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648527, 38.417324, 16.965256>,  <25.731684, 38.636295, 16.912947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648527, 38.417324, 16.965256>,  <25.509933, 38.052372, 17.052437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648527, 38.417324, 16.965256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167528, -0.288795, -0.942620,
		-0.922974, 0.290091, -0.252913,
		0.346486, 0.912384, -0.217952,
		25.752474, 38.691040, 16.899870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129801, 38.277557, 16.488857>,  <25.509933, 38.052372, 17.052437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129801, 38.277557, 16.488857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484730, 38.461849, 16.496796>,  <25.697687, 38.572422, 16.501558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484730, 38.461849, 16.496796>,  <25.129801, 38.277557, 16.488857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484730, 38.461849, 16.496796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233974, -0.412697, -0.880305,
		-0.397390, 0.785756, -0.473993,
		0.887321, 0.460726, 0.019845,
		25.750925, 38.600067, 16.502748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197510, 38.701874, 15.879276>,  <25.129801, 38.277557, 16.488857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197510, 38.701874, 15.879276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536816, 38.539043, 16.014763>,  <25.740400, 38.441345, 16.096054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536816, 38.539043, 16.014763>,  <25.197510, 38.701874, 15.879276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536816, 38.539043, 16.014763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085590, -0.525811, -0.846284,
		0.522606, 0.746866, -0.411186,
		0.848267, -0.407080, 0.338717,
		25.791296, 38.416920, 16.116379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857210, 38.197880, 15.478308>,  <25.197510, 38.701874, 15.879276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857210, 38.197880, 15.478308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792212, 38.572048, 15.603898>,  <24.753212, 38.796551, 15.679253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792212, 38.572048, 15.603898>,  <24.857210, 38.197880, 15.478308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792212, 38.572048, 15.603898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378939, 0.234641, -0.895181,
		-0.911043, -0.264443, 0.316338,
		-0.162499, 0.935422, 0.313976,
		24.743462, 38.852676, 15.698091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188223, 38.305077, 15.194597>,  <24.857210, 38.197880, 15.478308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188223, 38.305077, 15.194597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405184, 38.636013, 15.252986>,  <24.535360, 38.834576, 15.288019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405184, 38.636013, 15.252986>,  <24.188223, 38.305077, 15.194597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405184, 38.636013, 15.252986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289947, 0.347428, -0.891754,
		-0.788497, 0.441367, 0.428331,
		0.542405, 0.827339, 0.145973,
		24.567905, 38.884216, 15.296778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.670137, 38.512016, 15.651695>,  <24.188223, 38.305077, 15.194597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.670137, 38.512016, 15.651695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459236, 38.708225, 15.374166>,  <23.332695, 38.825951, 15.207647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459236, 38.708225, 15.374166>,  <23.670137, 38.512016, 15.651695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.459236, 38.708225, 15.374166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476057, -0.505831, -0.719379,
		-0.703829, -0.709594, 0.033184,
		-0.527252, 0.490522, -0.693825,
		23.301060, 38.855381, 15.166018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495317, 38.035995, 15.143270>,  <23.670137, 38.512016, 15.651695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495317, 38.035995, 15.143270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.516195, 38.380207, 14.940579>,  <23.528723, 38.586735, 14.818965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.516195, 38.380207, 14.940579>,  <23.495317, 38.035995, 15.143270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.516195, 38.380207, 14.940579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508020, -0.459734, -0.728396,
		-0.859763, -0.219408, -0.461160,
		0.052195, 0.860526, -0.506725,
		23.531855, 38.638367, 14.788562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.720396, 37.442753, 15.294204>,  <23.495317, 38.035995, 15.143270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.720396, 37.442753, 15.294204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791252, 37.077412, 15.440852>,  <23.833767, 36.858208, 15.528841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.791252, 37.077412, 15.440852>,  <23.720396, 37.442753, 15.294204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791252, 37.077412, 15.440852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495457, 0.239110, 0.835074,
		-0.850379, -0.329571, -0.410170,
		0.177141, -0.913351, 0.366622,
		23.844395, 36.803406, 15.550838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.173613, 37.307671, 15.819705>,  <23.720396, 37.442753, 15.294204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.173613, 37.307671, 15.819705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.486662, 37.075672, 15.910134>,  <23.674492, 36.936474, 15.964392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.486662, 37.075672, 15.910134>,  <23.173613, 37.307671, 15.819705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.486662, 37.075672, 15.910134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232750, 0.064189, 0.970416,
		-0.577348, -0.812087, -0.084759,
		0.782622, -0.579996, 0.226073,
		23.721449, 36.901672, 15.977956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.959763, 36.645027, 16.260424>,  <23.173613, 37.307671, 15.819705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.959763, 36.645027, 16.260424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.333881, 36.768044, 16.330441>,  <23.558353, 36.841854, 16.372452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.333881, 36.768044, 16.330441>,  <22.959763, 36.645027, 16.260424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.333881, 36.768044, 16.330441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185131, 0.003690, 0.982707,
		0.301573, -0.951529, 0.060385,
		0.935297, 0.307537, 0.175044,
		23.614471, 36.860306, 16.382954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.180325, 36.217789, 16.812502>,  <22.959763, 36.645027, 16.260424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.180325, 36.217789, 16.812502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455662, 36.507790, 16.821960>,  <23.620865, 36.681789, 16.827635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455662, 36.507790, 16.821960>,  <23.180325, 36.217789, 16.812502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.455662, 36.507790, 16.821960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106852, 0.069102, 0.991871,
		0.717473, -0.685273, 0.125034,
		0.688343, 0.725000, 0.023644,
		23.662165, 36.725288, 16.829054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.592503, 35.994656, 17.376059>,  <23.180325, 36.217789, 16.812502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.592503, 35.994656, 17.376059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.693775, 36.381153, 17.356991>,  <23.754539, 36.613052, 17.345551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.693775, 36.381153, 17.356991>,  <23.592503, 35.994656, 17.376059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.693775, 36.381153, 17.356991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049489, 0.036272, 0.998116,
		0.966152, -0.255065, -0.038635,
		0.253183, 0.966243, -0.047667,
		23.769730, 36.671024, 17.342691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.243223, 36.038628, 17.799809>,  <23.592503, 35.994656, 17.376059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.243223, 36.038628, 17.799809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.047876, 36.382790, 17.741562>,  <23.930668, 36.589287, 17.706614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.047876, 36.382790, 17.741562>,  <24.243223, 36.038628, 17.799809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.047876, 36.382790, 17.741562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078906, 0.122645, 0.989309,
		0.869064, 0.494636, 0.007995,
		-0.488367, 0.860403, -0.145616,
		23.901367, 36.640911, 17.697878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642717, 36.481663, 18.142752>,  <24.243223, 36.038628, 17.799809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642717, 36.481663, 18.142752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276701, 36.640198, 18.112782>,  <24.057091, 36.735317, 18.094799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276701, 36.640198, 18.112782>,  <24.642717, 36.481663, 18.142752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276701, 36.640198, 18.112782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058744, 0.052830, 0.996874,
		0.399057, 0.916584, -0.025059,
		-0.915042, 0.396338, -0.074926,
		24.002188, 36.759098, 18.090303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579142, 36.966785, 18.693462>,  <24.642717, 36.481663, 18.142752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579142, 36.966785, 18.693462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209480, 36.853405, 18.591019>,  <23.987682, 36.785378, 18.529552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209480, 36.853405, 18.591019>,  <24.579142, 36.966785, 18.693462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209480, 36.853405, 18.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267431, 0.001290, 0.963576,
		-0.272799, 0.958985, -0.076997,
		-0.924154, -0.283454, -0.256110,
		23.932234, 36.768368, 18.514185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.228407, 37.329197, 19.143438>,  <24.579142, 36.966785, 18.693462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.228407, 37.329197, 19.143438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.956671, 37.067162, 19.011166>,  <23.793629, 36.909939, 18.931803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.956671, 37.067162, 19.011166>,  <24.228407, 37.329197, 19.143438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.956671, 37.067162, 19.011166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586908, 0.214542, 0.780712,
		-0.440492, 0.724450, -0.530226,
		-0.679342, -0.655091, -0.330681,
		23.752869, 36.870636, 18.911961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630800, 37.581989, 19.231096>,  <24.228407, 37.329197, 19.143438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630800, 37.581989, 19.231096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543226, 37.191708, 19.234245>,  <23.490683, 36.957539, 19.236134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543226, 37.191708, 19.234245>,  <23.630800, 37.581989, 19.231096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.543226, 37.191708, 19.234245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474591, 0.113533, 0.872854,
		-0.852544, 0.187363, -0.487918,
		-0.218936, -0.975707, 0.007871,
		23.477545, 36.898994, 19.236607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.842079, 37.460148, 19.386936>,  <23.630800, 37.581989, 19.231096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.842079, 37.460148, 19.386936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.033587, 37.118580, 19.468525>,  <23.148491, 36.913639, 19.517479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.033587, 37.118580, 19.468525>,  <22.842079, 37.460148, 19.386936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.033587, 37.118580, 19.468525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504072, -0.077145, 0.860210,
		-0.718814, -0.514657, -0.467371,
		0.478768, -0.853919, 0.203971,
		23.177217, 36.862404, 19.529716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.350807, 37.035988, 19.810806>,  <22.842079, 37.460148, 19.386936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.350807, 37.035988, 19.810806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712324, 36.880039, 19.881413>,  <22.929235, 36.786469, 19.923777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712324, 36.880039, 19.881413>,  <22.350807, 37.035988, 19.810806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.712324, 36.880039, 19.881413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239052, -0.117793, 0.963835,
		-0.354980, -0.913305, -0.199660,
		0.903794, -0.389871, 0.176514,
		22.983463, 36.763077, 19.934366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178665, 36.448917, 20.222279>,  <22.350807, 37.035988, 19.810806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178665, 36.448917, 20.222279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.570213, 36.509968, 20.276714>,  <22.805141, 36.546600, 20.309376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.570213, 36.509968, 20.276714>,  <22.178665, 36.448917, 20.222279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.570213, 36.509968, 20.276714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151064, 0.091197, 0.984308,
		0.137829, -0.984066, 0.112328,
		0.978868, 0.152635, 0.136087,
		22.863874, 36.555756, 20.317541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344557, 36.105083, 20.866001>,  <22.178665, 36.448917, 20.222279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344557, 36.105083, 20.866001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.643646, 36.357353, 20.782906>,  <22.823099, 36.508717, 20.733047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.643646, 36.357353, 20.782906>,  <22.344557, 36.105083, 20.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.643646, 36.357353, 20.782906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048083, 0.363461, 0.930368,
		0.662267, -0.685669, 0.302093,
		0.747724, 0.630677, -0.207739,
		22.867964, 36.546555, 20.720583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875006, 35.946846, 21.306232>,  <22.344557, 36.105083, 20.866001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875006, 35.946846, 21.306232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.928335, 36.328602, 21.199379>,  <22.960333, 36.557655, 21.135267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.928335, 36.328602, 21.199379>,  <22.875006, 35.946846, 21.306232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.928335, 36.328602, 21.199379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098534, 0.280970, 0.954645,
		0.986162, -0.100953, 0.131500,
		0.133322, 0.954392, -0.267135,
		22.968332, 36.614918, 21.119238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.422651, 36.213490, 21.753279>,  <22.875006, 35.946846, 21.306232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.422651, 36.213490, 21.753279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.201185, 36.527134, 21.641121>,  <23.068306, 36.715321, 21.573826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.201185, 36.527134, 21.641121>,  <23.422651, 36.213490, 21.753279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.201185, 36.527134, 21.641121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122784, 0.256163, 0.958804,
		0.823638, 0.565284, -0.045551,
		-0.553665, 0.784114, -0.280393,
		23.035086, 36.762367, 21.557003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.669703, 36.781040, 22.115995>,  <23.422651, 36.213490, 21.753279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.669703, 36.781040, 22.115995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.292418, 36.871376, 22.018551>,  <23.066046, 36.925579, 21.960085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.292418, 36.871376, 22.018551>,  <23.669703, 36.781040, 22.115995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.292418, 36.871376, 22.018551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197707, 0.207674, 0.958010,
		0.266947, 0.951771, -0.151231,
		-0.943213, 0.225839, -0.243610,
		23.009453, 36.939129, 21.945467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.515146, 37.300495, 22.508162>,  <23.669703, 36.781040, 22.115995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.515146, 37.300495, 22.508162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.139360, 37.226170, 22.393005>,  <22.913889, 37.181576, 22.323912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.139360, 37.226170, 22.393005>,  <23.515146, 37.300495, 22.508162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.139360, 37.226170, 22.393005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340038, 0.402088, 0.850117,
		-0.042205, 0.896548, -0.440931,
		-0.939464, -0.185812, -0.287891,
		22.857521, 37.170425, 22.306639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149883, 37.993889, 22.441269>,  <23.515146, 37.300495, 22.508162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149883, 37.993889, 22.441269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.886608, 37.698326, 22.498962>,  <22.728643, 37.520988, 22.533579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.886608, 37.698326, 22.498962>,  <23.149883, 37.993889, 22.441269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.886608, 37.698326, 22.498962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328517, 0.454271, 0.828079,
		-0.677395, 0.497648, -0.541740,
		-0.658188, -0.738907, 0.144235,
		22.689152, 37.476654, 22.542233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483885, 38.352463, 22.625395>,  <23.149883, 37.993889, 22.441269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483885, 38.352463, 22.625395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451527, 37.971336, 22.742428>,  <22.432112, 37.742661, 22.812647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451527, 37.971336, 22.742428>,  <22.483885, 38.352463, 22.625395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451527, 37.971336, 22.742428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455361, 0.296449, 0.839503,
		-0.886625, -0.065320, -0.457854,
		-0.080894, -0.952812, 0.292583,
		22.427258, 37.685493, 22.830202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726294, 38.185856, 22.918827>,  <22.483885, 38.352463, 22.625395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726294, 38.185856, 22.918827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990646, 37.934719, 23.083290>,  <22.149258, 37.784039, 23.181969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990646, 37.934719, 23.083290>,  <21.726294, 38.185856, 22.918827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990646, 37.934719, 23.083290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282357, 0.299591, 0.911329,
		-0.695350, -0.718372, 0.020718,
		0.660880, -0.627843, 0.411158,
		22.188910, 37.746365, 23.206638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398775, 38.006584, 23.518259>,  <21.726294, 38.185856, 22.918827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398775, 38.006584, 23.518259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765276, 37.876499, 23.611824>,  <21.985176, 37.798447, 23.667963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765276, 37.876499, 23.611824>,  <21.398775, 38.006584, 23.518259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765276, 37.876499, 23.611824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126886, 0.318245, 0.939479,
		-0.379971, -0.890482, 0.250329,
		0.916254, -0.325211, 0.233914,
		22.040152, 37.778934, 23.681997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718864, 38.091240, 23.282793>,  <21.398775, 38.006584, 23.518259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718864, 38.091240, 23.282793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741062, 37.691902, 23.288734>,  <20.754381, 37.452297, 23.292299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741062, 37.691902, 23.288734>,  <20.718864, 38.091240, 23.282793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741062, 37.691902, 23.288734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888171, -0.056154, -0.456069,
		0.456150, 0.012117, -0.889820,
		0.055494, -0.998349, 0.014853,
		20.757710, 37.392399, 23.293190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972034, 38.198357, 23.361298>,  <20.718864, 38.091240, 23.282793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972034, 38.198357, 23.361298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707716, 38.442471, 23.536068>,  <19.549126, 38.588940, 23.640930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707716, 38.442471, 23.536068>,  <19.972034, 38.198357, 23.361298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707716, 38.442471, 23.536068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749613, -0.565925, -0.343234,
		0.037797, -0.554333, 0.831436,
		-0.660796, 0.610282, 0.436925,
		19.509478, 38.625557, 23.667145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435457, 37.784672, 23.185839>,  <19.972034, 38.198357, 23.361298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435457, 37.784672, 23.185839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249695, 38.101364, 23.344578>,  <19.138237, 38.291378, 23.439821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249695, 38.101364, 23.344578>,  <19.435457, 37.784672, 23.185839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249695, 38.101364, 23.344578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872652, -0.332680, -0.357496,
		-0.151018, -0.512334, 0.845404,
		-0.464406, 0.791731, 0.396849,
		19.110373, 38.338882, 23.463633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958954, 37.598213, 23.502716>,  <19.435457, 37.784672, 23.185839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958954, 37.598213, 23.502716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796015, 37.954197, 23.420704>,  <18.698252, 38.167789, 23.371496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796015, 37.954197, 23.420704>,  <18.958954, 37.598213, 23.502716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796015, 37.954197, 23.420704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822877, -0.455041, -0.340309,
		-0.396158, 0.030088, 0.917689,
		-0.407347, 0.889962, -0.205027,
		18.673811, 38.221184, 23.359196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258862, 37.673489, 23.854719>,  <18.958954, 37.598213, 23.502716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.258862, 37.673489, 23.854719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316784, 37.848331, 23.499649>,  <18.351538, 37.953236, 23.286608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316784, 37.848331, 23.499649>,  <18.258862, 37.673489, 23.854719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316784, 37.848331, 23.499649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716099, -0.572800, -0.398876,
		-0.682812, 0.693424, 0.230066,
		0.144808, 0.437107, -0.887675,
		18.360226, 37.979465, 23.233347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624809, 37.795731, 23.533306>,  <18.258862, 37.673489, 23.854719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.624809, 37.795731, 23.533306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876026, 37.737114, 23.227604>,  <18.026756, 37.701942, 23.044182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876026, 37.737114, 23.227604>,  <17.624809, 37.795731, 23.533306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876026, 37.737114, 23.227604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727354, -0.459657, -0.509580,
		-0.276619, 0.875923, -0.395275,
		0.628043, -0.146545, -0.764255,
		18.064440, 37.693150, 22.998327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.280426, 26.415108, 27.886517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679714, 26.411594, 27.910126>,  <32.919285, 26.409487, 27.924292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679714, 26.411594, 27.910126>,  <32.280426, 26.415108, 27.886517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679714, 26.411594, 27.910126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037499, 0.861729, -0.505981,
		-0.046419, 0.507293, 0.860523,
		0.998218, -0.008781, 0.059023,
		32.979179, 26.408960, 27.927834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469597, 27.109671, 28.082573>,  <32.280426, 26.415108, 27.886517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469597, 27.109671, 28.082573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.792240, 26.952877, 27.905605>,  <32.985825, 26.858801, 27.799423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.792240, 26.952877, 27.905605>,  <32.469597, 27.109671, 28.082573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792240, 26.952877, 27.905605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054661, 0.794741, -0.604483,
		0.588558, 0.463396, 0.662468,
		0.806605, -0.391984, -0.442421,
		33.034222, 26.835281, 27.772879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981853, 27.665285, 28.091730>,  <32.469597, 27.109671, 28.082573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981853, 27.665285, 28.091730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.103676, 27.413994, 27.805351>,  <33.176769, 27.263220, 27.633524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.103676, 27.413994, 27.805351>,  <32.981853, 27.665285, 28.091730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103676, 27.413994, 27.805351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099932, 0.768580, -0.631900,
		0.947239, 0.120900, 0.296852,
		0.304552, -0.628226, -0.715947,
		33.195042, 27.225527, 27.590567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470398, 28.110296, 27.756578>,  <32.981853, 27.665285, 28.091730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470398, 28.110296, 27.756578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399830, 27.799866, 27.514397>,  <33.357487, 27.613607, 27.369087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399830, 27.799866, 27.514397>,  <33.470398, 28.110296, 27.756578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399830, 27.799866, 27.514397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164193, 0.583283, -0.795501,
		0.970523, -0.239758, 0.024522,
		-0.176424, -0.776078, -0.605456,
		33.346901, 27.567041, 27.332760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958145, 28.123844, 27.347254>,  <33.470398, 28.110296, 27.756578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958145, 28.123844, 27.347254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.692886, 27.921009, 27.127037>,  <33.533730, 27.799309, 26.994907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.692886, 27.921009, 27.127037>,  <33.958145, 28.123844, 27.347254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692886, 27.921009, 27.127037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185604, 0.601159, -0.777277,
		0.725108, -0.617634, -0.304542,
		-0.663151, -0.507086, -0.550541,
		33.493942, 27.768883, 26.961874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247509, 28.002649, 26.672789>,  <33.958145, 28.123844, 27.347254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247509, 28.002649, 26.672789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847794, 28.009445, 26.659290>,  <33.607964, 28.013523, 26.651192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847794, 28.009445, 26.659290>,  <34.247509, 28.002649, 26.672789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847794, 28.009445, 26.659290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033144, 0.822937, -0.567165,
		0.018133, -0.567879, -0.822912,
		-0.999286, 0.016990, -0.033745,
		33.548008, 28.014542, 26.649166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083763, 28.094641, 25.986994>,  <34.247509, 28.002649, 26.672789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083763, 28.094641, 25.986994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717606, 28.188705, 26.117683>,  <33.497910, 28.245144, 26.196096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717606, 28.188705, 26.117683>,  <34.083763, 28.094641, 25.986994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717606, 28.188705, 26.117683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020145, 0.837369, -0.546267,
		-0.402048, -0.493469, -0.771262,
		-0.915397, 0.235162, 0.326722,
		33.442986, 28.259254, 26.215700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682995, 28.202400, 25.354633>,  <34.083763, 28.094641, 25.986994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682995, 28.202400, 25.354633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486538, 28.402115, 25.640148>,  <33.368664, 28.521944, 25.811457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486538, 28.402115, 25.640148>,  <33.682995, 28.202400, 25.354633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486538, 28.402115, 25.640148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126800, 0.769722, -0.625660,
		-0.861802, -0.397796, -0.314732,
		-0.491141, 0.499286, 0.713788,
		33.339195, 28.551901, 25.854284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135612, 28.547716, 25.028759>,  <33.682995, 28.202400, 25.354633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135612, 28.547716, 25.028759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.156673, 28.745346, 25.375889>,  <33.169308, 28.863924, 25.584166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.156673, 28.745346, 25.375889>,  <33.135612, 28.547716, 25.028759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156673, 28.745346, 25.375889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092180, 0.867723, -0.488426,
		-0.994350, -0.054282, 0.091228,
		0.052648, 0.494075, 0.867824,
		33.172466, 28.893568, 25.636236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605339, 28.986586, 25.025579>,  <33.135612, 28.547716, 25.028759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605339, 28.986586, 25.025579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.859539, 29.150249, 25.287487>,  <33.012058, 29.248447, 25.444632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.859539, 29.150249, 25.287487>,  <32.605339, 28.986586, 25.025579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859539, 29.150249, 25.287487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111922, 0.887902, -0.446210,
		-0.763942, 0.210285, 0.610059,
		0.635504, 0.409158, 0.654770,
		33.050190, 29.272997, 25.483919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264660, 29.536070, 25.297127>,  <32.605339, 28.986586, 25.025579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264660, 29.536070, 25.297127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649975, 29.610424, 25.374615>,  <32.881165, 29.655037, 25.421106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649975, 29.610424, 25.374615>,  <32.264660, 29.536070, 25.297127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649975, 29.610424, 25.374615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146092, 0.968285, -0.202686,
		-0.225251, 0.166943, 0.959891,
		0.963286, 0.185888, 0.193718,
		32.938961, 29.666191, 25.432730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271259, 30.023764, 25.788029>,  <32.264660, 29.536070, 25.297127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271259, 30.023764, 25.788029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622089, 30.055214, 25.598480>,  <32.832588, 30.074083, 25.484751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622089, 30.055214, 25.598480>,  <32.271259, 30.023764, 25.788029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622089, 30.055214, 25.598480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242137, 0.924374, -0.294792,
		0.414855, 0.373297, 0.829786,
		0.877077, 0.078626, -0.473871,
		32.885212, 30.078802, 25.456320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578220, 30.701857, 26.069098>,  <32.271259, 30.023764, 25.788029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578220, 30.701857, 26.069098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772346, 30.586632, 25.738888>,  <32.888821, 30.517498, 25.540762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772346, 30.586632, 25.738888>,  <32.578220, 30.701857, 26.069098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772346, 30.586632, 25.738888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092264, 0.922026, -0.375974,
		0.869458, 0.258632, 0.420895,
		0.485315, -0.288060, -0.825525,
		32.917942, 30.500214, 25.491230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119461, 31.191221, 25.983685>,  <32.578220, 30.701857, 26.069098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119461, 31.191221, 25.983685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042618, 31.051647, 25.616787>,  <32.996513, 30.967903, 25.396648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042618, 31.051647, 25.616787>,  <33.119461, 31.191221, 25.983685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042618, 31.051647, 25.616787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003499, 0.934892, -0.354913,
		0.981368, -0.064972, -0.180820,
		-0.192106, -0.348933, -0.917246,
		32.984985, 30.946968, 25.341614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561779, 31.542908, 25.571228>,  <33.119461, 31.191221, 25.983685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561779, 31.542908, 25.571228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294842, 31.407681, 25.305790>,  <33.134678, 31.326544, 25.146526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294842, 31.407681, 25.305790>,  <33.561779, 31.542908, 25.571228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294842, 31.407681, 25.305790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062276, 0.913245, -0.402624,
		0.742138, -0.227365, -0.630506,
		-0.667348, -0.338067, -0.663594,
		33.094639, 31.306261, 25.106712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800545, 31.875257, 24.863560>,  <33.561779, 31.542908, 25.571228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800545, 31.875257, 24.863560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432636, 31.731075, 24.801472>,  <33.211891, 31.644566, 24.764219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432636, 31.731075, 24.801472>,  <33.800545, 31.875257, 24.863560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432636, 31.731075, 24.801472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185926, 0.748526, -0.636506,
		0.345618, -0.556581, -0.755490,
		-0.919771, -0.360454, -0.155221,
		33.156704, 31.622940, 24.754906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692532, 32.047844, 24.080227>,  <33.800545, 31.875257, 24.863560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692532, 32.047844, 24.080227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320740, 31.978901, 24.210674>,  <33.097664, 31.937534, 24.288942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320740, 31.978901, 24.210674>,  <33.692532, 32.047844, 24.080227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320740, 31.978901, 24.210674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326798, 0.794816, -0.511341,
		-0.171071, -0.581859, -0.795095,
		-0.929483, -0.172360, 0.326120,
		33.041897, 31.927193, 24.308510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249100, 32.151134, 23.577700>,  <33.692532, 32.047844, 24.080227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249100, 32.151134, 23.577700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006485, 32.194530, 23.892746>,  <32.860916, 32.220570, 24.081774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006485, 32.194530, 23.892746>,  <33.249100, 32.151134, 23.577700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006485, 32.194530, 23.892746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456108, 0.763934, -0.456477,
		-0.651212, -0.636109, -0.413870,
		-0.606538, 0.108494, 0.787617,
		32.824524, 32.227077, 24.129030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627300, 32.087791, 23.257313>,  <33.249100, 32.151134, 23.577700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627300, 32.087791, 23.257313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571735, 32.271519, 23.608250>,  <32.538399, 32.381756, 23.818811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.571735, 32.271519, 23.608250>,  <32.627300, 32.087791, 23.257313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571735, 32.271519, 23.608250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521736, 0.719065, -0.459062,
		-0.841722, -0.521509, 0.139758,
		-0.138910, 0.459320, 0.877342,
		32.530064, 32.409313, 23.871452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926043, 32.203255, 23.386679>,  <32.627300, 32.087791, 23.257313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926043, 32.203255, 23.386679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110744, 32.482529, 23.605518>,  <32.221565, 32.650093, 23.736822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110744, 32.482529, 23.605518>,  <31.926043, 32.203255, 23.386679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110744, 32.482529, 23.605518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607031, 0.698468, -0.379019,
		-0.646757, -0.157091, 0.746343,
		0.461756, 0.698187, 0.547098,
		32.249271, 32.691986, 23.769648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364511, 32.632473, 23.463358>,  <31.926043, 32.203255, 23.386679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364511, 32.632473, 23.463358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.678213, 32.852291, 23.578556>,  <31.866434, 32.984184, 23.647675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.678213, 32.852291, 23.578556>,  <31.364511, 32.632473, 23.463358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678213, 32.852291, 23.578556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485370, 0.832560, -0.266944,
		-0.386474, 0.069567, 0.919673,
		0.784254, 0.549548, 0.287997,
		31.913488, 33.017155, 23.664955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096252, 33.079815, 23.772814>,  <31.364511, 32.632473, 23.463358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096252, 33.079815, 23.772814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.450716, 33.240440, 23.680325>,  <31.663395, 33.336815, 23.624830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.450716, 33.240440, 23.680325>,  <31.096252, 33.079815, 23.772814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450716, 33.240440, 23.680325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454343, 0.851032, -0.263281,
		0.091054, 0.338365, 0.936599,
		0.886161, 0.401564, -0.231224,
		31.716564, 33.360909, 23.610958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475147, 33.367023, 24.107113>,  <31.096252, 33.079815, 23.772814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475147, 33.367023, 24.107113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.163948, 33.405075, 23.858704>,  <29.977228, 33.427906, 23.709658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.163948, 33.405075, 23.858704>,  <30.475147, 33.367023, 24.107113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163948, 33.405075, 23.858704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485988, -0.717564, 0.498916,
		-0.398162, 0.689965, 0.604496,
		-0.778000, 0.095128, -0.621021,
		29.930548, 33.433613, 23.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896679, 33.218830, 24.571238>,  <30.475147, 33.367023, 24.107113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896679, 33.218830, 24.571238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.752338, 33.185886, 24.199646>,  <29.665733, 33.166119, 23.976690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.752338, 33.185886, 24.199646>,  <29.896679, 33.218830, 24.571238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752338, 33.185886, 24.199646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472763, -0.842472, 0.258332,
		-0.803915, 0.532407, 0.265072,
		-0.360853, -0.082361, -0.928979,
		29.644083, 33.161179, 23.920952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142065, 33.058243, 24.669970>,  <29.896679, 33.218830, 24.571238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142065, 33.058243, 24.669970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.283714, 32.946758, 24.312889>,  <29.368704, 32.879868, 24.098640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.283714, 32.946758, 24.312889>,  <29.142065, 33.058243, 24.669970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283714, 32.946758, 24.312889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253843, -0.947368, 0.195085,
		-0.900090, 0.157522, -0.406233,
		0.354121, -0.278714, -0.892702,
		29.389950, 32.863144, 24.045078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725510, 32.548779, 24.497292>,  <29.142065, 33.058243, 24.669970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725510, 32.548779, 24.497292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.049271, 32.509094, 24.265766>,  <29.243526, 32.485283, 24.126850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.049271, 32.509094, 24.265766>,  <28.725510, 32.548779, 24.497292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049271, 32.509094, 24.265766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021018, -0.989888, 0.140286,
		-0.586881, -0.101382, -0.803301,
		0.809401, -0.099215, -0.578815,
		29.292091, 32.479328, 24.092121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525301, 31.966288, 24.195522>,  <28.725510, 32.548779, 24.497292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525301, 31.966288, 24.195522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.923326, 32.005917, 24.197918>,  <29.162142, 32.029694, 24.199356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.923326, 32.005917, 24.197918>,  <28.525301, 31.966288, 24.195522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923326, 32.005917, 24.197918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093230, -0.953692, 0.285971,
		0.034045, -0.284000, -0.958220,
		0.995062, 0.099071, 0.005991,
		29.221846, 32.035637, 24.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741556, 31.433725, 23.963163>,  <28.525301, 31.966288, 24.195522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741556, 31.433725, 23.963163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.080069, 31.559807, 24.134956>,  <29.283176, 31.635456, 24.238031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.080069, 31.559807, 24.134956>,  <28.741556, 31.433725, 23.963163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080069, 31.559807, 24.134956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189022, -0.931391, 0.311096,
		0.498074, -0.182093, -0.847800,
		0.846282, 0.315202, 0.429482,
		29.333954, 31.654367, 24.263802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231524, 30.902672, 23.929760>,  <28.741556, 31.433725, 23.963163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231524, 30.902672, 23.929760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.442467, 31.097599, 24.208160>,  <29.569033, 31.214556, 24.375200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.442467, 31.097599, 24.208160>,  <29.231524, 30.902672, 23.929760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442467, 31.097599, 24.208160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326107, -0.872520, 0.363818,
		0.784568, 0.035108, -0.619048,
		0.527359, 0.487316, 0.696000,
		29.600674, 31.243793, 24.416960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949451, 30.621197, 23.902363>,  <29.231524, 30.902672, 23.929760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949451, 30.621197, 23.902363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.889700, 30.781288, 24.264027>,  <29.853849, 30.877342, 24.481026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.889700, 30.781288, 24.264027>,  <29.949451, 30.621197, 23.902363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889700, 30.781288, 24.264027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354815, -0.831820, 0.426827,
		0.922926, 0.384567, -0.017752,
		-0.149377, 0.400229, 0.904159,
		29.844887, 30.901358, 24.535275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605747, 30.587635, 24.225889>,  <29.949451, 30.621197, 23.902363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605747, 30.587635, 24.225889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.318003, 30.630943, 24.500347>,  <30.145355, 30.656929, 24.665022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.318003, 30.630943, 24.500347>,  <30.605747, 30.587635, 24.225889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318003, 30.630943, 24.500347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456672, -0.670595, 0.584597,
		0.523421, 0.733880, 0.432956,
		-0.719361, 0.108272, 0.686146,
		30.102194, 30.663425, 24.706190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986248, 30.542543, 24.888231>,  <30.605747, 30.587635, 24.225889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986248, 30.542543, 24.888231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601604, 30.453545, 24.952488>,  <30.370819, 30.400145, 24.991043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601604, 30.453545, 24.952488>,  <30.986248, 30.542543, 24.888231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601604, 30.453545, 24.952488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273247, -0.830540, 0.485325,
		0.025438, 0.510587, 0.859450,
		-0.961608, -0.222496, 0.160643,
		30.313122, 30.386795, 25.000681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038876, 30.296640, 25.637474>,  <30.986248, 30.542543, 24.888231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038876, 30.296640, 25.637474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.681801, 30.177933, 25.501808>,  <30.467556, 30.106709, 25.420408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.681801, 30.177933, 25.501808>,  <31.038876, 30.296640, 25.637474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681801, 30.177933, 25.501808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133234, -0.892722, 0.430460,
		-0.430530, 0.339078, 0.836463,
		-0.892688, -0.296771, -0.339167,
		30.413994, 30.088902, 25.400059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655653, 30.041904, 26.223715>,  <31.038876, 30.296640, 25.637474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655653, 30.041904, 26.223715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501631, 29.859116, 25.902988>,  <30.409218, 29.749443, 25.710552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.501631, 29.859116, 25.902988>,  <30.655653, 30.041904, 26.223715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501631, 29.859116, 25.902988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157180, -0.888586, 0.430941,
		-0.909410, 0.039907, 0.413982,
		-0.385056, -0.456972, -0.801816,
		30.386114, 29.722025, 25.662443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186554, 29.584160, 26.546503>,  <30.655653, 30.041904, 26.223715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186554, 29.584160, 26.546503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242243, 29.448288, 26.174431>,  <30.275656, 29.366764, 25.951187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242243, 29.448288, 26.174431>,  <30.186554, 29.584160, 26.546503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242243, 29.448288, 26.174431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101551, -0.929478, 0.354625,
		-0.985040, -0.143833, -0.094910,
		0.139223, -0.339682, -0.930179,
		30.284010, 29.346384, 25.895376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742582, 29.002651, 26.412443>,  <30.186554, 29.584160, 26.546503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742582, 29.002651, 26.412443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.023716, 28.941547, 26.134541>,  <30.192396, 28.904884, 25.967798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.023716, 28.941547, 26.134541>,  <29.742582, 29.002651, 26.412443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023716, 28.941547, 26.134541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060614, -0.985978, 0.155475,
		-0.708766, -0.067161, -0.702239,
		0.702834, -0.152761, -0.694757,
		30.234566, 28.895720, 25.926113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523026, 28.389063, 26.057671>,  <29.742582, 29.002651, 26.412443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523026, 28.389063, 26.057671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.918308, 28.426189, 26.008957>,  <30.155478, 28.448465, 25.979729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.918308, 28.426189, 26.008957>,  <29.523026, 28.389063, 26.057671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918308, 28.426189, 26.008957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114627, -0.975750, 0.186472,
		-0.101524, -0.198233, -0.974883,
		0.988207, 0.092817, -0.121785,
		30.214771, 28.454035, 25.972422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699339, 27.771511, 25.635931>,  <29.523026, 28.389063, 26.057671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699339, 27.771511, 25.635931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.026491, 27.921280, 25.810692>,  <30.222782, 28.011141, 25.915548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.026491, 27.921280, 25.810692>,  <29.699339, 27.771511, 25.635931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026491, 27.921280, 25.810692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077696, -0.824226, 0.560905,
		0.570121, -0.424807, -0.703208,
		0.817878, 0.374421, 0.436903,
		30.271854, 28.033606, 25.941763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022341, 27.254076, 25.684036>,  <29.699339, 27.771511, 25.635931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022341, 27.254076, 25.684036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.208523, 27.476543, 25.959435>,  <30.320232, 27.610023, 26.124674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.208523, 27.476543, 25.959435>,  <30.022341, 27.254076, 25.684036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208523, 27.476543, 25.959435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037780, -0.789677, 0.612358,
		0.884264, -0.259015, -0.388573,
		0.465457, 0.556166, 0.688497,
		30.348160, 27.643393, 26.165983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500231, 26.879129, 25.930096>,  <30.022341, 27.254076, 25.684036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500231, 26.879129, 25.930096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.483286, 27.156342, 26.217960>,  <30.473120, 27.322670, 26.390678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.483286, 27.156342, 26.217960>,  <30.500231, 26.879129, 25.930096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483286, 27.156342, 26.217960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215427, -0.697028, 0.683918,
		0.975601, 0.184007, -0.119770,
		-0.042363, 0.693032, 0.719661,
		30.470577, 27.364252, 26.433859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.146261, 27.065517, 26.228369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871584, 27.157791, 26.504120>,  <30.706778, 27.213156, 26.669571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871584, 27.157791, 26.504120>,  <31.146261, 27.065517, 26.228369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871584, 27.157791, 26.504120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355554, -0.720566, 0.595287,
		0.634064, 0.653889, 0.412786,
		-0.686691, 0.230682, 0.689377,
		30.665577, 27.226995, 26.710934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470232, 27.023466, 26.898582>,  <31.146261, 27.065517, 26.228369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470232, 27.023466, 26.898582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083342, 26.987228, 26.993462>,  <30.851208, 26.965487, 27.050390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083342, 26.987228, 26.993462>,  <31.470232, 27.023466, 26.898582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083342, 26.987228, 26.993462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234591, -0.676268, 0.698304,
		0.097148, 0.731064, 0.675357,
		-0.967228, -0.090594, 0.237200,
		30.793173, 26.960051, 27.064621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454237, 27.174513, 27.616867>,  <31.470232, 27.023466, 26.898582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454237, 27.174513, 27.616867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129791, 26.957172, 27.530277>,  <30.935123, 26.826767, 27.478323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129791, 26.957172, 27.530277>,  <31.454237, 27.174513, 27.616867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129791, 26.957172, 27.530277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187214, -0.591831, 0.784020,
		-0.554116, 0.595403, 0.581765,
		-0.811115, -0.543353, -0.216475,
		30.886457, 26.794167, 27.465334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120817, 26.908789, 28.341715>,  <31.454237, 27.174513, 27.616867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120817, 26.908789, 28.341715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.937370, 26.680351, 28.069386>,  <30.827301, 26.543289, 27.905989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.937370, 26.680351, 28.069386>,  <31.120817, 26.908789, 28.341715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937370, 26.680351, 28.069386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149877, -0.804881, 0.574198,
		-0.875903, 0.161299, 0.454727,
		-0.458619, -0.571095, -0.680822,
		30.799786, 26.509024, 27.865139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649307, 26.420149, 28.712435>,  <31.120817, 26.908789, 28.341715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649307, 26.420149, 28.712435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699753, 26.237381, 28.360226>,  <30.730021, 26.127720, 28.148901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699753, 26.237381, 28.360226>,  <30.649307, 26.420149, 28.712435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699753, 26.237381, 28.360226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010036, -0.888151, 0.459442,
		-0.991965, -0.049105, -0.116594,
		0.126114, -0.456920, -0.880522,
		30.737587, 26.100306, 28.096069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202328, 25.848301, 28.843933>,  <30.649307, 26.420149, 28.712435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202328, 25.848301, 28.843933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.444260, 25.784840, 28.531776>,  <30.589418, 25.746763, 28.344482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.444260, 25.784840, 28.531776>,  <30.202328, 25.848301, 28.843933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444260, 25.784840, 28.531776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134982, -0.945350, 0.296804,
		-0.784830, -0.284855, -0.550363,
		0.604832, -0.158652, -0.780389,
		30.625710, 25.737244, 28.297659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908693, 25.257839, 28.466654>,  <30.202328, 25.848301, 28.843933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908693, 25.257839, 28.466654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301151, 25.283379, 28.393688>,  <30.536627, 25.298702, 28.349909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.301151, 25.283379, 28.393688>,  <29.908693, 25.257839, 28.466654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301151, 25.283379, 28.393688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092685, -0.983682, 0.154205,
		-0.169591, -0.168204, -0.971054,
		0.981146, 0.063850, -0.182414,
		30.595495, 25.302534, 28.338964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073809, 24.646646, 28.191210>,  <29.908693, 25.257839, 28.466654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073809, 24.646646, 28.191210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450138, 24.767216, 28.253178>,  <30.675936, 24.839558, 28.290358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450138, 24.767216, 28.253178>,  <30.073809, 24.646646, 28.191210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450138, 24.767216, 28.253178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263285, -0.937894, 0.225911,
		0.213392, -0.171754, -0.961751,
		0.940822, 0.301422, 0.154919,
		30.732384, 24.857643, 28.299654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570375, 24.097122, 27.877327>,  <30.073809, 24.646646, 28.191210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570375, 24.097122, 27.877327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791817, 24.292480, 28.147141>,  <30.924683, 24.409695, 28.309029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791817, 24.292480, 28.147141>,  <30.570375, 24.097122, 27.877327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791817, 24.292480, 28.147141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266793, -0.871298, 0.411899,
		0.788887, -0.048069, -0.612655,
		0.553605, 0.488394, 0.674532,
		30.957899, 24.438999, 28.349501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323093, 23.784960, 27.995665>,  <30.570375, 24.097122, 27.877327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323093, 23.784960, 27.995665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241228, 23.992828, 28.327461>,  <31.192108, 24.117550, 28.526539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241228, 23.992828, 28.327461>,  <31.323093, 23.784960, 27.995665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241228, 23.992828, 28.327461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302523, -0.772358, 0.558519,
		0.930909, 0.365249, 0.000861,
		-0.204664, 0.519670, 0.829491,
		31.179829, 24.148729, 28.576309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502966, 23.325193, 28.427589>,  <31.323093, 23.784960, 27.995665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502966, 23.325193, 28.427589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369097, 23.596565, 28.689194>,  <31.288776, 23.759388, 28.846157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369097, 23.596565, 28.689194>,  <31.502966, 23.325193, 28.427589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369097, 23.596565, 28.689194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083618, -0.712674, 0.696494,
		0.938618, 0.178409, 0.295240,
		-0.334671, 0.678429, 0.654010,
		31.268696, 23.800095, 28.885397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006363, 23.295900, 28.960732>,  <31.502966, 23.325193, 28.427589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006363, 23.295900, 28.960732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659065, 23.442196, 29.094830>,  <31.450687, 23.529972, 29.175289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659065, 23.442196, 29.094830>,  <32.006363, 23.295900, 28.960732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659065, 23.442196, 29.094830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065313, -0.585573, 0.807984,
		0.491821, 0.723422, 0.484533,
		-0.868243, 0.365738, 0.335246,
		31.398592, 23.551918, 29.195404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117119, 23.625830, 29.637213>,  <32.006363, 23.295900, 28.960732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117119, 23.625830, 29.637213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740135, 23.505020, 29.579876>,  <31.513945, 23.432535, 29.545473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740135, 23.505020, 29.579876>,  <32.117119, 23.625830, 29.637213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740135, 23.505020, 29.579876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032715, -0.510030, 0.859534,
		-0.332708, 0.805389, 0.490565,
		-0.942462, -0.302023, -0.143343,
		31.457397, 23.414413, 29.536873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737780, 23.797667, 30.263554>,  <32.117119, 23.625830, 29.637213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737780, 23.797667, 30.263554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520422, 23.519844, 30.074955>,  <31.390007, 23.353149, 29.961796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520422, 23.519844, 30.074955>,  <31.737780, 23.797667, 30.263554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520422, 23.519844, 30.074955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039064, -0.540128, 0.840676,
		-0.838567, 0.475238, 0.266370,
		-0.543395, -0.694558, -0.471499,
		31.357403, 23.311478, 29.933506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272171, 23.519156, 30.740747>,  <31.737780, 23.797667, 30.263554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272171, 23.519156, 30.740747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.263834, 23.256229, 30.439415>,  <31.258831, 23.098475, 30.258615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.263834, 23.256229, 30.439415>,  <31.272171, 23.519156, 30.740747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263834, 23.256229, 30.439415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186948, -0.737640, 0.648796,
		-0.982149, 0.154356, -0.107509,
		-0.020843, -0.657313, -0.753329,
		31.257582, 23.059036, 30.213417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598461, 23.331251, 30.661495>,  <31.272171, 23.519156, 30.740747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598461, 23.331251, 30.661495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840231, 23.051323, 30.509220>,  <30.985292, 22.883366, 30.417854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840231, 23.051323, 30.509220>,  <30.598461, 23.331251, 30.661495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840231, 23.051323, 30.509220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141189, -0.564385, 0.813348,
		-0.784053, -0.437857, -0.439934,
		0.604422, -0.699822, -0.380688,
		31.021557, 22.841377, 30.395014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212984, 22.768700, 30.790775>,  <30.598461, 23.331251, 30.661495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212984, 22.768700, 30.790775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587465, 22.637653, 30.739883>,  <30.812155, 22.559025, 30.709349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587465, 22.637653, 30.739883>,  <30.212984, 22.768700, 30.790775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587465, 22.637653, 30.739883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040262, -0.459600, 0.887213,
		-0.349138, -0.825492, -0.443470,
		0.936206, -0.327615, -0.127228,
		30.868326, 22.539368, 30.701715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057257, 22.070436, 30.896709>,  <30.212984, 22.768700, 30.790775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057257, 22.070436, 30.896709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447319, 22.150726, 30.934181>,  <30.681356, 22.198900, 30.956665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447319, 22.150726, 30.934181>,  <30.057257, 22.070436, 30.896709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447319, 22.150726, 30.934181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037262, -0.268239, 0.962631,
		0.218354, -0.942208, -0.254096,
		0.975158, 0.200727, 0.093680,
		30.739866, 22.210943, 30.962286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310354, 21.472305, 31.332205>,  <30.057257, 22.070436, 30.896709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310354, 21.472305, 31.332205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563761, 21.781208, 31.313122>,  <30.715805, 21.966549, 31.301672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.563761, 21.781208, 31.313122>,  <30.310354, 21.472305, 31.332205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563761, 21.781208, 31.313122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283843, -0.174602, 0.942840,
		0.719785, -0.610846, -0.329814,
		0.633516, 0.772257, -0.047709,
		30.753815, 22.012886, 31.298809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854553, 21.218906, 31.701698>,  <30.310354, 21.472305, 31.332205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854553, 21.218906, 31.701698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869946, 21.618587, 31.705910>,  <30.879181, 21.858397, 31.708437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869946, 21.618587, 31.705910>,  <30.854553, 21.218906, 31.701698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869946, 21.618587, 31.705910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262330, -0.020267, 0.964765,
		0.964211, -0.034363, -0.262901,
		0.038480, 0.999204, 0.010527,
		30.881489, 21.918348, 31.709068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503983, 21.428347, 32.117451>,  <30.854553, 21.218906, 31.701698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503983, 21.428347, 32.117451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262070, 21.746887, 32.114208>,  <31.116922, 21.938011, 32.112263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262070, 21.746887, 32.114208>,  <31.503983, 21.428347, 32.117451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262070, 21.746887, 32.114208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170941, 0.139746, 0.975321,
		0.777829, 0.588471, -0.220644,
		-0.604782, 0.796350, -0.008105,
		31.080635, 21.985792, 32.111778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783640, 21.934216, 32.483509>,  <31.503983, 21.428347, 32.117451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783640, 21.934216, 32.483509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410025, 22.077084, 32.482544>,  <31.185856, 22.162804, 32.481964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.410025, 22.077084, 32.482544>,  <31.783640, 21.934216, 32.483509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410025, 22.077084, 32.482544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165691, 0.439263, 0.882946,
		0.316421, 0.824305, -0.469468,
		-0.934037, 0.357169, -0.002412,
		31.129814, 22.184235, 32.481819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329903, 21.496527, 32.790825>,  <31.783640, 21.934216, 32.483509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329903, 21.496527, 32.790825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104828, 21.307793, 33.062344>,  <31.969784, 21.194553, 33.225254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104828, 21.307793, 33.062344>,  <32.329903, 21.496527, 32.790825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104828, 21.307793, 33.062344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708907, -0.146983, -0.689817,
		0.425250, -0.869349, -0.251782,
		-0.562684, -0.471835, 0.678792,
		31.936022, 21.166243, 33.265980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078983, 20.915653, 32.519512>,  <32.329903, 21.496527, 32.790825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078983, 20.915653, 32.519512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817007, 20.988049, 32.812988>,  <31.659822, 21.031485, 32.989075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817007, 20.988049, 32.812988>,  <32.078983, 20.915653, 32.519512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817007, 20.988049, 32.812988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754914, -0.200494, -0.624425,
		0.034088, -0.962832, 0.267940,
		-0.654937, 0.180987, 0.733690,
		31.620525, 21.042345, 33.033096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711674, 20.702299, 32.944221>,  <32.078983, 20.915653, 32.519512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711674, 20.702299, 32.944221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072311, 20.726917, 33.115498>,  <33.288692, 20.741688, 33.218262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072311, 20.726917, 33.115498>,  <32.711674, 20.702299, 32.944221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072311, 20.726917, 33.115498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170374, 0.859311, -0.482243,
		-0.397628, 0.507738, 0.764260,
		0.901590, 0.061544, 0.428191,
		33.342789, 20.745380, 33.243954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801575, 21.430239, 33.310902>,  <32.711674, 20.702299, 32.944221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801575, 21.430239, 33.310902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162796, 21.278179, 33.230915>,  <33.379528, 21.186943, 33.182922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162796, 21.278179, 33.230915>,  <32.801575, 21.430239, 33.310902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162796, 21.278179, 33.230915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256683, 0.850878, -0.458389,
		0.344404, 0.362621, 0.865963,
		0.903050, -0.380149, -0.199967,
		33.433712, 21.164135, 33.170925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306297, 22.007429, 33.391441>,  <32.801575, 21.430239, 33.310902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306297, 22.007429, 33.391441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455433, 21.733326, 33.141190>,  <33.544914, 21.568865, 32.991039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455433, 21.733326, 33.141190>,  <33.306297, 22.007429, 33.391441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455433, 21.733326, 33.141190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196807, 0.717306, -0.668385,
		0.906783, 0.126073, 0.402305,
		0.372842, -0.685257, -0.625629,
		33.567284, 21.527748, 32.953503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945045, 22.230898, 33.205524>,  <33.306297, 22.007429, 33.391441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945045, 22.230898, 33.205524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880623, 21.970005, 32.909241>,  <33.841969, 21.813469, 32.731468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880623, 21.970005, 32.909241>,  <33.945045, 22.230898, 33.205524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880623, 21.970005, 32.909241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187352, 0.716658, -0.671790,
		0.969000, -0.246969, 0.006776,
		-0.161055, -0.652233, -0.740711,
		33.832306, 21.774336, 32.687027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487209, 22.364452, 32.766434>,  <33.945045, 22.230898, 33.205524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487209, 22.364452, 32.766434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215099, 22.166149, 32.550491>,  <34.051834, 22.047167, 32.420925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215099, 22.166149, 32.550491>,  <34.487209, 22.364452, 32.766434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215099, 22.166149, 32.550491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002989, 0.738420, -0.674334,
		0.732929, -0.457135, -0.503828,
		-0.680299, -0.495745, -0.539842,
		34.011017, 22.017422, 32.388535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681160, 22.394480, 32.031204>,  <34.487209, 22.364452, 32.766434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681160, 22.394480, 32.031204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294640, 22.299129, 31.992325>,  <34.062729, 22.241919, 31.968996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294640, 22.299129, 31.992325>,  <34.681160, 22.394480, 32.031204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294640, 22.299129, 31.992325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100719, 0.697553, -0.709419,
		0.236912, -0.675719, -0.698052,
		-0.966296, -0.238377, -0.097201,
		34.004749, 22.227617, 31.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642872, 22.334023, 31.355515>,  <34.681160, 22.394480, 32.031204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642872, 22.334023, 31.355515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283630, 22.398808, 31.519066>,  <34.068085, 22.437677, 31.617197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283630, 22.398808, 31.519066>,  <34.642872, 22.334023, 31.355515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283630, 22.398808, 31.519066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161616, 0.743121, -0.649347,
		-0.409014, -0.649261, -0.641223,
		-0.898102, 0.161961, 0.408878,
		34.014198, 22.447395, 31.641729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382286, 22.675797, 30.790730>,  <34.642872, 22.334023, 31.355515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382286, 22.675797, 30.790730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138222, 22.756420, 31.097214>,  <33.991783, 22.804794, 31.281103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138222, 22.756420, 31.097214>,  <34.382286, 22.675797, 30.790730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138222, 22.756420, 31.097214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146657, 0.921650, -0.359239,
		-0.778584, -0.331564, -0.532797,
		-0.610163, 0.201559, 0.766208,
		33.955173, 22.816889, 31.327076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660194, 22.808092, 30.525764>,  <34.382286, 22.675797, 30.790730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660194, 22.808092, 30.525764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696384, 23.016800, 30.865074>,  <33.718098, 23.142025, 31.068661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696384, 23.016800, 30.865074>,  <33.660194, 22.808092, 30.525764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696384, 23.016800, 30.865074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366122, 0.809546, -0.458900,
		-0.926159, -0.269055, 0.264272,
		0.090472, 0.521770, 0.848275,
		33.723526, 23.173330, 31.119556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918812, 23.022987, 30.714378>,  <33.660194, 22.808092, 30.525764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918812, 23.022987, 30.714378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195850, 23.259556, 30.879562>,  <33.362072, 23.401497, 30.978672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195850, 23.259556, 30.879562>,  <32.918812, 23.022987, 30.714378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195850, 23.259556, 30.879562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366764, 0.781704, -0.504404,
		-0.621126, 0.197889, 0.758315,
		0.692594, 0.591421, 0.412958,
		33.403629, 23.436981, 31.003450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561447, 23.571785, 30.751150>,  <32.918812, 23.022987, 30.714378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561447, 23.571785, 30.751150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936325, 23.700821, 30.804211>,  <33.161251, 23.778242, 30.836046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936325, 23.700821, 30.804211>,  <32.561447, 23.571785, 30.751150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936325, 23.700821, 30.804211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151882, 0.719787, -0.677377,
		-0.313995, 0.614689, 0.723578,
		0.937197, 0.322591, 0.132649,
		33.217484, 23.797598, 30.844006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431358, 24.297216, 30.931425>,  <32.561447, 23.571785, 30.751150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431358, 24.297216, 30.931425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820324, 24.269672, 30.842274>,  <33.053703, 24.253145, 30.788784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820324, 24.269672, 30.842274>,  <32.431358, 24.297216, 30.931425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820324, 24.269672, 30.842274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105239, 0.723182, -0.682592,
		0.208184, 0.687216, 0.695984,
		0.972411, -0.068861, -0.222877,
		33.112049, 24.249014, 30.775410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724560, 24.946831, 30.894140>,  <32.431358, 24.297216, 30.931425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724560, 24.946831, 30.894140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957150, 24.706871, 30.674316>,  <33.096703, 24.562895, 30.542423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957150, 24.706871, 30.674316>,  <32.724560, 24.946831, 30.894140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957150, 24.706871, 30.674316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005925, 0.678597, -0.734487,
		0.813545, 0.423827, 0.398139,
		0.581472, -0.599898, -0.549558,
		33.131592, 24.526901, 30.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217255, 25.364475, 30.452909>,  <32.724560, 24.946831, 30.894140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217255, 25.364475, 30.452909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228168, 25.015163, 30.258327>,  <33.234718, 24.805576, 30.141579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228168, 25.015163, 30.258327>,  <33.217255, 25.364475, 30.452909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228168, 25.015163, 30.258327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052422, 0.487215, -0.871707,
		0.998252, -0.001717, 0.059073,
		0.027284, -0.873280, -0.486454,
		33.236355, 24.753180, 30.112391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746819, 25.435139, 30.035282>,  <33.217255, 25.364475, 30.452909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746819, 25.435139, 30.035282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.542320, 25.131165, 29.874722>,  <33.419621, 24.948780, 29.778385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.542320, 25.131165, 29.874722>,  <33.746819, 25.435139, 30.035282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542320, 25.131165, 29.874722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185136, 0.358710, -0.914905,
		0.839258, -0.542055, -0.042697,
		-0.511245, -0.759937, -0.401404,
		33.388947, 24.903183, 29.754301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056320, 25.220695, 29.418987>,  <33.746819, 25.435139, 30.035282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056320, 25.220695, 29.418987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698601, 25.051872, 29.359524>,  <33.483971, 24.950579, 29.323847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698601, 25.051872, 29.359524>,  <34.056320, 25.220695, 29.418987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698601, 25.051872, 29.359524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039972, 0.406239, -0.912892,
		0.445688, -0.810453, -0.380168,
		-0.894295, -0.422061, -0.148660,
		33.430313, 24.925255, 29.314926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062027, 24.968897, 28.835186>,  <34.056320, 25.220695, 29.418987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062027, 24.968897, 28.835186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685944, 25.079052, 28.915348>,  <33.460293, 25.145145, 28.963446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685944, 25.079052, 28.915348>,  <34.062027, 24.968897, 28.835186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685944, 25.079052, 28.915348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095166, 0.352557, -0.930939,
		-0.327025, -0.894352, -0.305271,
		-0.940212, 0.275388, 0.200407,
		33.403881, 25.161669, 28.975470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767033, 24.896940, 28.189323>,  <34.062027, 24.968897, 28.835186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767033, 24.896940, 28.189323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564640, 25.167080, 28.403946>,  <33.443207, 25.329163, 28.532719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564640, 25.167080, 28.403946>,  <33.767033, 24.896940, 28.189323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564640, 25.167080, 28.403946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016758, 0.614245, -0.788937,
		-0.862383, -0.408178, -0.299478,
		-0.505980, 0.675347, 0.536555,
		33.412846, 25.369684, 28.564913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223267, 25.116545, 27.730427>,  <33.767033, 24.896940, 28.189323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223267, 25.116545, 27.730427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227467, 25.394337, 28.018200>,  <33.229988, 25.561012, 28.190865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227467, 25.394337, 28.018200>,  <33.223267, 25.116545, 27.730427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227467, 25.394337, 28.018200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072299, 0.718118, -0.692155,
		-0.997328, -0.044747, 0.057751,
		0.010500, 0.694481, 0.719434,
		33.230618, 25.602680, 28.234030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576809, 25.523645, 27.797527>,  <33.223267, 25.116545, 27.730427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576809, 25.523645, 27.797527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885487, 25.739052, 27.932869>,  <33.070694, 25.868296, 28.014074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885487, 25.739052, 27.932869>,  <32.576809, 25.523645, 27.797527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885487, 25.739052, 27.932869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235529, 0.736168, -0.634494,
		-0.590771, 0.409945, 0.694935,
		0.771697, 0.538518, 0.338353,
		33.116997, 25.900606, 28.034374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.636967, 39.227470, 17.728794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.013577, 39.096031, 17.698971>,  <25.239542, 39.017166, 17.681078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.013577, 39.096031, 17.698971>,  <24.636967, 39.227470, 17.728794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013577, 39.096031, 17.698971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086359, -0.449206, 0.889245,
		-0.325692, -0.830807, -0.451315,
		0.941524, -0.328595, -0.074555,
		25.296034, 38.997452, 17.676603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718332, 38.512909, 17.879522>,  <24.636967, 39.227470, 17.728794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718332, 38.512909, 17.879522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.077522, 38.662037, 17.973026>,  <25.293037, 38.751514, 18.029129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.077522, 38.662037, 17.973026>,  <24.718332, 38.512909, 17.879522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077522, 38.662037, 17.973026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114601, -0.314749, 0.942231,
		0.424860, -0.872890, -0.239912,
		0.897976, 0.372822, 0.233758,
		25.346914, 38.773884, 18.043154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001507, 38.026222, 18.338276>,  <24.718332, 38.512909, 17.879522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001507, 38.026222, 18.338276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.241358, 38.341991, 18.390827>,  <25.385269, 38.531452, 18.422358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.241358, 38.341991, 18.390827>,  <25.001507, 38.026222, 18.338276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241358, 38.341991, 18.390827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083995, -0.225338, 0.970653,
		0.795858, -0.570997, -0.201427,
		0.599629, 0.789421, 0.131376,
		25.421246, 38.578819, 18.430241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515306, 37.737476, 18.746496>,  <25.001507, 38.026222, 18.338276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515306, 37.737476, 18.746496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.584139, 38.129349, 18.787716>,  <25.625439, 38.364471, 18.812447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.584139, 38.129349, 18.787716>,  <25.515306, 37.737476, 18.746496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584139, 38.129349, 18.787716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248976, -0.144465, 0.957675,
		0.953100, -0.139140, -0.268776,
		0.172079, 0.979678, 0.103047,
		25.635763, 38.423252, 18.818630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269684, 37.913059, 19.018585>,  <25.515306, 37.737476, 18.746496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269684, 37.913059, 19.018585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.998581, 38.189754, 19.118301>,  <25.835920, 38.355770, 19.178131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.998581, 38.189754, 19.118301>,  <26.269684, 37.913059, 19.018585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998581, 38.189754, 19.118301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368427, 0.026080, 0.929291,
		0.636325, 0.721677, -0.272531,
		-0.677755, 0.691739, 0.249290,
		25.795254, 38.397278, 19.193089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589457, 38.327152, 19.443760>,  <26.269684, 37.913059, 19.018585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589457, 38.327152, 19.443760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.208410, 38.426590, 19.513870>,  <25.979782, 38.486252, 19.555937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.208410, 38.426590, 19.513870>,  <26.589457, 38.327152, 19.443760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208410, 38.426590, 19.513870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196337, 0.062421, 0.978548,
		0.232320, 0.966594, -0.108271,
		-0.952617, 0.248594, 0.175277,
		25.922625, 38.501167, 19.566454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654016, 38.796696, 19.958004>,  <26.589457, 38.327152, 19.443760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654016, 38.796696, 19.958004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.278099, 38.663967, 19.990704>,  <26.052547, 38.584332, 20.010323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.278099, 38.663967, 19.990704>,  <26.654016, 38.796696, 19.958004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278099, 38.663967, 19.990704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082123, 0.012921, 0.996538,
		-0.331725, 0.943255, 0.015107,
		-0.939795, -0.331817, 0.081749,
		25.996161, 38.564423, 20.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243475, 39.291077, 20.429716>,  <26.654016, 38.796696, 19.958004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243475, 39.291077, 20.429716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.050743, 38.940826, 20.443142>,  <25.935104, 38.730679, 20.451199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.050743, 38.940826, 20.443142>,  <26.243475, 39.291077, 20.429716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050743, 38.940826, 20.443142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002734, 0.039808, 0.999204,
		-0.876261, 0.481354, -0.021575,
		-0.481829, -0.875622, 0.033567,
		25.906195, 38.678139, 20.453213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748735, 39.342922, 20.963654>,  <26.243475, 39.291077, 20.429716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748735, 39.342922, 20.963654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.785053, 38.946903, 20.920650>,  <25.806843, 38.709290, 20.894850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.785053, 38.946903, 20.920650>,  <25.748735, 39.342922, 20.963654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785053, 38.946903, 20.920650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065679, -0.113671, 0.991345,
		-0.993702, -0.082947, -0.075346,
		0.090793, -0.990050, -0.107507,
		25.812292, 38.649887, 20.888399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295227, 39.092964, 21.445890>,  <25.748735, 39.342922, 20.963654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295227, 39.092964, 21.445890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.540806, 38.787937, 21.364346>,  <25.688152, 38.604919, 21.315418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.540806, 38.787937, 21.364346>,  <25.295227, 39.092964, 21.445890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540806, 38.787937, 21.364346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030945, -0.281320, 0.959115,
		-0.788741, -0.582537, -0.196313,
		0.613946, -0.762568, -0.203862,
		25.724989, 38.559166, 21.303186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956249, 38.530102, 21.728569>,  <25.295227, 39.092964, 21.445890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956249, 38.530102, 21.728569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.347282, 38.459274, 21.682999>,  <25.581902, 38.416779, 21.655657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.347282, 38.459274, 21.682999>,  <24.956249, 38.530102, 21.728569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347282, 38.459274, 21.682999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031557, -0.411751, 0.910750,
		-0.208170, -0.893929, -0.396933,
		0.977583, -0.177065, -0.113924,
		25.640558, 38.406155, 21.648821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000650, 37.866444, 21.964535>,  <24.956249, 38.530102, 21.728569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000650, 37.866444, 21.964535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.382103, 37.986816, 21.962509>,  <25.610975, 38.059040, 21.961294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.382103, 37.986816, 21.962509>,  <25.000650, 37.866444, 21.964535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382103, 37.986816, 21.962509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116547, -0.353702, 0.928069,
		0.277498, -0.885625, -0.372374,
		0.953631, 0.300937, -0.005065,
		25.668192, 38.077099, 21.960989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423399, 37.361454, 21.933138>,  <25.000650, 37.866444, 21.964535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423399, 37.361454, 21.933138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.626251, 37.641865, 22.133690>,  <25.747963, 37.810112, 22.254021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.626251, 37.641865, 22.133690>,  <25.423399, 37.361454, 21.933138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626251, 37.641865, 22.133690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046961, -0.558394, 0.828246,
		0.860588, -0.443576, -0.250259,
		0.507133, 0.701025, 0.501378,
		25.778391, 37.852173, 22.284103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748535, 36.994461, 22.354954>,  <25.423399, 37.361454, 21.933138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748535, 36.994461, 22.354954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.815098, 37.357037, 22.510223>,  <25.855036, 37.574581, 22.603386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.815098, 37.357037, 22.510223>,  <25.748535, 36.994461, 22.354954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815098, 37.357037, 22.510223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116072, -0.372922, 0.920574,
		0.979202, -0.198244, 0.043156,
		0.166404, 0.906437, 0.388176,
		25.865019, 37.628967, 22.626677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189362, 36.955727, 22.949732>,  <25.748535, 36.994461, 22.354954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189362, 36.955727, 22.949732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.005856, 37.308537, 22.992752>,  <25.895752, 37.520222, 23.018564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.005856, 37.308537, 22.992752>,  <26.189362, 36.955727, 22.949732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005856, 37.308537, 22.992752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279669, -0.258221, 0.924720,
		0.843397, 0.394152, 0.365138,
		-0.458766, 0.882024, 0.107551,
		25.868225, 37.573143, 23.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149767, 36.935287, 23.691776>,  <26.189362, 36.955727, 22.949732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149767, 36.935287, 23.691776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.929316, 37.261589, 23.621574>,  <25.797045, 37.457371, 23.579453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.929316, 37.261589, 23.621574>,  <26.149767, 36.935287, 23.691776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929316, 37.261589, 23.621574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524396, -0.175003, 0.833296,
		0.649051, 0.551288, 0.524227,
		-0.551127, 0.815755, -0.175507,
		25.763977, 37.506317, 23.568922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182421, 37.345360, 24.235437>,  <26.149767, 36.935287, 23.691776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182421, 37.345360, 24.235437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.837910, 37.426495, 24.049080>,  <25.631203, 37.475178, 23.937265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.837910, 37.426495, 24.049080>,  <26.182421, 37.345360, 24.235437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837910, 37.426495, 24.049080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484107, -0.048952, 0.873638,
		0.154404, 0.977987, 0.140359,
		-0.861278, 0.202842, -0.465892,
		25.579527, 37.487347, 23.909311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750389, 37.810837, 24.724918>,  <26.182421, 37.345360, 24.235437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750389, 37.810837, 24.724918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.472176, 37.673626, 24.472389>,  <25.305248, 37.591301, 24.320871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.472176, 37.673626, 24.472389>,  <25.750389, 37.810837, 24.724918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472176, 37.673626, 24.472389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706876, 0.169324, 0.686772,
		-0.128682, 0.923939, -0.360247,
		-0.695534, -0.343025, -0.631322,
		25.263515, 37.570717, 24.282993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103432, 38.234558, 24.639513>,  <25.750389, 37.810837, 24.724918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103432, 38.234558, 24.639513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.012524, 37.853687, 24.557823>,  <24.957979, 37.625164, 24.508808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.012524, 37.853687, 24.557823>,  <25.103432, 38.234558, 24.639513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012524, 37.853687, 24.557823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751555, 0.038133, 0.658567,
		-0.619284, 0.303161, -0.724280,
		-0.227271, -0.952176, -0.204227,
		24.944342, 37.568035, 24.496555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415085, 38.183212, 24.688231>,  <25.103432, 38.234558, 24.639513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415085, 38.183212, 24.688231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.461100, 37.785946, 24.696064>,  <24.488708, 37.547585, 24.700764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.461100, 37.785946, 24.696064>,  <24.415085, 38.183212, 24.688231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461100, 37.785946, 24.696064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608832, -0.054915, 0.791396,
		-0.784914, -0.102964, -0.610990,
		0.115038, -0.993168, 0.019584,
		24.495611, 37.487995, 24.701939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755259, 37.927212, 24.741877>,  <24.415085, 38.183212, 24.688231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755259, 37.927212, 24.741877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.994246, 37.623238, 24.844269>,  <24.137638, 37.440853, 24.905704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.994246, 37.623238, 24.844269>,  <23.755259, 37.927212, 24.741877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.994246, 37.623238, 24.844269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626171, -0.242719, 0.740943,
		-0.500942, -0.602975, -0.620869,
		0.597467, -0.759940, 0.255978,
		24.173487, 37.395256, 24.921062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.044086, 37.961372, 24.445810>,  <23.755259, 37.927212, 24.741877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.044086, 37.961372, 24.445810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.697050, 37.812756, 24.313599>,  <22.488829, 37.723587, 24.234272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.697050, 37.812756, 24.313599>,  <23.044086, 37.961372, 24.445810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.697050, 37.812756, 24.313599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343308, 0.033361, -0.938630,
		0.359763, -0.927818, 0.098609,
		-0.867588, -0.371538, -0.330529,
		22.436773, 37.701294, 24.214439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.212666, 37.359940, 24.023533>,  <23.044086, 37.961372, 24.445810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.212666, 37.359940, 24.023533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.834602, 37.448795, 23.927761>,  <22.607763, 37.502110, 23.870298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.834602, 37.448795, 23.927761>,  <23.212666, 37.359940, 24.023533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834602, 37.448795, 23.927761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147339, -0.364243, -0.919575,
		-0.291483, -0.904423, 0.311538,
		-0.945161, 0.222139, -0.239428,
		22.551054, 37.515438, 23.855932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.830669, 36.814968, 23.745417>,  <23.212666, 37.359940, 24.023533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.830669, 36.814968, 23.745417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645880, 37.129402, 23.581146>,  <22.535006, 37.318062, 23.482584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645880, 37.129402, 23.581146>,  <22.830669, 36.814968, 23.745417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645880, 37.129402, 23.581146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192428, -0.363182, -0.911631,
		-0.865767, -0.500175, 0.016516,
		-0.461973, 0.786081, -0.410678,
		22.507288, 37.365227, 23.457943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.382103, 36.457653, 23.208134>,  <22.830669, 36.814968, 23.745417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.382103, 36.457653, 23.208134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.395853, 36.840878, 23.094334>,  <22.404102, 37.070812, 23.026052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.395853, 36.840878, 23.094334>,  <22.382103, 36.457653, 23.208134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395853, 36.840878, 23.094334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160456, -0.275686, -0.947761,
		-0.986444, 0.078228, 0.144250,
		0.034373, 0.958059, -0.284501,
		22.406164, 37.128296, 23.008984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737881, 36.572266, 22.642237>,  <22.382103, 36.457653, 23.208134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737881, 36.572266, 22.642237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.058044, 36.811901, 22.633877>,  <22.250143, 36.955681, 22.628860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.058044, 36.811901, 22.633877>,  <21.737881, 36.572266, 22.642237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058044, 36.811901, 22.633877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030210, -0.075137, -0.996715,
		-0.598691, 0.797150, -0.078239,
		0.800411, 0.599088, -0.020902,
		22.298168, 36.991627, 22.627605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632219, 36.774761, 21.979362>,  <21.737881, 36.572266, 22.642237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632219, 36.774761, 21.979362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.992037, 36.911224, 22.088490>,  <22.207928, 36.993103, 22.153965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.992037, 36.911224, 22.088490>,  <21.632219, 36.774761, 21.979362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.992037, 36.911224, 22.088490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259441, 0.085208, -0.961993,
		-0.351439, 0.936136, -0.011862,
		0.899545, 0.341159, 0.272818,
		22.261900, 37.013573, 22.170336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851807, 37.205929, 21.501890>,  <21.632219, 36.774761, 21.979362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851807, 37.205929, 21.501890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220421, 37.154182, 21.648335>,  <22.441589, 37.123135, 21.736200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.220421, 37.154182, 21.648335>,  <21.851807, 37.205929, 21.501890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220421, 37.154182, 21.648335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370211, 0.008333, -0.928910,
		0.117120, 0.991562, 0.055572,
		0.921535, -0.129367, 0.366111,
		22.496881, 37.115372, 21.758167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342337, 37.706017, 21.071072>,  <21.851807, 37.205929, 21.501890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342337, 37.706017, 21.071072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.573507, 37.425819, 21.238552>,  <22.712210, 37.257702, 21.339041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.573507, 37.425819, 21.238552>,  <22.342337, 37.706017, 21.071072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.573507, 37.425819, 21.238552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568427, -0.022611, -0.822423,
		0.585570, 0.713300, 0.385112,
		0.577926, -0.700494, 0.418699,
		22.746885, 37.215672, 21.364162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094257, 37.834408, 20.805490>,  <22.342337, 37.706017, 21.071072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094257, 37.834408, 20.805490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040010, 37.451374, 20.907185>,  <23.007462, 37.221554, 20.968201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.040010, 37.451374, 20.907185>,  <23.094257, 37.834408, 20.805490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040010, 37.451374, 20.907185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609610, -0.282933, -0.740489,
		0.781014, 0.054559, 0.622126,
		-0.135620, -0.957587, 0.254234,
		22.999325, 37.164097, 20.983456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.770041, 37.484268, 20.686373>,  <23.094257, 37.834408, 20.805490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.770041, 37.484268, 20.686373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.486334, 37.202503, 20.675484>,  <23.316109, 37.033443, 20.668951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.486334, 37.202503, 20.675484>,  <23.770041, 37.484268, 20.686373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.486334, 37.202503, 20.675484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451184, -0.423947, -0.785304,
		0.541637, -0.569274, 0.618512,
		-0.709269, -0.704412, -0.027222,
		23.273554, 36.991180, 20.667316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142954, 36.852650, 20.460091>,  <23.770041, 37.484268, 20.686373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142954, 36.852650, 20.460091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.758686, 36.741734, 20.454029>,  <23.528126, 36.675186, 20.450392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.758686, 36.741734, 20.454029>,  <24.142954, 36.852650, 20.460091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.758686, 36.741734, 20.454029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094408, -0.274795, -0.956857,
		0.261161, -0.920652, 0.290165,
		-0.960668, -0.277288, -0.015151,
		23.470486, 36.658546, 20.449484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130920, 36.230812, 20.244659>,  <24.142954, 36.852650, 20.460091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130920, 36.230812, 20.244659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.790007, 36.410465, 20.137409>,  <23.585459, 36.518257, 20.073059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.790007, 36.410465, 20.137409>,  <24.130920, 36.230812, 20.244659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.790007, 36.410465, 20.137409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173908, -0.240131, -0.955036,
		-0.493323, -0.860591, 0.126552,
		-0.852284, 0.449133, -0.268125,
		23.534321, 36.545204, 20.056973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.763565, 35.762920, 19.746288>,  <24.130920, 36.230812, 20.244659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.763565, 35.762920, 19.746288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.600927, 36.123440, 19.686493>,  <23.503344, 36.339752, 19.650616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.600927, 36.123440, 19.686493>,  <23.763565, 35.762920, 19.746288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.600927, 36.123440, 19.686493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011508, -0.158557, -0.987283,
		-0.913536, -0.403145, 0.054097,
		-0.406595, 0.901296, -0.149487,
		23.478949, 36.393829, 19.641647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.398935, 35.591766, 19.097567>,  <23.763565, 35.762920, 19.746288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.398935, 35.591766, 19.097567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.401367, 35.987633, 19.154869>,  <23.402826, 36.225151, 19.189251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.401367, 35.987633, 19.154869>,  <23.398935, 35.591766, 19.097567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.401367, 35.987633, 19.154869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184223, 0.139699, -0.972906,
		-0.982866, 0.032307, -0.181470,
		0.006081, 0.989667, 0.143257,
		23.403191, 36.284534, 19.197845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.979294, 35.869110, 18.633762>,  <23.398935, 35.591766, 19.097567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.979294, 35.869110, 18.633762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216515, 36.180466, 18.716122>,  <23.358847, 36.367279, 18.765537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216515, 36.180466, 18.716122>,  <22.979294, 35.869110, 18.633762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216515, 36.180466, 18.716122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016988, 0.243569, -0.969735,
		-0.804985, 0.578601, 0.131226,
		0.593051, 0.778393, 0.205899,
		23.394430, 36.413982, 18.777891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638382, 36.500069, 18.342737>,  <22.979294, 35.869110, 18.633762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638382, 36.500069, 18.342737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.032938, 36.556580, 18.376389>,  <23.269672, 36.590485, 18.396580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.032938, 36.556580, 18.376389>,  <22.638382, 36.500069, 18.342737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.032938, 36.556580, 18.376389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003576, 0.529955, -0.848018,
		-0.164387, 0.836175, 0.523247,
		0.986389, 0.141275, 0.084128,
		23.328856, 36.598961, 18.401627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.791676, 37.137997, 17.972393>,  <22.638382, 36.500069, 18.342737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.791676, 37.137997, 17.972393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.168465, 37.004787, 17.989262>,  <23.394539, 36.924862, 17.999382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.168465, 37.004787, 17.989262>,  <22.791676, 37.137997, 17.972393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.168465, 37.004787, 17.989262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252022, 0.618619, -0.744174,
		0.221741, 0.711621, 0.666653,
		0.941974, -0.333025, 0.042171,
		23.451057, 36.904881, 18.001913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.213345, 37.736088, 17.557310>,  <22.791676, 37.137997, 17.972393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.213345, 37.736088, 17.557310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.441614, 37.409569, 17.593079>,  <23.578575, 37.213657, 17.614540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.441614, 37.409569, 17.593079>,  <23.213345, 37.736088, 17.557310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.441614, 37.409569, 17.593079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395426, 0.177725, -0.901139,
		0.719703, 0.549615, 0.424207,
		0.570672, -0.816295, 0.089422,
		23.612816, 37.164680, 17.619905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.979139, 37.976467, 17.347525>,  <23.213345, 37.736088, 17.557310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.979139, 37.976467, 17.347525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917389, 37.581917, 17.324768>,  <23.880339, 37.345188, 17.311113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.917389, 37.581917, 17.324768>,  <23.979139, 37.976467, 17.347525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917389, 37.581917, 17.324768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417850, -0.013000, -0.908423,
		0.895305, -0.164010, 0.414163,
		-0.154375, -0.986373, -0.056893,
		23.871077, 37.286003, 17.307701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476440, 37.713558, 16.891409>,  <23.979139, 37.976467, 17.347525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476440, 37.713558, 16.891409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.242065, 37.389515, 16.883411>,  <24.101440, 37.195087, 16.878613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.242065, 37.389515, 16.883411>,  <24.476440, 37.713558, 16.891409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242065, 37.389515, 16.883411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260043, -0.164599, -0.951465,
		0.767501, -0.562697, 0.307108,
		-0.585936, -0.810111, -0.019995,
		24.066284, 37.146481, 16.877413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889128, 37.110867, 16.610765>,  <24.476440, 37.713558, 16.891409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889128, 37.110867, 16.610765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.496721, 37.054417, 16.557560>,  <24.261278, 37.020546, 16.525637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.496721, 37.054417, 16.557560>,  <24.889128, 37.110867, 16.610765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496721, 37.054417, 16.557560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155024, -0.158577, -0.975101,
		0.116523, -0.977208, 0.177445,
		-0.981015, -0.141130, -0.133013,
		24.202417, 37.012077, 16.517656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.917015, 29.200197, 24.588697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044842, 29.350079, 24.936829>,  <30.121538, 29.440008, 25.145708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044842, 29.350079, 24.936829>,  <29.917015, 29.200197, 24.588697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044842, 29.350079, 24.936829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300500, 0.911157, -0.281945,
		-0.898652, -0.171433, 0.403776,
		0.319569, 0.374705, 0.870328,
		30.140713, 29.462490, 25.197927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407761, 29.612408, 24.735199>,  <29.917015, 29.200197, 24.588697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407761, 29.612408, 24.735199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717886, 29.736908, 24.955021>,  <29.903961, 29.811607, 25.086914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717886, 29.736908, 24.955021>,  <29.407761, 29.612408, 24.735199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717886, 29.736908, 24.955021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307042, 0.946140, -0.102686,
		-0.551916, -0.089122, 0.829124,
		0.775315, 0.311250, 0.549554,
		29.950481, 29.830282, 25.119886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085093, 30.077410, 25.252523>,  <29.407761, 29.612408, 24.735199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085093, 30.077410, 25.252523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465986, 30.174244, 25.178074>,  <29.694523, 30.232344, 25.133404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465986, 30.174244, 25.178074>,  <29.085093, 30.077410, 25.252523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465986, 30.174244, 25.178074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280342, 0.934689, -0.218552,
		0.121059, 0.260291, 0.957911,
		0.952235, 0.242085, -0.186124,
		29.751657, 30.246870, 25.122236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195074, 30.728935, 25.592825>,  <29.085093, 30.077410, 25.252523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195074, 30.728935, 25.592825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486649, 30.705933, 25.319962>,  <29.661594, 30.692131, 25.156242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486649, 30.705933, 25.319962>,  <29.195074, 30.728935, 25.592825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486649, 30.705933, 25.319962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248013, 0.906590, -0.341444,
		0.638074, 0.418076, 0.646586,
		0.728938, -0.057505, -0.682160,
		29.705330, 30.688681, 25.115313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573601, 31.376293, 25.724163>,  <29.195074, 30.728935, 25.592825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573601, 31.376293, 25.724163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667454, 31.251007, 25.356068>,  <29.723766, 31.175835, 25.135210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667454, 31.251007, 25.356068>,  <29.573601, 31.376293, 25.724163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667454, 31.251007, 25.356068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119477, 0.930198, -0.347070,
		0.964713, 0.191382, 0.180834,
		0.234635, -0.313217, -0.920240,
		29.737844, 31.157042, 25.079996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079067, 31.864353, 25.508930>,  <29.573601, 31.376293, 25.724163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079067, 31.864353, 25.508930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944736, 31.681492, 25.179512>,  <29.864138, 31.571775, 24.981861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944736, 31.681492, 25.179512>,  <30.079067, 31.864353, 25.508930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944736, 31.681492, 25.179512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036115, 0.879931, -0.473727,
		0.941231, -0.129348, -0.312015,
		-0.335828, -0.457155, -0.823547,
		29.843988, 31.544346, 24.932447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372532, 32.097889, 24.890413>,  <30.079067, 31.864353, 25.508930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372532, 32.097889, 24.890413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046225, 31.971970, 24.696331>,  <29.850441, 31.896420, 24.579882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046225, 31.971970, 24.696331>,  <30.372532, 32.097889, 24.890413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046225, 31.971970, 24.696331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052580, 0.875799, -0.479804,
		0.575984, -0.365897, -0.731001,
		-0.815769, -0.314796, -0.485206,
		29.801495, 31.877531, 24.550770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529013, 32.122711, 24.199833>,  <30.372532, 32.097889, 24.890413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529013, 32.122711, 24.199833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133841, 32.086941, 24.149242>,  <29.896738, 32.065479, 24.118889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133841, 32.086941, 24.149242>,  <30.529013, 32.122711, 24.199833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133841, 32.086941, 24.149242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000881, 0.813253, -0.581910,
		0.154896, -0.574998, -0.803358,
		-0.987930, -0.089428, -0.126476,
		29.837461, 32.060112, 24.111300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357166, 32.240547, 23.465508>,  <30.529013, 32.122711, 24.199833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357166, 32.240547, 23.465508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001659, 32.316463, 23.632397>,  <29.788355, 32.362015, 23.732531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001659, 32.316463, 23.632397>,  <30.357166, 32.240547, 23.465508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001659, 32.316463, 23.632397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070528, 0.842785, -0.533610,
		-0.452904, -0.503680, -0.735653,
		-0.888765, 0.189790, 0.417224,
		29.735029, 32.373402, 23.757565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838713, 32.419510, 22.916225>,  <30.357166, 32.240547, 23.465508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838713, 32.419510, 22.916225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706959, 32.564816, 23.264832>,  <29.627907, 32.652000, 23.473995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706959, 32.564816, 23.264832>,  <29.838713, 32.419510, 22.916225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706959, 32.564816, 23.264832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062687, 0.912575, -0.404075,
		-0.942113, -0.187728, -0.277814,
		-0.329382, 0.363269, 0.871518,
		29.608145, 32.673798, 23.526287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281809, 32.809978, 22.791094>,  <29.838713, 32.419510, 22.916225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281809, 32.809978, 22.791094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428097, 32.946568, 23.137421>,  <29.515869, 33.028522, 23.345217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428097, 32.946568, 23.137421>,  <29.281809, 32.809978, 22.791094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428097, 32.946568, 23.137421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159771, 0.939488, -0.303044,
		-0.916908, -0.027502, 0.398149,
		0.365722, 0.341476, 0.865818,
		29.537813, 33.049011, 23.397165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870335, 33.386696, 22.830976>,  <29.281809, 32.809978, 22.791094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870335, 33.386696, 22.830976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175177, 33.411060, 23.088810>,  <29.358082, 33.425678, 23.243509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175177, 33.411060, 23.088810>,  <28.870335, 33.386696, 22.830976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175177, 33.411060, 23.088810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045665, 0.988028, -0.147361,
		-0.645844, 0.141739, 0.750197,
		0.762103, 0.060915, 0.644584,
		29.403807, 33.429337, 23.282185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767035, 34.139229, 23.282570>,  <28.870335, 33.386696, 22.830976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767035, 34.139229, 23.282570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138847, 33.993347, 23.260803>,  <29.361935, 33.905819, 23.247744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138847, 33.993347, 23.260803>,  <28.767035, 34.139229, 23.282570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138847, 33.993347, 23.260803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349831, 0.918858, -0.182532,
		0.116571, 0.150632, 0.981693,
		0.929532, -0.364705, -0.054417,
		29.417707, 33.883934, 23.244478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221046, 34.708405, 23.634779>,  <28.767035, 34.139229, 23.282570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221046, 34.708405, 23.634779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473143, 34.470543, 23.435104>,  <29.624399, 34.327827, 23.315300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473143, 34.470543, 23.435104>,  <29.221046, 34.708405, 23.634779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473143, 34.470543, 23.435104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637203, 0.763506, -0.105032,
		0.443588, -0.251887, 0.860106,
		0.630239, -0.594653, -0.499186,
		29.662214, 34.292149, 23.285349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078373, 35.043419, 24.255239>,  <29.221046, 34.708405, 23.634779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078373, 35.043419, 24.255239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770782, 34.956249, 24.495632>,  <28.586227, 34.903946, 24.639868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770782, 34.956249, 24.495632>,  <29.078373, 35.043419, 24.255239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770782, 34.956249, 24.495632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623482, -0.047994, 0.780363,
		-0.141218, 0.974785, 0.172779,
		-0.768978, -0.217926, 0.600983,
		28.540089, 34.890873, 24.675926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217924, 35.314175, 24.864584>,  <29.078373, 35.043419, 24.255239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217924, 35.314175, 24.864584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929585, 35.060642, 24.976753>,  <28.756580, 34.908524, 25.044056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929585, 35.060642, 24.976753>,  <29.217924, 35.314175, 24.864584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929585, 35.060642, 24.976753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531372, -0.245629, 0.810746,
		-0.444992, 0.733437, 0.513860,
		-0.720850, -0.633827, 0.280425,
		28.713329, 34.870495, 25.060881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974846, 35.534225, 25.450390>,  <29.217924, 35.314175, 24.864584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974846, 35.534225, 25.450390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904699, 35.140472, 25.444111>,  <28.862612, 34.904221, 25.440344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904699, 35.140472, 25.444111>,  <28.974846, 35.534225, 25.450390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904699, 35.140472, 25.444111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499398, -0.102685, 0.860266,
		-0.848438, 0.143025, 0.509604,
		-0.175368, -0.984378, -0.015696,
		28.852089, 34.845158, 25.439402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946909, 35.412102, 26.181147>,  <28.974846, 35.534225, 25.450390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946909, 35.412102, 26.181147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037956, 35.081047, 25.975929>,  <29.092585, 34.882416, 25.852798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037956, 35.081047, 25.975929>,  <28.946909, 35.412102, 26.181147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037956, 35.081047, 25.975929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589194, -0.302422, 0.749261,
		-0.775268, -0.472828, 0.418799,
		0.227617, -0.827632, -0.513045,
		29.106241, 34.832756, 25.822016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091303, 34.915730, 26.698416>,  <28.946909, 35.412102, 26.181147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091303, 34.915730, 26.698416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256292, 34.748646, 26.374592>,  <29.355286, 34.648396, 26.180298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256292, 34.748646, 26.374592>,  <29.091303, 34.915730, 26.698416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256292, 34.748646, 26.374592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749405, -0.349675, 0.562245,
		-0.517937, -0.838598, 0.168800,
		0.412472, -0.417707, -0.809560,
		29.380033, 34.623333, 26.131723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204720, 34.281506, 26.786821>,  <29.091303, 34.915730, 26.698416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204720, 34.281506, 26.786821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476805, 34.327820, 26.497295>,  <29.640057, 34.355610, 26.323580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476805, 34.327820, 26.497295>,  <29.204720, 34.281506, 26.786821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476805, 34.327820, 26.497295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707429, -0.362308, 0.606859,
		-0.191978, -0.924839, -0.328356,
		0.680212, 0.115785, -0.723812,
		29.680868, 34.362556, 26.280151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528717, 33.712826, 26.850906>,  <29.204720, 34.281506, 26.786821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528717, 33.712826, 26.850906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774313, 33.945171, 26.637135>,  <29.921671, 34.084579, 26.508871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774313, 33.945171, 26.637135>,  <29.528717, 33.712826, 26.850906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774313, 33.945171, 26.637135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784627, -0.375494, 0.493319,
		0.085873, -0.722223, -0.686308,
		0.613991, 0.580859, -0.534431,
		29.958511, 34.119431, 26.476805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937830, 33.246284, 26.448460>,  <29.528717, 33.712826, 26.850906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937830, 33.246284, 26.448460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129854, 33.596462, 26.470890>,  <30.245070, 33.806568, 26.484348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129854, 33.596462, 26.470890>,  <29.937830, 33.246284, 26.448460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129854, 33.596462, 26.470890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819948, -0.470513, 0.326042,
		0.311815, -0.110541, -0.943691,
		0.480060, 0.875442, 0.056075,
		30.273872, 33.859097, 26.487713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555798, 33.102398, 26.220879>,  <29.937830, 33.246284, 26.448460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555798, 33.102398, 26.220879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633961, 33.449474, 26.403713>,  <30.680859, 33.657719, 26.513414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633961, 33.449474, 26.403713>,  <30.555798, 33.102398, 26.220879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633961, 33.449474, 26.403713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791605, -0.414682, 0.448777,
		0.578945, 0.274138, -0.767900,
		0.195407, 0.867691, 0.457087,
		30.692583, 33.709782, 26.540840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233526, 33.243622, 26.004215>,  <30.555798, 33.102398, 26.220879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233526, 33.243622, 26.004215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141190, 33.448357, 26.335209>,  <31.085787, 33.571198, 26.533806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141190, 33.448357, 26.335209>,  <31.233526, 33.243622, 26.004215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141190, 33.448357, 26.335209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802441, -0.380824, 0.459414,
		0.550273, 0.770060, -0.322812,
		-0.230842, 0.511840, 0.827485,
		31.071938, 33.601910, 26.583454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832504, 33.639431, 26.189442>,  <31.233526, 33.243622, 26.004215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832504, 33.639431, 26.189442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615412, 33.612457, 26.524319>,  <31.485155, 33.596275, 26.725245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615412, 33.612457, 26.524319>,  <31.832504, 33.639431, 26.189442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615412, 33.612457, 26.524319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810337, -0.304194, 0.500820,
		0.220899, 0.950221, 0.219736,
		-0.542732, -0.067430, 0.837195,
		31.452593, 33.592228, 26.775476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319881, 33.630131, 26.689209>,  <31.832504, 33.639431, 26.189442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319881, 33.630131, 26.689209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012432, 33.477753, 26.894772>,  <31.827963, 33.386326, 27.018108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012432, 33.477753, 26.894772>,  <32.319881, 33.630131, 26.689209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012432, 33.477753, 26.894772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600607, -0.706283, 0.374749,
		0.220205, 0.596696, 0.771663,
		-0.768623, -0.380944, 0.513907,
		31.781845, 33.363468, 27.048944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632301, 33.436508, 27.332333>,  <32.319881, 33.630131, 26.689209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632301, 33.436508, 27.332333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289192, 33.231937, 27.311668>,  <32.083328, 33.109196, 27.299271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289192, 33.231937, 27.311668>,  <32.632301, 33.436508, 27.332333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289192, 33.231937, 27.311668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448847, -0.794193, 0.409625,
		-0.250519, 0.328179, 0.910790,
		-0.857774, -0.511425, -0.051658,
		32.031860, 33.078510, 27.296171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579334, 33.021645, 27.918243>,  <32.632301, 33.436508, 27.332333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579334, 33.021645, 27.918243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335354, 32.838573, 27.659481>,  <32.188965, 32.728729, 27.504223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335354, 32.838573, 27.659481>,  <32.579334, 33.021645, 27.918243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335354, 32.838573, 27.659481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254825, -0.886275, 0.386758,
		-0.750348, 0.071056, 0.657214,
		-0.609953, -0.457677, -0.646907,
		32.152367, 32.701271, 27.465408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818192, 33.338001, 28.480562>,  <32.579334, 33.021645, 27.918243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818192, 33.338001, 28.480562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160511, 33.285538, 28.680721>,  <33.365902, 33.254059, 28.800817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160511, 33.285538, 28.680721>,  <32.818192, 33.338001, 28.480562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160511, 33.285538, 28.680721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367530, 0.834891, -0.409730,
		-0.364038, 0.534560, 0.762707,
		0.855803, -0.131160, 0.500399,
		33.417252, 33.246189, 28.830841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015675, 34.029057, 28.634546>,  <32.818192, 33.338001, 28.480562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015675, 34.029057, 28.634546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344730, 33.808849, 28.691383>,  <33.542164, 33.676723, 28.725485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344730, 33.808849, 28.691383>,  <33.015675, 34.029057, 28.634546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344730, 33.808849, 28.691383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502710, 0.587538, -0.634099,
		0.265599, 0.593067, 0.760085,
		0.822642, -0.550518, 0.142091,
		33.591522, 33.643692, 28.734011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565620, 34.468250, 28.752878>,  <33.015675, 34.029057, 28.634546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565620, 34.468250, 28.752878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751892, 34.136868, 28.628426>,  <33.863655, 33.938038, 28.553755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751892, 34.136868, 28.628426>,  <33.565620, 34.468250, 28.752878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751892, 34.136868, 28.628426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500623, 0.536530, -0.679346,
		0.729741, 0.160597, 0.664595,
		0.465677, -0.828459, -0.311130,
		33.891594, 33.888329, 28.535088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189175, 34.767105, 28.714268>,  <33.565620, 34.468250, 28.752878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189175, 34.767105, 28.714268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183006, 34.429234, 28.500248>,  <34.179306, 34.226509, 28.371836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183006, 34.429234, 28.500248>,  <34.189175, 34.767105, 28.714268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183006, 34.429234, 28.500248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647434, 0.399350, -0.649114,
		0.761965, -0.356420, 0.540716,
		-0.015423, -0.844680, -0.535049,
		34.178379, 34.175831, 28.339733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898201, 34.631721, 28.531445>,  <34.189175, 34.767105, 28.714268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898201, 34.631721, 28.531445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653225, 34.449116, 28.273293>,  <34.506241, 34.339550, 28.118401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653225, 34.449116, 28.273293>,  <34.898201, 34.631721, 28.531445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653225, 34.449116, 28.273293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574596, 0.303621, -0.760036,
		0.542921, -0.836305, 0.076365,
		-0.612435, -0.456518, -0.645379,
		34.469494, 34.312160, 28.079679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320885, 34.421963, 27.934353>,  <34.898201, 34.631721, 28.531445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320885, 34.421963, 27.934353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956142, 34.401882, 27.771378>,  <34.737297, 34.389832, 27.673594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956142, 34.401882, 27.771378>,  <35.320885, 34.421963, 27.934353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956142, 34.401882, 27.771378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398065, 0.134476, -0.907447,
		0.100342, -0.989645, -0.102640,
		-0.911853, -0.050198, -0.407436,
		34.682587, 34.386822, 27.649147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451439, 34.029373, 27.352839>,  <35.320885, 34.421963, 27.934353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451439, 34.029373, 27.352839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139622, 34.275887, 27.308105>,  <34.952530, 34.423794, 27.281265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139622, 34.275887, 27.308105>,  <35.451439, 34.029373, 27.352839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139622, 34.275887, 27.308105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309402, 0.223649, -0.924257,
		-0.544593, -0.755100, -0.365023,
		-0.779544, 0.616283, -0.111832,
		34.905758, 34.460770, 27.274555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366825, 34.105789, 26.627354>,  <35.451439, 34.029373, 27.352839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366825, 34.105789, 26.627354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098949, 34.386410, 26.724796>,  <34.938225, 34.554783, 26.783262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098949, 34.386410, 26.724796>,  <35.366825, 34.105789, 26.627354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098949, 34.386410, 26.724796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069956, 0.386159, -0.919776,
		-0.739341, -0.598920, -0.307683,
		-0.669687, 0.701553, 0.243606,
		34.898045, 34.596874, 26.797878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782135, 34.096497, 26.082817>,  <35.366825, 34.105789, 26.627354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782135, 34.096497, 26.082817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757225, 34.443253, 26.280655>,  <34.742279, 34.651306, 26.399357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757225, 34.443253, 26.280655>,  <34.782135, 34.096497, 26.082817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757225, 34.443253, 26.280655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032756, 0.497065, -0.867095,
		-0.997521, -0.037798, -0.059351,
		-0.062276, 0.866890, 0.494595,
		34.738541, 34.703320, 26.429033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385532, 34.556732, 25.657156>,  <34.782135, 34.096497, 26.082817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385532, 34.556732, 25.657156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590473, 34.791035, 25.908356>,  <34.713436, 34.931618, 26.059076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590473, 34.791035, 25.908356>,  <34.385532, 34.556732, 25.657156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590473, 34.791035, 25.908356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196063, 0.632174, -0.749610,
		-0.836096, 0.507190, 0.209048,
		0.512350, 0.585760, 0.628000,
		34.744179, 34.966763, 26.096756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112888, 35.248096, 25.590906>,  <34.385532, 34.556732, 25.657156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112888, 35.248096, 25.590906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478287, 35.328552, 25.732365>,  <34.697525, 35.376827, 25.817240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478287, 35.328552, 25.732365>,  <34.112888, 35.248096, 25.590906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478287, 35.328552, 25.732365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208096, 0.515936, -0.830967,
		-0.349601, 0.832678, 0.429450,
		0.913496, 0.201140, 0.353649,
		34.752335, 35.388893, 25.838459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318455, 35.993694, 25.433464>,  <34.112888, 35.248096, 25.590906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318455, 35.993694, 25.433464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654606, 35.788338, 25.502964>,  <34.856297, 35.665123, 25.544664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654606, 35.788338, 25.502964>,  <34.318455, 35.993694, 25.433464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654606, 35.788338, 25.502964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398309, 0.367579, -0.840378,
		0.367579, 0.775442, 0.513395,
		0.840378, -0.513395, 0.173751,
		34.906719, 35.634319, 25.555090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.565826, 31.674351, 32.032196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.898638, 31.464474, 31.960171>,  <32.098324, 31.338547, 31.916956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.898638, 31.464474, 31.960171>,  <31.565826, 31.674351, 32.032196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898638, 31.464474, 31.960171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247683, 0.641820, -0.725755,
		0.496365, 0.559253, 0.663971,
		0.832031, -0.524694, -0.180060,
		32.148247, 31.307066, 31.906153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115894, 32.191071, 32.042229>,  <31.565826, 31.674351, 32.032196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115894, 32.191071, 32.042229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.253227, 31.879532, 31.832272>,  <32.335629, 31.692608, 31.706297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.253227, 31.879532, 31.832272>,  <32.115894, 32.191071, 32.042229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253227, 31.879532, 31.832272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382166, 0.626360, -0.679428,
		0.857946, 0.032672, 0.512700,
		0.343333, -0.778849, -0.524897,
		32.356228, 31.645878, 31.674803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773064, 32.467049, 31.835369>,  <32.115894, 32.191071, 32.042229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773064, 32.467049, 31.835369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738762, 32.153400, 31.589508>,  <32.718182, 31.965210, 31.441992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738762, 32.153400, 31.589508>,  <32.773064, 32.467049, 31.835369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738762, 32.153400, 31.589508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428613, 0.527887, -0.733230,
		0.899410, -0.326322, 0.290819,
		-0.085750, -0.784123, -0.614653,
		32.713036, 31.918163, 31.405113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421291, 32.398991, 31.462322>,  <32.773064, 32.467049, 31.835369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421291, 32.398991, 31.462322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169312, 32.210567, 31.215336>,  <33.018124, 32.097511, 31.067144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169312, 32.210567, 31.215336>,  <33.421291, 32.398991, 31.462322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169312, 32.210567, 31.215336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372263, 0.514622, -0.772389,
		0.681603, -0.716427, -0.148828,
		-0.629950, -0.471060, -0.617467,
		32.980328, 32.069248, 31.030096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826363, 32.146896, 30.919518>,  <33.421291, 32.398991, 31.462322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826363, 32.146896, 30.919518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456371, 32.183189, 30.771908>,  <33.234375, 32.204964, 30.683342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456371, 32.183189, 30.771908>,  <33.826363, 32.146896, 30.919518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456371, 32.183189, 30.771908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368212, 0.454130, -0.811287,
		0.093973, -0.886303, -0.453471,
		-0.924981, 0.090734, -0.369023,
		33.178879, 32.210411, 30.661201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899204, 31.837168, 30.282024>,  <33.826363, 32.146896, 30.919518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899204, 31.837168, 30.282024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570965, 32.065556, 30.272121>,  <33.374023, 32.202587, 30.266180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.570965, 32.065556, 30.272121>,  <33.899204, 31.837168, 30.282024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570965, 32.065556, 30.272121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378932, 0.511148, -0.771452,
		-0.427823, -0.642432, -0.635805,
		-0.820596, 0.570972, -0.024757,
		33.324787, 32.236847, 30.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735394, 31.802183, 29.595356>,  <33.899204, 31.837168, 30.282024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735394, 31.802183, 29.595356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563675, 32.137089, 29.730824>,  <33.460644, 32.338032, 29.812103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563675, 32.137089, 29.730824>,  <33.735394, 31.802183, 29.595356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563675, 32.137089, 29.730824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146705, 0.434643, -0.888574,
		-0.891171, -0.331774, -0.309420,
		-0.429293, 0.837264, 0.338669,
		33.434887, 32.388268, 29.832424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232674, 32.053825, 29.042524>,  <33.735394, 31.802183, 29.595356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232674, 32.053825, 29.042524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263893, 32.375534, 29.278168>,  <33.282627, 32.568562, 29.419554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263893, 32.375534, 29.278168>,  <33.232674, 32.053825, 29.042524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263893, 32.375534, 29.278168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037876, 0.588091, -0.807907,
		-0.996230, 0.085371, 0.015439,
		0.078051, 0.804277, 0.589107,
		33.287308, 32.616817, 29.454901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818443, 32.598450, 28.727535>,  <33.232674, 32.053825, 29.042524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818443, 32.598450, 28.727535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.107571, 32.752331, 28.957157>,  <33.281048, 32.844658, 29.094931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.107571, 32.752331, 28.957157>,  <32.818443, 32.598450, 28.727535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107571, 32.752331, 28.957157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337776, 0.528026, -0.779164,
		-0.602863, 0.757095, 0.251722,
		0.722816, 0.384703, 0.574056,
		33.324417, 32.867741, 29.129374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186646, 32.510185, 28.358955>,  <32.818443, 32.598450, 28.727535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186646, 32.510185, 28.358955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.171288, 32.387985, 27.978390>,  <32.162071, 32.314663, 27.750050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.171288, 32.387985, 27.978390>,  <32.186646, 32.510185, 28.358955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171288, 32.387985, 27.978390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066576, -0.949220, 0.307486,
		-0.997042, 0.075147, 0.016105,
		-0.038394, -0.305505, -0.951416,
		32.159771, 32.296333, 27.692965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668268, 32.083645, 28.436476>,  <32.186646, 32.510185, 28.358955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668268, 32.083645, 28.436476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.867434, 32.001827, 28.099373>,  <31.986933, 31.952736, 27.897112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.867434, 32.001827, 28.099373>,  <31.668268, 32.083645, 28.436476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867434, 32.001827, 28.099373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155862, -0.934856, 0.318986,
		-0.853104, -0.290182, -0.433599,
		0.497916, -0.204547, -0.842757,
		32.016808, 31.940462, 27.846546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356215, 31.522579, 28.157488>,  <31.668268, 32.083645, 28.436476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356215, 31.522579, 28.157488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.719946, 31.522877, 27.991055>,  <31.938185, 31.523056, 27.891195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.719946, 31.522877, 27.991055>,  <31.356215, 31.522579, 28.157488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719946, 31.522877, 27.991055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057234, -0.990717, 0.123309,
		-0.412128, -0.135942, -0.900928,
		0.909327, 0.000745, -0.416083,
		31.992744, 31.523100, 27.866230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341297, 30.917225, 27.886963>,  <31.356215, 31.522579, 28.157488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341297, 30.917225, 27.886963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722742, 31.031399, 27.848694>,  <31.951609, 31.099903, 27.825733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722742, 31.031399, 27.848694>,  <31.341297, 30.917225, 27.886963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722742, 31.031399, 27.848694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301011, -0.908538, 0.289743,
		-0.004218, -0.305100, -0.952311,
		0.953611, 0.285434, -0.095671,
		32.008827, 31.117029, 27.819992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718050, 30.488966, 27.537123>,  <31.341297, 30.917225, 27.886963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718050, 30.488966, 27.537123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.984461, 30.672836, 27.772106>,  <32.144306, 30.783159, 27.913097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.984461, 30.672836, 27.772106>,  <31.718050, 30.488966, 27.537123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984461, 30.672836, 27.772106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149718, -0.853908, 0.498424,
		0.730750, -0.244010, -0.637545,
		0.666025, 0.459675, 0.587460,
		32.184269, 30.810740, 27.948345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315685, 30.033484, 27.543530>,  <31.718050, 30.488966, 27.537123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315685, 30.033484, 27.543530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.313793, 30.258816, 27.874016>,  <32.312656, 30.394016, 28.072308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.313793, 30.258816, 27.874016>,  <32.315685, 30.033484, 27.543530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313793, 30.258816, 27.874016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229982, -0.803466, 0.549137,
		0.973183, 0.192613, -0.125755,
		-0.004731, 0.563332, 0.826217,
		32.312374, 30.427816, 28.121881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585384, 29.589645, 27.972223>,  <32.315685, 30.033484, 27.543530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585384, 29.589645, 27.972223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496811, 29.873444, 28.239830>,  <32.443668, 30.043722, 28.400394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496811, 29.873444, 28.239830>,  <32.585384, 29.589645, 27.972223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496811, 29.873444, 28.239830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089739, -0.697963, 0.710489,
		0.971038, 0.097290, 0.218222,
		-0.221434, 0.709495, 0.669018,
		32.430382, 30.086292, 28.440535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012234, 29.499067, 28.564461>,  <32.585384, 29.589645, 27.972223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012234, 29.499067, 28.564461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691021, 29.710148, 28.675213>,  <32.498291, 29.836796, 28.741663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691021, 29.710148, 28.675213>,  <33.012234, 29.499067, 28.564461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691021, 29.710148, 28.675213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167278, -0.645542, 0.745180,
		0.571971, 0.552091, 0.606667,
		-0.803036, 0.527703, 0.276879,
		32.450111, 29.868460, 28.758276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032803, 29.489487, 29.299995>,  <33.012234, 29.499067, 28.564461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032803, 29.489487, 29.299995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656170, 29.588032, 29.208138>,  <32.430191, 29.647158, 29.153023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656170, 29.588032, 29.208138>,  <33.032803, 29.489487, 29.299995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656170, 29.588032, 29.208138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335970, -0.734791, 0.589242,
		-0.023575, 0.631971, 0.774633,
		-0.941578, 0.246362, -0.229646,
		32.373695, 29.661940, 29.139244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620598, 29.631296, 29.999249>,  <33.032803, 29.489487, 29.299995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620598, 29.631296, 29.999249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342354, 29.549465, 29.723778>,  <32.175407, 29.500366, 29.558496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.342354, 29.549465, 29.723778>,  <32.620598, 29.631296, 29.999249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342354, 29.549465, 29.723778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391296, -0.696044, 0.602005,
		-0.602507, 0.688237, 0.404124,
		-0.695610, -0.204580, -0.688676,
		32.133671, 29.488091, 29.517176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071518, 29.341251, 30.396420>,  <32.620598, 29.631296, 29.999249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071518, 29.341251, 30.396420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.962530, 29.229542, 30.028122>,  <31.897139, 29.162516, 29.807144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.962530, 29.229542, 30.028122>,  <32.071518, 29.341251, 30.396420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962530, 29.229542, 30.028122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318330, -0.876893, 0.360173,
		-0.907980, 0.391235, 0.150022,
		-0.272466, -0.279273, -0.920744,
		31.880791, 29.145760, 29.751900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370699, 29.075357, 30.341318>,  <32.071518, 29.341251, 30.396420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370699, 29.075357, 30.341318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497662, 28.901394, 30.004246>,  <31.573839, 28.797016, 29.802002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497662, 28.901394, 30.004246>,  <31.370699, 29.075357, 30.341318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497662, 28.901394, 30.004246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468220, -0.844630, 0.259556,
		-0.824635, 0.312175, -0.471724,
		0.317406, -0.434910, -0.842678,
		31.592882, 28.770922, 29.751442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748646, 28.829290, 29.944590>,  <31.370699, 29.075357, 30.341318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748646, 28.829290, 29.944590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072418, 28.630661, 29.819221>,  <31.266682, 28.511482, 29.744001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072418, 28.630661, 29.819221>,  <30.748646, 28.829290, 29.944590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072418, 28.630661, 29.819221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408299, -0.859542, 0.307375,
		-0.422032, -0.120831, -0.898493,
		0.809432, -0.496576, -0.313419,
		31.315248, 28.481688, 29.725195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499054, 28.313181, 29.683722>,  <30.748646, 28.829290, 29.944590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499054, 28.313181, 29.683722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.874104, 28.188587, 29.745483>,  <31.099133, 28.113831, 29.782541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.874104, 28.188587, 29.745483>,  <30.499054, 28.313181, 29.683722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874104, 28.188587, 29.745483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342276, -0.904892, 0.253017,
		0.060909, -0.290084, -0.955061,
		0.937623, -0.311484, 0.154405,
		31.155390, 28.095142, 29.791805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.143623, 26.429819, 30.511589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801594, 26.582737, 30.651707>,  <35.596378, 26.674488, 30.735777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801594, 26.582737, 30.651707>,  <36.143623, 26.429819, 30.511589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801594, 26.582737, 30.651707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075968, 0.575919, -0.813969,
		-0.512916, -0.722613, -0.463410,
		-0.855071, 0.382293, 0.350293,
		35.545071, 26.697426, 30.756794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777973, 26.530481, 29.933891>,  <36.143623, 26.429819, 30.511589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777973, 26.530481, 29.933891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590347, 26.758812, 30.203449>,  <35.477772, 26.895809, 30.365185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590347, 26.758812, 30.203449>,  <35.777973, 26.530481, 29.933891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590347, 26.758812, 30.203449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208749, 0.669767, -0.712626,
		-0.858138, -0.474944, -0.195006,
		-0.469066, 0.570825, 0.673897,
		35.449627, 26.930059, 30.405619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132694, 26.677322, 29.658150>,  <35.777973, 26.530481, 29.933891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132694, 26.677322, 29.658150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221416, 26.973835, 29.911545>,  <35.274651, 27.151743, 30.063581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221416, 26.973835, 29.911545>,  <35.132694, 26.677322, 29.658150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221416, 26.973835, 29.911545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267711, 0.670999, -0.691442,
		-0.937621, -0.016224, 0.347281,
		0.221807, 0.741281, 0.633486,
		35.287960, 27.196218, 30.101591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452072, 27.205702, 29.745886>,  <35.132694, 26.677322, 29.658150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452072, 27.205702, 29.745886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793060, 27.405308, 29.808205>,  <34.997654, 27.525072, 29.845596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793060, 27.405308, 29.808205>,  <34.452072, 27.205702, 29.745886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793060, 27.405308, 29.808205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284973, 0.693435, -0.661769,
		-0.438269, 0.519742, 0.733340,
		0.852473, 0.499015, 0.155798,
		35.048801, 27.555012, 29.854944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156334, 27.875357, 29.760649>,  <34.452072, 27.205702, 29.745886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156334, 27.875357, 29.760649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553833, 27.906281, 29.728413>,  <34.792332, 27.924835, 29.709070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553833, 27.906281, 29.728413>,  <34.156334, 27.875357, 29.760649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553833, 27.906281, 29.728413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110063, 0.800238, -0.589496,
		0.018920, 0.594678, 0.803741,
		0.993745, 0.077309, -0.080592,
		34.851955, 27.929474, 29.704235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284901, 28.534866, 29.740389>,  <34.156334, 27.875357, 29.760649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284901, 28.534866, 29.740389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637135, 28.407772, 29.599751>,  <34.848473, 28.331516, 29.515368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637135, 28.407772, 29.599751>,  <34.284901, 28.534866, 29.740389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637135, 28.407772, 29.599751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024771, 0.710052, -0.703713,
		0.473246, 0.628386, 0.617389,
		0.880582, -0.317736, -0.351595,
		34.901310, 28.312450, 29.494272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778263, 29.089138, 29.547213>,  <34.284901, 28.534866, 29.740389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778263, 29.089138, 29.547213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928097, 28.787045, 29.332062>,  <35.017998, 28.605789, 29.202971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928097, 28.787045, 29.332062>,  <34.778263, 29.089138, 29.547213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928097, 28.787045, 29.332062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041556, 0.593206, -0.803977,
		0.926261, 0.278805, 0.253590,
		0.374584, -0.755231, -0.537878,
		35.040470, 28.560474, 29.170698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416180, 29.272806, 29.248867>,  <34.778263, 29.089138, 29.547213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416180, 29.272806, 29.248867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305153, 28.964462, 29.019527>,  <35.238537, 28.779455, 28.881924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305153, 28.964462, 29.019527>,  <35.416180, 29.272806, 29.248867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305153, 28.964462, 29.019527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110984, 0.567075, -0.816155,
		0.954273, -0.290172, -0.071850,
		-0.277570, -0.770861, -0.573349,
		35.221882, 28.733204, 28.847523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987698, 29.255754, 28.631079>,  <35.416180, 29.272806, 29.248867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987698, 29.255754, 28.631079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655193, 29.061455, 28.522961>,  <35.455692, 28.944874, 28.458090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.655193, 29.061455, 28.522961>,  <35.987698, 29.255754, 28.631079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655193, 29.061455, 28.522961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047116, 0.546055, -0.836424,
		0.553878, -0.682554, -0.476802,
		-0.831264, -0.485741, -0.270289,
		35.405815, 28.915730, 28.441872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131512, 29.152084, 28.004238>,  <35.987698, 29.255754, 28.631079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131512, 29.152084, 28.004238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737839, 29.081253, 28.001774>,  <35.501637, 29.038755, 28.000296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737839, 29.081253, 28.001774>,  <36.131512, 29.152084, 28.004238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737839, 29.081253, 28.001774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058659, 0.358444, -0.931707,
		0.167191, -0.916604, -0.363160,
		-0.984178, -0.177075, -0.006161,
		35.442585, 29.028130, 27.999926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033352, 28.859823, 27.344143>,  <36.131512, 29.152084, 28.004238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033352, 28.859823, 27.344143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.680580, 29.007008, 27.461998>,  <35.468918, 29.095318, 27.532711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.680580, 29.007008, 27.461998>,  <36.033352, 28.859823, 27.344143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680580, 29.007008, 27.461998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151048, 0.371494, -0.916066,
		-0.446531, -0.852407, -0.272051,
		-0.881926, 0.367959, 0.294638,
		35.416000, 29.117395, 27.550388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591335, 28.812128, 26.753819>,  <36.033352, 28.859823, 27.344143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591335, 28.812128, 26.753819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411694, 29.091347, 26.976902>,  <35.303909, 29.258877, 27.110752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411694, 29.091347, 26.976902>,  <35.591335, 28.812128, 26.753819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411694, 29.091347, 26.976902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110571, 0.575978, -0.809953,
		-0.886611, -0.425420, -0.181490,
		-0.449104, 0.698046, 0.557707,
		35.276962, 29.300760, 27.144215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993774, 28.921432, 26.350176>,  <35.591335, 28.812128, 26.753819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993774, 28.921432, 26.350176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038376, 29.244286, 26.582073>,  <35.065136, 29.437998, 26.721212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038376, 29.244286, 26.582073>,  <34.993774, 28.921432, 26.350176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038376, 29.244286, 26.582073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039217, 0.586501, -0.808999,
		-0.992990, 0.067470, 0.097050,
		0.111503, 0.807134, 0.579743,
		35.071827, 29.486425, 26.755997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412895, 29.439255, 26.181890>,  <34.993774, 28.921432, 26.350176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412895, 29.439255, 26.181890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706314, 29.633842, 26.371731>,  <34.882366, 29.750595, 26.485636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706314, 29.633842, 26.371731>,  <34.412895, 29.439255, 26.181890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706314, 29.633842, 26.371731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001836, 0.696900, -0.717166,
		-0.679631, 0.526950, 0.510319,
		0.733552, 0.486471, 0.474602,
		34.926380, 29.779783, 26.514111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822018, 29.809328, 26.380821>,  <34.412895, 29.439255, 26.181890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822018, 29.809328, 26.380821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577816, 29.640976, 26.112450>,  <33.431293, 29.539965, 25.951427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.577816, 29.640976, 26.112450>,  <33.822018, 29.809328, 26.380821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577816, 29.640976, 26.112450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192019, -0.743190, 0.640934,
		-0.768384, 0.520124, 0.372903,
		-0.610503, -0.420879, -0.670930,
		33.394665, 29.514711, 25.911171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263710, 29.426971, 26.780783>,  <33.822018, 29.809328, 26.380821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263710, 29.426971, 26.780783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215103, 29.263268, 26.419067>,  <33.185940, 29.165045, 26.202038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215103, 29.263268, 26.419067>,  <33.263710, 29.426971, 26.780783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215103, 29.263268, 26.419067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193803, -0.883725, 0.425994,
		-0.973485, 0.227021, 0.028074,
		-0.121519, -0.409258, -0.904290,
		33.178646, 29.140490, 26.147779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642712, 29.139233, 26.757616>,  <33.263710, 29.426971, 26.780783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642712, 29.139233, 26.757616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870129, 28.944328, 26.492485>,  <33.006577, 28.827387, 26.333406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.870129, 28.944328, 26.492485>,  <32.642712, 29.139233, 26.757616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870129, 28.944328, 26.492485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204469, -0.864131, 0.459859,
		-0.796841, -0.125921, -0.590922,
		0.568540, -0.487260, -0.662827,
		33.040691, 28.798151, 26.293636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253757, 28.591795, 26.609825>,  <32.642712, 29.139233, 26.757616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253757, 28.591795, 26.609825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.623028, 28.488167, 26.496243>,  <32.844589, 28.425989, 26.428093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.623028, 28.488167, 26.496243>,  <32.253757, 28.591795, 26.609825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623028, 28.488167, 26.496243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178253, -0.943044, 0.280881,
		-0.340553, -0.208686, -0.916774,
		0.923174, -0.259072, -0.283958,
		32.899979, 28.410444, 26.411055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255955, 27.900126, 26.511101>,  <32.253757, 28.591795, 26.609825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255955, 27.900126, 26.511101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648632, 27.943157, 26.573975>,  <32.884239, 27.968977, 26.611700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648632, 27.943157, 26.573975>,  <32.255955, 27.900126, 26.511101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648632, 27.943157, 26.573975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041473, -0.926157, 0.374851,
		0.185905, -0.361470, -0.913662,
		0.981692, 0.107579, 0.157186,
		32.943138, 27.975431, 26.621130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540470, 27.204691, 26.328756>,  <32.255955, 27.900126, 26.511101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540470, 27.204691, 26.328756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833664, 27.377975, 26.538540>,  <33.009583, 27.481945, 26.664410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833664, 27.377975, 26.538540>,  <32.540470, 27.204691, 26.328756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833664, 27.377975, 26.538540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132491, -0.847144, 0.514581,
		0.667215, -0.307695, -0.678342,
		0.732987, 0.433210, 0.524460,
		33.053558, 27.507938, 26.695877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007408, 26.652973, 26.456585>,  <32.540470, 27.204691, 26.328756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007408, 26.652973, 26.456585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139896, 26.915348, 26.727890>,  <33.219391, 27.072773, 26.890673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139896, 26.915348, 26.727890>,  <33.007408, 26.652973, 26.456585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139896, 26.915348, 26.727890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220303, -0.752730, 0.620374,
		0.917475, -0.056058, -0.393825,
		0.331220, 0.655939, 0.678261,
		33.239262, 27.112129, 26.931368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627747, 26.375751, 26.716702>,  <33.007408, 26.652973, 26.456585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627747, 26.375751, 26.716702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504028, 26.640179, 26.990147>,  <33.429798, 26.798834, 27.154215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504028, 26.640179, 26.990147>,  <33.627747, 26.375751, 26.716702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504028, 26.640179, 26.990147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201763, -0.656880, 0.726499,
		0.929317, 0.362630, 0.069790,
		-0.309293, 0.661066, 0.683615,
		33.411240, 26.838499, 27.195230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108894, 26.271988, 27.238625>,  <33.627747, 26.375751, 26.716702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108894, 26.271988, 27.238625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792862, 26.448528, 27.408794>,  <33.603241, 26.554453, 27.510897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792862, 26.448528, 27.408794>,  <34.108894, 26.271988, 27.238625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792862, 26.448528, 27.408794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166185, -0.513795, 0.841663,
		0.590048, 0.735680, 0.332594,
		-0.790080, 0.441349, 0.425422,
		33.555840, 26.580933, 27.536421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306206, 26.358494, 27.959272>,  <34.108894, 26.271988, 27.238625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306206, 26.358494, 27.959272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906391, 26.366783, 27.950394>,  <33.666500, 26.371756, 27.945066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906391, 26.366783, 27.950394>,  <34.306206, 26.358494, 27.959272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906391, 26.366783, 27.950394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029465, -0.485157, 0.873930,
		0.007342, 0.874182, 0.485544,
		-0.999539, 0.020723, -0.022196,
		33.606529, 26.372999, 27.943735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957169, 26.692055, 28.586061>,  <34.306206, 26.358494, 27.959272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957169, 26.692055, 28.586061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682369, 26.455929, 28.416561>,  <33.517490, 26.314253, 28.314861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682369, 26.455929, 28.416561>,  <33.957169, 26.692055, 28.586061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682369, 26.455929, 28.416561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194157, -0.412827, 0.889875,
		-0.700240, 0.693616, 0.168998,
		-0.686999, -0.590313, -0.423749,
		33.476269, 26.278835, 28.289436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337555, 26.608746, 29.068403>,  <33.957169, 26.692055, 28.586061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337555, 26.608746, 29.068403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325901, 26.303658, 28.809975>,  <33.318909, 26.120605, 28.654917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325901, 26.303658, 28.809975>,  <33.337555, 26.608746, 29.068403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325901, 26.303658, 28.809975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240179, -0.622068, 0.745216,
		-0.970291, 0.176887, -0.165063,
		-0.029139, -0.762721, -0.646071,
		33.317158, 26.074841, 28.616154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825619, 26.260201, 29.298231>,  <33.337555, 26.608746, 29.068403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825619, 26.260201, 29.298231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985962, 25.977596, 29.064938>,  <33.082169, 25.808035, 28.924961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985962, 25.977596, 29.064938>,  <32.825619, 26.260201, 29.298231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985962, 25.977596, 29.064938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250616, -0.696901, 0.671953,
		-0.881196, -0.123188, -0.456418,
		0.400855, -0.706509, -0.583233,
		33.106220, 25.765644, 28.889967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322811, 25.690327, 29.284050>,  <32.825619, 26.260201, 29.298231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322811, 25.690327, 29.284050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674145, 25.527485, 29.183811>,  <32.884945, 25.429781, 29.123669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674145, 25.527485, 29.183811>,  <32.322811, 25.690327, 29.284050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674145, 25.527485, 29.183811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059166, -0.612748, 0.788060,
		-0.474373, -0.677353, -0.562284,
		0.878334, -0.407102, -0.250595,
		32.937645, 25.405354, 29.108633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899891, 25.462610, 28.659582>,  <32.322811, 25.690327, 29.284050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899891, 25.462610, 28.659582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.573141, 25.251163, 28.567253>,  <31.377090, 25.124296, 28.511856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.573141, 25.251163, 28.567253>,  <31.899891, 25.462610, 28.659582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573141, 25.251163, 28.567253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324147, 0.751697, -0.574352,
		0.477119, -0.394355, -0.785392,
		-0.816876, -0.528617, -0.230820,
		31.328079, 25.092579, 28.498007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851637, 25.407284, 27.963123>,  <31.899891, 25.462610, 28.659582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851637, 25.407284, 27.963123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472084, 25.355526, 28.078281>,  <31.244352, 25.324472, 28.147377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472084, 25.355526, 28.078281>,  <31.851637, 25.407284, 27.963123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472084, 25.355526, 28.078281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265653, 0.819960, -0.507044,
		-0.170455, -0.557604, -0.812417,
		-0.948880, -0.129393, 0.287895,
		31.187420, 25.316708, 28.164650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490288, 25.442471, 27.367147>,  <31.851637, 25.407284, 27.963123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490288, 25.442471, 27.367147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206644, 25.520256, 27.638248>,  <31.036457, 25.566927, 27.800909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206644, 25.520256, 27.638248>,  <31.490288, 25.442471, 27.367147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206644, 25.520256, 27.638248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307789, 0.779432, -0.545666,
		-0.634374, -0.595542, -0.492848,
		-0.709109, 0.194463, 0.677753,
		30.993912, 25.578594, 27.841574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857521, 25.382725, 27.007298>,  <31.490288, 25.442471, 27.367147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857521, 25.382725, 27.007298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.791126, 25.616241, 27.325199>,  <30.751289, 25.756351, 27.515940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.791126, 25.616241, 27.325199>,  <30.857521, 25.382725, 27.007298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791126, 25.616241, 27.325199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453760, 0.670328, -0.587165,
		-0.875528, -0.458090, 0.153634,
		-0.165989, 0.583792, 0.794754,
		30.741329, 25.791380, 27.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160078, 25.757837, 26.998093>,  <30.857521, 25.382725, 27.007298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160078, 25.757837, 26.998093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.351118, 25.973953, 27.275215>,  <30.465742, 26.103622, 27.441488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.351118, 25.973953, 27.275215>,  <30.160078, 25.757837, 26.998093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351118, 25.973953, 27.275215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321537, 0.841340, -0.434466,
		-0.817625, -0.015261, 0.575549,
		0.477603, 0.540291, 0.692807,
		30.494398, 26.136040, 27.483057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711435, 26.195097, 27.212782>,  <30.160078, 25.757837, 26.998093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711435, 26.195097, 27.212782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052601, 26.386497, 27.296284>,  <30.257299, 26.501337, 27.346384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052601, 26.386497, 27.296284>,  <29.711435, 26.195097, 27.212782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052601, 26.386497, 27.296284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355169, 0.824920, -0.439730,
		-0.382616, 0.300909, 0.873533,
		0.852913, 0.478499, 0.208754,
		30.308475, 26.530046, 27.358910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603365, 26.979271, 27.477800>,  <29.711435, 26.195097, 27.212782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603365, 26.979271, 27.477800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.971001, 26.962135, 27.321114>,  <30.191582, 26.951855, 27.227102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.971001, 26.962135, 27.321114>,  <29.603365, 26.979271, 27.477800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971001, 26.962135, 27.321114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211714, 0.784726, -0.582566,
		0.332345, 0.618361, 0.712163,
		0.919089, -0.042838, -0.391716,
		30.246727, 26.949284, 27.203598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910904, 27.662176, 27.665478>,  <29.603365, 26.979271, 27.477800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910904, 27.662176, 27.665478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.129131, 27.516773, 27.363426>,  <30.260069, 27.429531, 27.182196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.129131, 27.516773, 27.363426>,  <29.910904, 27.662176, 27.665478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129131, 27.516773, 27.363426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042043, 0.888031, -0.457858,
		0.837010, 0.281542, 0.469200,
		0.545570, -0.363505, -0.755128,
		30.292803, 27.407722, 27.136889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367043, 28.179853, 27.434509>,  <29.910904, 27.662176, 27.665478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367043, 28.179853, 27.434509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.414024, 27.933681, 27.122753>,  <30.442213, 27.785978, 26.935699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.414024, 27.933681, 27.122753>,  <30.367043, 28.179853, 27.434509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414024, 27.933681, 27.122753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105979, 0.788110, -0.606343,
		0.987407, -0.011381, 0.157790,
		0.117454, -0.615430, -0.779391,
		30.449261, 27.749052, 26.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977350, 28.298918, 27.063276>,  <30.367043, 28.179853, 27.434509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977350, 28.298918, 27.063276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772995, 28.110268, 26.775787>,  <30.650381, 27.997078, 26.603294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772995, 28.110268, 26.775787>,  <30.977350, 28.298918, 27.063276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772995, 28.110268, 26.775787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103712, 0.796145, -0.596151,
		0.853369, -0.379106, -0.357826,
		-0.510886, -0.471626, -0.718724,
		30.619728, 27.968781, 26.560171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438677, 28.374289, 26.438335>,  <30.977350, 28.298918, 27.063276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438677, 28.374289, 26.438335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075521, 28.292717, 26.291828>,  <30.857628, 28.243774, 26.203924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075521, 28.292717, 26.291828>,  <31.438677, 28.374289, 26.438335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075521, 28.292717, 26.291828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004018, 0.877899, -0.478830,
		0.419194, -0.433252, -0.797853,
		-0.907888, -0.203928, -0.366269,
		30.803156, 28.231539, 26.181948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534824, 28.509186, 25.739895>,  <31.438677, 28.374289, 26.438335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534824, 28.509186, 25.739895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143034, 28.518700, 25.819958>,  <30.907959, 28.524408, 25.867994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143034, 28.518700, 25.819958>,  <31.534824, 28.509186, 25.739895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143034, 28.518700, 25.819958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089122, 0.839566, -0.535897,
		-0.180791, -0.542736, -0.820214,
		-0.979476, 0.023786, 0.200156,
		30.849192, 28.525835, 25.880005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245743, 28.683460, 25.115902>,  <31.534824, 28.509186, 25.739895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245743, 28.683460, 25.115902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.986244, 28.779705, 25.404690>,  <30.830545, 28.837452, 25.577963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.986244, 28.779705, 25.404690>,  <31.245743, 28.683460, 25.115902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986244, 28.779705, 25.404690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291831, 0.797514, -0.528021,
		-0.702827, -0.553243, -0.447165,
		-0.648744, 0.240611, 0.721968,
		30.791620, 28.851889, 25.621281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748196, 29.005106, 24.675074>,  <31.245743, 28.683460, 25.115902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748196, 29.005106, 24.675074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607475, 29.097782, 25.037853>,  <30.523043, 29.153387, 25.255522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607475, 29.097782, 25.037853>,  <30.748196, 29.005106, 24.675074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607475, 29.097782, 25.037853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373229, 0.853821, -0.362891,
		-0.858450, -0.466165, -0.213902,
		-0.351801, 0.231689, 0.906949,
		30.501936, 29.167290, 25.309938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.364220, 36.679504, 14.799768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.632149, 36.889091, 15.010213>,  <43.792908, 37.014843, 15.136479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.632149, 36.889091, 15.010213>,  <43.364220, 36.679504, 14.799768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632149, 36.889091, 15.010213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077576, -0.655288, 0.751385,
		0.738456, -0.544110, -0.398281,
		0.669825, 0.523967, 0.526111,
		43.833096, 37.046280, 15.168046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956921, 36.269505, 15.117723>,  <43.364220, 36.679504, 14.799768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956921, 36.269505, 15.117723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.909115, 36.592346, 15.348998>,  <43.880432, 36.786049, 15.487763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.909115, 36.592346, 15.348998>,  <43.956921, 36.269505, 15.117723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909115, 36.592346, 15.348998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442858, -0.564555, 0.696530,
		0.888591, -0.172813, 0.424903,
		-0.119512, 0.807102, 0.578190,
		43.873260, 36.834476, 15.522455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216358, 36.037239, 15.755378>,  <43.956921, 36.269505, 15.117723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216358, 36.037239, 15.755378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.031944, 36.372364, 15.872352>,  <43.921295, 36.573441, 15.942536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.031944, 36.372364, 15.872352>,  <44.216358, 36.037239, 15.755378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031944, 36.372364, 15.872352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382010, -0.484833, 0.786768,
		0.800946, 0.251015, 0.543578,
		-0.461035, 0.837812, 0.292435,
		43.893635, 36.623707, 15.960082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468781, 36.223934, 16.381504>,  <44.216358, 36.037239, 15.755378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468781, 36.223934, 16.381504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.116825, 36.413849, 16.373875>,  <43.905651, 36.527798, 16.369297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.116825, 36.413849, 16.373875>,  <44.468781, 36.223934, 16.381504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116825, 36.413849, 16.373875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261954, -0.451190, 0.853117,
		0.396447, 0.755646, 0.521372,
		-0.879892, 0.474791, -0.019072,
		43.852856, 36.556286, 16.368153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447056, 36.548317, 17.030994>,  <44.468781, 36.223934, 16.381504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447056, 36.548317, 17.030994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.069141, 36.508339, 16.906162>,  <43.842392, 36.484352, 16.831263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.069141, 36.508339, 16.906162>,  <44.447056, 36.548317, 17.030994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069141, 36.508339, 16.906162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279975, -0.248695, 0.927235,
		-0.170286, 0.963411, 0.206981,
		-0.944784, -0.099945, -0.312081,
		43.785706, 36.478355, 16.812538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131050, 36.748276, 17.609484>,  <44.447056, 36.548317, 17.030994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131050, 36.748276, 17.609484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.850529, 36.562305, 17.393326>,  <43.682217, 36.450726, 17.263632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.850529, 36.562305, 17.393326>,  <44.131050, 36.748276, 17.609484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850529, 36.562305, 17.393326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355729, -0.428690, 0.830471,
		-0.617765, 0.774643, 0.135255,
		-0.701301, -0.464922, -0.540393,
		43.640137, 36.422829, 17.231207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553505, 36.884636, 17.877060>,  <44.131050, 36.748276, 17.609484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553505, 36.884636, 17.877060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.452129, 36.574074, 17.646248>,  <43.391304, 36.387737, 17.507761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.452129, 36.574074, 17.646248>,  <43.553505, 36.884636, 17.877060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452129, 36.574074, 17.646248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574065, -0.359402, 0.735717,
		-0.778600, 0.517711, -0.354622,
		-0.253437, -0.776405, -0.577030,
		43.376099, 36.341152, 17.473139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780624, 36.861706, 17.756145>,  <43.553505, 36.884636, 17.877060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780624, 36.861706, 17.756145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.917206, 36.489902, 17.700401>,  <42.999157, 36.266819, 17.666954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.917206, 36.489902, 17.700401>,  <42.780624, 36.861706, 17.756145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917206, 36.489902, 17.700401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608439, -0.331611, 0.720996,
		-0.716386, -0.161397, -0.678780,
		0.341458, -0.929508, -0.139361,
		43.019642, 36.211052, 17.658592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217232, 36.449757, 17.691629>,  <42.780624, 36.861706, 17.756145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217232, 36.449757, 17.691629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.520844, 36.207127, 17.786236>,  <42.703011, 36.061550, 17.843000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.520844, 36.207127, 17.786236>,  <42.217232, 36.449757, 17.691629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520844, 36.207127, 17.786236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541818, -0.387098, 0.746048,
		-0.360976, -0.694425, -0.622471,
		0.759032, -0.606571, 0.236518,
		42.748554, 36.025154, 17.857191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823635, 35.858776, 17.901176>,  <42.217232, 36.449757, 17.691629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823635, 35.858776, 17.901176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194427, 35.804462, 18.041046>,  <42.416901, 35.771873, 18.124968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194427, 35.804462, 18.041046>,  <41.823635, 35.858776, 17.901176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194427, 35.804462, 18.041046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372696, -0.439087, 0.817496,
		0.042531, -0.888124, -0.457632,
		0.926978, -0.135789, 0.349675,
		42.472523, 35.763725, 18.145948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845585, 35.263424, 17.965004>,  <41.823635, 35.858776, 17.901176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845585, 35.263424, 17.965004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.136444, 35.376076, 18.215424>,  <42.310959, 35.443665, 18.365675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.136444, 35.376076, 18.215424>,  <41.845585, 35.263424, 17.965004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136444, 35.376076, 18.215424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432018, -0.520996, 0.736154,
		0.533491, -0.805760, -0.257174,
		0.727150, 0.281628, 0.626050,
		42.354588, 35.460564, 18.403238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916615, 34.710472, 18.318924>,  <41.845585, 35.263424, 17.965004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916615, 34.710472, 18.318924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.118286, 34.974262, 18.541954>,  <42.239288, 35.132538, 18.675772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.118286, 34.974262, 18.541954>,  <41.916615, 34.710472, 18.318924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118286, 34.974262, 18.541954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267895, -0.494359, 0.826947,
		0.820996, -0.566302, -0.072575,
		0.504180, 0.659478, 0.557576,
		42.269539, 35.172104, 18.709227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276562, 34.314533, 18.887712>,  <41.916615, 34.710472, 18.318924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276562, 34.314533, 18.887712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232277, 34.694050, 19.006062>,  <42.205704, 34.921761, 19.077070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232277, 34.694050, 19.006062>,  <42.276562, 34.314533, 18.887712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232277, 34.694050, 19.006062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375130, -0.315577, 0.871601,
		0.920337, -0.014491, 0.390859,
		-0.110716, 0.948789, 0.295873,
		42.199062, 34.978687, 19.094824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709641, 34.490833, 19.594788>,  <42.276562, 34.314533, 18.887712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709641, 34.490833, 19.594788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.397778, 34.736900, 19.547958>,  <42.210659, 34.884541, 19.519861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.397778, 34.736900, 19.547958>,  <42.709641, 34.490833, 19.594788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397778, 34.736900, 19.547958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266616, -0.156930, 0.950941,
		0.566618, 0.772618, 0.286365,
		-0.779654, 0.615169, -0.117073,
		42.163883, 34.921452, 19.512836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645332, 34.659843, 20.275566>,  <42.709641, 34.490833, 19.594788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645332, 34.659843, 20.275566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.300285, 34.785988, 20.117355>,  <42.093258, 34.861675, 20.022429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.300285, 34.785988, 20.117355>,  <42.645332, 34.659843, 20.275566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300285, 34.785988, 20.117355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464218, -0.182840, 0.866644,
		0.200991, 0.931190, 0.304118,
		-0.862615, 0.315364, -0.395526,
		42.041500, 34.880596, 19.998697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400780, 35.230614, 20.720737>,  <42.645332, 34.659843, 20.275566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400780, 35.230614, 20.720737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095348, 35.063286, 20.523979>,  <41.912090, 34.962891, 20.405924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095348, 35.063286, 20.523979>,  <42.400780, 35.230614, 20.720737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095348, 35.063286, 20.523979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340759, -0.386023, 0.857245,
		-0.548486, 0.822189, 0.152212,
		-0.763575, -0.418319, -0.491897,
		41.866276, 34.937790, 20.376410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879299, 35.286644, 21.229187>,  <42.400780, 35.230614, 20.720737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879299, 35.286644, 21.229187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.690895, 35.073494, 20.947990>,  <41.577854, 34.945602, 20.779272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.690895, 35.073494, 20.947990>,  <41.879299, 35.286644, 21.229187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690895, 35.073494, 20.947990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564698, -0.430094, 0.704369,
		-0.677694, 0.728739, -0.098338,
		-0.471006, -0.532878, -0.702990,
		41.549595, 34.913631, 20.737093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195202, 35.332951, 21.332878>,  <41.879299, 35.286644, 21.229187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195202, 35.332951, 21.332878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.233154, 34.995533, 21.121433>,  <41.255924, 34.793083, 20.994566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.233154, 34.995533, 21.121433>,  <41.195202, 35.332951, 21.332878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233154, 34.995533, 21.121433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610752, -0.468653, 0.638237,
		-0.786117, 0.262294, -0.559663,
		0.094883, -0.843544, -0.528613,
		41.261620, 34.742470, 20.962849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524666, 35.050945, 21.337425>,  <41.195202, 35.332951, 21.332878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524666, 35.050945, 21.337425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.728870, 34.729591, 21.214825>,  <40.851395, 34.536777, 21.141264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.728870, 34.729591, 21.214825>,  <40.524666, 35.050945, 21.337425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728870, 34.729591, 21.214825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503017, -0.568128, 0.651310,
		-0.697387, -0.178327, -0.694155,
		0.510515, -0.803387, -0.306504,
		40.882027, 34.488575, 21.122873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061855, 34.557285, 21.290028>,  <40.524666, 35.050945, 21.337425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061855, 34.557285, 21.290028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408756, 34.361176, 21.324665>,  <40.616898, 34.243507, 21.345448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408756, 34.361176, 21.324665>,  <40.061855, 34.557285, 21.290028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408756, 34.361176, 21.324665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417222, -0.620797, 0.663729,
		-0.271655, -0.611750, -0.742944,
		0.867254, -0.490278, 0.086593,
		40.668934, 34.214092, 21.350643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992867, 33.860607, 21.190447>,  <40.061855, 34.557285, 21.290028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992867, 33.860607, 21.190447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293858, 33.862637, 21.453884>,  <40.474453, 33.863853, 21.611946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293858, 33.862637, 21.453884>,  <39.992867, 33.860607, 21.190447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293858, 33.862637, 21.453884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399720, -0.791228, 0.462798,
		0.523448, -0.611500, -0.593354,
		0.752480, 0.005075, 0.658595,
		40.519600, 33.864159, 21.651463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674423, 34.301231, 20.549921>,  <39.992867, 33.860607, 21.190447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674423, 34.301231, 20.549921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.356400, 34.269840, 20.309349>,  <39.165585, 34.251007, 20.165007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.356400, 34.269840, 20.309349>,  <39.674423, 34.301231, 20.549921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356400, 34.269840, 20.309349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599938, 0.044010, -0.798835,
		0.089161, -0.995944, 0.012092,
		-0.795063, -0.078480, -0.601428,
		39.117882, 34.246296, 20.128922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896996, 33.841141, 19.907005>,  <39.674423, 34.301231, 20.549921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896996, 33.841141, 19.907005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584175, 34.068382, 19.804504>,  <39.396484, 34.204727, 19.743004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584175, 34.068382, 19.804504>,  <39.896996, 33.841141, 19.907005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584175, 34.068382, 19.804504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437060, 0.206828, -0.875329,
		-0.444275, -0.796545, -0.410043,
		-0.782048, 0.568100, -0.256250,
		39.349560, 34.238811, 19.727629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798668, 33.777267, 19.199959>,  <39.896996, 33.841141, 19.907005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798668, 33.777267, 19.199959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.573132, 34.102196, 19.259567>,  <39.437809, 34.297153, 19.295332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.573132, 34.102196, 19.259567>,  <39.798668, 33.777267, 19.199959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573132, 34.102196, 19.259567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131423, 0.266391, -0.954863,
		-0.815357, -0.518810, -0.256961,
		-0.563845, 0.812325, 0.149020,
		39.403976, 34.345894, 19.304274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414673, 33.829254, 18.597561>,  <39.798668, 33.777267, 19.199959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414673, 33.829254, 18.597561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.405975, 34.192215, 18.765438>,  <39.400757, 34.409992, 18.866165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.405975, 34.192215, 18.765438>,  <39.414673, 33.829254, 18.597561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405975, 34.192215, 18.765438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019435, 0.420098, -0.907271,
		-0.999575, -0.011574, -0.026772,
		-0.021748, 0.907405, 0.419694,
		39.399452, 34.464436, 18.891346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906853, 34.143517, 18.257568>,  <39.414673, 33.829254, 18.597561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906853, 34.143517, 18.257568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.169598, 34.419922, 18.378250>,  <39.327244, 34.585766, 18.450661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.169598, 34.419922, 18.378250>,  <38.906853, 34.143517, 18.257568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169598, 34.419922, 18.378250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054016, 0.442235, -0.895271,
		-0.752070, 0.571776, 0.327815,
		0.656866, 0.691014, 0.301707,
		39.366657, 34.627228, 18.468761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941895, 34.621342, 17.737450>,  <38.906853, 34.143517, 18.257568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941895, 34.621342, 17.737450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211098, 34.807152, 17.967674>,  <39.372620, 34.918640, 18.105808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211098, 34.807152, 17.967674>,  <38.941895, 34.621342, 17.737450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211098, 34.807152, 17.967674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458098, 0.349152, -0.817459,
		-0.580691, 0.813822, 0.022185,
		0.673012, 0.464528, 0.575559,
		39.413002, 34.946510, 18.140343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019051, 35.254963, 17.416168>,  <38.941895, 34.621342, 17.737450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019051, 35.254963, 17.416168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.339355, 35.201672, 17.649761>,  <39.531536, 35.169697, 17.789917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.339355, 35.201672, 17.649761>,  <39.019051, 35.254963, 17.416168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339355, 35.201672, 17.649761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548449, 0.555037, -0.625410,
		-0.240810, 0.821087, 0.517520,
		0.800759, -0.133228, 0.583983,
		39.579582, 35.161701, 17.824957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327862, 35.909901, 17.530113>,  <39.019051, 35.254963, 17.416168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327862, 35.909901, 17.530113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608883, 35.632877, 17.595570>,  <39.777496, 35.466663, 17.634844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608883, 35.632877, 17.595570>,  <39.327862, 35.909901, 17.530113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608883, 35.632877, 17.595570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616703, 0.477780, -0.625623,
		0.355094, 0.540455, 0.762769,
		0.702556, -0.692557, 0.163643,
		39.819649, 35.425110, 17.644663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960846, 36.290653, 17.411318>,  <39.327862, 35.909901, 17.530113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960846, 36.290653, 17.411318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.066967, 35.906391, 17.378437>,  <40.130638, 35.675835, 17.358707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.066967, 35.906391, 17.378437>,  <39.960846, 36.290653, 17.411318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066967, 35.906391, 17.378437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618391, 0.234950, -0.749927,
		0.739734, 0.148123, 0.656394,
		0.265301, -0.960655, -0.082203,
		40.146557, 35.618195, 17.353777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688213, 36.262047, 17.263544>,  <39.960846, 36.290653, 17.411318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688213, 36.262047, 17.263544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567364, 35.904240, 17.131748>,  <40.494854, 35.689556, 17.052670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567364, 35.904240, 17.131748>,  <40.688213, 36.262047, 17.263544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567364, 35.904240, 17.131748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557134, 0.114774, -0.822453,
		0.773513, -0.432056, 0.463688,
		-0.302127, -0.894514, -0.329492,
		40.476727, 35.635887, 17.032900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262173, 35.938717, 16.977318>,  <40.688213, 36.262047, 17.263544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262173, 35.938717, 16.977318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967606, 35.714668, 16.825554>,  <40.790867, 35.580238, 16.734495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967606, 35.714668, 16.825554>,  <41.262173, 35.938717, 16.977318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967606, 35.714668, 16.825554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274762, 0.264860, -0.924313,
		0.618219, -0.784928, -0.041148,
		-0.736418, -0.560122, -0.379410,
		40.746681, 35.546631, 16.711731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602158, 35.687973, 16.507629>,  <41.262173, 35.938717, 16.977318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602158, 35.687973, 16.507629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217293, 35.672375, 16.399754>,  <40.986374, 35.663013, 16.335028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217293, 35.672375, 16.399754>,  <41.602158, 35.687973, 16.507629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217293, 35.672375, 16.399754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264745, 0.100559, -0.959061,
		0.064520, -0.994167, -0.086429,
		-0.962158, -0.038997, -0.269689,
		40.928646, 35.660675, 16.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568176, 35.246716, 15.932153>,  <41.602158, 35.687973, 16.507629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568176, 35.246716, 15.932153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.243664, 35.479794, 15.951289>,  <41.048954, 35.619640, 15.962771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.243664, 35.479794, 15.951289>,  <41.568176, 35.246716, 15.932153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243664, 35.479794, 15.951289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163348, 0.304478, -0.938409,
		-0.561368, -0.753502, -0.342199,
		-0.811285, 0.582691, 0.047841,
		41.000278, 35.654602, 15.965642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354534, 35.273289, 15.171100>,  <41.568176, 35.246716, 15.932153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354534, 35.273289, 15.171100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176891, 35.580555, 15.355577>,  <41.070305, 35.764915, 15.466263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176891, 35.580555, 15.355577>,  <41.354534, 35.273289, 15.171100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176891, 35.580555, 15.355577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040493, 0.531421, -0.846140,
		-0.895059, -0.357100, -0.267112,
		-0.444106, 0.768161, 0.461193,
		41.043659, 35.811005, 15.493935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883060, 35.529747, 14.672375>,  <41.354534, 35.273289, 15.171100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883060, 35.529747, 14.672375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947121, 35.819836, 14.940228>,  <40.985558, 35.993889, 15.100941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947121, 35.819836, 14.940228>,  <40.883060, 35.529747, 14.672375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947121, 35.819836, 14.940228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008853, 0.679420, -0.733696,
		-0.987052, 0.111575, 0.115232,
		0.160153, 0.725217, 0.669635,
		40.995167, 36.037399, 15.141119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673519, 36.019104, 14.311069>,  <40.883060, 35.529747, 14.672375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673519, 36.019104, 14.311069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880455, 36.211952, 14.593888>,  <41.004616, 36.327663, 14.763580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880455, 36.211952, 14.593888>,  <40.673519, 36.019104, 14.311069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880455, 36.211952, 14.593888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130366, 0.772163, -0.621908,
		-0.845793, 0.413912, 0.336617,
		0.517338, 0.482122, 0.707050,
		41.035656, 36.356590, 14.806004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344849, 36.703777, 14.342697>,  <40.673519, 36.019104, 14.311069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344849, 36.703777, 14.342697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.710190, 36.730667, 14.503329>,  <40.929394, 36.746803, 14.599709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.710190, 36.730667, 14.503329>,  <40.344849, 36.703777, 14.342697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710190, 36.730667, 14.503329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176989, 0.822671, -0.540266,
		-0.366690, 0.564529, 0.739490,
		0.913353, 0.067228, 0.401581,
		40.984196, 36.750835, 14.623803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305145, 37.500580, 14.629285>,  <40.344849, 36.703777, 14.342697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305145, 37.500580, 14.629285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.675667, 37.366074, 14.561311>,  <40.897980, 37.285370, 14.520527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.675667, 37.366074, 14.561311>,  <40.305145, 37.500580, 14.629285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675667, 37.366074, 14.561311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271297, 0.908281, -0.318471,
		0.261439, 0.248900, 0.932576,
		0.926309, -0.336266, -0.169935,
		40.953560, 37.265194, 14.510330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751907, 37.906258, 15.051259>,  <40.305145, 37.500580, 14.629285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751907, 37.906258, 15.051259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.970230, 37.765110, 14.747264>,  <41.101223, 37.680424, 14.564867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.970230, 37.765110, 14.747264>,  <40.751907, 37.906258, 15.051259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970230, 37.765110, 14.747264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103175, 0.928403, -0.356963,
		0.831535, 0.116421, 0.543135,
		0.545807, -0.352865, -0.759988,
		41.133972, 37.659252, 14.519267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270531, 38.465935, 14.904299>,  <40.751907, 37.906258, 15.051259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270531, 38.465935, 14.904299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.313763, 38.254356, 14.567601>,  <41.339703, 38.127407, 14.365582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.313763, 38.254356, 14.567601>,  <41.270531, 38.465935, 14.904299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313763, 38.254356, 14.567601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226738, 0.837502, -0.497172,
		0.967941, -0.137123, 0.210448,
		0.108078, -0.528949, -0.841743,
		41.346188, 38.095673, 14.315078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951931, 38.706390, 14.586189>,  <41.270531, 38.465935, 14.904299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951931, 38.706390, 14.586189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.722347, 38.518612, 14.317803>,  <41.584599, 38.405945, 14.156772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.722347, 38.518612, 14.317803>,  <41.951931, 38.706390, 14.586189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722347, 38.518612, 14.317803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248967, 0.680541, -0.689115,
		0.780122, -0.562570, -0.273724,
		-0.573956, -0.469445, -0.670967,
		41.550159, 38.377777, 14.116513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.543055, 27.608965, 29.281189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.851168, 27.614914, 29.536201>,  <31.036036, 27.618484, 29.689209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.851168, 27.614914, 29.536201>,  <30.543055, 27.608965, 29.281189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851168, 27.614914, 29.536201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338403, -0.837821, 0.428416,
		0.540508, -0.545743, -0.640324,
		0.770282, 0.014874, 0.637530,
		31.082253, 27.619377, 29.727461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795599, 26.922869, 29.270773>,  <30.543055, 27.608965, 29.281189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795599, 26.922869, 29.270773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927610, 27.103405, 29.602406>,  <31.006817, 27.211727, 29.801384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927610, 27.103405, 29.602406>,  <30.795599, 26.922869, 29.270773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927610, 27.103405, 29.602406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234971, -0.811367, 0.535231,
		0.914259, -0.371451, -0.161722,
		0.330029, 0.451340, 0.829080,
		31.026619, 27.238808, 29.851130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078367, 26.392469, 29.508020>,  <30.795599, 26.922869, 29.270773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078367, 26.392469, 29.508020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029903, 26.653099, 29.807560>,  <31.000824, 26.809477, 29.987284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029903, 26.653099, 29.807560>,  <31.078367, 26.392469, 29.508020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029903, 26.653099, 29.807560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225254, -0.752772, 0.618543,
		0.966737, -0.093738, 0.237976,
		-0.121161, 0.651573, 0.748847,
		30.993555, 26.848572, 30.032215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450006, 26.203726, 30.047426>,  <31.078367, 26.392469, 29.508020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450006, 26.203726, 30.047426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190599, 26.445786, 30.232128>,  <31.034956, 26.591021, 30.342949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190599, 26.445786, 30.232128>,  <31.450006, 26.203726, 30.047426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190599, 26.445786, 30.232128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177861, -0.710291, 0.681067,
		0.740129, 0.359556, 0.568269,
		-0.648518, 0.605150, 0.461756,
		30.996044, 26.627331, 30.370655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463308, 25.929684, 30.702572>,  <31.450006, 26.203726, 30.047426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463308, 25.929684, 30.702572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125223, 26.143101, 30.690273>,  <30.922373, 26.271151, 30.682894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125223, 26.143101, 30.690273>,  <31.463308, 25.929684, 30.702572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125223, 26.143101, 30.690273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422942, -0.632616, 0.648781,
		0.326703, 0.561362, 0.760354,
		-0.845213, 0.533545, -0.030746,
		30.871658, 26.303164, 30.681049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241697, 25.882624, 31.346327>,  <31.463308, 25.929684, 30.702572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241697, 25.882624, 31.346327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901489, 25.983913, 31.161938>,  <30.697365, 26.044687, 31.051304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901489, 25.983913, 31.161938>,  <31.241697, 25.882624, 31.346327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901489, 25.983913, 31.161938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511698, -0.601013, 0.613961,
		-0.121580, 0.758064, 0.640747,
		-0.850519, 0.253224, -0.460972,
		30.646334, 26.059881, 31.023645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870443, 25.991932, 31.837084>,  <31.241697, 25.882624, 31.346327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870443, 25.991932, 31.837084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.641508, 25.907711, 31.520073>,  <30.504147, 25.857180, 31.329866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.641508, 25.907711, 31.520073>,  <30.870443, 25.991932, 31.837084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641508, 25.907711, 31.520073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653239, -0.467155, 0.595857,
		-0.495691, 0.858740, 0.129829,
		-0.572336, -0.210551, -0.792527,
		30.469807, 25.844545, 31.282314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322124, 26.008570, 32.208607>,  <30.870443, 25.991932, 31.837084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322124, 26.008570, 32.208607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.226788, 25.828918, 31.864170>,  <30.169584, 25.721127, 31.657509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.226788, 25.828918, 31.864170>,  <30.322124, 26.008570, 32.208607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226788, 25.828918, 31.864170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614443, -0.616894, 0.491835,
		-0.752099, 0.646316, -0.128932,
		-0.238344, -0.449129, -0.861089,
		30.155285, 25.694180, 31.605843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493462, 25.900631, 32.209530>,  <30.322124, 26.008570, 32.208607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493462, 25.900631, 32.209530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.656412, 25.647308, 31.946331>,  <29.754183, 25.495314, 31.788410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.656412, 25.647308, 31.946331>,  <29.493462, 25.900631, 32.209530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656412, 25.647308, 31.946331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578632, -0.736414, 0.350541,
		-0.706562, 0.237938, -0.666450,
		0.407376, -0.633308, -0.658001,
		29.778625, 25.457315, 31.748930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923723, 25.546677, 32.024395>,  <29.493462, 25.900631, 32.209530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923723, 25.546677, 32.024395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245962, 25.329708, 31.929073>,  <29.439306, 25.199528, 31.871880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245962, 25.329708, 31.929073>,  <28.923723, 25.546677, 32.024395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245962, 25.329708, 31.929073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421963, -0.807652, 0.411880,
		-0.415882, -0.231253, -0.879525,
		0.805599, -0.542420, -0.238308,
		29.487642, 25.166983, 31.857580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736845, 24.985783, 31.795073>,  <28.923723, 25.546677, 32.024395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736845, 24.985783, 31.795073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.114586, 24.866951, 31.851562>,  <29.341230, 24.795652, 31.885456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.114586, 24.866951, 31.851562>,  <28.736845, 24.985783, 31.795073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114586, 24.866951, 31.851562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327093, -0.802702, 0.498678,
		-0.034786, -0.517121, -0.855205,
		0.944352, -0.297079, 0.141224,
		29.397892, 24.777828, 31.893930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628090, 24.300583, 31.670090>,  <28.736845, 24.985783, 31.795073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628090, 24.300583, 31.670090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968916, 24.350479, 31.873432>,  <29.173412, 24.380417, 31.995438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968916, 24.350479, 31.873432>,  <28.628090, 24.300583, 31.670090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968916, 24.350479, 31.873432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229864, -0.783360, 0.577503,
		0.470262, -0.608922, -0.638801,
		0.852066, 0.124741, 0.508354,
		29.224535, 24.387901, 32.025940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047176, 23.642244, 31.690023>,  <28.628090, 24.300583, 31.670090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047176, 23.642244, 31.690023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.169025, 23.852699, 32.007610>,  <29.242136, 23.978971, 32.198162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.169025, 23.852699, 32.007610>,  <29.047176, 23.642244, 31.690023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169025, 23.852699, 32.007610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186818, -0.784389, 0.591466,
		0.933972, -0.328503, -0.140653,
		0.304625, 0.526136, 0.793968,
		29.260412, 24.010540, 32.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541929, 23.252892, 32.151276>,  <29.047176, 23.642244, 31.690023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541929, 23.252892, 32.151276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.328346, 23.509384, 32.371716>,  <29.200195, 23.663280, 32.503979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.328346, 23.509384, 32.371716>,  <29.541929, 23.252892, 32.151276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328346, 23.509384, 32.371716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374188, -0.763704, 0.526061,
		0.758203, 0.074680, 0.647728,
		-0.533958, 0.641233, 0.551098,
		29.168159, 23.701754, 32.537045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906555, 22.604841, 32.466064>,  <29.541929, 23.252892, 32.151276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906555, 22.604841, 32.466064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289804, 22.490482, 32.459553>,  <30.519754, 22.421867, 32.455647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289804, 22.490482, 32.459553>,  <29.906555, 22.604841, 32.466064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289804, 22.490482, 32.459553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009667, 0.089102, -0.995975,
		0.286199, 0.954108, 0.088134,
		0.958122, -0.285899, -0.016278,
		30.577240, 22.404713, 32.454670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240112, 23.051682, 32.080833>,  <29.906555, 22.604841, 32.466064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240112, 23.051682, 32.080833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469479, 22.724251, 32.094246>,  <30.607098, 22.527792, 32.102295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.469479, 22.724251, 32.094246>,  <30.240112, 23.051682, 32.080833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469479, 22.724251, 32.094246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207302, 0.105374, -0.972585,
		0.792604, 0.564646, 0.230116,
		0.573414, -0.818579, 0.033533,
		30.641502, 22.478678, 32.104305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898830, 23.151785, 31.780848>,  <30.240112, 23.051682, 32.080833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898830, 23.151785, 31.780848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882812, 22.752769, 31.757839>,  <30.873201, 22.513359, 31.744034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.882812, 22.752769, 31.757839>,  <30.898830, 23.151785, 31.780848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882812, 22.752769, 31.757839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293041, 0.043312, -0.955118,
		0.955261, -0.055102, 0.290586,
		-0.040043, -0.997541, -0.057521,
		30.870800, 22.453506, 31.740583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433468, 23.105135, 31.419977>,  <30.898830, 23.151785, 31.780848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433468, 23.105135, 31.419977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261642, 22.747738, 31.367607>,  <31.158546, 22.533298, 31.336185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261642, 22.747738, 31.367607>,  <31.433468, 23.105135, 31.419977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261642, 22.747738, 31.367607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220046, 0.037046, -0.974786,
		0.875816, -0.447543, 0.180696,
		-0.429564, -0.893495, -0.130925,
		31.132772, 22.479689, 31.328329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020630, 22.522760, 31.216761>,  <31.433468, 23.105135, 31.419977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020630, 22.522760, 31.216761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640640, 22.464325, 31.106335>,  <31.412647, 22.429264, 31.040079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640640, 22.464325, 31.106335>,  <32.020630, 22.522760, 31.216761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640640, 22.464325, 31.106335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254986, 0.147715, -0.955595,
		0.180384, -0.978181, -0.103073,
		-0.949971, -0.146092, -0.276067,
		31.355648, 22.420498, 31.023514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066227, 22.023966, 30.565922>,  <32.020630, 22.522760, 31.216761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066227, 22.023966, 30.565922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705704, 22.195202, 30.592384>,  <31.489389, 22.297943, 30.608261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705704, 22.195202, 30.592384>,  <32.066227, 22.023966, 30.565922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705704, 22.195202, 30.592384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056903, 0.268407, -0.961623,
		-0.429420, -0.862957, -0.266278,
		-0.901311, 0.428092, 0.066155,
		31.435310, 22.323629, 30.612230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839464, 21.968296, 29.816536>,  <32.066227, 22.023966, 30.565922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839464, 21.968296, 29.816536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583153, 22.219406, 29.993309>,  <31.429365, 22.370071, 30.099373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583153, 22.219406, 29.993309>,  <31.839464, 21.968296, 29.816536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583153, 22.219406, 29.993309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064580, 0.529522, -0.845834,
		-0.765005, -0.570533, -0.298765,
		-0.640779, 0.627773, 0.441932,
		31.390919, 22.407738, 30.125889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320984, 22.113306, 29.361904>,  <31.839464, 21.968296, 29.816536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320984, 22.113306, 29.361904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278084, 22.404747, 29.632500>,  <31.252344, 22.579611, 29.794857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278084, 22.404747, 29.632500>,  <31.320984, 22.113306, 29.361904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278084, 22.404747, 29.632500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191558, 0.652522, -0.733158,
		-0.975604, -0.208218, 0.069586,
		-0.107250, 0.728601, 0.676489,
		31.245909, 22.623327, 29.835445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595560, 22.372925, 29.381216>,  <31.320984, 22.113306, 29.361904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595560, 22.372925, 29.381216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.850462, 22.647236, 29.521851>,  <31.003403, 22.811823, 29.606232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.850462, 22.647236, 29.521851>,  <30.595560, 22.372925, 29.381216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850462, 22.647236, 29.521851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295844, 0.638955, -0.710080,
		-0.711606, 0.348487, 0.610061,
		0.637254, 0.685780, 0.351586,
		31.041637, 22.852970, 29.627327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243097, 23.024586, 29.506239>,  <30.595560, 22.372925, 29.381216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243097, 23.024586, 29.506239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.625900, 23.139183, 29.488075>,  <30.855581, 23.207941, 29.477177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.625900, 23.139183, 29.488075>,  <30.243097, 23.024586, 29.506239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625900, 23.139183, 29.488075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258107, 0.769624, -0.584002,
		-0.132363, 0.570615, 0.810481,
		0.957006, 0.286491, -0.045410,
		30.913002, 23.225130, 29.474453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203049, 23.746107, 29.616140>,  <30.243097, 23.024586, 29.506239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203049, 23.746107, 29.616140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577974, 23.700748, 29.484329>,  <30.802929, 23.673534, 29.405243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577974, 23.700748, 29.484329>,  <30.203049, 23.746107, 29.616140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577974, 23.700748, 29.484329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010021, 0.953959, -0.299769,
		0.348347, 0.277675, 0.895294,
		0.937312, -0.113395, -0.329526,
		30.859167, 23.666731, 29.385471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645206, 24.321520, 29.865093>,  <30.203049, 23.746107, 29.616140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645206, 24.321520, 29.865093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799488, 24.191074, 29.519867>,  <30.892057, 24.112806, 29.312731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799488, 24.191074, 29.519867>,  <30.645206, 24.321520, 29.865093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799488, 24.191074, 29.519867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115722, 0.945161, -0.305417,
		0.915336, 0.017925, 0.402292,
		0.385705, -0.326113, -0.863065,
		30.915199, 24.093241, 29.260948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171873, 24.783934, 29.699062>,  <30.645206, 24.321520, 29.865093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171873, 24.783934, 29.699062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159430, 24.591042, 29.348866>,  <31.151962, 24.475307, 29.138746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159430, 24.591042, 29.348866>,  <31.171873, 24.783934, 29.699062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159430, 24.591042, 29.348866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330126, 0.821804, -0.464387,
		0.943424, -0.303470, 0.133630,
		-0.031110, -0.482228, -0.875493,
		31.150097, 24.446373, 29.086218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733036, 24.985064, 29.302900>,  <31.171873, 24.783934, 29.699062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733036, 24.985064, 29.302900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.464096, 24.857197, 29.035839>,  <31.302732, 24.780478, 28.875603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.464096, 24.857197, 29.035839>,  <31.733036, 24.985064, 29.302900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464096, 24.857197, 29.035839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123689, 0.840751, -0.527104,
		0.729827, -0.436979, -0.525739,
		-0.672349, -0.319667, -0.667652,
		31.262392, 24.761297, 28.835543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225704, 24.538662, 29.109585>,  <31.733036, 24.985064, 29.302900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225704, 24.538662, 29.109585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603996, 24.649082, 29.178158>,  <32.830971, 24.715334, 29.219301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603996, 24.649082, 29.178158>,  <32.225704, 24.538662, 29.109585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603996, 24.649082, 29.178158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026421, -0.591147, 0.806131,
		0.323875, -0.757853, -0.566360,
		0.945731, 0.276050, 0.171434,
		32.887714, 24.731897, 29.229588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613876, 24.026464, 29.271559>,  <32.225704, 24.538662, 29.109585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613876, 24.026464, 29.271559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857788, 24.295555, 29.439182>,  <33.004135, 24.457010, 29.539757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857788, 24.295555, 29.439182>,  <32.613876, 24.026464, 29.271559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857788, 24.295555, 29.439182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136785, -0.610123, 0.780410,
		0.780679, -0.418556, -0.464058,
		0.609778, 0.672726, 0.419058,
		33.040722, 24.497374, 29.564899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164635, 23.623053, 29.588659>,  <32.613876, 24.026464, 29.271559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164635, 23.623053, 29.588659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223747, 23.988262, 29.740738>,  <33.259216, 24.207388, 29.831985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223747, 23.988262, 29.740738>,  <33.164635, 23.623053, 29.588659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223747, 23.988262, 29.740738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253798, -0.406552, 0.877669,
		0.955901, -0.033211, -0.291804,
		0.147782, 0.913024, 0.380195,
		33.268082, 24.262169, 29.854795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908268, 23.713406, 29.877178>,  <33.164635, 23.623053, 29.588659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908268, 23.713406, 29.877178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657532, 23.956020, 30.072803>,  <33.507092, 24.101589, 30.190178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657532, 23.956020, 30.072803>,  <33.908268, 23.713406, 29.877178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657532, 23.956020, 30.072803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299650, -0.391745, 0.869911,
		0.719223, 0.691843, 0.063812,
		-0.626840, 0.606538, 0.489063,
		33.469479, 24.137981, 30.219522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337013, 24.018028, 30.369431>,  <33.908268, 23.713406, 29.877178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337013, 24.018028, 30.369431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969521, 24.102238, 30.503059>,  <33.749023, 24.152763, 30.583237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969521, 24.102238, 30.503059>,  <34.337013, 24.018028, 30.369431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969521, 24.102238, 30.503059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190754, -0.504140, 0.842292,
		0.345744, 0.837569, 0.423013,
		-0.918735, 0.210526, 0.334073,
		33.693901, 24.165396, 30.603281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504444, 24.185188, 31.076262>,  <34.337013, 24.018028, 30.369431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504444, 24.185188, 31.076262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126888, 24.067650, 31.015972>,  <33.900352, 23.997128, 30.979797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.126888, 24.067650, 31.015972>,  <34.504444, 24.185188, 31.076262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126888, 24.067650, 31.015972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032446, -0.536707, 0.843145,
		-0.328650, 0.790949, 0.516129,
		-0.943894, -0.293846, -0.150726,
		33.843719, 23.979496, 30.970755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164837, 24.237410, 31.684341>,  <34.504444, 24.185188, 31.076262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164837, 24.237410, 31.684341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940147, 23.983021, 31.472679>,  <33.805332, 23.830387, 31.345682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940147, 23.983021, 31.472679>,  <34.164837, 24.237410, 31.684341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940147, 23.983021, 31.472679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007494, -0.643482, 0.765424,
		-0.827290, 0.425992, 0.366226,
		-0.561725, -0.635972, -0.529154,
		33.771629, 23.792229, 31.313932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026978, 24.544147, 32.225471>,  <34.164837, 24.237410, 31.684341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026978, 24.544147, 32.225471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336208, 24.662010, 32.450161>,  <34.521748, 24.732729, 32.584976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336208, 24.662010, 32.450161>,  <34.026978, 24.544147, 32.225471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336208, 24.662010, 32.450161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220828, 0.705141, -0.673803,
		-0.594637, 0.644944, 0.480057,
		0.773073, 0.294658, 0.561725,
		34.568130, 24.750408, 32.618679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947197, 25.366201, 32.348747>,  <34.026978, 24.544147, 32.225471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947197, 25.366201, 32.348747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325287, 25.239307, 32.379517>,  <34.552139, 25.163172, 32.397980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325287, 25.239307, 32.379517>,  <33.947197, 25.366201, 32.348747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325287, 25.239307, 32.379517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298829, 0.746109, -0.594998,
		0.131359, 0.585393, 0.800037,
		0.945223, -0.317233, 0.076924,
		34.608852, 25.144138, 32.402596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337353, 26.004740, 32.480072>,  <33.947197, 25.366201, 32.348747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337353, 26.004740, 32.480072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602768, 25.731941, 32.357048>,  <34.762016, 25.568262, 32.283234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602768, 25.731941, 32.357048>,  <34.337353, 26.004740, 32.480072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602768, 25.731941, 32.357048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389699, 0.666002, -0.636062,
		0.638629, 0.302197, 0.707694,
		0.663542, -0.681995, -0.307562,
		34.801830, 25.527342, 32.264778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930473, 26.326372, 32.601017>,  <34.337353, 26.004740, 32.480072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930473, 26.326372, 32.601017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012741, 26.051762, 32.322056>,  <35.062103, 25.886995, 32.154678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012741, 26.051762, 32.322056>,  <34.930473, 26.326372, 32.601017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012741, 26.051762, 32.322056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273284, 0.724585, -0.632688,
		0.939689, -0.060464, 0.336644,
		0.205673, -0.686529, -0.697408,
		35.074444, 25.845802, 32.112835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548565, 26.549370, 32.447906>,  <34.930473, 26.326372, 32.601017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548565, 26.549370, 32.447906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428066, 26.331135, 32.135090>,  <35.355766, 26.200193, 31.947401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428066, 26.331135, 32.135090>,  <35.548565, 26.549370, 32.447906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428066, 26.331135, 32.135090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365959, 0.691180, -0.623172,
		0.880526, -0.473921, -0.008551,
		-0.301245, -0.545590, -0.782038,
		35.337692, 26.167458, 31.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123455, 26.577351, 31.992558>,  <35.548565, 26.549370, 32.447906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123455, 26.577351, 31.992558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792416, 26.471062, 31.794781>,  <35.593792, 26.407288, 31.676115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792416, 26.471062, 31.794781>,  <36.123455, 26.577351, 31.992558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792416, 26.471062, 31.794781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206013, 0.675596, -0.707904,
		0.522150, -0.687722, -0.504379,
		-0.827598, -0.265724, -0.494442,
		35.544136, 26.391344, 31.646448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374596, 26.324802, 31.300529>,  <36.123455, 26.577351, 31.992558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374596, 26.324802, 31.300529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991264, 26.435684, 31.272903>,  <35.761265, 26.502214, 31.256327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991264, 26.435684, 31.272903>,  <36.374596, 26.324802, 31.300529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991264, 26.435684, 31.272903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210539, 0.521896, -0.826618,
		-0.193097, -0.806710, -0.558509,
		-0.958325, 0.277206, -0.069067,
		35.703766, 26.518847, 31.252184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.397381, 24.747604, 34.178177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.084961, 24.770500, 33.929443>,  <31.897509, 24.784237, 33.780201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.084961, 24.770500, 33.929443>,  <32.397381, 24.747604, 34.178177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084961, 24.770500, 33.929443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220609, 0.956872, -0.189016,
		0.584200, -0.284814, -0.759995,
		-0.781052, 0.057238, -0.621837,
		31.850645, 24.787672, 33.742893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592079, 25.111034, 33.625816>,  <32.397381, 24.747604, 34.178177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592079, 25.111034, 33.625816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194073, 25.149429, 33.615063>,  <31.955269, 25.172466, 33.608612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194073, 25.149429, 33.615063>,  <32.592079, 25.111034, 33.625816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194073, 25.149429, 33.615063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099329, 0.977357, -0.186835,
		0.008338, -0.188575, -0.982023,
		-0.995020, 0.095986, -0.026880,
		31.895567, 25.178225, 33.606998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536747, 25.513849, 33.120323>,  <32.592079, 25.111034, 33.625816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536747, 25.513849, 33.120323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210167, 25.549065, 33.348587>,  <32.014217, 25.570194, 33.485546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210167, 25.549065, 33.348587>,  <32.536747, 25.513849, 33.120323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210167, 25.549065, 33.348587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033214, 0.979511, -0.198631,
		-0.576454, -0.181127, -0.796802,
		-0.816454, 0.088037, 0.570659,
		31.965231, 25.575476, 33.519783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079727, 25.945324, 32.804543>,  <32.536747, 25.513849, 33.120323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079727, 25.945324, 32.804543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934404, 25.946541, 33.177208>,  <31.847212, 25.947271, 33.400806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934404, 25.946541, 33.177208>,  <32.079727, 25.945324, 32.804543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934404, 25.946541, 33.177208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097421, 0.994389, -0.041235,
		-0.926563, -0.105745, -0.360968,
		-0.363303, 0.003041, 0.931666,
		31.825413, 25.947453, 33.456707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519186, 26.351913, 32.753193>,  <32.079727, 25.945324, 32.804543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519186, 26.351913, 32.753193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.626329, 26.372726, 33.138012>,  <31.690617, 26.385214, 33.368904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.626329, 26.372726, 33.138012>,  <31.519186, 26.351913, 32.753193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626329, 26.372726, 33.138012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021050, 0.997986, -0.059837,
		-0.963228, 0.036279, 0.266225,
		0.267860, 0.052033, 0.962052,
		31.706688, 26.388336, 33.426628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180532, 27.035021, 33.067940>,  <31.519186, 26.351913, 32.753193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180532, 27.035021, 33.067940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.462559, 26.945602, 33.337132>,  <31.631775, 26.891951, 33.498646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.462559, 26.945602, 33.337132>,  <31.180532, 27.035021, 33.067940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462559, 26.945602, 33.337132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238607, 0.968464, 0.071716,
		-0.667792, 0.110014, 0.736173,
		0.705068, -0.223548, 0.672983,
		31.674080, 26.878538, 33.539028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022675, 27.429211, 33.615540>,  <31.180532, 27.035021, 33.067940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022675, 27.429211, 33.615540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.409071, 27.330364, 33.645981>,  <31.640909, 27.271055, 33.664246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.409071, 27.330364, 33.645981>,  <31.022675, 27.429211, 33.615540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409071, 27.330364, 33.645981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257144, 0.948987, -0.182485,
		-0.027124, 0.195849, 0.980259,
		0.965992, -0.247118, 0.076102,
		31.698868, 27.256229, 33.668812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239689, 27.835831, 34.184608>,  <31.022675, 27.429211, 33.615540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239689, 27.835831, 34.184608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.563940, 27.744064, 33.969109>,  <31.758492, 27.689005, 33.839809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.563940, 27.744064, 33.969109>,  <31.239689, 27.835831, 34.184608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563940, 27.744064, 33.969109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124179, 0.966480, -0.224714,
		0.572240, 0.115259, 0.811947,
		0.810630, -0.229417, -0.538745,
		31.807129, 27.675240, 33.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746880, 28.311214, 34.415226>,  <31.239689, 27.835831, 34.184608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746880, 28.311214, 34.415226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.893499, 28.185852, 34.064816>,  <31.981472, 28.110634, 33.854568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.893499, 28.185852, 34.064816>,  <31.746880, 28.311214, 34.415226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893499, 28.185852, 34.064816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123961, 0.949614, -0.287867,
		0.922103, -0.003074, 0.386932,
		0.366551, -0.313408, -0.876023,
		32.003464, 28.091829, 33.802010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262032, 28.791851, 34.298420>,  <31.746880, 28.311214, 34.415226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262032, 28.791851, 34.298420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.206367, 28.631260, 33.936325>,  <32.172970, 28.534906, 33.719070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.206367, 28.631260, 33.936325>,  <32.262032, 28.791851, 34.298420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206367, 28.631260, 33.936325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379564, 0.822690, -0.423217,
		0.914640, -0.402490, 0.037900,
		-0.139161, -0.401477, -0.905235,
		32.164619, 28.510817, 33.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964863, 29.030037, 34.018719>,  <32.262032, 28.791851, 34.298420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964863, 29.030037, 34.018719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721401, 28.931858, 33.716911>,  <32.575325, 28.872952, 33.535828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721401, 28.931858, 33.716911>,  <32.964863, 29.030037, 34.018719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721401, 28.931858, 33.716911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294051, 0.813455, -0.501821,
		0.736939, -0.527301, -0.422935,
		-0.608650, -0.245447, -0.754521,
		32.538807, 28.858225, 33.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306343, 29.297798, 33.353539>,  <32.964863, 29.030037, 34.018719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306343, 29.297798, 33.353539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927582, 29.257660, 33.231358>,  <32.700325, 29.233578, 33.158051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927582, 29.257660, 33.231358>,  <33.306343, 29.297798, 33.353539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927582, 29.257660, 33.231358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071801, 0.860052, -0.505129,
		0.313388, -0.500242, -0.807184,
		-0.946907, -0.100345, -0.305448,
		32.643509, 29.227556, 33.139725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904423, 28.804596, 33.000690>,  <33.306343, 29.297798, 33.353539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904423, 28.804596, 33.000690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226109, 28.797482, 33.238319>,  <34.419121, 28.793213, 33.380898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.226109, 28.797482, 33.238319>,  <33.904423, 28.804596, 33.000690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226109, 28.797482, 33.238319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445973, -0.678779, 0.583410,
		0.392868, -0.734127, -0.553816,
		0.804216, -0.017784, 0.594071,
		34.467373, 28.792147, 33.416542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836346, 28.212208, 33.310326>,  <33.904423, 28.804596, 33.000690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836346, 28.212208, 33.310326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140263, 28.342457, 33.535427>,  <34.322613, 28.420607, 33.670486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140263, 28.342457, 33.535427>,  <33.836346, 28.212208, 33.310326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140263, 28.342457, 33.535427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202143, -0.704342, 0.680471,
		0.617948, -0.630770, -0.469328,
		0.759788, 0.325624, 0.562753,
		34.368198, 28.440144, 33.704254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278595, 27.612381, 33.353912>,  <33.836346, 28.212208, 33.310326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278595, 27.612381, 33.353912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320049, 27.847427, 33.674904>,  <34.344921, 27.988455, 33.867496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320049, 27.847427, 33.674904>,  <34.278595, 27.612381, 33.353912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320049, 27.847427, 33.674904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094705, -0.797325, 0.596073,
		0.990096, -0.137774, -0.026983,
		0.103638, 0.587614, 0.802476,
		34.351139, 28.023712, 33.915646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696842, 27.237688, 33.760849>,  <34.278595, 27.612381, 33.353912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696842, 27.237688, 33.760849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.516769, 27.500828, 34.002369>,  <34.408726, 27.658710, 34.147282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.516769, 27.500828, 34.002369>,  <34.696842, 27.237688, 33.760849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516769, 27.500828, 34.002369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025205, -0.666563, 0.745022,
		0.892582, 0.350613, 0.283492,
		-0.450180, 0.657848, 0.603799,
		34.381714, 27.698183, 34.183510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120132, 27.334677, 34.397697>,  <34.696842, 27.237688, 33.760849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120132, 27.334677, 34.397697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755211, 27.455505, 34.508305>,  <34.536259, 27.528002, 34.574669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755211, 27.455505, 34.508305>,  <35.120132, 27.334677, 34.397697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755211, 27.455505, 34.508305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000692, -0.676359, 0.736572,
		0.409521, 0.671783, 0.617251,
		-0.912300, 0.302069, 0.276518,
		34.481522, 27.546125, 34.591259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070446, 27.450026, 35.153305>,  <35.120132, 27.334677, 34.397697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070446, 27.450026, 35.153305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698956, 27.368641, 35.029327>,  <34.476059, 27.319809, 34.954941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698956, 27.368641, 35.029327>,  <35.070446, 27.450026, 35.153305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698956, 27.368641, 35.029327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097596, -0.672331, 0.733789,
		-0.357686, 0.711740, 0.604555,
		-0.928728, -0.203464, -0.309946,
		34.420338, 27.307602, 34.936344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811199, 27.075584, 35.754070>,  <35.070446, 27.450026, 35.153305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811199, 27.075584, 35.754070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517159, 27.019463, 35.488758>,  <34.340736, 26.985790, 35.329571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517159, 27.019463, 35.488758>,  <34.811199, 27.075584, 35.754070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517159, 27.019463, 35.488758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326273, -0.784391, 0.527519,
		-0.594286, 0.604190, 0.530827,
		-0.735098, -0.140303, -0.663284,
		34.296631, 26.977371, 35.289772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244747, 27.149076, 36.117931>,  <34.811199, 27.075584, 35.754070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244747, 27.149076, 36.117931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122219, 26.947575, 35.794846>,  <34.048702, 26.826674, 35.600994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122219, 26.947575, 35.794846>,  <34.244747, 27.149076, 36.117931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122219, 26.947575, 35.794846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477622, -0.652632, 0.588174,
		-0.823434, 0.565952, -0.040688,
		-0.306324, -0.503756, -0.807710,
		34.030323, 26.796448, 35.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541679, 26.978498, 36.271278>,  <34.244747, 27.149076, 36.117931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541679, 26.978498, 36.271278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650291, 26.723896, 35.982521>,  <33.715458, 26.571135, 35.809265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650291, 26.723896, 35.982521>,  <33.541679, 26.978498, 36.271278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650291, 26.723896, 35.982521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341454, -0.764992, 0.546074,
		-0.899822, 0.098217, -0.425058,
		0.271532, -0.636507, -0.721893,
		33.731750, 26.532944, 35.765953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938831, 26.551060, 36.175343>,  <33.541679, 26.978498, 36.271278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938831, 26.551060, 36.175343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259029, 26.351894, 36.041901>,  <33.451149, 26.232395, 35.961838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259029, 26.351894, 36.041901>,  <32.938831, 26.551060, 36.175343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259029, 26.351894, 36.041901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329004, -0.830316, 0.449812,
		-0.500961, -0.250317, -0.828480,
		0.800496, -0.497912, -0.333601,
		33.499180, 26.202520, 35.941822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640091, 25.963482, 35.975124>,  <32.938831, 26.551060, 36.175343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640091, 25.963482, 35.975124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.032574, 25.893238, 36.007122>,  <33.268063, 25.851091, 36.026321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.032574, 25.893238, 36.007122>,  <32.640091, 25.963482, 35.975124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032574, 25.893238, 36.007122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192266, -0.854202, 0.483086,
		-0.016504, -0.489387, -0.871911,
		0.981204, -0.175612, 0.079995,
		33.326935, 25.840555, 36.031120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723145, 25.332027, 35.635456>,  <32.640091, 25.963482, 35.975124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723145, 25.332027, 35.635456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015324, 25.407257, 35.898079>,  <33.190632, 25.452394, 36.055653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015324, 25.407257, 35.898079>,  <32.723145, 25.332027, 35.635456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015324, 25.407257, 35.898079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282127, -0.792383, 0.540864,
		0.621968, -0.580308, -0.525736,
		0.730452, 0.188076, 0.656558,
		33.234459, 25.463680, 36.095047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061562, 24.650497, 35.717903>,  <32.723145, 25.332027, 35.635456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061562, 24.650497, 35.717903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180069, 24.850887, 36.043171>,  <33.251171, 24.971121, 36.238331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180069, 24.850887, 36.043171>,  <33.061562, 24.650497, 35.717903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180069, 24.850887, 36.043171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139791, -0.819483, 0.555794,
		0.944820, -0.278337, -0.172753,
		0.296266, 0.500976, 0.813173,
		33.268948, 25.001181, 36.287125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523003, 24.233643, 36.073288>,  <33.061562, 24.650497, 35.717903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523003, 24.233643, 36.073288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356422, 24.498505, 36.322483>,  <33.256474, 24.657423, 36.472000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356422, 24.498505, 36.322483>,  <33.523003, 24.233643, 36.073288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356422, 24.498505, 36.322483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349285, -0.749177, 0.562791,
		0.839386, 0.016774, 0.543277,
		-0.416451, 0.662157, 0.622990,
		33.231487, 24.697151, 36.509380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083458, 23.719553, 35.643764>,  <33.523003, 24.233643, 36.073288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083458, 23.719553, 35.643764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.170219, 23.485538, 35.331177>,  <34.222275, 23.345131, 35.143623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.170219, 23.485538, 35.331177>,  <34.083458, 23.719553, 35.643764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170219, 23.485538, 35.331177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178552, 0.810794, -0.557434,
		0.959725, -0.018624, 0.280322,
		0.216902, -0.585035, -0.781465,
		34.235291, 23.310028, 35.096737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759117, 23.997179, 35.449181>,  <34.083458, 23.719553, 35.643764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759117, 23.997179, 35.449181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609379, 23.784939, 35.144989>,  <34.519535, 23.657595, 34.962475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609379, 23.784939, 35.144989>,  <34.759117, 23.997179, 35.449181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609379, 23.784939, 35.144989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231399, 0.740712, -0.630714,
		0.897951, -0.412082, -0.154506,
		-0.374350, -0.530598, -0.760478,
		34.497074, 23.625759, 34.916847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190392, 24.026886, 34.911259>,  <34.759117, 23.997179, 35.449181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190392, 24.026886, 34.911259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.872314, 23.901615, 34.703571>,  <34.681469, 23.826452, 34.578957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.872314, 23.901615, 34.703571>,  <35.190392, 24.026886, 34.911259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872314, 23.901615, 34.703571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301616, 0.538551, -0.786760,
		0.526020, -0.782231, -0.333793,
		-0.795192, -0.313174, -0.519222,
		34.633759, 23.807663, 34.547806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458843, 23.736309, 34.122009>,  <35.190392, 24.026886, 34.911259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458843, 23.736309, 34.122009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.067131, 23.809471, 34.087242>,  <34.832104, 23.853369, 34.066380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.067131, 23.809471, 34.087242>,  <35.458843, 23.736309, 34.122009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067131, 23.809471, 34.087242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176553, 0.560894, -0.808843,
		-0.099190, -0.807431, -0.581565,
		-0.979281, 0.182906, -0.086919,
		34.773346, 23.864344, 34.061165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263775, 23.469389, 33.491001>,  <35.458843, 23.736309, 34.122009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263775, 23.469389, 33.491001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976044, 23.731995, 33.581825>,  <34.803406, 23.889559, 33.636318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976044, 23.731995, 33.581825>,  <35.263775, 23.469389, 33.491001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976044, 23.731995, 33.581825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215501, 0.521629, -0.825507,
		-0.660398, -0.544879, -0.516702,
		-0.719328, 0.656513, 0.227061,
		34.760246, 23.928949, 33.649944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866974, 23.604660, 32.781620>,  <35.263775, 23.469389, 33.491001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866974, 23.604660, 32.781620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.758076, 23.901470, 33.026661>,  <34.692738, 24.079556, 33.173687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.758076, 23.901470, 33.026661>,  <34.866974, 23.604660, 32.781620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758076, 23.901470, 33.026661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046133, 0.645984, -0.761956,
		-0.961122, -0.179176, -0.210096,
		-0.272243, 0.742025, 0.612603,
		34.676403, 24.124077, 33.210442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372753, 23.923214, 32.417709>,  <34.866974, 23.604660, 32.781620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372753, 23.923214, 32.417709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.495747, 24.192772, 32.686432>,  <34.569542, 24.354507, 32.847664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.495747, 24.192772, 32.686432>,  <34.372753, 23.923214, 32.417709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495747, 24.192772, 32.686432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009002, 0.703915, -0.710228,
		-0.951510, 0.224433, 0.210377,
		0.307486, 0.673895, 0.671802,
		34.587994, 24.394939, 32.887974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626354, 23.793633, 32.232239>,  <34.372753, 23.923214, 32.417709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626354, 23.793633, 32.232239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.676807, 23.596935, 31.887615>,  <33.707081, 23.478916, 31.680841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.676807, 23.596935, 31.887615>,  <33.626354, 23.793633, 32.232239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676807, 23.596935, 31.887615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043809, -0.864883, 0.500058,
		-0.991045, -0.100818, -0.087549,
		0.126134, -0.491745, -0.861555,
		33.714649, 23.449411, 31.629148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142860, 23.232037, 32.281326>,  <33.626354, 23.793633, 32.232239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142860, 23.232037, 32.281326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367271, 23.095600, 31.979622>,  <33.501919, 23.013739, 31.798599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367271, 23.095600, 31.979622>,  <33.142860, 23.232037, 32.281326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367271, 23.095600, 31.979622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033290, -0.919722, 0.391156,
		-0.827127, -0.194340, -0.527345,
		0.561029, -0.341091, -0.754257,
		33.535580, 22.993273, 31.753345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811291, 22.703489, 32.038273>,  <33.142860, 23.232037, 32.281326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811291, 22.703489, 32.038273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177811, 22.614883, 31.904812>,  <33.397724, 22.561720, 31.824736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177811, 22.614883, 31.904812>,  <32.811291, 22.703489, 32.038273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177811, 22.614883, 31.904812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112649, -0.942028, 0.316060,
		-0.384325, -0.252020, -0.888133,
		0.916300, -0.221517, -0.333655,
		33.452702, 22.548428, 31.804716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757233, 21.984415, 31.852852>,  <32.811291, 22.703489, 32.038273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757233, 21.984415, 31.852852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144413, 22.076828, 31.892242>,  <33.376720, 22.132275, 31.915876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.144413, 22.076828, 31.892242>,  <32.757233, 21.984415, 31.852852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144413, 22.076828, 31.892242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204635, -0.952855, 0.224037,
		0.145591, -0.196705, -0.969593,
		0.967950, 0.231030, 0.098474,
		33.434799, 22.146137, 31.921785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102661, 21.416716, 31.632599>,  <32.757233, 21.984415, 31.852852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102661, 21.416716, 31.632599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362518, 21.596966, 31.877514>,  <33.518433, 21.705116, 32.024464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362518, 21.596966, 31.877514>,  <33.102661, 21.416716, 31.632599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362518, 21.596966, 31.877514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019441, -0.814975, 0.579170,
		0.759989, -0.364352, -0.538206,
		0.649646, 0.450626, 0.612289,
		33.557411, 21.732153, 32.061199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665806, 20.858402, 31.823643>,  <33.102661, 21.416716, 31.632599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665806, 20.858402, 31.823643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.685665, 21.148838, 32.097965>,  <33.697582, 21.323099, 32.262558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.685665, 21.148838, 32.097965>,  <33.665806, 20.858402, 31.823643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685665, 21.148838, 32.097965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020609, -0.687251, 0.726128,
		0.998554, -0.021917, -0.049084,
		0.049648, 0.726090, 0.685805,
		33.700558, 21.366665, 32.303707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257938, 20.704891, 32.172676>,  <33.665806, 20.858402, 31.823643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257938, 20.704891, 32.172676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042965, 20.949795, 32.404644>,  <33.913982, 21.096737, 32.543823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042965, 20.949795, 32.404644>,  <34.257938, 20.704891, 32.172676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042965, 20.949795, 32.404644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211827, -0.567616, 0.795576,
		0.816271, 0.550409, 0.175361,
		-0.537430, 0.612259, 0.579920,
		33.881737, 21.133472, 32.578621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538609, 20.607231, 32.806614>,  <34.257938, 20.704891, 32.172676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538609, 20.607231, 32.806614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.186073, 20.770439, 32.901909>,  <33.974552, 20.868364, 32.959084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.186073, 20.770439, 32.901909>,  <34.538609, 20.607231, 32.806614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186073, 20.770439, 32.901909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162504, -0.735233, 0.658046,
		0.443654, 0.541249, 0.714297,
		-0.881342, 0.408021, 0.238234,
		33.921669, 20.892845, 32.973377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607197, 20.738194, 33.583328>,  <34.538609, 20.607231, 32.806614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607197, 20.738194, 33.583328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.221859, 20.737995, 33.476021>,  <33.990658, 20.737877, 33.411636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.221859, 20.737995, 33.476021>,  <34.607197, 20.738194, 33.583328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221859, 20.737995, 33.476021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177300, -0.749305, 0.638050,
		-0.201334, 0.662225, 0.721749,
		-0.963343, -0.000495, -0.268273,
		33.932858, 20.737846, 33.395538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.975494, 33.662128, 23.380539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596863, 33.533539, 23.390656>,  <32.369682, 33.456387, 23.396725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596863, 33.533539, 23.390656>,  <32.975494, 33.662128, 23.380539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596863, 33.533539, 23.390656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152372, -0.376777, 0.913686,
		-0.284197, 0.868731, 0.405633,
		-0.946581, -0.321474, 0.025292,
		32.312889, 33.437096, 23.398243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776493, 33.881168, 24.017326>,  <32.975494, 33.662128, 23.380539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776493, 33.881168, 24.017326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521355, 33.594872, 23.903576>,  <32.368271, 33.423096, 23.835325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521355, 33.594872, 23.903576>,  <32.776493, 33.881168, 24.017326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521355, 33.594872, 23.903576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289555, -0.565012, 0.772606,
		-0.713660, 0.410461, 0.567636,
		-0.637846, -0.715740, -0.284375,
		32.330002, 33.380150, 23.818264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662987, 33.513065, 24.633017>,  <32.776493, 33.881168, 24.017326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662987, 33.513065, 24.633017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527626, 33.261482, 24.353046>,  <32.446411, 33.110531, 24.185064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527626, 33.261482, 24.353046>,  <32.662987, 33.513065, 24.633017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527626, 33.261482, 24.353046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272616, -0.777438, 0.566808,
		-0.900647, 0.000998, 0.434551,
		-0.338402, -0.628959, -0.699924,
		32.426105, 33.072796, 24.143068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284927, 33.065609, 24.984402>,  <32.662987, 33.513065, 24.633017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284927, 33.065609, 24.984402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355530, 32.866287, 24.644863>,  <32.397892, 32.746696, 24.441139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355530, 32.866287, 24.644863>,  <32.284927, 33.065609, 24.984402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355530, 32.866287, 24.644863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146228, -0.839542, 0.523245,
		-0.973377, -0.216483, -0.075322,
		0.176509, -0.498301, -0.848847,
		32.408482, 32.716797, 24.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938002, 32.418224, 25.021492>,  <32.284927, 33.065609, 24.984402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938002, 32.418224, 25.021492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236912, 32.349140, 24.764820>,  <32.416256, 32.307690, 24.610817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236912, 32.349140, 24.764820>,  <31.938002, 32.418224, 25.021492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236912, 32.349140, 24.764820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260083, -0.812591, 0.521588,
		-0.611505, -0.556659, -0.562310,
		0.747274, -0.172706, -0.641680,
		32.461094, 32.297329, 24.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913816, 31.758224, 24.976370>,  <31.938002, 32.418224, 25.021492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913816, 31.758224, 24.976370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260391, 31.799973, 24.781067>,  <32.468334, 31.825022, 24.663885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260391, 31.799973, 24.781067>,  <31.913816, 31.758224, 24.976370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260391, 31.799973, 24.781067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245113, -0.940871, 0.233841,
		-0.434981, -0.322286, -0.840787,
		0.866436, 0.104371, -0.488258,
		32.520321, 31.831284, 24.634590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955185, 31.223494, 24.582228>,  <31.913816, 31.758224, 24.976370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955185, 31.223494, 24.582228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332096, 31.348785, 24.629555>,  <32.558243, 31.423960, 24.657951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332096, 31.348785, 24.629555>,  <31.955185, 31.223494, 24.582228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332096, 31.348785, 24.629555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290011, -0.940105, 0.179154,
		0.167346, -0.134500, -0.976681,
		0.942279, 0.313229, 0.118316,
		32.614780, 31.442755, 24.665051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354317, 30.753071, 24.188192>,  <31.955185, 31.223494, 24.582228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354317, 30.753071, 24.188192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597919, 30.928444, 24.452583>,  <32.744080, 31.033667, 24.611217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597919, 30.928444, 24.452583>,  <32.354317, 30.753071, 24.188192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597919, 30.928444, 24.452583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323047, -0.898196, 0.298134,
		0.724398, 0.031961, -0.688641,
		0.609006, 0.438431, 0.660976,
		32.780621, 31.059973, 24.650877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939903, 30.330172, 24.171427>,  <32.354317, 30.753071, 24.188192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939903, 30.330172, 24.171427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982613, 30.523876, 24.518780>,  <33.008240, 30.640099, 24.727192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982613, 30.523876, 24.518780>,  <32.939903, 30.330172, 24.171427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982613, 30.523876, 24.518780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267212, -0.855223, 0.444064,
		0.957704, 0.184628, -0.220716,
		0.106774, 0.484259, 0.868385,
		33.014645, 30.669153, 24.779295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678402, 30.292585, 24.429888>,  <32.939903, 30.330172, 24.171427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678402, 30.292585, 24.429888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429638, 30.342644, 24.739098>,  <33.280380, 30.372679, 24.924623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429638, 30.342644, 24.739098>,  <33.678402, 30.292585, 24.429888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429638, 30.342644, 24.739098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375720, -0.818422, 0.434764,
		0.687071, 0.560824, 0.461963,
		-0.621907, 0.125145, 0.773027,
		33.243065, 30.380188, 24.971006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094116, 30.167168, 25.033102>,  <33.678402, 30.292585, 24.429888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094116, 30.167168, 25.033102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705753, 30.133308, 25.122696>,  <33.472736, 30.112993, 25.176453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705753, 30.133308, 25.122696>,  <34.094116, 30.167168, 25.033102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705753, 30.133308, 25.122696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194741, -0.823425, 0.532960,
		0.139321, 0.561075, 0.815956,
		-0.970910, -0.084647, 0.223984,
		33.414482, 30.107914, 25.189892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099384, 30.061489, 25.739202>,  <34.094116, 30.167168, 25.033102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099384, 30.061489, 25.739202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752041, 29.912109, 25.608673>,  <33.543636, 29.822481, 25.530355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752041, 29.912109, 25.608673>,  <34.099384, 30.061489, 25.739202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752041, 29.912109, 25.608673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165838, -0.838777, 0.518605,
		-0.467386, 0.396219, 0.790292,
		-0.868359, -0.373449, -0.326325,
		33.491531, 29.800076, 25.510777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172874, 30.488920, 26.222134>,  <34.099384, 30.061489, 25.739202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172874, 30.488920, 26.222134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563103, 30.423576, 26.280891>,  <34.797241, 30.384371, 26.316145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563103, 30.423576, 26.280891>,  <34.172874, 30.488920, 26.222134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563103, 30.423576, 26.280891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215375, 0.579313, -0.786136,
		0.043326, 0.798567, 0.600344,
		0.975570, -0.163360, 0.146892,
		34.855774, 30.374569, 26.324959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445374, 31.136353, 26.153131>,  <34.172874, 30.488920, 26.222134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445374, 31.136353, 26.153131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745819, 30.875195, 26.114048>,  <34.926086, 30.718500, 26.090599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745819, 30.875195, 26.114048>,  <34.445374, 31.136353, 26.153131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745819, 30.875195, 26.114048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345827, 0.515210, -0.784195,
		0.562338, 0.555234, 0.612773,
		0.751119, -0.652897, -0.097707,
		34.971153, 30.679325, 26.084736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986965, 31.586611, 26.027424>,  <34.445374, 31.136353, 26.153131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986965, 31.586611, 26.027424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125820, 31.232071, 25.904865>,  <35.209133, 31.019346, 25.831329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125820, 31.232071, 25.904865>,  <34.986965, 31.586611, 26.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125820, 31.232071, 25.904865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511484, 0.452781, -0.730324,
		0.786054, 0.096804, 0.610530,
		0.347135, -0.886351, -0.306396,
		35.229961, 30.966166, 25.812946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738533, 31.691669, 25.858198>,  <34.986965, 31.586611, 26.027424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738533, 31.691669, 25.858198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603279, 31.367718, 25.666466>,  <35.522125, 31.173347, 25.551426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603279, 31.367718, 25.666466>,  <35.738533, 31.691669, 25.858198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603279, 31.367718, 25.666466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496322, 0.279277, -0.821991,
		0.799579, -0.515850, 0.307526,
		-0.338139, -0.809879, -0.479332,
		35.501839, 31.124754, 25.522667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275097, 31.557127, 25.543959>,  <35.738533, 31.691669, 25.858198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275097, 31.557127, 25.543959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991547, 31.350830, 25.351498>,  <35.821415, 31.227053, 25.236021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991547, 31.350830, 25.351498>,  <36.275097, 31.557127, 25.543959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991547, 31.350830, 25.351498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457168, 0.183509, -0.870243,
		0.537115, -0.836861, 0.105695,
		-0.708876, -0.515741, -0.481151,
		35.778885, 31.196108, 25.207151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595982, 31.208773, 25.065704>,  <36.275097, 31.557127, 25.543959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595982, 31.208773, 25.065704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224834, 31.208820, 24.916538>,  <36.002148, 31.208849, 24.827038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224834, 31.208820, 24.916538>,  <36.595982, 31.208773, 25.065704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224834, 31.208820, 24.916538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354977, 0.306711, -0.883131,
		0.114271, -0.951803, -0.284629,
		-0.927865, 0.000120, -0.372916,
		35.946476, 31.208857, 24.804663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633392, 30.803576, 24.313631>,  <36.595982, 31.208773, 25.065704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633392, 30.803576, 24.313631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318569, 31.043858, 24.369755>,  <36.129673, 31.188026, 24.403429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318569, 31.043858, 24.369755>,  <36.633392, 30.803576, 24.313631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318569, 31.043858, 24.369755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232346, 0.499378, -0.834648,
		-0.571445, -0.624319, -0.532613,
		-0.787061, 0.600706, 0.140309,
		36.082451, 31.224070, 24.411848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396385, 30.956850, 23.658882>,  <36.633392, 30.803576, 24.313631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396385, 30.956850, 23.658882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237793, 31.265064, 23.858513>,  <36.142635, 31.449993, 23.978291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237793, 31.265064, 23.858513>,  <36.396385, 30.956850, 23.658882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237793, 31.265064, 23.858513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306740, 0.623576, -0.719071,
		-0.865282, -0.132012, -0.483591,
		-0.396482, 0.770536, 0.499075,
		36.118847, 31.496225, 24.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062767, 31.381084, 23.130949>,  <36.396385, 30.956850, 23.658882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062767, 31.381084, 23.130949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128555, 31.634182, 23.433628>,  <36.168026, 31.786039, 23.615234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128555, 31.634182, 23.433628>,  <36.062767, 31.381084, 23.130949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128555, 31.634182, 23.433628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522872, 0.594565, -0.610817,
		-0.836394, 0.496115, -0.233055,
		0.164469, 0.632742, 0.756696,
		36.177895, 31.824005, 23.660637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945450, 31.975870, 22.835979>,  <36.062767, 31.381084, 23.130949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945450, 31.975870, 22.835979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142151, 32.083569, 23.167206>,  <36.260170, 32.148186, 23.365942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142151, 32.083569, 23.167206>,  <35.945450, 31.975870, 22.835979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142151, 32.083569, 23.167206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482523, 0.707356, -0.516545,
		-0.724813, 0.653571, 0.217926,
		0.491750, 0.269244, 0.828064,
		36.289677, 32.164341, 23.415625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783363, 32.683285, 22.936274>,  <35.945450, 31.975870, 22.835979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783363, 32.683285, 22.936274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117001, 32.611763, 23.145012>,  <36.317181, 32.568848, 23.270254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117001, 32.611763, 23.145012>,  <35.783363, 32.683285, 22.936274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117001, 32.611763, 23.145012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462442, 0.742395, -0.484765,
		-0.300734, 0.645660, 0.701913,
		0.834090, -0.178809, 0.521844,
		36.367229, 32.558121, 23.301565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943764, 33.367573, 23.133188>,  <35.783363, 32.683285, 22.936274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943764, 33.367573, 23.133188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285347, 33.160908, 23.157871>,  <36.490299, 33.036907, 23.172682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285347, 33.160908, 23.157871>,  <35.943764, 33.367573, 23.133188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285347, 33.160908, 23.157871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411682, 0.598346, -0.687387,
		0.318226, 0.612406, 0.723666,
		0.853961, -0.516665, 0.061707,
		36.541534, 33.005909, 23.176384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507774, 33.815800, 23.222410>,  <35.943764, 33.367573, 23.133188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507774, 33.815800, 23.222410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714993, 33.494907, 23.103710>,  <36.839321, 33.302372, 23.032490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714993, 33.494907, 23.103710>,  <36.507774, 33.815800, 23.222410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714993, 33.494907, 23.103710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508842, 0.567902, -0.646967,
		0.687540, 0.184159, 0.702406,
		0.518043, -0.802230, -0.296748,
		36.870407, 33.254238, 23.014687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170067, 33.991978, 23.258825>,  <36.507774, 33.815800, 23.222410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170067, 33.991978, 23.258825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171810, 33.679974, 23.008526>,  <37.172855, 33.492771, 22.858347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171810, 33.679974, 23.008526>,  <37.170067, 33.991978, 23.258825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171810, 33.679974, 23.008526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551945, 0.523680, -0.648935,
		0.833869, -0.342547, 0.432809,
		0.004363, -0.780013, -0.625748,
		37.173119, 33.445969, 22.820801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978149, 34.274925, 23.923595>,  <37.170067, 33.991978, 23.258825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978149, 34.274925, 23.923595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151939, 34.514790, 24.192410>,  <37.256214, 34.658707, 24.353699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151939, 34.514790, 24.192410>,  <36.978149, 34.274925, 23.923595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151939, 34.514790, 24.192410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056119, -0.762717, 0.644293,
		0.898932, -0.242218, -0.365037,
		0.434479, 0.599661, 0.672037,
		37.282284, 34.694687, 24.394020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223766, 33.817265, 24.440428>,  <36.978149, 34.274925, 23.923595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223766, 33.817265, 24.440428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273861, 34.177818, 24.606236>,  <37.303917, 34.394150, 24.705721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273861, 34.177818, 24.606236>,  <37.223766, 33.817265, 24.440428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273861, 34.177818, 24.606236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085292, -0.426046, 0.900672,
		0.988453, -0.077445, -0.130239,
		0.125241, 0.901381, 0.414521,
		37.311432, 34.448231, 24.730593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805008, 33.761421, 24.868277>,  <37.223766, 33.817265, 24.440428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805008, 33.761421, 24.868277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510044, 34.001324, 24.992546>,  <37.333065, 34.145264, 25.067108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510044, 34.001324, 24.992546>,  <37.805008, 33.761421, 24.868277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510044, 34.001324, 24.992546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015343, -0.474710, 0.880008,
		0.675268, 0.644162, 0.359260,
		-0.737413, 0.599754, 0.310673,
		37.288822, 34.181252, 25.085749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942585, 34.123177, 25.563763>,  <37.805008, 33.761421, 24.868277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942585, 34.123177, 25.563763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555561, 34.029613, 25.525585>,  <37.323345, 33.973476, 25.502678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555561, 34.029613, 25.525585>,  <37.942585, 34.123177, 25.563763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555561, 34.029613, 25.525585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057017, -0.570238, 0.819498,
		-0.246112, 0.787474, 0.565078,
		-0.967563, -0.233908, -0.095443,
		37.265293, 33.959442, 25.496952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621479, 34.322403, 26.222860>,  <37.942585, 34.123177, 25.563763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621479, 34.322403, 26.222860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374313, 34.073051, 26.031204>,  <37.226013, 33.923439, 25.916210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374313, 34.073051, 26.031204>,  <37.621479, 34.322403, 26.222860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374313, 34.073051, 26.031204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233061, -0.436793, 0.868846,
		-0.750908, 0.648543, 0.124616,
		-0.617915, -0.623381, -0.479142,
		37.188938, 33.886036, 25.887463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982178, 34.319847, 26.626434>,  <37.621479, 34.322403, 26.222860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982178, 34.319847, 26.626434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988010, 33.981216, 26.413609>,  <36.991508, 33.778038, 26.285913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988010, 33.981216, 26.413609>,  <36.982178, 34.319847, 26.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988010, 33.981216, 26.413609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224642, -0.521291, 0.823281,
		-0.974332, 0.107522, -0.197776,
		0.014578, -0.846578, -0.532064,
		36.992382, 33.727242, 26.253990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543346, 33.858868, 26.899363>,  <36.982178, 34.319847, 26.626434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543346, 33.858868, 26.899363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753044, 33.574932, 26.711193>,  <36.878860, 33.404572, 26.598291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753044, 33.574932, 26.711193>,  <36.543346, 33.858868, 26.899363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753044, 33.574932, 26.711193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315887, -0.675106, 0.666669,
		-0.790815, -0.200894, -0.578146,
		0.524239, -0.709841, -0.470424,
		36.910316, 33.361980, 26.570066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063538, 33.237804, 26.926794>,  <36.543346, 33.858868, 26.899363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063538, 33.237804, 26.926794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432625, 33.090809, 26.880249>,  <36.654076, 33.002609, 26.852322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432625, 33.090809, 26.880249>,  <36.063538, 33.237804, 26.926794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432625, 33.090809, 26.880249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256057, -0.809985, 0.527597,
		-0.288140, -0.457028, -0.841487,
		0.922719, -0.367491, -0.116364,
		36.709442, 32.980560, 26.845339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000805, 32.564106, 26.716232>,  <36.063538, 33.237804, 26.926794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000805, 32.564106, 26.716232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375488, 32.567997, 26.856220>,  <36.600300, 32.570332, 26.940212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375488, 32.567997, 26.856220>,  <36.000805, 32.564106, 26.716232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375488, 32.567997, 26.856220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186794, -0.831559, 0.523085,
		0.296109, -0.555352, -0.777113,
		0.936711, 0.009730, 0.349968,
		36.656502, 32.570915, 26.961210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184536, 31.794878, 26.828220>,  <36.000805, 32.564106, 26.716232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184536, 31.794878, 26.828220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426220, 32.031662, 27.041580>,  <36.571232, 32.173733, 27.169596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426220, 32.031662, 27.041580>,  <36.184536, 31.794878, 26.828220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426220, 32.031662, 27.041580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031514, -0.651131, 0.758311,
		0.796202, -0.474989, -0.374765,
		0.604210, 0.591959, 0.533400,
		36.607483, 32.209251, 27.201601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720989, 31.344772, 26.985838>,  <36.184536, 31.794878, 26.828220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720989, 31.344772, 26.985838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683090, 31.647697, 27.244293>,  <36.660351, 31.829453, 27.399366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683090, 31.647697, 27.244293>,  <36.720989, 31.344772, 26.985838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683090, 31.647697, 27.244293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022769, -0.647241, 0.761945,
		0.995241, 0.086906, 0.044083,
		-0.094750, 0.757315, 0.646140,
		36.654667, 31.874891, 27.438135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021404, 31.100220, 27.465490>,  <36.720989, 31.344772, 26.985838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021404, 31.100220, 27.465490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865997, 31.390873, 27.692139>,  <36.772755, 31.565266, 27.828127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865997, 31.390873, 27.692139>,  <37.021404, 31.100220, 27.465490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865997, 31.390873, 27.692139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023965, -0.622688, 0.782103,
		0.921130, 0.290282, 0.259339,
		-0.388518, 0.726634, 0.566619,
		36.749443, 31.608864, 27.862125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371204, 31.034935, 28.173820>,  <37.021404, 31.100220, 27.465490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371204, 31.034935, 28.173820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043034, 31.250320, 28.250721>,  <36.846130, 31.379551, 28.296862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043034, 31.250320, 28.250721>,  <37.371204, 31.034935, 28.173820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043034, 31.250320, 28.250721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115586, -0.485505, 0.866559,
		0.559949, 0.688725, 0.460559,
		-0.820425, 0.538463, 0.192251,
		36.796906, 31.411860, 28.308397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399891, 31.248487, 28.973265>,  <37.371204, 31.034935, 28.173820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399891, 31.248487, 28.973265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024391, 31.280716, 28.839241>,  <36.799091, 31.300053, 28.758827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024391, 31.280716, 28.839241>,  <37.399891, 31.248487, 28.973265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024391, 31.280716, 28.839241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344591, -0.208712, 0.915258,
		0.003814, 0.974652, 0.223692,
		-0.938745, 0.080573, -0.335061,
		36.742767, 31.304888, 28.738724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015495, 31.732325, 29.350727>,  <37.399891, 31.248487, 28.973265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015495, 31.732325, 29.350727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719509, 31.513832, 29.193714>,  <36.541916, 31.382736, 29.099506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719509, 31.513832, 29.193714>,  <37.015495, 31.732325, 29.350727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719509, 31.513832, 29.193714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391085, -0.125417, 0.911769,
		-0.547266, 0.828192, -0.120819,
		-0.739967, -0.546231, -0.392530,
		36.497520, 31.349962, 29.075954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378139, 31.992290, 29.473198>,  <37.015495, 31.732325, 29.350727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378139, 31.992290, 29.473198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291260, 31.610554, 29.391167>,  <36.239132, 31.381512, 29.341948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291260, 31.610554, 29.391167>,  <36.378139, 31.992290, 29.473198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291260, 31.610554, 29.391167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322868, -0.128029, 0.937745,
		-0.921184, 0.269891, -0.280318,
		-0.217200, -0.954341, -0.205078,
		36.226101, 31.324251, 29.329643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765789, 31.913887, 29.877365>,  <36.378139, 31.992290, 29.473198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765789, 31.913887, 29.877365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897938, 31.548740, 29.781425>,  <35.977226, 31.329653, 29.723862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897938, 31.548740, 29.781425>,  <35.765789, 31.913887, 29.877365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897938, 31.548740, 29.781425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261345, -0.332660, 0.906110,
		-0.906946, -0.236673, -0.348476,
		0.330376, -0.912866, -0.239851,
		35.997051, 31.274881, 29.709471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191540, 31.464207, 30.018984>,  <35.765789, 31.913887, 29.877365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191540, 31.464207, 30.018984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525883, 31.244701, 30.024681>,  <35.726490, 31.112999, 30.028099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525883, 31.244701, 30.024681>,  <35.191540, 31.464207, 30.018984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525883, 31.244701, 30.024681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293234, -0.424412, 0.856673,
		-0.464068, -0.720230, -0.515664,
		0.835855, -0.548765, 0.014240,
		35.776638, 31.080072, 30.028954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969715, 30.703819, 30.255758>,  <35.191540, 31.464207, 30.018984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969715, 30.703819, 30.255758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355274, 30.781139, 30.329002>,  <35.586609, 30.827532, 30.372950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355274, 30.781139, 30.329002>,  <34.969715, 30.703819, 30.255758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355274, 30.781139, 30.329002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069154, -0.482365, 0.873236,
		0.257125, -0.854376, -0.451584,
		0.963901, 0.193302, 0.183111,
		35.644444, 30.839130, 30.383936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076294, 30.120012, 30.619699>,  <34.969715, 30.703819, 30.255758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076294, 30.120012, 30.619699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379684, 30.371777, 30.687290>,  <35.561718, 30.522835, 30.727844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379684, 30.371777, 30.687290>,  <35.076294, 30.120012, 30.619699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379684, 30.371777, 30.687290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093445, -0.361645, 0.927621,
		0.644963, -0.687791, -0.333115,
		0.758479, 0.629410, 0.168977,
		35.607227, 30.560600, 30.737984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672897, 29.697256, 30.861589>,  <35.076294, 30.120012, 30.619699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672897, 29.697256, 30.861589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686646, 30.076523, 30.987953>,  <35.694897, 30.304083, 31.063772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686646, 30.076523, 30.987953>,  <35.672897, 29.697256, 30.861589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686646, 30.076523, 30.987953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220070, -0.301157, 0.927833,
		0.974878, -0.101416, 0.198310,
		0.034375, 0.948166, 0.315910,
		35.696957, 30.360973, 31.082726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261333, 29.707956, 31.234743>,  <35.672897, 29.697256, 30.861589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261333, 29.707956, 31.234743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003006, 29.988564, 31.355267>,  <35.848007, 30.156927, 31.427580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003006, 29.988564, 31.355267>,  <36.261333, 29.707956, 31.234743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003006, 29.988564, 31.355267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000097, -0.394723, 0.918800,
		0.763488, 0.593352, 0.254989,
		-0.645822, 0.701518, 0.301309,
		35.809261, 30.199018, 31.445660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408188, 29.851788, 32.004562>,  <36.261333, 29.707956, 31.234743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408188, 29.851788, 32.004562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049397, 30.025948, 31.973949>,  <35.834122, 30.130444, 31.955582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049397, 30.025948, 31.973949>,  <36.408188, 29.851788, 32.004562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049397, 30.025948, 31.973949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308938, -0.493551, 0.812997,
		0.316208, 0.752884, 0.577216,
		-0.896978, 0.435400, -0.076529,
		35.780304, 30.156569, 31.950991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236443, 30.089602, 32.650635>,  <36.408188, 29.851788, 32.004562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236443, 30.089602, 32.650635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892513, 30.060509, 32.448479>,  <35.686157, 30.043053, 32.327187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892513, 30.060509, 32.448479>,  <36.236443, 30.089602, 32.650635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892513, 30.060509, 32.448479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439689, -0.397737, 0.805282,
		-0.259584, 0.914612, 0.310002,
		-0.859820, -0.072734, -0.505391,
		35.634567, 30.038689, 32.296860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752384, 30.309784, 33.113205>,  <36.236443, 30.089602, 32.650635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752384, 30.309784, 33.113205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558372, 30.096718, 32.835781>,  <35.441967, 29.968878, 32.669327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558372, 30.096718, 32.835781>,  <35.752384, 30.309784, 33.113205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558372, 30.096718, 32.835781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652497, -0.307598, 0.692554,
		-0.582235, 0.788449, -0.198369,
		-0.485025, -0.532665, -0.693555,
		35.412865, 29.936918, 32.627716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069935, 30.408936, 33.233185>,  <35.752384, 30.309784, 33.113205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069935, 30.408936, 33.233185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075954, 30.073586, 33.015228>,  <35.079567, 29.872375, 32.884457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075954, 30.073586, 33.015228>,  <35.069935, 30.408936, 33.233185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075954, 30.073586, 33.015228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658538, -0.418377, 0.625531,
		-0.752397, 0.349414, -0.558398,
		0.015052, -0.838374, -0.544888,
		35.080471, 29.822073, 32.851761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437569, 30.040911, 33.377354>,  <35.069935, 30.408936, 33.233185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437569, 30.040911, 33.377354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674824, 29.751987, 33.235111>,  <34.817177, 29.578632, 33.149765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674824, 29.751987, 33.235111>,  <34.437569, 30.040911, 33.377354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674824, 29.751987, 33.235111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430278, -0.657720, 0.618276,
		-0.680479, -0.213711, -0.700911,
		0.593136, -0.722310, -0.355609,
		34.852764, 29.535294, 33.128429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926159, 29.521997, 33.093567>,  <34.437569, 30.040911, 33.377354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926159, 29.521997, 33.093567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287128, 29.365349, 33.165409>,  <34.503712, 29.271358, 33.208515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287128, 29.365349, 33.165409>,  <33.926159, 29.521997, 33.093567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287128, 29.365349, 33.165409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416669, -0.687232, 0.595061,
		-0.109607, -0.611836, -0.783354,
		0.902426, -0.391622, 0.179608,
		34.557858, 29.247862, 33.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363514, 29.614758, 32.698326>,  <33.926159, 29.521997, 33.093567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363514, 29.614758, 32.698326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978699, 29.593380, 32.805378>,  <32.747810, 29.580553, 32.869610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978699, 29.593380, 32.805378>,  <33.363514, 29.614758, 32.698326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978699, 29.593380, 32.805378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178661, 0.864635, -0.469560,
		-0.206307, -0.499549, -0.841361,
		-0.962038, -0.053445, 0.267630,
		32.690086, 29.577347, 32.885666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866322, 29.551716, 32.096924>,  <33.363514, 29.614758, 32.698326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866322, 29.551716, 32.096924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665512, 29.705769, 32.406670>,  <32.545025, 29.798201, 32.592518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665512, 29.705769, 32.406670>,  <32.866322, 29.551716, 32.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665512, 29.705769, 32.406670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205507, 0.816607, -0.539370,
		-0.840082, -0.429915, -0.330809,
		-0.502025, 0.385132, 0.774368,
		32.514904, 29.821308, 32.638981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153133, 29.650469, 31.782722>,  <32.866322, 29.551716, 32.096924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153133, 29.650469, 31.782722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230457, 29.884438, 32.097809>,  <32.276852, 30.024818, 32.286861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230457, 29.884438, 32.097809>,  <32.153133, 29.650469, 31.782722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230457, 29.884438, 32.097809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025820, 0.805615, -0.591877,
		-0.980798, 0.094077, 0.170836,
		0.193310, 0.584922, 0.787716,
		32.288452, 30.059914, 32.334126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604784, 30.206949, 31.691092>,  <32.153133, 29.650469, 31.782722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604784, 30.206949, 31.691092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907682, 30.352215, 31.908234>,  <32.089420, 30.439373, 32.038521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907682, 30.352215, 31.908234>,  <31.604784, 30.206949, 31.691092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907682, 30.352215, 31.908234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076000, 0.874509, -0.479017,
		-0.648694, 0.321476, 0.689818,
		0.757245, 0.363162, 0.542857,
		32.134857, 30.461163, 32.071091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433119, 30.922466, 31.786867>,  <31.604784, 30.206949, 31.691092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433119, 30.922466, 31.786867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821966, 30.879276, 31.870129>,  <32.055275, 30.853363, 31.920086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821966, 30.879276, 31.870129>,  <31.433119, 30.922466, 31.786867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821966, 30.879276, 31.870129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186421, 0.894333, -0.406714,
		-0.142244, 0.434178, 0.889526,
		0.972118, -0.107973, 0.208153,
		32.113602, 30.846884, 31.932575>
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
