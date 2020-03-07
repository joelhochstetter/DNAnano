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
	<4.511629, 2.091635, 0.565597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.667289, 1.806274, 0.332489>,  <4.760684, 1.635058, 0.192624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.667289, 1.806274, 0.332489>,  <4.511629, 2.091635, 0.565597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.667289, 1.806274, 0.332489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598458, -0.676736, 0.428808,
		-0.700295, 0.181895, -0.690291,
		0.389146, -0.713402, -0.582772,
		4.784034, 1.592254, 0.157658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.980572, 1.811939, 0.156001>,  <4.511629, 2.091635, 0.565597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.980572, 1.811939, 0.156001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265340, 1.548409, 0.253258>,  <4.436201, 1.390290, 0.311612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265340, 1.548409, 0.253258>,  <3.980572, 1.811939, 0.156001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.265340, 1.548409, 0.253258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644425, -0.475295, 0.599008,
		-0.279078, -0.583133, -0.762936,
		0.711921, -0.658825, 0.243141,
		4.478916, 1.350761, 0.326200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.776237, 1.125467, 0.056104>,  <3.980572, 1.811939, 0.156001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.776237, 1.125467, 0.056104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.996756, 1.184433, 0.384577>,  <4.129066, 1.219813, 0.581661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.996756, 1.184433, 0.384577>,  <3.776237, 1.125467, 0.056104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.996756, 1.184433, 0.384577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695782, -0.461905, 0.550028,
		0.460391, -0.874593, -0.152078,
		0.551296, 0.147415, 0.821183,
		4.162145, 1.228657, 0.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.920016, 0.389394, 0.317190>,  <3.776237, 1.125467, 0.056104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.920016, 0.389394, 0.317190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893728, 0.694733, 0.574245>,  <3.877956, 0.877936, 0.728479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893728, 0.694733, 0.574245>,  <3.920016, 0.389394, 0.317190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893728, 0.694733, 0.574245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749676, -0.462806, 0.473070,
		0.658533, -0.450682, 0.602677,
		-0.065719, 0.763346, 0.642639,
		3.874013, 0.923736, 0.767037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.906910, 0.194072, 1.054827>,  <3.920016, 0.389394, 0.317190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.906910, 0.194072, 1.054827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.707170, 0.536377, 1.000687>,  <3.587327, 0.741760, 0.968202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.707170, 0.536377, 1.000687>,  <3.906910, 0.194072, 1.054827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.707170, 0.536377, 1.000687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806996, -0.402550, 0.432101,
		0.315291, 0.324998, 0.891610,
		-0.499349, 0.855763, -0.135351,
		3.557366, 0.793106, 0.960081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.573709, 0.359916, 1.645381>,  <3.906910, 0.194072, 1.054827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.573709, 0.359916, 1.645381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351979, 0.590424, 1.405169>,  <3.218941, 0.728728, 1.261041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351979, 0.590424, 1.405169>,  <3.573709, 0.359916, 1.645381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.351979, 0.590424, 1.405169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825740, -0.290360, 0.483575,
		0.104299, 0.763940, 0.636802,
		-0.554324, 0.576269, -0.600532,
		3.185682, 0.763304, 1.225009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.103911, 0.611439, 2.094076>,  <3.573709, 0.359916, 1.645381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.103911, 0.611439, 2.094076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.956791, 0.634010, 1.722799>,  <2.868519, 0.647553, 1.500033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.956791, 0.634010, 1.722799>,  <3.103911, 0.611439, 2.094076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.956791, 0.634010, 1.722799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801878, -0.524672, 0.285851,
		-0.470867, 0.849432, 0.238222,
		-0.367800, 0.056427, -0.928191,
		2.846451, 0.650939, 1.444342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.486614, 0.855153, 2.175740>,  <3.103911, 0.611439, 2.094076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.486614, 0.855153, 2.175740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.482451, 0.675133, 1.818563>,  <2.479954, 0.567121, 1.604257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.482451, 0.675133, 1.818563>,  <2.486614, 0.855153, 2.175740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.482451, 0.675133, 1.818563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846138, -0.471905, 0.247704,
		-0.532863, 0.758130, -0.375893,
		-0.010406, -0.450050, -0.892943,
		2.479330, 0.540118, 1.550681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.171516, 0.202928, 2.471223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.133556, -0.004807, 2.131510>,  <1.110781, -0.129447, 1.927682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.133556, -0.004807, 2.131510>,  <1.171516, 0.202928, 2.471223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.133556, -0.004807, 2.131510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970277, 0.142525, -0.195572,
		0.222612, -0.842601, 0.490375,
		-0.094899, -0.519337, -0.849284,
		1.105087, -0.160608, 1.876724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.691936, -0.378561, 2.258484>,  <1.171516, 0.202928, 2.471223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.691936, -0.378561, 2.258484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.533237, -0.212173, 1.931177>,  <1.438018, -0.112341, 1.734793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.533237, -0.212173, 1.931177>,  <1.691936, -0.378561, 2.258484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.533237, -0.212173, 1.931177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915788, 0.240206, -0.321920,
		0.062644, -0.877080, -0.476241,
		-0.396746, 0.415970, -0.818267,
		1.414214, -0.087382, 1.685697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.121821, -0.509833, 1.675970>,  <1.691936, -0.378561, 2.258484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.121821, -0.509833, 1.675970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.892048, -0.194664, 1.587242>,  <1.754184, -0.005562, 1.534005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.892048, -0.194664, 1.587242>,  <2.121821, -0.509833, 1.675970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.892048, -0.194664, 1.587242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753033, 0.402447, -0.520556,
		-0.320887, -0.466062, -0.824511,
		-0.574433, 0.787923, -0.221820,
		1.719718, 0.041713, 1.520696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.233662, -0.488036, 0.914591>,  <2.121821, -0.509833, 1.675970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.233662, -0.488036, 0.914591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.136955, -0.129517, 1.063292>,  <2.078932, 0.085595, 1.152512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.136955, -0.129517, 1.063292>,  <2.233662, -0.488036, 0.914591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.136955, -0.129517, 1.063292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806464, 0.398654, -0.436682,
		-0.539598, 0.194230, -0.819212,
		-0.241766, 0.896298, 0.371752,
		2.064425, 0.139373, 1.174817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.212749, 0.071264, 0.402182>,  <2.233662, -0.488036, 0.914591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.212749, 0.071264, 0.402182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291142, 0.230515, 0.760643>,  <2.338177, 0.326065, 0.975719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.291142, 0.230515, 0.760643>,  <2.212749, 0.071264, 0.402182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.291142, 0.230515, 0.760643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779931, 0.490655, -0.388543,
		-0.594390, 0.775083, -0.214352,
		0.195980, 0.398126, 0.896151,
		2.349936, 0.349952, 1.029488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.300880, 0.777248, 0.262310>,  <2.212749, 0.071264, 0.402182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.300880, 0.777248, 0.262310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.466125, 0.728935, 0.623363>,  <2.565273, 0.699948, 0.839996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.466125, 0.728935, 0.623363>,  <2.300880, 0.777248, 0.262310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.466125, 0.728935, 0.623363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752191, 0.603994, -0.263439,
		-0.513367, 0.787784, 0.340369,
		0.413114, -0.120782, 0.902634,
		2.590060, 0.692701, 0.894154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.559274, 1.461686, 0.348437>,  <2.300880, 0.777248, 0.262310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.559274, 1.461686, 0.348437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.740578, 1.230797, 0.620134>,  <2.849360, 1.092264, 0.783153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.740578, 1.230797, 0.620134>,  <2.559274, 1.461686, 0.348437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.740578, 1.230797, 0.620134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873273, 0.440356, -0.208521,
		-0.178746, 0.687678, 0.703668,
		0.453259, -0.577222, 0.679243,
		2.876555, 1.057630, 0.823907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.840472, 1.889188, 0.894977>,  <2.559274, 1.461686, 0.348437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.840472, 1.889188, 0.894977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.049648, 1.549934, 0.861032>,  <3.175154, 1.346382, 0.840666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.049648, 1.549934, 0.861032>,  <2.840472, 1.889188, 0.894977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.049648, 1.549934, 0.861032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831041, 0.529454, -0.170440,
		0.189486, 0.018606, 0.981707,
		0.522940, -0.848135, -0.084861,
		3.206530, 1.295494, 0.835574>
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
