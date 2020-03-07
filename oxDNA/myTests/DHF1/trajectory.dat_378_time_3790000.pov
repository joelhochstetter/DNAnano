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
	<0.130194, 1.863873, 1.191512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.254005, 2.004990, 0.838303>,  <0.328292, 2.089659, 0.626377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.254005, 2.004990, 0.838303>,  <0.130194, 1.863873, 1.191512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.254005, 2.004990, 0.838303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933665, 0.063194, 0.352527,
		0.180171, -0.933565, -0.309829,
		0.309528, 0.352792, -0.883024,
		0.346864, 2.110827, 0.573395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.638738, 1.519305, 0.860691>,  <0.130194, 1.863873, 1.191512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.638738, 1.519305, 0.860691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.665836, 1.901062, 0.744385>,  <0.682095, 2.130116, 0.674601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.665836, 1.901062, 0.744385>,  <0.638738, 1.519305, 0.860691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.665836, 1.901062, 0.744385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948313, 0.028962, 0.316012,
		0.310020, -0.297146, -0.903101,
		0.067746, 0.954393, -0.290767,
		0.686160, 2.187380, 0.657155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.651855, 1.011700, 1.255337>,  <0.638738, 1.519305, 0.860691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.651855, 1.011700, 1.255337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.009739, 1.098076, 1.411728>,  <1.224470, 1.149901, 1.505562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.009739, 1.098076, 1.411728>,  <0.651855, 1.011700, 1.255337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.009739, 1.098076, 1.411728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067576, -0.930731, 0.359406,
		0.441504, -0.295144, -0.847328,
		0.894711, 0.215939, 0.390977,
		1.278152, 1.162857, 1.529021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.158492, 0.425427, 1.078867>,  <0.651855, 1.011700, 1.255337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.158492, 0.425427, 1.078867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.229477, 0.602684, 1.430351>,  <1.272068, 0.709038, 1.641242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.229477, 0.602684, 1.430351>,  <1.158492, 0.425427, 1.078867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.229477, 0.602684, 1.430351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043836, -0.888436, 0.456902,
		0.983151, -0.119602, -0.138239,
		0.177463, 0.443144, 0.878710,
		1.282716, 0.735627, 1.693964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.728930, 0.029097, 1.287333>,  <1.158492, 0.425427, 1.078867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.728930, 0.029097, 1.287333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543266, 0.209557, 1.592232>,  <1.431868, 0.317832, 1.775171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543266, 0.209557, 1.592232>,  <1.728930, 0.029097, 1.287333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.543266, 0.209557, 1.592232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048004, -0.846488, 0.530239,
		0.884450, 0.282707, 0.371249,
		-0.464160, 0.451148, 0.762247,
		1.404018, 0.344901, 1.820906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.110276, -0.025575, 1.835948>,  <1.728930, 0.029097, 1.287333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.110276, -0.025575, 1.835948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.755512, 0.043961, 2.007141>,  <1.542654, 0.085682, 2.109857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.755512, 0.043961, 2.007141>,  <2.110276, -0.025575, 1.835948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.755512, 0.043961, 2.007141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124570, -0.802162, 0.583968,
		0.444828, 0.571241, 0.689791,
		-0.886911, 0.173838, 0.427983,
		1.489439, 0.096112, 2.135536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.188177, 0.013155, 2.634482>,  <2.110276, -0.025575, 1.835948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.188177, 0.013155, 2.634482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.812920, -0.073349, 2.526321>,  <1.587765, -0.125251, 2.461425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.812920, -0.073349, 2.526321>,  <2.188177, 0.013155, 2.634482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.812920, -0.073349, 2.526321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000620, -0.779905, 0.625898,
		-0.346245, 0.587350, 0.731529,
		-0.938144, -0.216260, -0.270402,
		1.531476, -0.138227, 2.445201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.900759, -0.135058, 3.306676>,  <2.188177, 0.013155, 2.634482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.900759, -0.135058, 3.306676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.636757, -0.281944, 3.044518>,  <1.478355, -0.370076, 2.887223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.636757, -0.281944, 3.044518>,  <1.900759, -0.135058, 3.306676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.636757, -0.281944, 3.044518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190637, -0.925705, 0.326692,
		-0.726670, 0.090676, 0.680976,
		-0.660006, -0.367216, -0.655396,
		1.438755, -0.392109, 2.847899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.437611, 3.452735, 3.370770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115042, 3.399261, 3.140358>,  <0.921500, 3.367177, 3.002111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.115042, 3.399261, 3.140358>,  <1.437611, 3.452735, 3.370770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.115042, 3.399261, 3.140358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204114, 0.851314, -0.483324,
		0.554995, -0.507339, -0.659233,
		-0.806423, -0.133684, -0.576030,
		0.873115, 3.359156, 2.967549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.683174, 3.633341, 2.549376>,  <1.437611, 3.452735, 3.370770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.683174, 3.633341, 2.549376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.290438, 3.664803, 2.618431>,  <1.054796, 3.683680, 2.659864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.290438, 3.664803, 2.618431>,  <1.683174, 3.633341, 2.549376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.290438, 3.664803, 2.618431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015828, 0.872869, -0.487698,
		-0.189051, -0.481574, -0.855772,
		-0.981840, 0.078654, 0.172639,
		0.995886, 3.688399, 2.670223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.228438, 3.930545, 1.932385>,  <1.683174, 3.633341, 2.549376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.228438, 3.930545, 1.932385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.089579, 4.012436, 2.298462>,  <1.006263, 4.061570, 2.518108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.089579, 4.012436, 2.298462>,  <1.228438, 3.930545, 1.932385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.089579, 4.012436, 2.298462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002585, 0.975668, -0.219236,
		-0.937807, -0.078473, -0.338173,
		-0.347149, 0.204727, 0.915191,
		0.985434, 4.073854, 2.573019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.622563, 4.196180, 1.876686>,  <1.228438, 3.930545, 1.932385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.622563, 4.196180, 1.876686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.833922, 4.316025, 2.194435>,  <0.960738, 4.387931, 2.385085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.833922, 4.316025, 2.194435>,  <0.622563, 4.196180, 1.876686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.833922, 4.316025, 2.194435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000980, 0.935445, -0.353470,
		-0.848996, 0.187551, 0.493994,
		0.528398, 0.299611, 0.794373,
		0.992442, 4.405908, 2.432747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.211302, 4.728081, 2.273802>,  <0.622563, 4.196180, 1.876686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.211302, 4.728081, 2.273802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.604683, 4.772072, 2.331390>,  <0.840711, 4.798466, 2.365943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.604683, 4.772072, 2.331390>,  <0.211302, 4.728081, 2.273802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.604683, 4.772072, 2.331390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044047, 0.915974, -0.398812,
		-0.175734, 0.385871, 0.905661,
		0.983452, 0.109976, 0.143971,
		0.899719, 4.805065, 2.374582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.335561, 5.371697, 2.672223>,  <0.211302, 4.728081, 2.273802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.335561, 5.371697, 2.672223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.698013, 5.302528, 2.517807>,  <0.915484, 5.261027, 2.425157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.698013, 5.302528, 2.517807>,  <0.335561, 5.371697, 2.672223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.698013, 5.302528, 2.517807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005537, 0.917396, -0.397938,
		0.422964, 0.358446, 0.832237,
		0.906130, -0.172921, -0.386040,
		0.969852, 5.250652, 2.401995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.837116, 5.954573, 2.894585>,  <0.335561, 5.371697, 2.672223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.837116, 5.954573, 2.894585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977960, 5.767700, 2.570175>,  <1.062466, 5.655577, 2.375529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977960, 5.767700, 2.570175>,  <0.837116, 5.954573, 2.894585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.977960, 5.767700, 2.570175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189042, 0.884157, -0.427234,
		0.916669, -0.002884, 0.399637,
		0.352110, -0.467181, -0.811025,
		1.083593, 5.627546, 2.326868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.501573, 6.232621, 2.847806>,  <0.837116, 5.954573, 2.894585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.501573, 6.232621, 2.847806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427997, 6.080734, 2.485153>,  <1.383851, 5.989602, 2.267562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.427997, 6.080734, 2.485153>,  <1.501573, 6.232621, 2.847806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.427997, 6.080734, 2.485153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392950, 0.817051, -0.421922,
		0.900975, -0.433870, -0.001080,
		-0.183942, -0.379717, -0.906631,
		1.372814, 5.966819, 2.213164>
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
