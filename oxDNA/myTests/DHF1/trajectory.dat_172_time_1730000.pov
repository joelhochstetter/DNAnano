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
	<3.855611, 2.758456, 3.298360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.080208, 3.050690, 3.453781>,  <4.214966, 3.226030, 3.547034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.080208, 3.050690, 3.453781>,  <3.855611, 2.758456, 3.298360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.080208, 3.050690, 3.453781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614434, -0.053590, -0.787146,
		-0.554253, 0.680718, -0.478986,
		0.561493, 0.730583, 0.388554,
		4.248656, 3.269865, 3.570347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.136908, 2.578784, 3.095128>,  <3.855611, 2.758456, 3.298360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.136908, 2.578784, 3.095128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.788460, 2.588562, 3.291313>,  <2.579391, 2.594429, 3.409024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.788460, 2.588562, 3.291313>,  <3.136908, 2.578784, 3.095128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.788460, 2.588562, 3.291313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474806, -0.212992, 0.853929,
		0.125340, 0.976748, 0.173934,
		-0.871120, 0.024446, 0.490462,
		2.527124, 2.595896, 3.438452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.155904, 3.155061, 3.599018>,  <3.136908, 2.578784, 3.095128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.155904, 3.155061, 3.599018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.950043, 2.819199, 3.668427>,  <2.826526, 2.617681, 3.710072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.950043, 2.819199, 3.668427>,  <3.155904, 3.155061, 3.599018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.950043, 2.819199, 3.668427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554187, -0.171344, 0.814566,
		-0.654223, 0.515382, 0.553510,
		-0.514654, -0.839656, 0.173521,
		2.795647, 2.567302, 3.720483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.957215, 3.219833, 4.266617>,  <3.155904, 3.155061, 3.599018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.957215, 3.219833, 4.266617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.028694, 2.843033, 4.152985>,  <3.071581, 2.616953, 4.084805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.028694, 2.843033, 4.152985>,  <2.957215, 3.219833, 4.266617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.028694, 2.843033, 4.152985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536242, -0.148833, 0.830838,
		-0.824931, -0.300805, 0.478545,
		0.178697, -0.942001, -0.284082,
		3.082303, 2.560433, 4.067760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.682515, 2.794495, 4.752311>,  <2.957215, 3.219833, 4.266617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.682515, 2.794495, 4.752311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.001419, 2.618736, 4.586754>,  <3.192761, 2.513281, 4.487420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.001419, 2.618736, 4.586754>,  <2.682515, 2.794495, 4.752311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.001419, 2.618736, 4.586754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402577, -0.123870, 0.906966,
		-0.449787, -0.889712, 0.078135,
		0.797260, -0.439397, -0.413893,
		3.240597, 2.486917, 4.462586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.854880, 2.260903, 5.264081>,  <2.682515, 2.794495, 4.752311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.854880, 2.260903, 5.264081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.166107, 2.233734, 5.014282>,  <3.352843, 2.217433, 4.864403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.166107, 2.233734, 5.014282>,  <2.854880, 2.260903, 5.264081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.166107, 2.233734, 5.014282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556143, -0.387771, 0.735078,
		-0.292091, -0.919250, -0.263937,
		0.778067, -0.067923, -0.624498,
		3.399528, 2.213358, 4.826933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.991994, 1.626383, 5.382730>,  <2.854880, 2.260903, 5.264081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.991994, 1.626383, 5.382730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300346, 1.841759, 5.246597>,  <3.485358, 1.970984, 5.164918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300346, 1.841759, 5.246597>,  <2.991994, 1.626383, 5.382730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.300346, 1.841759, 5.246597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497777, -0.175856, 0.849290,
		0.397442, -0.824110, -0.403587,
		0.770881, 0.538440, -0.340330,
		3.531611, 2.003291, 5.144498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.644643, 1.162494, 5.325526>,  <2.991994, 1.626383, 5.382730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.644643, 1.162494, 5.325526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.699677, 1.551636, 5.399956>,  <3.732697, 1.785121, 5.444613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.699677, 1.551636, 5.399956>,  <3.644643, 1.162494, 5.325526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.699677, 1.551636, 5.399956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314420, -0.221041, 0.923190,
		0.939260, -0.068511, -0.336297,
		0.137585, 0.972855, 0.186074,
		3.740952, 1.843492, 5.455778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.213561, 1.065169, 1.886026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366898, 1.434311, 1.900932>,  <4.458900, 1.655796, 1.909876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366898, 1.434311, 1.900932>,  <4.213561, 1.065169, 1.886026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366898, 1.434311, 1.900932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187195, 0.117142, -0.975313,
		-0.904437, 0.366904, 0.217660,
		0.383343, 0.922854, 0.037265,
		4.481901, 1.711167, 1.912112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.784626, 1.555550, 1.539968>,  <4.213561, 1.065169, 1.886026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.784626, 1.555550, 1.539968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.151680, 1.714478, 1.543610>,  <4.371912, 1.809834, 1.545795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.151680, 1.714478, 1.543610>,  <3.784626, 1.555550, 1.539968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151680, 1.714478, 1.543610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102631, 0.259039, -0.960399,
		-0.383942, 0.880362, 0.278481,
		0.917636, 0.397318, 0.009104,
		4.426970, 1.833673, 1.546341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.734438, 2.265584, 1.284050>,  <3.784626, 1.555550, 1.539968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.734438, 2.265584, 1.284050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097290, 2.119080, 1.201134>,  <4.315001, 2.031177, 1.151384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097290, 2.119080, 1.201134>,  <3.734438, 2.265584, 1.284050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.097290, 2.119080, 1.201134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092286, 0.307449, -0.947079,
		0.410610, 0.878253, 0.245095,
		0.907129, -0.366261, -0.207292,
		4.369429, 2.009201, 1.138946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203089, 2.855407, 1.141146>,  <3.734438, 2.265584, 1.284050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203089, 2.855407, 1.141146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.247669, 2.491150, 0.981995>,  <4.274417, 2.272595, 0.886504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.247669, 2.491150, 0.981995>,  <4.203089, 2.855407, 1.141146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.247669, 2.491150, 0.981995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305520, 0.349584, -0.885691,
		0.945641, 0.220269, -0.239259,
		0.111450, -0.910644, -0.397878,
		4.281104, 2.217957, 0.862631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.438155, 2.879299, 0.491810>,  <4.203089, 2.855407, 1.141146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.438155, 2.879299, 0.491810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.259106, 2.523758, 0.452675>,  <4.151676, 2.310433, 0.429194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.259106, 2.523758, 0.452675>,  <4.438155, 2.879299, 0.491810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.259106, 2.523758, 0.452675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171144, 0.192545, -0.966249,
		0.877692, -0.415771, -0.238309,
		-0.447623, -0.888853, -0.097838,
		4.124819, 2.257102, 0.423323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.629554, 2.632811, -0.194897>,  <4.438155, 2.879299, 0.491810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.629554, 2.632811, -0.194897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.296829, 2.436783, -0.090652>,  <4.097194, 2.319166, -0.028105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.296829, 2.436783, -0.090652>,  <4.629554, 2.632811, -0.194897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.296829, 2.436783, -0.090652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340879, 0.080484, -0.936656,
		0.438053, -0.867958, -0.234003,
		-0.831812, -0.490072, 0.260612,
		4.047286, 2.289762, -0.012469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.571144, 2.134473, -0.664300>,  <4.629554, 2.632811, -0.194897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.571144, 2.134473, -0.664300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195641, 2.167328, -0.530441>,  <3.970339, 2.187041, -0.450126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195641, 2.167328, -0.530441>,  <4.571144, 2.134473, -0.664300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195641, 2.167328, -0.530441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333648, 0.026017, -0.942339,
		-0.086110, -0.996281, 0.002982,
		-0.938757, 0.082140, 0.334647,
		3.914013, 2.191969, -0.430047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.109583, 1.692848, -1.079841>,  <4.571144, 2.134473, -0.664300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.109583, 1.692848, -1.079841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.879944, 1.976105, -0.915428>,  <3.742161, 2.146059, -0.816781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.879944, 1.976105, -0.915428>,  <4.109583, 1.692848, -1.079841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.879944, 1.976105, -0.915428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404832, 0.190854, -0.894251,
		-0.711704, -0.679786, 0.177110,
		-0.574097, 0.708143, 0.411031,
		3.707715, 2.188547, -0.792119>
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
