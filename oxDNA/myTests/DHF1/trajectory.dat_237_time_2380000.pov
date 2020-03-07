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
	<1.049766, 3.690677, 3.965410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649952, 3.702293, 3.961662>,  <0.410064, 3.709263, 3.959413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649952, 3.702293, 3.961662>,  <1.049766, 3.690677, 3.965410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.649952, 3.702293, 3.961662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030486, 0.936773, -0.348606,
		-0.001346, -0.348730, -0.937222,
		-0.999534, 0.029041, -0.009370,
		0.350092, 3.711006, 3.958851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.869110, 3.835811, 3.332417>,  <1.049766, 3.690677, 3.965410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.869110, 3.835811, 3.332417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.554848, 3.948593, 3.552689>,  <0.366290, 4.016263, 3.684852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.554848, 3.948593, 3.552689>,  <0.869110, 3.835811, 3.332417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.554848, 3.948593, 3.552689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010550, 0.883874, -0.467607,
		-0.618575, -0.373187, -0.691446,
		-0.785655, 0.281955, 0.550679,
		0.319151, 4.033180, 3.717892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.443475, 3.983228, 2.713657>,  <0.869110, 3.835811, 3.332417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.443475, 3.983228, 2.713657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.380970, 4.144012, 3.074547>,  <0.343467, 4.240483, 3.291081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.380970, 4.144012, 3.074547>,  <0.443475, 3.983228, 2.713657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.380970, 4.144012, 3.074547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032377, 0.910871, -0.411420,
		-0.987185, -0.093501, -0.129321,
		-0.156263, 0.401960, 0.902225,
		0.334091, 4.264600, 3.345214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.118908, 4.458961, 2.636020>,  <0.443475, 3.983228, 2.713657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.118908, 4.458961, 2.636020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.071880, 4.569824, 2.969650>,  <0.186353, 4.636342, 3.169828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.071880, 4.569824, 2.969650>,  <-0.118908, 4.458961, 2.636020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.071880, 4.569824, 2.969650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132056, 0.915608, -0.379768,
		-0.868942, 0.291283, 0.400118,
		0.476971, 0.277158, 0.834076,
		0.214972, 4.652972, 3.219873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.403817, 5.158386, 2.852826>,  <-0.118908, 4.458961, 2.636020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.403817, 5.158386, 2.852826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.026920, 5.097580, 2.972206>,  <0.199218, 5.061096, 3.043834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.026920, 5.097580, 2.972206>,  <-0.403817, 5.158386, 2.852826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.026920, 5.097580, 2.972206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226533, 0.945587, -0.233556,
		-0.246706, 0.287675, 0.925408,
		0.942241, -0.152016, 0.298450,
		0.255752, 5.051975, 3.061741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.250499, 5.723354, 3.390182>,  <-0.403817, 5.158386, 2.852826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.250499, 5.723354, 3.390182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.115532, 5.586754, 3.304382>,  <0.335151, 5.504794, 3.252902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.115532, 5.586754, 3.304382>,  <-0.250499, 5.723354, 3.390182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.115532, 5.586754, 3.304382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349872, 0.936797, 0.001133,
		0.200556, -0.076084, 0.976724,
		0.915078, -0.341501, -0.214500,
		0.390055, 5.484303, 3.240032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.276703, 6.014338, 3.864190>,  <-0.250499, 5.723354, 3.390182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.276703, 6.014338, 3.864190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.467613, 5.898933, 3.532173>,  <0.582159, 5.829691, 3.332963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.467613, 5.898933, 3.532173>,  <0.276703, 6.014338, 3.864190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.467613, 5.898933, 3.532173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427471, 0.901502, -0.067552,
		0.767774, -0.322578, 0.553594,
		0.477276, -0.288510, -0.830042,
		0.610796, 5.812380, 3.283160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.997671, 6.141927, 3.976037>,  <0.276703, 6.014338, 3.864190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.997671, 6.141927, 3.976037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.935661, 6.127022, 3.581154>,  <0.898456, 6.118079, 3.344224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.935661, 6.127022, 3.581154>,  <0.997671, 6.141927, 3.976037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.935661, 6.127022, 3.581154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572987, 0.810646, -0.120576,
		0.804769, -0.584349, -0.104320,
		-0.155025, -0.037262, -0.987208,
		0.889154, 6.115843, 3.284992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.788313, 2.502524, 3.359024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.774260, 2.189865, 3.608116>,  <1.765828, 2.002270, 3.757572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.774260, 2.189865, 3.608116>,  <1.788313, 2.502524, 3.359024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.774260, 2.189865, 3.608116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596057, -0.483766, -0.640848,
		0.802173, -0.393699, -0.448910,
		-0.035134, -0.781647, 0.622731,
		1.763719, 1.955371, 3.794935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.011466, 2.479526, 3.216390>,  <1.788313, 2.502524, 3.359024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.011466, 2.479526, 3.216390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.230507, 2.268837, 2.956329>,  <1.361932, 2.142424, 2.800293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.230507, 2.268837, 2.956329>,  <1.011466, 2.479526, 3.216390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.230507, 2.268837, 2.956329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643170, -0.761983, 0.075599,
		-0.535223, 0.376759, -0.756035,
		0.547603, -0.526721, -0.650150,
		1.394788, 2.110821, 2.761284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.671410, 2.153150, 2.623671>,  <1.011466, 2.479526, 3.216390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.671410, 2.153150, 2.623671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992476, 1.915672, 2.646500>,  <1.185115, 1.773186, 2.660197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.992476, 1.915672, 2.646500>,  <0.671410, 2.153150, 2.623671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.992476, 1.915672, 2.646500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593351, -0.785143, 0.177438,
		-0.060535, -0.176286, -0.982476,
		0.802664, -0.593694, 0.057071,
		1.233275, 1.737564, 2.663621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.439394, 1.614212, 2.144195>,  <0.671410, 2.153150, 2.623671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.439394, 1.614212, 2.144195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.735323, 1.487564, 2.381653>,  <0.912880, 1.411576, 2.524128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.735323, 1.487564, 2.381653>,  <0.439394, 1.614212, 2.144195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.735323, 1.487564, 2.381653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484363, -0.863047, 0.143327,
		0.466964, -0.393577, -0.791860,
		0.739822, -0.316619, 0.593646,
		0.957270, 1.392578, 2.559747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.783631, 0.945810, 1.960446>,  <0.439394, 1.614212, 2.144195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.783631, 0.945810, 1.960446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.801514, 1.012650, 2.354416>,  <0.812243, 1.052753, 2.590798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.801514, 1.012650, 2.354416>,  <0.783631, 0.945810, 1.960446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.801514, 1.012650, 2.354416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350938, -0.920449, 0.172090,
		0.935331, -0.353342, 0.017492,
		0.044706, 0.167099, 0.984926,
		0.814926, 1.062779, 2.649894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.206133, 0.470719, 2.195794>,  <0.783631, 0.945810, 1.960446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.206133, 0.470719, 2.195794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.996616, 0.585739, 2.516533>,  <0.870906, 0.654751, 2.708976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.996616, 0.585739, 2.516533>,  <1.206133, 0.470719, 2.195794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.996616, 0.585739, 2.516533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130739, -0.957288, 0.257889,
		0.841754, 0.030248, 0.539013,
		-0.523792, 0.287549, 0.801847,
		0.839479, 0.672004, 2.757087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.529625, 0.096946, 2.741473>,  <1.206133, 0.470719, 2.195794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.529625, 0.096946, 2.741473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.176083, 0.216141, 2.885696>,  <0.963957, 0.287658, 2.972230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.176083, 0.216141, 2.885696>,  <1.529625, 0.096946, 2.741473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.176083, 0.216141, 2.885696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182621, -0.929476, 0.320504,
		0.430637, 0.217434, 0.875942,
		-0.883856, 0.297987, 0.360559,
		0.910926, 0.305537, 2.993864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.456368, -0.073711, 3.548055>,  <1.529625, 0.096946, 2.741473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.456368, -0.073711, 3.548055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.109785, -0.045654, 3.350334>,  <0.901836, -0.028821, 3.231702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.109785, -0.045654, 3.350334>,  <1.456368, -0.073711, 3.548055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.109785, -0.045654, 3.350334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310459, -0.851068, 0.423436,
		-0.390984, 0.520349, 0.759189,
		-0.866456, 0.070141, -0.494301,
		0.849848, -0.024612, 3.202044>
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
