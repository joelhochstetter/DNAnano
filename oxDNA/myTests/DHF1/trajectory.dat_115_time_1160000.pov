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
	<5.025907, 0.382353, 0.748333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.734095, 0.512028, 0.507439>,  <4.559007, 0.589832, 0.362902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.734095, 0.512028, 0.507439>,  <5.025907, 0.382353, 0.748333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.734095, 0.512028, 0.507439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683945, -0.348682, 0.640812,
		-0.002247, 0.879388, 0.476099,
		-0.729530, 0.324186, -0.602237,
		4.515235, 0.609283, 0.326768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.513417, 0.816405, 1.099095>,  <5.025907, 0.382353, 0.748333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.513417, 0.816405, 1.099095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277126, 0.709724, 0.794487>,  <4.135352, 0.645716, 0.611722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277126, 0.709724, 0.794487>,  <4.513417, 0.816405, 1.099095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.277126, 0.709724, 0.794487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735222, -0.210888, 0.644185,
		-0.332401, 0.940424, -0.071507,
		-0.590727, -0.266701, -0.761519,
		4.099908, 0.629714, 0.566031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.947301, 1.145517, 1.338993>,  <4.513417, 0.816405, 1.099095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.947301, 1.145517, 1.338993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801863, 0.885532, 1.072056>,  <3.714600, 0.729542, 0.911893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801863, 0.885532, 1.072056>,  <3.947301, 1.145517, 1.338993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.801863, 0.885532, 1.072056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848767, -0.064094, 0.524868,
		-0.383917, 0.757259, -0.528362,
		-0.363597, -0.649962, -0.667343,
		3.692784, 0.690544, 0.871853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.331384, 1.402047, 1.012955>,  <3.947301, 1.145517, 1.338993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.331384, 1.402047, 1.012955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289570, 1.004242, 1.014488>,  <3.264481, 0.765559, 1.015408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289570, 1.004242, 1.014488>,  <3.331384, 1.402047, 1.012955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289570, 1.004242, 1.014488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724717, 0.078815, 0.684524,
		-0.681071, 0.068779, -0.728980,
		-0.104536, -0.994514, 0.003833,
		3.258209, 0.705888, 1.015638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.644928, 1.139161, 1.011230>,  <3.331384, 1.402047, 1.012955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.644928, 1.139161, 1.011230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.853668, 0.872017, 1.223507>,  <2.978912, 0.711730, 1.350873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.853668, 0.872017, 1.223507>,  <2.644928, 1.139161, 1.011230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.853668, 0.872017, 1.223507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710564, 0.003891, 0.703622,
		-0.471986, -0.744276, -0.472528,
		0.521850, -0.667861, 0.530692,
		3.010223, 0.671659, 1.382715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.150441, 0.667684, 1.313000>,  <2.644928, 1.139161, 1.011230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.150441, 0.667684, 1.313000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.471825, 0.574486, 1.532150>,  <2.664654, 0.518567, 1.663641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.471825, 0.574486, 1.532150>,  <2.150441, 0.667684, 1.313000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.471825, 0.574486, 1.532150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582948, -0.120941, 0.803458,
		-0.120941, -0.964928, -0.232995,
		-0.803458, 0.232995, -0.547876,
		2.712862, 0.504587, 1.696513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.963586, 0.132583, 1.847955>,  <2.150441, 0.667684, 1.313000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.963586, 0.132583, 1.847955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.285675, 0.318851, 1.994797>,  <2.478928, 0.430613, 2.082902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.285675, 0.318851, 1.994797>,  <1.963586, 0.132583, 1.847955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.285675, 0.318851, 1.994797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426850, 0.025466, 0.903964,
		0.411603, -0.884590, 0.219278,
		0.805222, 0.465673, 0.367105,
		2.527242, 0.458553, 2.104928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.076457, -0.288152, 2.465111>,  <1.963586, 0.132582, 1.847955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.076457, -0.288152, 2.465111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233004, 0.079899, 2.470757>,  <2.326932, 0.300729, 2.474144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.233004, 0.079899, 2.470757>,  <2.076457, -0.288152, 2.465111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233004, 0.079899, 2.470757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471602, 0.187374, 0.861674,
		0.790205, -0.343886, 0.507265,
		0.391367, 0.920127, 0.014113,
		2.350414, 0.355937, 2.474991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.430579, 0.368371, 3.701910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.514347, 0.759262, 3.688248>,  <1.564608, 0.993797, 3.680050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.514347, 0.759262, 3.688248>,  <1.430579, 0.368371, 3.701910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.514347, 0.759262, 3.688248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621121, -0.159923, -0.767225,
		-0.755216, 0.139458, -0.640468,
		0.209421, 0.977229, -0.034156,
		1.577173, 1.052431, 3.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.238884, 0.747833, 3.020811>,  <1.430579, 0.368371, 3.701910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.238884, 0.747833, 3.020811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.551540, 0.890930, 3.225185>,  <1.739134, 0.976788, 3.347810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.551540, 0.890930, 3.225185>,  <1.238884, 0.747833, 3.020811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.551540, 0.890930, 3.225185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569975, -0.077001, -0.818046,
		-0.253307, 0.930640, -0.264092,
		0.781642, 0.357743, 0.510937,
		1.786033, 0.998253, 3.378467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.519857, 1.350391, 2.688314>,  <1.238884, 0.747833, 3.020811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.519857, 1.350391, 2.688314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800644, 1.171547, 2.910065>,  <1.969116, 1.064241, 3.043115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800644, 1.171547, 2.910065>,  <1.519857, 1.350391, 2.688314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.800644, 1.171547, 2.910065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547273, -0.159506, -0.821615,
		0.455778, 0.880143, 0.132722,
		0.701968, -0.447109, 0.554377,
		2.011234, 1.037414, 3.076378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.183555, 1.532398, 2.419533>,  <1.519857, 1.350391, 2.688314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.183555, 1.532398, 2.419533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.232491, 1.178291, 2.599014>,  <2.261853, 0.965827, 2.706703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.232491, 1.178291, 2.599014>,  <2.183555, 1.532398, 2.419533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.232491, 1.178291, 2.599014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706579, -0.239800, -0.665765,
		0.696979, 0.398495, 0.596173,
		0.122342, -0.885267, 0.448703,
		2.269194, 0.912711, 2.733625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.871397, 1.512102, 2.579125>,  <2.183555, 1.532398, 2.419533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.871397, 1.512102, 2.579125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.711457, 1.145782, 2.563988>,  <2.615493, 0.925991, 2.554905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.711457, 1.145782, 2.563988>,  <2.871397, 1.512102, 2.579125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.711457, 1.145782, 2.563988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649121, -0.253782, -0.717103,
		0.647117, -0.311299, 0.695939,
		-0.399850, -0.915799, -0.037844,
		2.591502, 0.871043, 2.552634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.531216, 1.173174, 2.383568>,  <2.871397, 1.512102, 2.579125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.531216, 1.173174, 2.383568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.233364, 0.911263, 2.331738>,  <3.054653, 0.754116, 2.300639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.233364, 0.911263, 2.331738>,  <3.531216, 1.173174, 2.383568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.233364, 0.911263, 2.331738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398308, -0.280119, -0.873432,
		0.535608, -0.701996, 0.469389,
		-0.744631, -0.654779, -0.129576,
		3.009975, 0.714829, 2.292865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853271, 0.527355, 2.340873>,  <3.531216, 1.173174, 2.383568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853271, 0.527355, 2.340873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.514809, 0.490265, 2.130951>,  <3.311731, 0.468011, 2.004997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.514809, 0.490265, 2.130951>,  <3.853271, 0.527355, 2.340873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.514809, 0.490265, 2.130951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520468, -0.355532, -0.776344,
		-0.114599, -0.930053, 0.349096,
		-0.846157, -0.092725, -0.524806,
		3.260962, 0.462448, 1.973509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.768865, -0.213859, 2.074488>,  <3.853271, 0.527355, 2.340873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.768865, -0.213859, 2.074488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.563955, 0.031036, 1.833576>,  <3.441010, 0.177973, 1.689029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.563955, 0.031036, 1.833576>,  <3.768865, -0.213859, 2.074488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.563955, 0.031036, 1.833576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558146, -0.295657, -0.775281,
		-0.652724, -0.733316, -0.190260,
		-0.512274, 0.612237, -0.602280,
		3.410273, 0.214708, 1.652892>
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
