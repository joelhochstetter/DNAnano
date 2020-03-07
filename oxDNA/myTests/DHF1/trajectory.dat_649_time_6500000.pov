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
	<2.108892, 3.012684, 3.788147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.902836, 2.811380, 3.510627>,  <1.779202, 2.690598, 3.344115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.902836, 2.811380, 3.510627>,  <2.108892, 3.012684, 3.788147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.902836, 2.811380, 3.510627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053047, -0.826638, 0.560228,
		-0.855462, 0.251793, 0.452532,
		-0.515142, -0.503260, -0.693800,
		1.748293, 2.660403, 3.302487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660340, 2.594969, 4.250424>,  <2.108892, 3.012684, 3.788147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660340, 2.594969, 4.250424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.733036, 2.457312, 3.881960>,  <1.776654, 2.374717, 3.660882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.733036, 2.457312, 3.881960>,  <1.660340, 2.594969, 4.250424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.733036, 2.457312, 3.881960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187376, -0.907477, 0.375999,
		-0.965329, -0.240937, -0.100441,
		0.181740, -0.344142, -0.921160,
		1.787558, 2.354069, 3.605612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.685855, 1.867112, 4.374218>,  <1.660340, 2.594969, 4.250424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.685855, 1.867112, 4.374218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.789219, 1.858953, 3.987890>,  <1.851238, 1.854058, 3.756093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.789219, 1.858953, 3.987890>,  <1.685855, 1.867112, 4.374218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.789219, 1.858953, 3.987890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233124, -0.968913, 0.082836,
		-0.937484, -0.246561, -0.245623,
		0.258411, -0.020397, -0.965820,
		1.866742, 1.852834, 3.698144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.255604, 1.373960, 3.999733>,  <1.685855, 1.867112, 4.374218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.255604, 1.373960, 3.999733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.624352, 1.414635, 3.850164>,  <1.845600, 1.439039, 3.760423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.624352, 1.414635, 3.850164>,  <1.255604, 1.373960, 3.999733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.624352, 1.414635, 3.850164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188889, -0.960471, 0.204494,
		-0.338346, -0.259146, -0.904636,
		0.921870, 0.101686, -0.373921,
		1.900912, 1.445140, 3.737988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.263564, 0.814032, 3.606636>,  <1.255604, 1.373960, 3.999733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.263564, 0.814032, 3.606636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.629772, 0.949499, 3.693469>,  <1.849497, 1.030780, 3.745568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.629772, 0.949499, 3.693469>,  <1.263564, 0.814032, 3.606636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.629772, 0.949499, 3.693469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288964, -0.929100, 0.230812,
		0.279858, -0.148585, -0.948474,
		0.915522, 0.338669, 0.217081,
		1.904429, 1.051100, 3.758593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.716543, 0.426881, 3.214547>,  <1.263564, 0.814032, 3.606636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.716543, 0.426881, 3.214547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931458, 0.581501, 3.514388>,  <2.060406, 0.674273, 3.694293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931458, 0.581501, 3.514388>,  <1.716543, 0.426881, 3.214547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.931458, 0.581501, 3.514388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422044, -0.892728, 0.157850,
		0.730207, 0.231554, -0.642791,
		0.537286, 0.386549, 0.749602,
		2.092643, 0.697466, 3.739269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.382698, 0.175065, 3.053042>,  <1.716543, 0.426881, 3.214547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.382698, 0.175065, 3.053042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366467, 0.291534, 3.435366>,  <2.356728, 0.361416, 3.664760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366467, 0.291534, 3.435366>,  <2.382698, 0.175065, 3.053042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366467, 0.291534, 3.435366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390882, -0.875734, 0.283375,
		0.919546, 0.385107, -0.078278,
		-0.040579, 0.291174, 0.955809,
		2.354293, 0.378887, 3.722108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.000985, -0.085759, 3.412602>,  <2.382698, 0.175065, 3.053042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.000985, -0.085759, 3.412602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.766739, 0.008659, 3.722785>,  <2.626191, 0.065310, 3.908896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.766739, 0.008659, 3.722785>,  <3.000985, -0.085759, 3.412602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.766739, 0.008659, 3.722785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324983, -0.808039, 0.491385,
		0.742590, 0.539774, 0.396490,
		-0.585616, 0.236045, 0.775459,
		2.591054, 0.079473, 3.955423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.603740, -1.319224, 4.518556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.588631, -1.037433, 4.802043>,  <2.579565, -0.868358, 4.972136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.588631, -1.037433, 4.802043>,  <2.603740, -1.319224, 4.518556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.588631, -1.037433, 4.802043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287626, 0.671547, -0.682859,
		-0.956998, -0.229639, 0.177260,
		-0.037772, 0.704479, 0.708719,
		2.577299, -0.826089, 5.014658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.833023, -0.989370, 4.475468>,  <2.603740, -1.319224, 4.518556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.833023, -0.989370, 4.475468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.126083, -0.760221, 4.622460>,  <2.301919, -0.622732, 4.710656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.126083, -0.760221, 4.622460>,  <1.833023, -0.989370, 4.475468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.126083, -0.760221, 4.622460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184459, 0.686858, -0.702994,
		-0.655133, 0.447263, 0.608898,
		0.732650, 0.572871, 0.367481,
		2.345878, -0.588360, 4.732705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.563414, -0.239916, 4.573300>,  <1.833023, -0.989370, 4.475468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.563414, -0.239916, 4.573300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959961, -0.201629, 4.537462>,  <2.197889, -0.178656, 4.515959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959961, -0.201629, 4.537462>,  <1.563414, -0.239916, 4.573300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.959961, -0.201629, 4.537462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127934, 0.855717, -0.501379,
		0.028677, 0.508514, 0.860576,
		0.991368, 0.095719, -0.089595,
		2.257371, -0.172913, 4.510583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.695990, 0.368403, 4.871583>,  <1.563414, -0.239916, 4.573300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.695990, 0.368403, 4.871583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.975410, 0.283515, 4.598236>,  <2.143063, 0.232582, 4.434228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.975410, 0.283515, 4.598236>,  <1.695990, 0.368403, 4.871583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.975410, 0.283515, 4.598236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093523, 0.919739, -0.381227,
		0.709422, 0.330217, 0.622637,
		0.698551, -0.212220, -0.683366,
		2.184976, 0.219849, 4.393226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.234079, 0.908336, 4.949717>,  <1.695990, 0.368403, 4.871583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.234079, 0.908336, 4.949717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.276421, 0.737864, 4.590347>,  <2.301825, 0.635582, 4.374725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.276421, 0.737864, 4.590347>,  <2.234079, 0.908336, 4.949717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.276421, 0.737864, 4.590347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233895, 0.888823, -0.394065,
		0.966483, -0.168424, 0.193766,
		0.105854, -0.426178, -0.898425,
		2.308177, 0.610011, 4.320819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.782757, 1.226773, 4.703847>,  <2.234079, 0.908336, 4.949717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.782757, 1.226773, 4.703847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590218, 1.056402, 4.397412>,  <2.474694, 0.954180, 4.213552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590218, 1.056402, 4.397412>,  <2.782757, 1.226773, 4.703847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.590218, 1.056402, 4.397412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073882, 0.890606, -0.448735,
		0.873407, -0.159400, -0.460166,
		-0.481355, -0.425926, -0.766084,
		2.445813, 0.928624, 4.167586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.115049, 1.343695, 4.091527>,  <2.782757, 1.226773, 4.703847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.115049, 1.343695, 4.091527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.733345, 1.278891, 3.991016>,  <2.504323, 1.240008, 3.930709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.733345, 1.278891, 3.991016>,  <3.115049, 1.343695, 4.091527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.733345, 1.278891, 3.991016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050989, 0.916330, -0.397164,
		0.294600, -0.366185, -0.882678,
		-0.954260, -0.162011, -0.251279,
		2.447067, 1.230287, 3.915632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.101329, 1.409281, 3.313787>,  <3.115049, 1.343695, 4.091527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.101329, 1.409281, 3.313787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.747742, 1.475605, 3.488650>,  <2.535589, 1.515399, 3.593568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.747742, 1.475605, 3.488650>,  <3.101329, 1.409281, 3.313787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.747742, 1.475605, 3.488650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127201, 0.814448, -0.566122,
		-0.449912, -0.556041, -0.698855,
		-0.883968, 0.165810, 0.437159,
		2.482551, 1.525348, 3.619798>
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
