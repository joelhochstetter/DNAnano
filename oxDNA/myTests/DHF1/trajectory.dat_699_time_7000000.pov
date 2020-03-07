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
	<-0.639513, 3.330112, 5.123510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.611610, 3.240402, 4.734700>,  <-0.594869, 3.186576, 4.501414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.611610, 3.240402, 4.734700>,  <-0.639513, 3.330112, 5.123510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.611610, 3.240402, 4.734700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795544, -0.575384, 0.189850,
		-0.601867, -0.786533, 0.138283,
		0.069758, -0.224275, -0.972026,
		-0.590683, 3.173120, 4.443092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.743349, 2.608660, 4.965344>,  <-0.639513, 3.330112, 5.123510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.743349, 2.608660, 4.965344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.471869, 2.782013, 4.728179>,  <-0.308980, 2.886025, 4.585880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.471869, 2.782013, 4.728179>,  <-0.743349, 2.608660, 4.965344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.471869, 2.782013, 4.728179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702184, -0.619471, 0.350988,
		-0.215180, -0.654549, -0.724751,
		0.678701, 0.433383, -0.592912,
		-0.268258, 2.912028, 4.550305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.499639, 2.179172, 4.382530>,  <-0.743349, 2.608660, 4.965344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.499639, 2.179172, 4.382530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.197115, 2.433746, 4.443118>,  <-0.015601, 2.586491, 4.479471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.197115, 2.433746, 4.443118>,  <-0.499639, 2.179172, 4.382530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.197115, 2.433746, 4.443118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642395, -0.766277, 0.012129,
		0.123787, 0.088130, -0.988388,
		0.756310, 0.636437, 0.151469,
		0.029778, 2.624677, 4.488559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.018961, 2.020317, 3.880429>,  <-0.499639, 2.179172, 4.382530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.018961, 2.020317, 3.880429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.159100, 2.164246, 4.226327>,  <0.243183, 2.250603, 4.433866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.159100, 2.164246, 4.226327>,  <0.018961, 2.020317, 3.880429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.159100, 2.164246, 4.226327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592522, -0.800180, 0.092899,
		0.725379, 0.479834, -0.493543,
		0.350347, 0.359822, 0.864746,
		0.264204, 2.272192, 4.485751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.781842, 1.993951, 3.787902>,  <0.018961, 2.020317, 3.880429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.781842, 1.993951, 3.787902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.734789, 2.036402, 4.182850>,  <0.706557, 2.061872, 4.419819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.734789, 2.036402, 4.182850>,  <0.781842, 1.993951, 3.787902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.734789, 2.036402, 4.182850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713170, -0.682868, 0.158364,
		0.691051, 0.722792, 0.004641,
		-0.117633, 0.106128, 0.987370,
		0.699499, 2.068240, 4.479061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.417369, 2.086731, 4.041114>,  <0.781842, 1.993951, 3.787902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.417369, 2.086731, 4.041114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.196140, 1.951290, 4.345603>,  <1.063403, 1.870025, 4.528296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.196140, 1.951290, 4.345603>,  <1.417369, 2.086731, 4.041114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.196140, 1.951290, 4.345603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709589, -0.670230, 0.217429,
		0.436571, 0.660409, 0.610955,
		-0.553073, -0.338604, 0.761222,
		1.030218, 1.849709, 4.573969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922092, 1.847187, 4.437772>,  <1.417369, 2.086731, 4.041114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922092, 1.847187, 4.437772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.591190, 1.672850, 4.579583>,  <1.392649, 1.568247, 4.664670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.591190, 1.672850, 4.579583>,  <1.922092, 1.847187, 4.437772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.591190, 1.672850, 4.579583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514960, -0.840533, 0.168287,
		0.224645, 0.321784, 0.919777,
		-0.827255, -0.435844, 0.354527,
		1.343014, 1.542096, 4.685941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.125611, 1.466039, 5.024508>,  <1.922092, 1.847187, 4.437772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.125611, 1.466039, 5.024508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791700, 1.288446, 4.894259>,  <1.591354, 1.181891, 4.816110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791700, 1.288446, 4.894259>,  <2.125611, 1.466039, 5.024508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791700, 1.288446, 4.894259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435468, -0.894295, 0.102981,
		-0.336923, -0.055831, 0.939875,
		-0.834776, -0.443982, -0.325621,
		1.541268, 1.155252, 4.796573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.279766, 0.566878, 4.091968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.047829, 0.297199, 4.274937>,  <1.908666, 0.135391, 4.384719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.047829, 0.297199, 4.274937>,  <2.279766, 0.566878, 4.091968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.047829, 0.297199, 4.274937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599615, 0.733246, 0.320645,
		-0.551583, -0.088354, -0.829427,
		-0.579843, -0.674199, 0.457424,
		1.873876, 0.094939, 4.412165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.576117, 0.489704, 3.780289>,  <2.279766, 0.566878, 4.091968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.576117, 0.489704, 3.780289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.585682, 0.421349, 4.174289>,  <1.591421, 0.380336, 4.410689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.585682, 0.421349, 4.174289>,  <1.576117, 0.489704, 3.780289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.585682, 0.421349, 4.174289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578098, 0.801479, 0.153084,
		-0.815617, -0.573088, -0.079624,
		0.023913, -0.170888, 0.985000,
		1.592856, 0.370083, 4.469789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.921769, 0.356136, 4.057025>,  <1.576117, 0.489704, 3.780289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.921769, 0.356136, 4.057025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.136105, 0.489401, 4.367348>,  <1.264706, 0.569360, 4.553542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.136105, 0.489401, 4.367348>,  <0.921769, 0.356136, 4.057025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.136105, 0.489401, 4.367348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732026, 0.641188, 0.230249,
		-0.420729, -0.691289, 0.587459,
		0.535840, 0.333163, 0.775808,
		1.296857, 0.589350, 4.600091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.387297, 0.627918, 4.564818>,  <0.921769, 0.356136, 4.057025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.387297, 0.627918, 4.564818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.747204, 0.780528, 4.649536>,  <0.963148, 0.872094, 4.700367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.747204, 0.780528, 4.649536>,  <0.387297, 0.627918, 4.564818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.747204, 0.780528, 4.649536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418806, 0.891333, 0.173573,
		-0.122558, -0.244876, 0.961777,
		0.899767, 0.381525, 0.211796,
		1.017134, 0.894986, 4.713075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.316980, 0.853956, 5.229354>,  <0.387297, 0.627918, 4.564818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.316980, 0.853956, 5.229354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.614811, 1.059728, 5.059194>,  <0.793509, 1.183191, 4.957097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.614811, 1.059728, 5.059194>,  <0.316980, 0.853956, 5.229354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.614811, 1.059728, 5.059194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533470, 0.841633, 0.084046,
		0.401268, 0.164361, 0.901093,
		0.744577, 0.514431, -0.425402,
		0.838184, 1.214057, 4.931573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.308473, 1.448397, 5.540708>,  <0.316980, 0.853956, 5.229354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.308473, 1.448397, 5.540708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525822, 1.560725, 5.224256>,  <0.656231, 1.628122, 5.034384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525822, 1.560725, 5.224256>,  <0.308473, 1.448397, 5.540708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.525822, 1.560725, 5.224256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429707, 0.902615, 0.025257,
		0.721178, 0.326230, 0.611127,
		0.543373, 0.280820, -0.791130,
		0.688834, 1.644971, 4.986917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.584146, 2.033424, 5.768522>,  <0.308473, 1.448397, 5.540708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.584146, 2.033424, 5.768522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605396, 2.039900, 5.369139>,  <0.618146, 2.043786, 5.129509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.605396, 2.039900, 5.369139>,  <0.584146, 2.033424, 5.768522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.605396, 2.039900, 5.369139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352608, 0.935764, -0.003588,
		0.934262, 0.352254, 0.055422,
		0.053126, 0.016190, -0.998457,
		0.621334, 2.044757, 5.069602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.916806, 2.678075, 5.530375>,  <0.584146, 2.033424, 5.768522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.916806, 2.678075, 5.530375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.681515, 2.549814, 5.233412>,  <0.540340, 2.472857, 5.055234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.681515, 2.549814, 5.233412>,  <0.916806, 2.678075, 5.530375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.681515, 2.549814, 5.233412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494420, 0.869069, 0.016382,
		0.639950, 0.376697, -0.669748,
		-0.588228, -0.320653, -0.742408,
		0.505046, 2.453618, 5.010689>
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
