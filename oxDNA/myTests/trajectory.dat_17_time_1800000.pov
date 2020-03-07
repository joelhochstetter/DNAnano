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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<37.731842, 47.001091, 55.526161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972832, 46.766457, 55.742653>,  <38.117428, 46.625675, 55.872547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972832, 46.766457, 55.742653>,  <37.731842, 47.001091, 55.526161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972832, 46.766457, 55.742653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598024, -0.117320, -0.792845,
		0.528572, 0.801342, 0.280112,
		0.602477, -0.586590, 0.541234,
		38.153576, 46.590481, 55.905022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425415, 47.191502, 55.308926>,  <37.731842, 47.001091, 55.526161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425415, 47.191502, 55.308926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472282, 46.818916, 55.446709>,  <38.500401, 46.595364, 55.529377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472282, 46.818916, 55.446709>,  <38.425415, 47.191502, 55.308926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472282, 46.818916, 55.446709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670394, -0.181711, -0.719412,
		0.732697, 0.315210, 0.603157,
		0.117165, -0.931463, 0.344454,
		38.507431, 46.539478, 55.550045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186436, 47.003468, 55.291714>,  <38.425415, 47.191502, 55.308926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186436, 47.003468, 55.291714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037437, 46.637726, 55.355209>,  <38.948040, 46.418282, 55.393307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037437, 46.637726, 55.355209>,  <39.186436, 47.003468, 55.291714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037437, 46.637726, 55.355209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712869, -0.391432, -0.581893,
		0.594195, -0.103588, 0.797623,
		-0.372492, -0.914358, 0.158742,
		38.925690, 46.363419, 55.402832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715397, 46.622883, 55.544193>,  <39.186436, 47.003468, 55.291714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715397, 46.622883, 55.544193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456596, 46.363113, 55.384380>,  <39.301315, 46.207253, 55.288490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456596, 46.363113, 55.384380>,  <39.715397, 46.622883, 55.544193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456596, 46.363113, 55.384380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724673, -0.360776, -0.587102,
		0.237137, -0.669391, 0.704047,
		-0.647004, -0.649427, -0.399536,
		39.262497, 46.168285, 55.264519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162395, 46.089336, 55.406406>,  <39.715397, 46.622883, 55.544193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162395, 46.089336, 55.406406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840462, 46.011875, 55.181999>,  <39.647301, 45.965397, 55.047356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840462, 46.011875, 55.181999>,  <40.162395, 46.089336, 55.406406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840462, 46.011875, 55.181999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592236, -0.323627, -0.737918,
		-0.038658, -0.926156, 0.375156,
		-0.804837, -0.193654, -0.561013,
		39.599010, 45.953781, 55.013695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410686, 45.555370, 55.063026>,  <40.162395, 46.089336, 55.406406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410686, 45.555370, 55.063026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099701, 45.671230, 54.839725>,  <39.913109, 45.740746, 54.705746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099701, 45.671230, 54.839725>,  <40.410686, 45.555370, 55.063026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099701, 45.671230, 54.839725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477160, -0.306586, -0.823604,
		-0.409711, -0.906701, 0.100150,
		-0.777467, 0.289652, -0.558253,
		39.866463, 45.758125, 54.672249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226971, 44.957535, 54.558819>,  <40.410686, 45.555370, 55.063026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226971, 44.957535, 54.558819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067200, 45.281170, 54.386383>,  <39.971336, 45.475349, 54.282921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067200, 45.281170, 54.386383>,  <40.226971, 44.957535, 54.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067200, 45.281170, 54.386383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279034, -0.340627, -0.897838,
		-0.873270, -0.478907, -0.089709,
		-0.399424, 0.809087, -0.431091,
		39.947372, 45.523895, 54.257057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894783, 44.668125, 53.989925>,  <40.226971, 44.957535, 54.558819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894783, 44.668125, 53.989925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938263, 45.059040, 53.917160>,  <39.964352, 45.293591, 53.873501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938263, 45.059040, 53.917160>,  <39.894783, 44.668125, 53.989925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938263, 45.059040, 53.917160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294168, -0.206422, -0.933196,
		-0.949553, 0.047924, -0.309925,
		0.108698, 0.977289, -0.181911,
		39.970871, 45.352226, 53.862587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575756, 44.816517, 53.394585>,  <39.894783, 44.668125, 53.989925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575756, 44.816517, 53.394585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847710, 45.108437, 53.423317>,  <40.010883, 45.283588, 53.440556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847710, 45.108437, 53.423317>,  <39.575756, 44.816517, 53.394585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847710, 45.108437, 53.423317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443717, -0.331421, -0.832632,
		-0.583845, 0.597963, -0.549149,
		0.679882, 0.729795, 0.071828,
		40.051674, 45.327374, 53.444866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611706, 45.029343, 52.790222>,  <39.575756, 44.816517, 53.394585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611706, 45.029343, 52.790222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939812, 45.191711, 52.951412>,  <40.136677, 45.289131, 53.048126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939812, 45.191711, 52.951412>,  <39.611706, 45.029343, 52.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939812, 45.191711, 52.951412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463727, -0.059520, -0.883977,
		-0.334840, 0.911968, -0.237059,
		0.820268, 0.405922, 0.402974,
		40.185894, 45.313488, 53.072304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924801, 45.327877, 52.267815>,  <39.611706, 45.029343, 52.790222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924801, 45.327877, 52.267815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234825, 45.323002, 52.520523>,  <40.420837, 45.320076, 52.672150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234825, 45.323002, 52.520523>,  <39.924801, 45.327877, 52.267815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234825, 45.323002, 52.520523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631493, -0.020501, -0.775111,
		0.022402, 0.999716, -0.008190,
		0.775058, -0.012192, 0.631773,
		40.467342, 45.319344, 52.710056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383083, 45.750935, 52.026207>,  <39.924801, 45.327877, 52.267815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383083, 45.750935, 52.026207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631004, 45.537449, 52.256332>,  <40.779758, 45.409359, 52.394409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631004, 45.537449, 52.256332>,  <40.383083, 45.750935, 52.026207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631004, 45.537449, 52.256332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692850, 0.027901, -0.720542,
		0.368513, 0.845204, 0.387078,
		0.619804, -0.533716, 0.575317,
		40.816944, 45.377335, 52.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986515, 46.041866, 51.966953>,  <40.383083, 45.750935, 52.026207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986515, 46.041866, 51.966953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049797, 45.664394, 52.083191>,  <41.087765, 45.437912, 52.152931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049797, 45.664394, 52.083191>,  <40.986515, 46.041866, 51.966953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049797, 45.664394, 52.083191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562185, -0.155855, -0.812193,
		0.811739, 0.291857, 0.505865,
		0.158202, -0.943678, 0.290592,
		41.097260, 45.381290, 52.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641315, 45.984211, 51.848331>,  <40.986515, 46.041866, 51.966953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641315, 45.984211, 51.848331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519341, 45.604523, 51.879311>,  <41.446156, 45.376709, 51.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519341, 45.604523, 51.879311>,  <41.641315, 45.984211, 51.848331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519341, 45.604523, 51.879311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658724, -0.268947, -0.702673,
		0.687821, -0.163251, 0.707285,
		-0.304934, -0.949219, 0.077450,
		41.427860, 45.319756, 51.902546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168030, 45.663788, 51.571548>,  <41.641315, 45.984211, 51.848331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168030, 45.663788, 51.571548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859978, 45.408642, 51.573578>,  <41.675148, 45.255554, 51.574795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859978, 45.408642, 51.573578>,  <42.168030, 45.663788, 51.571548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859978, 45.408642, 51.573578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342358, -0.420033, -0.840454,
		0.538229, -0.645522, 0.541859,
		-0.770130, -0.637866, 0.005075,
		41.628937, 45.217281, 51.575100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444805, 44.945126, 51.471203>,  <42.168030, 45.663788, 51.571548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444805, 44.945126, 51.471203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066025, 44.925152, 51.344215>,  <41.838757, 44.913170, 51.268024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066025, 44.925152, 51.344215>,  <42.444805, 44.945126, 51.471203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066025, 44.925152, 51.344215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295715, -0.522147, -0.799947,
		-0.125822, -0.851393, 0.509214,
		-0.946954, -0.049932, -0.317467,
		41.781940, 44.910172, 51.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423302, 44.267986, 51.290356>,  <42.444805, 44.945126, 51.471203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423302, 44.267986, 51.290356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102325, 44.436081, 51.120888>,  <41.909740, 44.536938, 51.019207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102325, 44.436081, 51.120888>,  <42.423302, 44.267986, 51.290356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102325, 44.436081, 51.120888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182023, -0.503774, -0.844440,
		-0.568297, -0.754728, 0.327755,
		-0.802437, 0.420234, -0.423671,
		41.861595, 44.562153, 50.993786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080544, 43.741745, 50.973759>,  <42.423302, 44.267986, 51.290356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080544, 43.741745, 50.973759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928322, 44.067410, 50.798336>,  <41.836990, 44.262806, 50.693085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928322, 44.067410, 50.798336>,  <42.080544, 43.741745, 50.973759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928322, 44.067410, 50.798336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104554, -0.433315, -0.895157,
		-0.918830, -0.386505, 0.079775,
		-0.380551, 0.814157, -0.438554,
		41.814156, 44.311657, 50.666771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716934, 43.531952, 50.347824>,  <42.080544, 43.741745, 50.973759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716934, 43.531952, 50.347824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832993, 43.910763, 50.292747>,  <41.902626, 44.138050, 50.259701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832993, 43.910763, 50.292747>,  <41.716934, 43.531952, 50.347824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832993, 43.910763, 50.292747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279326, -0.221423, -0.934318,
		-0.915310, 0.232629, -0.328773,
		0.290147, 0.947025, -0.137691,
		41.920036, 44.194870, 50.251442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580761, 43.671944, 49.636505>,  <41.716934, 43.531952, 50.347824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580761, 43.671944, 49.636505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786575, 44.006062, 49.714005>,  <41.910065, 44.206532, 49.760506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786575, 44.006062, 49.714005>,  <41.580761, 43.671944, 49.636505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786575, 44.006062, 49.714005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324873, 0.019206, -0.945563,
		-0.793546, 0.549465, -0.261483,
		0.514531, 0.835296, 0.193748,
		41.940933, 44.256649, 49.772129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477741, 44.079453, 49.076237>,  <41.580761, 43.671944, 49.636505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477741, 44.079453, 49.076237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765305, 44.300709, 49.244621>,  <41.937843, 44.433464, 49.345654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765305, 44.300709, 49.244621>,  <41.477741, 44.079453, 49.076237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765305, 44.300709, 49.244621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395690, 0.172254, -0.902085,
		-0.571495, 0.815084, -0.095039,
		0.718904, 0.553143, 0.420963,
		41.980976, 44.466652, 49.370911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485004, 44.745323, 48.667278>,  <41.477741, 44.079453, 49.076237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485004, 44.745323, 48.667278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852669, 44.672970, 48.807236>,  <42.073269, 44.629559, 48.891209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852669, 44.672970, 48.807236>,  <41.485004, 44.745323, 48.667278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852669, 44.672970, 48.807236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382374, 0.196619, -0.902846,
		0.094519, 0.963650, 0.249891,
		0.919161, -0.180887, 0.349891,
		42.128418, 44.618702, 48.912205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812103, 45.281914, 48.403275>,  <41.485004, 44.745323, 48.667278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812103, 45.281914, 48.403275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075897, 44.988777, 48.470238>,  <42.234173, 44.812897, 48.510414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075897, 44.988777, 48.470238>,  <41.812103, 45.281914, 48.403275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075897, 44.988777, 48.470238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324857, 0.077016, -0.942622,
		0.677897, 0.676029, 0.288859,
		0.659487, -0.732839, 0.167404,
		42.273743, 44.768925, 48.520458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469006, 45.501110, 48.106903>,  <41.812103, 45.281914, 48.403275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469006, 45.501110, 48.106903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492569, 45.104126, 48.149891>,  <42.506706, 44.865936, 48.175686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492569, 45.104126, 48.149891>,  <42.469006, 45.501110, 48.106903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492569, 45.104126, 48.149891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397216, -0.075465, -0.914617,
		0.915832, 0.096570, 0.389776,
		0.058910, -0.992461, 0.107472,
		42.510242, 44.806389, 48.182133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096329, 45.296917, 47.768715>,  <42.469006, 45.501110, 48.106903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096329, 45.296917, 47.768715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903061, 44.948330, 47.802391>,  <42.787102, 44.739178, 47.822598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903061, 44.948330, 47.802391>,  <43.096329, 45.296917, 47.768715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903061, 44.948330, 47.802391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100045, -0.150490, -0.983536,
		0.869792, -0.466791, 0.159898,
		-0.483169, -0.871469, 0.084194,
		42.758110, 44.686890, 47.827648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550018, 44.801121, 47.399216>,  <43.096329, 45.296917, 47.768715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550018, 44.801121, 47.399216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173355, 44.666573, 47.403770>,  <42.947357, 44.585846, 47.406506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173355, 44.666573, 47.403770>,  <43.550018, 44.801121, 47.399216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173355, 44.666573, 47.403770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027222, -0.109852, -0.993575,
		0.335458, -0.935301, 0.112601,
		-0.941661, -0.336368, 0.011390,
		42.890858, 44.565662, 47.407188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528114, 44.314556, 46.906879>,  <43.550018, 44.801121, 47.399216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528114, 44.314556, 46.906879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132957, 44.347443, 46.959518>,  <42.895863, 44.367176, 46.991100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132957, 44.347443, 46.959518>,  <43.528114, 44.314556, 46.906879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132957, 44.347443, 46.959518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146114, -0.207415, -0.967280,
		-0.052230, -0.974792, 0.216916,
		-0.987888, 0.082215, 0.131597,
		42.836590, 44.372108, 46.998997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269680, 43.763420, 46.649784>,  <43.528114, 44.314556, 46.906879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269680, 43.763420, 46.649784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981087, 44.038174, 46.614788>,  <42.807930, 44.203026, 46.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981087, 44.038174, 46.614788>,  <43.269680, 43.763420, 46.649784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981087, 44.038174, 46.614788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101988, -0.230394, -0.967738,
		-0.684879, -0.689284, 0.236279,
		-0.721484, 0.686881, -0.087493,
		42.764641, 44.244240, 46.588539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779648, 43.528549, 46.092487>,  <43.269680, 43.763420, 46.649784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779648, 43.528549, 46.092487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657616, 43.904491, 46.153927>,  <42.584396, 44.130058, 46.190792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657616, 43.904491, 46.153927>,  <42.779648, 43.528549, 46.092487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657616, 43.904491, 46.153927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230783, 0.083519, -0.969414,
		-0.923940, -0.331197, 0.191424,
		-0.305079, 0.939858, 0.153601,
		42.566093, 44.186447, 46.200008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150627, 43.557564, 45.800903>,  <42.779648, 43.528549, 46.092487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150627, 43.557564, 45.800903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284134, 43.934280, 45.817078>,  <42.364239, 44.160309, 45.826782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284134, 43.934280, 45.817078>,  <42.150627, 43.557564, 45.800903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284134, 43.934280, 45.817078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221513, 0.120052, -0.967740,
		-0.916259, 0.314046, 0.248687,
		0.333770, 0.941787, 0.040433,
		42.384266, 44.216816, 45.829208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667866, 43.944454, 45.586224>,  <42.150627, 43.557564, 45.800903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667866, 43.944454, 45.586224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961288, 44.211750, 45.536648>,  <42.137341, 44.372128, 45.506901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961288, 44.211750, 45.536648>,  <41.667866, 43.944454, 45.586224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961288, 44.211750, 45.536648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338177, 0.200703, -0.919432,
		-0.589523, 0.716365, 0.373209,
		0.733552, 0.668236, -0.123939,
		42.181355, 44.412220, 45.499466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471260, 44.617653, 45.264385>,  <41.667866, 43.944454, 45.586224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471260, 44.617653, 45.264385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857872, 44.634483, 45.163158>,  <42.089840, 44.644581, 45.102421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857872, 44.634483, 45.163158>,  <41.471260, 44.617653, 45.264385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857872, 44.634483, 45.163158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254988, 0.266099, -0.929609,
		0.028226, 0.963027, 0.267923,
		0.966532, 0.042078, -0.253071,
		42.147831, 44.647106, 45.087238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476028, 45.228073, 44.867653>,  <41.471260, 44.617653, 45.264385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476028, 45.228073, 44.867653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818565, 45.037685, 44.787521>,  <42.024086, 44.923450, 44.739441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818565, 45.037685, 44.787521>,  <41.476028, 45.228073, 44.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818565, 45.037685, 44.787521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178840, 0.090586, -0.979699,
		0.484457, 0.874782, -0.007550,
		0.856340, -0.475972, -0.200331,
		42.075466, 44.894894, 44.727421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957249, 45.699661, 44.488556>,  <41.476028, 45.228073, 44.867653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957249, 45.699661, 44.488556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062386, 45.322083, 44.408669>,  <42.125465, 45.095535, 44.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062386, 45.322083, 44.408669>,  <41.957249, 45.699661, 44.488556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062386, 45.322083, 44.408669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051924, 0.220533, -0.973996,
		0.963441, 0.245634, 0.106978,
		0.262839, -0.943943, -0.199717,
		42.141235, 45.038898, 44.348755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548409, 45.780022, 44.081570>,  <41.957249, 45.699661, 44.488556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548409, 45.780022, 44.081570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394966, 45.418034, 44.007942>,  <42.302902, 45.200840, 43.963768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394966, 45.418034, 44.007942>,  <42.548409, 45.780022, 44.081570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394966, 45.418034, 44.007942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064338, 0.172641, -0.982881,
		0.921254, -0.388879, -0.008002,
		-0.383603, -0.904968, -0.184066,
		42.279884, 45.146542, 43.952721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993599, 45.470284, 43.549126>,  <42.548409, 45.780022, 44.081570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993599, 45.470284, 43.549126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618950, 45.330166, 43.547199>,  <42.394161, 45.246094, 43.546043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618950, 45.330166, 43.547199>,  <42.993599, 45.470284, 43.549126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618950, 45.330166, 43.547199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042767, 0.127974, -0.990855,
		0.347711, -0.927854, -0.134845,
		-0.936626, -0.350298, -0.004817,
		42.337963, 45.225075, 43.545753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931877, 45.140785, 42.896152>,  <42.993599, 45.470284, 43.549126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931877, 45.140785, 42.896152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548058, 45.106716, 43.003498>,  <42.317768, 45.086277, 43.067905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548058, 45.106716, 43.003498>,  <42.931877, 45.140785, 42.896152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548058, 45.106716, 43.003498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271129, 0.022589, -0.962278,
		0.075904, -0.996109, -0.044770,
		-0.959546, -0.085180, 0.268360,
		42.260193, 45.081165, 43.084007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547222, 44.620426, 42.407925>,  <42.931877, 45.140785, 42.896152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547222, 44.620426, 42.407925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276848, 44.872826, 42.560215>,  <42.114624, 45.024265, 42.651588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276848, 44.872826, 42.560215>,  <42.547222, 44.620426, 42.407925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276848, 44.872826, 42.560215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276992, 0.261211, -0.924686,
		-0.682923, -0.730488, -0.001781,
		-0.675937, 0.630996, 0.380726,
		42.074066, 45.062126, 42.674435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950153, 44.563957, 42.030148>,  <42.547222, 44.620426, 42.407925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950153, 44.563957, 42.030148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911194, 44.930534, 42.185398>,  <41.887817, 45.150482, 42.278549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911194, 44.930534, 42.185398>,  <41.950153, 44.563957, 42.030148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911194, 44.930534, 42.185398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199001, 0.364170, -0.909823,
		-0.975147, -0.165854, 0.146903,
		-0.097401, 0.916446, 0.388125,
		41.881973, 45.205467, 42.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367264, 44.670742, 41.819210>,  <41.950153, 44.563957, 42.030148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367264, 44.670742, 41.819210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505936, 45.033951, 41.913284>,  <41.589138, 45.251877, 41.969730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505936, 45.033951, 41.913284>,  <41.367264, 44.670742, 41.819210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505936, 45.033951, 41.913284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396691, 0.369144, -0.840458,
		-0.849971, 0.198070, 0.488177,
		0.346677, 0.908020, 0.235189,
		41.609940, 45.306358, 41.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864098, 45.110500, 41.683685>,  <41.367264, 44.670742, 41.819210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864098, 45.110500, 41.683685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168602, 45.369820, 41.678009>,  <41.351303, 45.525410, 41.674603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168602, 45.369820, 41.678009>,  <40.864098, 45.110500, 41.683685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168602, 45.369820, 41.678009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317152, 0.353149, -0.880171,
		-0.565600, 0.674536, 0.474445,
		0.761257, 0.648295, -0.014190,
		41.396980, 45.564308, 41.673752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579556, 45.872883, 41.673847>,  <40.864098, 45.110500, 41.683685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579556, 45.872883, 41.673847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954102, 45.862133, 41.533848>,  <41.178829, 45.855682, 41.449848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954102, 45.862133, 41.533848>,  <40.579556, 45.872883, 41.673847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954102, 45.862133, 41.533848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324230, 0.315852, -0.891691,
		0.134514, 0.948427, 0.287039,
		0.936366, -0.026878, -0.349995,
		41.235012, 45.854069, 41.428848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514797, 46.222237, 41.053982>,  <40.579556, 45.872883, 41.673847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514797, 46.222237, 41.053982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893967, 46.102844, 41.009533>,  <41.121468, 46.031208, 40.982864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893967, 46.102844, 41.009533>,  <40.514797, 46.222237, 41.053982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893967, 46.102844, 41.009533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111809, 0.014843, -0.993619,
		0.298225, 0.954301, -0.019303,
		0.947924, -0.298480, -0.111126,
		41.178345, 46.013302, 40.976196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905056, 46.665516, 40.587578>,  <40.514797, 46.222237, 41.053982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905056, 46.665516, 40.587578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066521, 46.299767, 40.574993>,  <41.163399, 46.080318, 40.567444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066521, 46.299767, 40.574993>,  <40.905056, 46.665516, 40.587578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066521, 46.299767, 40.574993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003504, 0.035931, -0.999348,
		0.914903, 0.403285, 0.017707,
		0.403658, -0.914369, -0.031460,
		41.187618, 46.025455, 40.565556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321186, 46.706062, 40.039852>,  <40.905056, 46.665516, 40.587578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321186, 46.706062, 40.039852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301270, 46.309906, 40.091469>,  <41.289322, 46.072212, 40.122440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301270, 46.309906, 40.091469>,  <41.321186, 46.706062, 40.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301270, 46.309906, 40.091469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104999, -0.133678, -0.985447,
		0.993225, -0.035514, 0.110645,
		-0.049788, -0.990388, 0.129043,
		41.286331, 46.012791, 40.130180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909595, 46.450207, 39.675640>,  <41.321186, 46.706062, 40.039852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909595, 46.450207, 39.675640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680687, 46.126236, 39.727058>,  <41.543343, 45.931854, 39.757908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680687, 46.126236, 39.727058>,  <41.909595, 46.450207, 39.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680687, 46.126236, 39.727058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145254, -0.254380, -0.956134,
		0.807098, -0.528497, 0.263219,
		-0.572271, -0.809927, 0.128543,
		41.509007, 45.883259, 39.765621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343086, 45.948414, 39.397930>,  <41.909595, 46.450207, 39.675640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343086, 45.948414, 39.397930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960884, 45.830429, 39.396679>,  <41.731564, 45.759640, 39.395927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960884, 45.830429, 39.396679>,  <42.343086, 45.948414, 39.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960884, 45.830429, 39.396679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060805, -0.186588, -0.980555,
		0.288643, -0.937114, 0.196221,
		-0.955504, -0.294962, -0.003124,
		41.674232, 45.741940, 39.395741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366615, 45.379082, 38.998775>,  <42.343086, 45.948414, 39.397930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366615, 45.379082, 38.998775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977493, 45.471718, 38.996971>,  <41.744019, 45.527298, 38.995888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977493, 45.471718, 38.996971>,  <42.366615, 45.379082, 38.998775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977493, 45.471718, 38.996971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056545, -0.256313, -0.964939,
		-0.224619, -0.938442, 0.262438,
		-0.972804, 0.231583, -0.004509,
		41.685654, 45.541195, 38.995617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064114, 44.865921, 38.766071>,  <42.366615, 45.379082, 38.998775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064114, 44.865921, 38.766071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801498, 45.158958, 38.694210>,  <41.643929, 45.334782, 38.651093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801498, 45.158958, 38.694210>,  <42.064114, 44.865921, 38.766071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801498, 45.158958, 38.694210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066792, -0.293701, -0.953561,
		-0.751333, -0.614046, 0.241756,
		-0.656534, 0.732589, -0.179654,
		41.604538, 45.378735, 38.640312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500759, 44.516716, 38.341400>,  <42.064114, 44.865921, 38.766071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500759, 44.516716, 38.341400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458290, 44.909950, 38.281712>,  <41.432808, 45.145893, 38.245899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458290, 44.909950, 38.281712>,  <41.500759, 44.516716, 38.341400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458290, 44.909950, 38.281712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190331, -0.167386, -0.967345,
		-0.975962, -0.074303, 0.204883,
		-0.106171, 0.983087, -0.149220,
		41.426437, 45.204876, 38.236946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888359, 44.671753, 38.004890>,  <41.500759, 44.516716, 38.341400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888359, 44.671753, 38.004890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104553, 45.002644, 37.943474>,  <41.234268, 45.201180, 37.906624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104553, 45.002644, 37.943474>,  <40.888359, 44.671753, 38.004890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104553, 45.002644, 37.943474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251792, -0.015090, -0.967664,
		-0.802794, 0.561667, 0.200133,
		0.540484, 0.827226, -0.153537,
		41.266697, 45.250813, 37.897411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559052, 45.093891, 37.503513>,  <40.888359, 44.671753, 38.004890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559052, 45.093891, 37.503513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938004, 45.220829, 37.486725>,  <41.165375, 45.296989, 37.476654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938004, 45.220829, 37.486725>,  <40.559052, 45.093891, 37.503513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938004, 45.220829, 37.486725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030352, -0.041461, -0.998679,
		-0.318664, 0.947404, -0.029648,
		0.947382, 0.317343, -0.041968,
		41.222218, 45.316032, 37.474133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470257, 45.636467, 37.031403>,  <40.559052, 45.093891, 37.503513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470257, 45.636467, 37.031403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864342, 45.570019, 37.048176>,  <41.100792, 45.530151, 37.058239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864342, 45.570019, 37.048176>,  <40.470257, 45.636467, 37.031403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864342, 45.570019, 37.048176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012268, -0.175712, -0.984365,
		0.170887, 0.970325, -0.171076,
		0.985214, -0.166117, 0.041931,
		41.159904, 45.520184, 37.060757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761379, 46.047535, 36.504787>,  <40.470257, 45.636467, 37.031403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761379, 46.047535, 36.504787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034782, 45.765186, 36.579155>,  <41.198822, 45.595776, 36.623775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034782, 45.765186, 36.579155>,  <40.761379, 46.047535, 36.504787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034782, 45.765186, 36.579155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037365, -0.220535, -0.974663,
		0.728989, 0.673134, -0.124362,
		0.683505, -0.705872, 0.185919,
		41.239834, 45.553425, 36.634930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386322, 46.276230, 36.144142>,  <40.761379, 46.047535, 36.504787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386322, 46.276230, 36.144142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395561, 45.880035, 36.198410>,  <41.401104, 45.642319, 36.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395561, 45.880035, 36.198410>,  <41.386322, 46.276230, 36.144142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395561, 45.880035, 36.198410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020004, -0.136137, -0.990488,
		0.999533, 0.020167, -0.022959,
		0.023101, -0.990485, 0.135670,
		41.402493, 45.582890, 36.239113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961063, 46.063240, 35.723953>,  <41.386322, 46.276230, 36.144142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961063, 46.063240, 35.723953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692421, 45.775551, 35.795124>,  <41.531235, 45.602936, 35.837826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692421, 45.775551, 35.795124>,  <41.961063, 46.063240, 35.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692421, 45.775551, 35.795124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018640, -0.256473, -0.966372,
		0.740670, -0.645709, 0.185656,
		-0.671610, -0.719223, 0.177926,
		41.490936, 45.559784, 35.848503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245468, 45.489098, 35.303764>,  <41.961063, 46.063240, 35.723953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245468, 45.489098, 35.303764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883865, 45.345901, 35.397251>,  <41.666904, 45.259983, 35.453342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883865, 45.345901, 35.397251>,  <42.245468, 45.489098, 35.303764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883865, 45.345901, 35.397251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096805, -0.361069, -0.927501,
		0.416422, -0.861088, 0.291752,
		-0.904003, -0.357989, 0.233715,
		41.612663, 45.238506, 35.467365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094147, 44.814735, 35.102951>,  <42.245468, 45.489098, 35.303764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094147, 44.814735, 35.102951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730049, 44.979477, 35.120087>,  <41.511589, 45.078320, 35.130367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730049, 44.979477, 35.120087>,  <42.094147, 44.814735, 35.102951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730049, 44.979477, 35.120087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067427, -0.045341, -0.996693,
		-0.408548, -0.910122, 0.069041,
		-0.910243, 0.411852, 0.042843,
		41.456978, 45.103031, 35.132938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708687, 44.557384, 34.498158>,  <42.094147, 44.814735, 35.102951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708687, 44.557384, 34.498158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456833, 44.857090, 34.580292>,  <41.305721, 45.036915, 34.629570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456833, 44.857090, 34.580292>,  <41.708687, 44.557384, 34.498158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456833, 44.857090, 34.580292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224739, 0.077335, -0.971345,
		-0.743673, -0.657741, 0.119696,
		-0.629637, 0.749263, 0.205332,
		41.267941, 45.081867, 34.641891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066551, 44.427155, 34.242107>,  <41.708687, 44.557384, 34.498158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066551, 44.427155, 34.242107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091026, 44.824333, 34.282719>,  <41.105713, 45.062641, 34.307083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091026, 44.824333, 34.282719>,  <41.066551, 44.427155, 34.242107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091026, 44.824333, 34.282719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445939, 0.118197, -0.887225,
		-0.892969, 0.009016, 0.450027,
		0.061191, 0.992949, 0.101526,
		41.109383, 45.122219, 34.313175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539223, 44.653629, 33.848145>,  <41.066551, 44.427155, 34.242107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539223, 44.653629, 33.848145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792114, 44.958660, 33.902931>,  <40.943848, 45.141678, 33.935802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792114, 44.958660, 33.902931>,  <40.539223, 44.653629, 33.848145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792114, 44.958660, 33.902931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147575, 0.292066, -0.944944,
		-0.760600, 0.577206, 0.297190,
		0.632226, 0.762582, 0.136965,
		40.981781, 45.187435, 33.944019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222939, 45.194660, 33.396553>,  <40.539223, 44.653629, 33.848145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222939, 45.194660, 33.396553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605125, 45.290909, 33.464890>,  <40.834438, 45.348660, 33.505894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605125, 45.290909, 33.464890>,  <40.222939, 45.194660, 33.396553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605125, 45.290909, 33.464890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081023, 0.342778, -0.935916,
		-0.283766, 0.908077, 0.308016,
		0.955464, 0.240625, 0.170844,
		40.891766, 45.363098, 33.516144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230709, 45.771137, 33.066566>,  <40.222939, 45.194660, 33.396553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230709, 45.771137, 33.066566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610176, 45.645790, 33.083668>,  <40.837856, 45.570583, 33.093929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610176, 45.645790, 33.083668>,  <40.230709, 45.771137, 33.066566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610176, 45.645790, 33.083668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145763, 0.313258, -0.938415,
		0.280674, 0.896477, 0.342856,
		0.948670, -0.313365, 0.042750,
		40.894775, 45.551781, 33.096493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592850, 46.348492, 32.759148>,  <40.230709, 45.771137, 33.066566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592850, 46.348492, 32.759148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847076, 46.041313, 32.727337>,  <40.999611, 45.857006, 32.708252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847076, 46.041313, 32.727337>,  <40.592850, 46.348492, 32.759148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847076, 46.041313, 32.727337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184878, 0.251390, -0.950065,
		0.749586, 0.589124, 0.301749,
		0.635563, -0.767942, -0.079522,
		41.037746, 45.810932, 32.703480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.583355, 43.131489, 32.315441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.275887, 43.385796, 32.287296>,  <43.091408, 43.538380, 32.270409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.275887, 43.385796, 32.287296>,  <43.583355, 43.131489, 32.315441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275887, 43.385796, 32.287296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328630, 0.486892, 0.809283,
		0.548771, 0.598949, -0.583190,
		-0.768669, 0.635765, -0.070360,
		43.045284, 43.576527, 32.266190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825489, 43.903328, 32.318352>,  <43.583355, 43.131489, 32.315441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825489, 43.903328, 32.318352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.446182, 43.894993, 32.445065>,  <43.218597, 43.889992, 32.521091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.446182, 43.894993, 32.445065>,  <43.825489, 43.903328, 32.318352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446182, 43.894993, 32.445065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273947, 0.450559, 0.849676,
		-0.160441, 0.892503, -0.421541,
		-0.948268, -0.020843, 0.316787,
		43.161701, 43.888741, 32.540100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717663, 44.548199, 32.691372>,  <43.825489, 43.903328, 32.318352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717663, 44.548199, 32.691372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.407326, 44.329174, 32.816750>,  <43.221123, 44.197758, 32.891975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.407326, 44.329174, 32.816750>,  <43.717663, 44.548199, 32.691372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407326, 44.329174, 32.816750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234604, 0.210813, 0.948957,
		-0.585691, 0.809774, -0.035097,
		-0.775840, -0.547561, 0.313448,
		43.174576, 44.164906, 32.910786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319553, 44.885902, 33.200920>,  <43.717663, 44.548199, 32.691372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319553, 44.885902, 33.200920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.238220, 44.500656, 33.271420>,  <43.189419, 44.269508, 33.313717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.238220, 44.500656, 33.271420>,  <43.319553, 44.885902, 33.200920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238220, 44.500656, 33.271420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057822, 0.167881, 0.984110,
		-0.977400, 0.210295, 0.021553,
		-0.203335, -0.963116, 0.176247,
		43.177219, 44.211720, 33.324295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027218, 44.922630, 33.879784>,  <43.319553, 44.885902, 33.200920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027218, 44.922630, 33.879784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.172585, 44.551800, 33.842999>,  <43.259804, 44.329300, 33.820927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.172585, 44.551800, 33.842999>,  <43.027218, 44.922630, 33.879784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172585, 44.551800, 33.842999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301200, 0.023509, 0.953271,
		-0.881593, -0.374135, 0.287779,
		0.363417, -0.927076, -0.091964,
		43.281609, 44.273678, 33.815411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725922, 44.493237, 34.480701>,  <43.027218, 44.922630, 33.879784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725922, 44.493237, 34.480701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.061600, 44.316345, 34.354092>,  <43.263004, 44.210209, 34.278126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.061600, 44.316345, 34.354092>,  <42.725922, 44.493237, 34.480701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061600, 44.316345, 34.354092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254207, -0.195551, 0.947174,
		-0.480768, -0.875323, -0.051686,
		0.839191, -0.442232, -0.316528,
		43.313358, 44.183674, 34.259132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736298, 43.838264, 34.807072>,  <42.725922, 44.493237, 34.480701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736298, 43.838264, 34.807072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.111565, 43.921539, 34.696434>,  <43.336723, 43.971504, 34.630051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.111565, 43.921539, 34.696434>,  <42.736298, 43.838264, 34.807072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111565, 43.921539, 34.696434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324938, -0.253947, 0.911003,
		0.119422, -0.944546, -0.305893,
		0.938165, 0.208190, -0.276592,
		43.393013, 43.983997, 34.613457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127190, 43.276630, 35.082767>,  <42.736298, 43.838264, 34.807072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127190, 43.276630, 35.082767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.384811, 43.581127, 35.052563>,  <43.539383, 43.763824, 35.034439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.384811, 43.581127, 35.052563>,  <43.127190, 43.276630, 35.082767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384811, 43.581127, 35.052563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259150, -0.124241, 0.957813,
		0.719746, -0.636454, -0.277294,
		0.644055, 0.761243, -0.075515,
		43.578030, 43.809502, 35.029907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568497, 43.147369, 35.578655>,  <43.127190, 43.276630, 35.082767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568497, 43.147369, 35.578655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.651230, 43.528999, 35.491970>,  <43.700871, 43.757977, 35.439957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.651230, 43.528999, 35.491970>,  <43.568497, 43.147369, 35.578655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651230, 43.528999, 35.491970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365664, 0.130073, 0.921613,
		0.907475, -0.269863, -0.321967,
		0.206830, 0.954073, -0.216717,
		43.713280, 43.815220, 35.426956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224606, 43.233276, 35.706051>,  <43.568497, 43.147369, 35.578655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224606, 43.233276, 35.706051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.063736, 43.598721, 35.729961>,  <43.967216, 43.817986, 35.744308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.063736, 43.598721, 35.729961>,  <44.224606, 43.233276, 35.706051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063736, 43.598721, 35.729961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342378, 0.089519, 0.935288,
		0.849138, 0.396613, -0.348802,
		-0.402171, 0.913611, 0.059778,
		43.943085, 43.872803, 35.747894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799473, 43.655281, 36.034969>,  <44.224606, 43.233276, 35.706051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799473, 43.655281, 36.034969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.470757, 43.877380, 36.086121>,  <44.273525, 44.010639, 36.116810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.470757, 43.877380, 36.086121>,  <44.799473, 43.655281, 36.034969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470757, 43.877380, 36.086121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204319, 0.077669, 0.975818,
		0.531892, 0.828048, -0.177276,
		-0.821793, 0.555251, 0.127874,
		44.224220, 44.043957, 36.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065498, 44.244007, 36.326958>,  <44.799473, 43.655281, 36.034969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065498, 44.244007, 36.326958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.674133, 44.254326, 36.408974>,  <44.439312, 44.260517, 36.458183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.674133, 44.254326, 36.408974>,  <45.065498, 44.244007, 36.326958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674133, 44.254326, 36.408974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205868, 0.208048, 0.956208,
		-0.017992, 0.977778, -0.208868,
		-0.978414, 0.025795, 0.205037,
		44.380608, 44.262066, 36.470486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949047, 44.891483, 36.714912>,  <45.065498, 44.244007, 36.326958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949047, 44.891483, 36.714912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.650726, 44.632973, 36.779545>,  <44.471733, 44.477867, 36.818325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.650726, 44.632973, 36.779545>,  <44.949047, 44.891483, 36.714912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650726, 44.632973, 36.779545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055121, 0.181854, 0.981780,
		-0.663887, 0.741117, -0.100003,
		-0.745799, -0.646278, 0.161582,
		44.426987, 44.439091, 36.828018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423336, 45.263615, 37.213474>,  <44.949047, 44.891483, 36.714912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423336, 45.263615, 37.213474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.326996, 44.875710, 37.229195>,  <44.269192, 44.642967, 37.238625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.326996, 44.875710, 37.229195>,  <44.423336, 45.263615, 37.213474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326996, 44.875710, 37.229195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125891, 0.008933, 0.992004,
		-0.962364, 0.243868, 0.119934,
		-0.240846, -0.969767, 0.039298,
		44.254742, 44.584778, 37.240982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962894, 45.233822, 37.715210>,  <44.423336, 45.263615, 37.213474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962894, 45.233822, 37.715210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.118752, 44.867409, 37.677135>,  <44.212265, 44.647560, 37.654289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.118752, 44.867409, 37.677135>,  <43.962894, 45.233822, 37.715210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118752, 44.867409, 37.677135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047255, -0.083332, 0.995401,
		-0.919755, -0.392345, 0.010817,
		0.389639, -0.916036, -0.095186,
		44.235641, 44.592598, 37.648579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635094, 44.840981, 38.272854>,  <43.962894, 45.233822, 37.715210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635094, 44.840981, 38.272854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.969048, 44.647251, 38.168236>,  <44.169418, 44.531013, 38.105465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.969048, 44.647251, 38.168236>,  <43.635094, 44.840981, 38.272854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969048, 44.647251, 38.168236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271770, -0.050508, 0.961036,
		-0.478661, -0.873431, 0.089456,
		0.834880, -0.484322, -0.261548,
		44.219513, 44.501953, 38.089771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669640, 44.168697, 38.712650>,  <43.635094, 44.840981, 38.272854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669640, 44.168697, 38.712650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.042999, 44.249256, 38.593849>,  <44.267014, 44.297592, 38.522568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.042999, 44.249256, 38.593849>,  <43.669640, 44.168697, 38.712650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042999, 44.249256, 38.593849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332965, -0.177433, 0.926095,
		0.133815, -0.963305, -0.232673,
		0.933396, 0.201398, -0.297003,
		44.323017, 44.309677, 38.504749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024803, 43.754814, 39.149677>,  <43.669640, 44.168697, 38.712650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024803, 43.754814, 39.149677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.299942, 44.006954, 39.005722>,  <44.465027, 44.158237, 38.919350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.299942, 44.006954, 39.005722>,  <44.024803, 43.754814, 39.149677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299942, 44.006954, 39.005722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329371, 0.170768, 0.928629,
		0.646822, -0.757293, -0.090157,
		0.687848, 0.630353, -0.359887,
		44.506298, 44.196060, 38.897755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628101, 43.521061, 39.399956>,  <44.024803, 43.754814, 39.149677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628101, 43.521061, 39.399956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.758270, 43.889553, 39.314690>,  <44.836372, 44.110649, 39.263531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.758270, 43.889553, 39.314690>,  <44.628101, 43.521061, 39.399956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758270, 43.889553, 39.314690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225131, 0.143471, 0.963708,
		0.918378, -0.361600, -0.160709,
		0.325420, 0.921228, -0.213168,
		44.855896, 44.165920, 39.250740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232109, 43.550777, 39.501736>,  <44.628101, 43.521061, 39.399956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232109, 43.550777, 39.501736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.144730, 43.939903, 39.532471>,  <45.092300, 44.173378, 39.550911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.144730, 43.939903, 39.532471>,  <45.232109, 43.550777, 39.501736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144730, 43.939903, 39.532471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170714, -0.039431, 0.984531,
		0.960800, 0.228187, -0.157460,
		-0.218448, 0.972819, 0.076840,
		45.079197, 44.231750, 39.555523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657429, 43.778904, 39.979321>,  <45.232109, 43.550777, 39.501736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657429, 43.778904, 39.979321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.408096, 44.091583, 39.971264>,  <45.258499, 44.279190, 39.966431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.408096, 44.091583, 39.971264>,  <45.657429, 43.778904, 39.979321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408096, 44.091583, 39.971264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089072, 0.096567, 0.991333,
		0.776871, 0.616132, -0.129821,
		-0.623328, 0.781701, -0.020140,
		45.221096, 44.326092, 39.965221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956726, 44.301136, 40.383282>,  <45.657429, 43.778904, 39.979321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956726, 44.301136, 40.383282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.574341, 44.417950, 40.371639>,  <45.344910, 44.488037, 40.364655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.574341, 44.417950, 40.371639>,  <45.956726, 44.301136, 40.383282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574341, 44.417950, 40.371639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014398, 0.052375, 0.998524,
		0.293129, 0.954972, -0.045864,
		-0.955965, 0.292036, -0.029103,
		45.287552, 44.505562, 40.362907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985653, 44.774502, 40.861134>,  <45.956726, 44.301136, 40.383282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985653, 44.774502, 40.861134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.603897, 44.666122, 40.810966>,  <45.374844, 44.601093, 40.780865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.603897, 44.666122, 40.810966>,  <45.985653, 44.774502, 40.861134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603897, 44.666122, 40.810966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121281, -0.032022, 0.992102,
		-0.272825, 0.962061, -0.002299,
		-0.954388, -0.270949, -0.125416,
		45.317581, 44.584839, 40.773342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554985, 45.199291, 41.378273>,  <45.985653, 44.774502, 40.861134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554985, 45.199291, 41.378273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.346107, 44.880856, 41.255924>,  <45.220779, 44.689796, 41.182514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.346107, 44.880856, 41.255924>,  <45.554985, 45.199291, 41.378273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346107, 44.880856, 41.255924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343773, -0.131735, 0.929767,
		-0.780469, 0.590670, -0.204882,
		-0.522195, -0.796087, -0.305872,
		45.189449, 44.642029, 41.164162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843430, 45.401196, 41.481644>,  <45.554985, 45.199291, 41.378273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843430, 45.401196, 41.481644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.880577, 45.003078, 41.470490>,  <44.902866, 44.764210, 41.463799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.880577, 45.003078, 41.470490>,  <44.843430, 45.401196, 41.481644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880577, 45.003078, 41.470490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453235, -0.067192, 0.888855,
		-0.886541, -0.069905, -0.457339,
		0.092865, -0.995288, -0.027885,
		44.908436, 44.704491, 41.462124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211010, 45.147278, 41.698597>,  <44.843430, 45.401196, 41.481644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211010, 45.147278, 41.698597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.472443, 44.848186, 41.745468>,  <44.629303, 44.668732, 41.773590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.472443, 44.848186, 41.745468>,  <44.211010, 45.147278, 41.698597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472443, 44.848186, 41.745468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352549, -0.163768, 0.921352,
		-0.669734, -0.643488, -0.370648,
		0.653579, -0.747732, 0.117179,
		44.668518, 44.623867, 41.780621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816143, 44.575062, 41.938927>,  <44.211010, 45.147278, 41.698597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816143, 44.575062, 41.938927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.197647, 44.518917, 42.045235>,  <44.426552, 44.485229, 42.109020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.197647, 44.518917, 42.045235>,  <43.816143, 44.575062, 41.938927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197647, 44.518917, 42.045235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287694, -0.170409, 0.942440,
		-0.086991, -0.975326, -0.202911,
		0.953763, -0.140360, 0.265771,
		44.483776, 44.476810, 42.124966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727711, 44.088718, 42.492920>,  <43.816143, 44.575062, 41.938927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727711, 44.088718, 42.492920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.122253, 44.154144, 42.500336>,  <44.358978, 44.193398, 42.504784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.122253, 44.154144, 42.500336>,  <43.727711, 44.088718, 42.492920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122253, 44.154144, 42.500336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022891, -0.247829, 0.968533,
		0.163011, -0.954897, -0.248192,
		0.986358, 0.163563, 0.018540,
		44.418159, 44.203213, 42.505898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069805, 43.377071, 42.715698>,  <43.727711, 44.088718, 42.492920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069805, 43.377071, 42.715698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.273834, 43.714725, 42.781738>,  <44.396252, 43.917320, 42.821362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.273834, 43.714725, 42.781738>,  <44.069805, 43.377071, 42.715698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273834, 43.714725, 42.781738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141826, -0.271856, 0.951830,
		0.848359, -0.462085, -0.258387,
		0.510070, 0.844140, 0.165096,
		44.426857, 43.967968, 42.831268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616623, 43.200142, 43.191456>,  <44.069805, 43.377071, 42.715698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616623, 43.200142, 43.191456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.556839, 43.594963, 43.214722>,  <44.520969, 43.831856, 43.228680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.556839, 43.594963, 43.214722>,  <44.616623, 43.200142, 43.191456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556839, 43.594963, 43.214722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078033, -0.046865, 0.995849,
		0.985684, 0.153375, -0.070019,
		-0.149457, 0.987056, 0.058162,
		44.512001, 43.891079, 43.232170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157501, 43.365177, 43.761669>,  <44.616623, 43.200142, 43.191456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157501, 43.365177, 43.761669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.897758, 43.668861, 43.744087>,  <44.741913, 43.851074, 43.733540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.897758, 43.668861, 43.744087>,  <45.157501, 43.365177, 43.761669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897758, 43.668861, 43.744087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111986, 0.152626, 0.981919,
		0.752193, 0.632694, -0.184130,
		-0.649357, 0.759212, -0.043951,
		44.702950, 43.896626, 43.730904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481365, 43.865757, 44.133896>,  <45.157501, 43.365177, 43.761669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481365, 43.865757, 44.133896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.106888, 44.003426, 44.105381>,  <44.882202, 44.086029, 44.088272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.106888, 44.003426, 44.105381>,  <45.481365, 43.865757, 44.133896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106888, 44.003426, 44.105381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076144, 0.396610, 0.914824,
		0.343132, 0.851026, -0.397511,
		-0.936196, 0.344174, -0.071289,
		44.826031, 44.106678, 44.083996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510452, 44.612663, 44.261570>,  <45.481365, 43.865757, 44.133896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510452, 44.612663, 44.261570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.155571, 44.454128, 44.356049>,  <44.942642, 44.359005, 44.412735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.155571, 44.454128, 44.356049>,  <45.510452, 44.612663, 44.261570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155571, 44.454128, 44.356049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180065, 0.173899, 0.968161,
		-0.424796, 0.901484, -0.082916,
		-0.887200, -0.396341, 0.236197,
		44.889412, 44.335224, 44.426907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318321, 44.991226, 44.866932>,  <45.510452, 44.612663, 44.261570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318321, 44.991226, 44.866932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.090897, 44.662331, 44.877251>,  <44.954441, 44.464993, 44.883442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.090897, 44.662331, 44.877251>,  <45.318321, 44.991226, 44.866932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090897, 44.662331, 44.877251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119884, -0.051788, 0.991436,
		-0.813858, 0.566787, 0.128017,
		-0.568563, -0.822235, 0.025801,
		44.920326, 44.415661, 44.884991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745007, 45.149525, 45.238998>,  <45.318321, 44.991226, 44.866932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745007, 45.149525, 45.238998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.750900, 44.750244, 45.262234>,  <44.754436, 44.510677, 45.276176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.750900, 44.750244, 45.262234>,  <44.745007, 45.149525, 45.238998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750900, 44.750244, 45.262234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278099, 0.059898, 0.958683,
		-0.960439, 0.002029, 0.278482,
		0.014735, -0.998203, 0.058093,
		44.755322, 44.450783, 45.279663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587448, 44.995209, 45.919235>,  <44.745007, 45.149525, 45.238998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587448, 44.995209, 45.919235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.749344, 44.647949, 45.804337>,  <44.846481, 44.439594, 45.735397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.749344, 44.647949, 45.804337>,  <44.587448, 44.995209, 45.919235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749344, 44.647949, 45.804337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355765, -0.139876, 0.924049,
		-0.842387, -0.476191, 0.252242,
		0.404741, -0.868146, -0.287242,
		44.870766, 44.387505, 45.718163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468884, 44.618351, 46.492432>,  <44.587448, 44.995209, 45.919235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468884, 44.618351, 46.492432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.778603, 44.460602, 46.294468>,  <44.964436, 44.365952, 46.175690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.778603, 44.460602, 46.294468>,  <44.468884, 44.618351, 46.492432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778603, 44.460602, 46.294468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493101, -0.114168, 0.862448,
		-0.396628, -0.911831, 0.106065,
		0.774298, -0.394372, -0.494907,
		45.010891, 44.342289, 46.145996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618000, 43.990292, 46.851082>,  <44.468884, 44.618351, 46.492432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618000, 43.990292, 46.851082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.955620, 44.047329, 46.644295>,  <45.158192, 44.081551, 46.520222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.955620, 44.047329, 46.644295>,  <44.618000, 43.990292, 46.851082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955620, 44.047329, 46.644295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535273, -0.282774, 0.795941,
		-0.032684, -0.948527, -0.315004,
		0.844046, 0.142598, -0.516963,
		45.208836, 44.090107, 46.489204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946163, 43.427097, 46.922207>,  <44.618000, 43.990292, 46.851082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946163, 43.427097, 46.922207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.233719, 43.680138, 46.806961>,  <45.406254, 43.831963, 46.737812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.233719, 43.680138, 46.806961>,  <44.946163, 43.427097, 46.922207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233719, 43.680138, 46.806961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613076, -0.381656, 0.691720,
		0.327624, -0.673906, -0.662203,
		0.718888, 0.632605, -0.288116,
		45.449387, 43.869919, 46.720528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595562, 43.086304, 46.990719>,  <44.946163, 43.427097, 46.922207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595562, 43.086304, 46.990719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.706100, 43.470001, 47.014343>,  <45.772423, 43.700218, 47.028519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.706100, 43.470001, 47.014343>,  <45.595562, 43.086304, 46.990719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706100, 43.470001, 47.014343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575466, -0.214376, 0.789229,
		0.769721, -0.184117, -0.611253,
		0.276349, 0.959241, 0.059057,
		45.789005, 43.757774, 47.032059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237164, 43.014950, 47.355721>,  <45.595562, 43.086304, 46.990719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237164, 43.014950, 47.355721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.173721, 43.409344, 47.376396>,  <46.135654, 43.645981, 47.388802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.173721, 43.409344, 47.376396>,  <46.237164, 43.014950, 47.355721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173721, 43.409344, 47.376396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371669, 0.011120, 0.928299,
		0.914717, 0.166444, -0.368225,
		-0.158604, 0.985988, 0.051691,
		46.126141, 43.705139, 47.391903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884254, 43.362549, 47.506508>,  <46.237164, 43.014950, 47.355721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884254, 43.362549, 47.506508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.588676, 43.601944, 47.630302>,  <46.411331, 43.745579, 47.704578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.588676, 43.601944, 47.630302>,  <46.884254, 43.362549, 47.506508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588676, 43.601944, 47.630302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335130, -0.072002, 0.939417,
		0.584510, 0.797893, -0.147365,
		-0.738943, 0.598484, 0.309483,
		46.366993, 43.781490, 47.723148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226147, 43.764381, 47.878899>,  <46.884254, 43.362549, 47.506508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226147, 43.764381, 47.878899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.849709, 43.854210, 47.980015>,  <46.623844, 43.908108, 48.040684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.849709, 43.854210, 47.980015>,  <47.226147, 43.764381, 47.878899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849709, 43.854210, 47.980015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302022, 0.222085, 0.927071,
		0.152055, 0.948812, -0.276829,
		-0.941096, 0.224575, 0.252793,
		46.567379, 43.921581, 48.055851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262016, 44.414097, 48.237782>,  <47.226147, 43.764381, 47.878899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262016, 44.414097, 48.237782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.913109, 44.253342, 48.349236>,  <46.703766, 44.156891, 48.416107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.913109, 44.253342, 48.349236>,  <47.262016, 44.414097, 48.237782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913109, 44.253342, 48.349236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179515, 0.266846, 0.946872,
		-0.454886, 0.875946, -0.160617,
		-0.872269, -0.401886, 0.278630,
		46.651428, 44.132774, 48.432823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.982929, 44.889538, 48.714657>,  <47.262016, 44.414097, 48.237782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.982929, 44.889538, 48.714657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.754898, 44.569416, 48.788986>,  <46.618080, 44.377342, 48.833584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.754898, 44.569416, 48.788986>,  <46.982929, 44.889538, 48.714657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754898, 44.569416, 48.788986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060615, 0.266526, 0.961920,
		-0.819354, 0.537102, -0.200450,
		-0.570075, -0.800303, 0.185823,
		46.583878, 44.329327, 48.844734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394211, 45.095890, 49.035992>,  <46.982929, 44.889538, 48.714657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394211, 45.095890, 49.035992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.427902, 44.714165, 49.150669>,  <46.448116, 44.485130, 49.219475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.427902, 44.714165, 49.150669>,  <46.394211, 45.095890, 49.035992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427902, 44.714165, 49.150669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222343, 0.262459, 0.938977,
		-0.971324, -0.142830, -0.190079,
		0.084227, -0.954314, 0.286690,
		46.453171, 44.427872, 49.236675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917892, 45.118416, 49.565464>,  <46.394211, 45.095890, 49.035992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917892, 45.118416, 49.565464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.115181, 44.785667, 49.667229>,  <46.233555, 44.586018, 49.728287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.115181, 44.785667, 49.667229>,  <45.917892, 45.118416, 49.565464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115181, 44.785667, 49.667229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293673, 0.116063, 0.948834,
		-0.818834, -0.542700, -0.187052,
		0.493222, -0.831869, 0.254412,
		46.263149, 44.536106, 49.743553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469955, 44.722492, 49.972282>,  <45.917892, 45.118416, 49.565464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469955, 44.722492, 49.972282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.847351, 44.615067, 50.049957>,  <46.073788, 44.550610, 50.096561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.847351, 44.615067, 50.049957>,  <45.469955, 44.722492, 49.972282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847351, 44.615067, 50.049957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132032, 0.232825, 0.963514,
		-0.303976, -0.934701, 0.184208,
		0.943486, -0.268564, 0.194183,
		46.130398, 44.534496, 50.108212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456856, 44.528118, 50.712475>,  <45.469955, 44.722492, 49.972282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456856, 44.528118, 50.712475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.837944, 44.593796, 50.610214>,  <46.066597, 44.633202, 50.548859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.837944, 44.593796, 50.610214>,  <45.456856, 44.528118, 50.712475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837944, 44.593796, 50.610214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175178, 0.390658, 0.903714,
		0.248256, -0.905775, 0.343426,
		0.952724, 0.164192, -0.255655,
		46.123760, 44.643055, 50.533516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786602, 44.456905, 51.295452>,  <45.456856, 44.528118, 50.712475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786602, 44.456905, 51.295452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.082596, 44.632343, 51.091469>,  <46.260193, 44.737606, 50.969078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.082596, 44.632343, 51.091469>,  <45.786602, 44.456905, 51.295452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082596, 44.632343, 51.091469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302212, 0.460523, 0.834617,
		0.600905, -0.771721, 0.208233,
		0.739987, 0.438595, -0.509954,
		46.304592, 44.763920, 50.938484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464317, 44.363003, 51.669529>,  <45.786602, 44.456905, 51.295452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464317, 44.363003, 51.669529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.437958, 44.690243, 51.441013>,  <46.422142, 44.886585, 51.303902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.437958, 44.690243, 51.441013>,  <46.464317, 44.363003, 51.669529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437958, 44.690243, 51.441013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064778, 0.574837, 0.815700,
		0.995721, 0.016750, -0.090877,
		-0.065902, 0.818096, -0.571292,
		46.418186, 44.935673, 51.269627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898251, 44.846897, 52.018967>,  <46.464317, 44.363003, 51.669529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898251, 44.846897, 52.018967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.691994, 45.076019, 51.764091>,  <46.568241, 45.213493, 51.611168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.691994, 45.076019, 51.764091>,  <46.898251, 44.846897, 52.018967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691994, 45.076019, 51.764091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151746, 0.792972, 0.590057,
		0.843262, 0.207565, -0.495808,
		-0.515638, 0.572810, -0.637186,
		46.537304, 45.247864, 51.572937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.236122, 45.422649, 51.828922>,  <46.898251, 44.846897, 52.018967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.236122, 45.422649, 51.828922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.862175, 45.553780, 51.774445>,  <46.637806, 45.632458, 51.741760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.862175, 45.553780, 51.774445>,  <47.236122, 45.422649, 51.828922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.862175, 45.553780, 51.774445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203010, 0.808448, 0.552448,
		0.291209, 0.488819, -0.822346,
		-0.934871, 0.327823, -0.136192,
		46.581715, 45.652126, 51.733585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255260, 46.064133, 51.566444>,  <47.236122, 45.422649, 51.828922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255260, 46.064133, 51.566444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.877602, 46.073280, 51.697937>,  <46.651005, 46.078770, 51.776833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.877602, 46.073280, 51.697937>,  <47.255260, 46.064133, 51.566444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877602, 46.073280, 51.697937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085153, 0.980639, 0.176340,
		-0.318335, 0.194484, -0.927814,
		-0.944146, 0.022871, 0.328733,
		46.594357, 46.080143, 51.796558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000576, 46.689735, 51.379711>,  <47.255260, 46.064133, 51.566444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000576, 46.689735, 51.379711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.737259, 46.583260, 51.661362>,  <46.579269, 46.519375, 51.830353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.737259, 46.583260, 51.661362>,  <47.000576, 46.689735, 51.379711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737259, 46.583260, 51.661362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128656, 0.961414, 0.243169,
		-0.741687, 0.069486, -0.667138,
		-0.658292, -0.266186, 0.704128,
		46.539772, 46.503403, 51.872601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517220, 47.204159, 51.316868>,  <47.000576, 46.689735, 51.379711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517220, 47.204159, 51.316868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.389183, 47.057060, 51.666107>,  <46.312363, 46.968800, 51.875652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.389183, 47.057060, 51.666107>,  <46.517220, 47.204159, 51.316868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389183, 47.057060, 51.666107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205387, 0.926606, 0.314988,
		-0.924857, -0.078500, -0.372125,
		-0.320087, -0.367748, 0.873101,
		46.293156, 46.946735, 51.928036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974613, 47.649418, 51.552608>,  <46.517220, 47.204159, 51.316868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974613, 47.649418, 51.552608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.130661, 47.476814, 51.877964>,  <46.224289, 47.373253, 52.073177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.130661, 47.476814, 51.877964>,  <45.974613, 47.649418, 51.552608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130661, 47.476814, 51.877964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063535, 0.868668, 0.491304,
		-0.918570, -0.243346, 0.311468,
		0.390119, -0.431508, 0.813393,
		46.247696, 47.347363, 52.121983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670578, 48.008793, 52.124428>,  <45.974613, 47.649418, 51.552608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670578, 48.008793, 52.124428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.981331, 47.825829, 52.297508>,  <46.167782, 47.716049, 52.401356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.981331, 47.825829, 52.297508>,  <45.670578, 48.008793, 52.124428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981331, 47.825829, 52.297508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165221, 0.811230, 0.560900,
		-0.607581, -0.364262, 0.705804,
		0.776883, -0.457406, 0.432704,
		46.214397, 47.688606, 52.427319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607029, 47.933414, 52.944332>,  <45.670578, 48.008793, 52.124428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607029, 47.933414, 52.944332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.992325, 47.938599, 52.837006>,  <46.223503, 47.941711, 52.772610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.992325, 47.938599, 52.837006>,  <45.607029, 47.933414, 52.944332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992325, 47.938599, 52.837006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159859, 0.775066, 0.611325,
		0.215892, -0.631747, 0.744504,
		0.963242, 0.012965, -0.268321,
		46.281296, 47.942490, 52.756508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861877, 48.174637, 53.542721>,  <45.607029, 47.933414, 52.944332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861877, 48.174637, 53.542721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.154427, 48.223228, 53.274292>,  <46.329956, 48.252384, 53.113235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.154427, 48.223228, 53.274292>,  <45.861877, 48.174637, 53.542721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154427, 48.223228, 53.274292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365452, 0.760985, 0.536047,
		0.575790, -0.637296, 0.512172,
		0.731376, 0.121476, -0.671069,
		46.373840, 48.259670, 53.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374992, 48.439056, 53.922619>,  <45.861877, 48.174637, 53.542721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374992, 48.439056, 53.922619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.510239, 48.512917, 53.553493>,  <46.591385, 48.557232, 53.332020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.510239, 48.512917, 53.553493>,  <46.374992, 48.439056, 53.922619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510239, 48.512917, 53.553493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416989, 0.849660, 0.322797,
		0.843682, -0.493945, 0.210285,
		0.338115, 0.184651, -0.922812,
		46.611675, 48.568314, 53.276649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.117699, 48.623234, 54.011322>,  <46.374992, 48.439056, 53.922619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.117699, 48.623234, 54.011322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.009560, 48.755501, 53.649643>,  <46.944675, 48.834862, 53.432636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.009560, 48.755501, 53.649643>,  <47.117699, 48.623234, 54.011322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009560, 48.755501, 53.649643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447618, 0.874660, 0.186032,
		0.852379, -0.354441, -0.384477,
		-0.270349, 0.330668, -0.904196,
		46.928455, 48.854702, 53.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704536, 49.008915, 53.722351>,  <47.117699, 48.623234, 54.011322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704536, 49.008915, 53.722351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.385468, 49.162735, 53.536514>,  <47.194027, 49.255028, 53.425014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.385468, 49.162735, 53.536514>,  <47.704536, 49.008915, 53.722351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385468, 49.162735, 53.536514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383051, 0.918054, 0.102221,
		0.465828, -0.096423, -0.879606,
		-0.797669, 0.384551, -0.464590,
		47.146168, 49.278099, 53.397137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.899723, 49.541397, 53.258110>,  <47.704536, 49.008915, 53.722351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.899723, 49.541397, 53.258110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.518631, 49.638664, 53.330956>,  <47.289974, 49.697025, 53.374664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.518631, 49.638664, 53.330956>,  <47.899723, 49.541397, 53.258110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518631, 49.638664, 53.330956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281720, 0.931530, 0.229968,
		-0.113726, 0.270404, -0.956006,
		-0.952733, 0.243172, 0.182118,
		47.232811, 49.711617, 53.385590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<45.998730, 50.131313, 53.465515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.373291, 49.995560, 53.429794>,  <46.598026, 49.914108, 53.408363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.373291, 49.995560, 53.429794>,  <45.998730, 50.131313, 53.465515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373291, 49.995560, 53.429794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347563, -0.861714, -0.369661,
		0.048506, 0.377188, -0.924866,
		0.936401, -0.339380, -0.089298,
		46.654213, 49.893745, 53.403004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042465, 49.660873, 52.866627>,  <45.998730, 50.131313, 53.465515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042465, 49.660873, 52.866627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.397415, 49.554337, 53.017159>,  <46.610386, 49.490414, 53.107479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.397415, 49.554337, 53.017159>,  <46.042465, 49.660873, 52.866627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397415, 49.554337, 53.017159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092326, -0.902378, -0.420939,
		0.451704, 0.338788, -0.825340,
		0.887378, -0.266340, 0.376329,
		46.663628, 49.474434, 53.130058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580162, 49.530468, 52.303299>,  <46.042465, 49.660873, 52.866627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580162, 49.530468, 52.303299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.654503, 49.327759, 52.640022>,  <46.699108, 49.206131, 52.842056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.654503, 49.327759, 52.640022>,  <46.580162, 49.530468, 52.303299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654503, 49.327759, 52.640022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093512, -0.861965, -0.498269,
		0.978118, 0.013884, -0.207586,
		0.185850, -0.506778, 0.841805,
		46.710258, 49.175724, 52.892563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.790337, 48.812801, 52.068401>,  <46.580162, 49.530468, 52.303299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.790337, 48.812801, 52.068401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.743736, 48.749977, 52.460678>,  <46.715775, 48.712284, 52.696045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.743736, 48.749977, 52.460678>,  <46.790337, 48.812801, 52.068401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.743736, 48.749977, 52.460678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058857, -0.984591, -0.164672,
		0.991445, -0.076905, 0.105464,
		-0.116503, -0.157056, 0.980694,
		46.708786, 48.702862, 52.754887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.410774, 48.501179, 52.354210>,  <46.790337, 48.812801, 52.068401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.410774, 48.501179, 52.354210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.075577, 48.421318, 52.557350>,  <46.874458, 48.373402, 52.679234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.075577, 48.421318, 52.557350>,  <47.410774, 48.501179, 52.354210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.075577, 48.421318, 52.557350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022883, -0.942701, -0.332852,
		0.545205, -0.267306, 0.794543,
		-0.837990, -0.199655, 0.507849,
		46.824181, 48.361423, 52.709705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.529888, 47.788815, 52.417866>,  <47.410774, 48.501179, 52.354210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.529888, 47.788815, 52.417866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.146545, 47.852280, 52.512844>,  <46.916538, 47.890358, 52.569832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.146545, 47.852280, 52.512844>,  <47.529888, 47.788815, 52.417866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146545, 47.852280, 52.512844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248902, -0.871697, -0.422127,
		0.140002, -0.463648, 0.874888,
		-0.958356, 0.158663, 0.237442,
		46.859039, 47.899879, 52.584076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349686, 47.188457, 52.779266>,  <47.529888, 47.788815, 52.417866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349686, 47.188457, 52.779266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.007263, 47.358925, 52.662270>,  <46.801811, 47.461205, 52.592072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.007263, 47.358925, 52.662270>,  <47.349686, 47.188457, 52.779266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007263, 47.358925, 52.662270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333876, -0.887889, -0.316512,
		-0.394590, -0.173294, 0.902368,
		-0.856052, 0.426172, -0.292493,
		46.750446, 47.486778, 52.574520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850529, 46.737045, 53.058395>,  <47.349686, 47.188457, 52.779266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850529, 46.737045, 53.058395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.640869, 46.928925, 52.776924>,  <46.515076, 47.044052, 52.608040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.640869, 46.928925, 52.776924>,  <46.850529, 46.737045, 53.058395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640869, 46.928925, 52.776924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370458, -0.872428, -0.318794,
		-0.766832, 0.093589, 0.634987,
		-0.524145, 0.479698, -0.703677,
		46.483627, 47.072834, 52.565823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980595, 46.545559, 53.095222>,  <46.850529, 46.737045, 53.058395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980595, 46.545559, 53.095222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.114952, 46.647850, 52.732613>,  <46.195564, 46.709225, 52.515049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.114952, 46.647850, 52.732613>,  <45.980595, 46.545559, 53.095222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114952, 46.647850, 52.732613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239682, -0.907550, -0.344826,
		-0.910895, 0.333101, -0.243544,
		0.335890, 0.255728, -0.906521,
		46.215717, 46.724567, 52.460655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535336, 46.103245, 52.675812>,  <45.980595, 46.545559, 53.095222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535336, 46.103245, 52.675812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.823029, 46.237724, 52.432610>,  <45.995644, 46.318413, 52.286690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.823029, 46.237724, 52.432610>,  <45.535336, 46.103245, 52.675812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823029, 46.237724, 52.432610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122894, -0.799758, -0.587609,
		-0.683809, 0.497351, -0.533899,
		0.719237, 0.336199, -0.608003,
		46.038799, 46.338585, 52.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308987, 45.941433, 51.995220>,  <45.535336, 46.103245, 52.675812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308987, 45.941433, 51.995220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.705078, 45.977222, 51.952438>,  <45.942734, 45.998695, 51.926769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.705078, 45.977222, 51.952438>,  <45.308987, 45.941433, 51.995220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705078, 45.977222, 51.952438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016906, -0.684333, -0.728974,
		-0.138413, 0.723660, -0.676134,
		0.990230, 0.089469, -0.106955,
		46.002148, 46.004063, 51.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442898, 45.879456, 51.314018>,  <45.308987, 45.941433, 51.995220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442898, 45.879456, 51.314018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.821747, 45.844128, 51.437405>,  <46.049057, 45.822929, 51.511436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.821747, 45.844128, 51.437405>,  <45.442898, 45.879456, 51.314018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821747, 45.844128, 51.437405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189671, -0.621302, -0.760269,
		0.258796, 0.778578, -0.571700,
		0.947127, -0.088320, 0.308464,
		46.105885, 45.817631, 51.529945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811420, 45.891949, 50.661175>,  <45.442898, 45.879456, 51.314018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811420, 45.891949, 50.661175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.035843, 45.703022, 50.933098>,  <46.170494, 45.589664, 51.096252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.035843, 45.703022, 50.933098>,  <45.811420, 45.891949, 50.661175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035843, 45.703022, 50.933098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147780, -0.750893, -0.643678,
		0.814482, 0.461598, -0.351491,
		0.561053, -0.472321, 0.679804,
		46.204159, 45.561325, 51.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553410, 45.999783, 50.502903>,  <45.811420, 45.891949, 50.661175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553410, 45.999783, 50.502903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.518929, 45.671352, 50.728615>,  <46.498241, 45.474293, 50.864040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.518929, 45.671352, 50.728615>,  <46.553410, 45.999783, 50.502903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518929, 45.671352, 50.728615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250099, -0.566080, -0.785496,
		0.964376, 0.073416, 0.254145,
		-0.086198, -0.821074, 0.564275,
		46.493069, 45.425030, 50.897896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134518, 45.478809, 50.287113>,  <46.553410, 45.999783, 50.502903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134518, 45.478809, 50.287113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.863815, 45.250465, 50.473068>,  <46.701393, 45.113461, 50.584641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.863815, 45.250465, 50.473068>,  <47.134518, 45.478809, 50.287113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863815, 45.250465, 50.473068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015460, -0.642344, -0.766260,
		0.736042, -0.511386, 0.443538,
		-0.676759, -0.570857, 0.464887,
		46.660789, 45.079208, 50.612534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.412777, 44.794342, 50.262524>,  <47.134518, 45.478809, 50.287113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.412777, 44.794342, 50.262524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.018524, 44.766449, 50.324066>,  <46.781975, 44.749714, 50.360992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.018524, 44.766449, 50.324066>,  <47.412777, 44.794342, 50.262524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018524, 44.766449, 50.324066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082431, -0.596483, -0.798382,
		0.147445, -0.799591, 0.582163,
		-0.985629, -0.069729, 0.153860,
		46.722836, 44.745529, 50.370224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306255, 44.075733, 50.134174>,  <47.412777, 44.794342, 50.262524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306255, 44.075733, 50.134174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.941101, 44.239002, 50.131912>,  <46.722008, 44.336964, 50.130554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.941101, 44.239002, 50.131912>,  <47.306255, 44.075733, 50.134174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941101, 44.239002, 50.131912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224658, -0.513922, -0.827897,
		-0.340828, -0.754507, 0.560852,
		-0.912888, 0.408170, -0.005653,
		46.667236, 44.361454, 50.130215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915359, 43.500278, 50.070320>,  <47.306255, 44.075733, 50.134174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915359, 43.500278, 50.070320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.706558, 43.818573, 49.947472>,  <46.581276, 44.009548, 49.873760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.706558, 43.818573, 49.947472>,  <46.915359, 43.500278, 50.070320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706558, 43.818573, 49.947472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023361, -0.373278, -0.927425,
		-0.852625, -0.476942, 0.213441,
		-0.522002, 0.795732, -0.307124,
		46.549957, 44.057293, 49.855335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560944, 43.182182, 49.644463>,  <46.915359, 43.500278, 50.070320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560944, 43.182182, 49.644463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.535027, 43.564533, 49.529846>,  <46.519478, 43.793941, 49.461079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.535027, 43.564533, 49.529846>,  <46.560944, 43.182182, 49.644463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535027, 43.564533, 49.529846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313024, -0.292118, -0.903705,
		-0.947533, 0.031140, 0.318139,
		-0.064793, 0.955875, -0.286538,
		46.515587, 43.851295, 49.443886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963612, 43.248684, 49.238178>,  <46.560944, 43.182182, 49.644463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963612, 43.248684, 49.238178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.185081, 43.562233, 49.125755>,  <46.317963, 43.750362, 49.058304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.185081, 43.562233, 49.125755>,  <45.963612, 43.248684, 49.238178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.185081, 43.562233, 49.125755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297071, -0.129372, -0.946051,
		-0.777941, 0.607298, 0.161235,
		0.553675, 0.783870, -0.281054,
		46.351185, 43.797394, 49.041439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555893, 43.616138, 48.798668>,  <45.963612, 43.248684, 49.238178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555893, 43.616138, 48.798668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.900368, 43.783463, 48.683167>,  <46.107052, 43.883858, 48.613865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.900368, 43.783463, 48.683167>,  <45.555893, 43.616138, 48.798668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900368, 43.783463, 48.683167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295739, -0.049664, -0.953977,
		-0.413398, 0.906946, 0.080940,
		0.861186, 0.418310, -0.288750,
		46.158722, 43.908955, 48.596542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334270, 43.997902, 48.341415>,  <45.555893, 43.616138, 48.798668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334270, 43.997902, 48.341415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.724716, 43.992207, 48.254692>,  <45.958984, 43.988789, 48.202660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.724716, 43.992207, 48.254692>,  <45.334270, 43.997902, 48.341415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724716, 43.992207, 48.254692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216546, 0.017743, -0.976111,
		0.017743, 0.999741, 0.014236,
		0.976111, -0.014236, -0.216804,
		46.017551, 43.987934, 48.189651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456745, 44.653915, 48.005108>,  <45.334270, 43.997902, 48.341415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456745, 44.653915, 48.005108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.727005, 44.373093, 47.915115>,  <45.889160, 44.204597, 47.861122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.727005, 44.373093, 47.915115>,  <45.456745, 44.653915, 48.005108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727005, 44.373093, 47.915115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124457, 0.192167, -0.973439,
		0.726643, 0.685702, 0.042462,
		0.675649, -0.702057, -0.224977,
		45.929699, 44.162476, 47.847622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801147, 44.970707, 47.536949>,  <45.456745, 44.653915, 48.005108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801147, 44.970707, 47.536949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.913017, 44.589340, 47.491749>,  <45.980141, 44.360519, 47.464630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.913017, 44.589340, 47.491749>,  <45.801147, 44.970707, 47.536949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913017, 44.589340, 47.491749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246097, 0.042574, -0.968310,
		0.928018, 0.298623, -0.222727,
		0.279677, -0.953421, -0.112999,
		45.996922, 44.303314, 47.457848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165897, 44.951023, 47.042755>,  <45.801147, 44.970707, 47.536949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165897, 44.951023, 47.042755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.042274, 44.571175, 47.021912>,  <45.968102, 44.343266, 47.009407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.042274, 44.571175, 47.021912>,  <46.165897, 44.951023, 47.042755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042274, 44.571175, 47.021912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325305, 0.157034, -0.932479,
		0.893680, -0.271235, -0.357447,
		-0.309052, -0.949617, -0.052105,
		45.949558, 44.286289, 47.006279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363766, 44.712887, 46.365322>,  <46.165897, 44.951023, 47.042755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363766, 44.712887, 46.365322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.077385, 44.457512, 46.478317>,  <45.905556, 44.304287, 46.546116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.077385, 44.457512, 46.478317>,  <46.363766, 44.712887, 46.365322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077385, 44.457512, 46.478317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460121, 0.127189, -0.878699,
		0.525068, -0.759088, -0.384823,
		-0.715956, -0.638442, 0.282490,
		45.862598, 44.265980, 46.563065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271835, 44.392429, 45.730927>,  <46.363766, 44.712887, 46.365322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271835, 44.392429, 45.730927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.957771, 44.317562, 45.967056>,  <45.769333, 44.272640, 46.108734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.957771, 44.317562, 45.967056>,  <46.271835, 44.392429, 45.730927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957771, 44.317562, 45.967056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597934, -0.019037, -0.801320,
		0.161224, -0.982142, -0.096971,
		-0.785164, -0.187175, 0.590325,
		45.722221, 44.261410, 46.144154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944622, 43.691269, 45.508709>,  <46.271835, 44.392429, 45.730927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944622, 43.691269, 45.508709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.653351, 43.888134, 45.699512>,  <45.478588, 44.006252, 45.813995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.653351, 43.888134, 45.699512>,  <45.944622, 43.691269, 45.508709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653351, 43.888134, 45.699512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559901, -0.025734, -0.828160,
		-0.395317, -0.870121, 0.294303,
		-0.728173, 0.492166, 0.477009,
		45.434898, 44.035782, 45.842617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429108, 43.238892, 45.473782>,  <45.944622, 43.691269, 45.508709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429108, 43.238892, 45.473782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.260719, 43.599941, 45.509686>,  <45.159687, 43.816570, 45.531227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.260719, 43.599941, 45.509686>,  <45.429108, 43.238892, 45.473782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260719, 43.599941, 45.509686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600937, -0.203400, -0.772983,
		-0.679453, -0.379347, 0.628045,
		-0.420973, 0.902621, 0.089763,
		45.134426, 43.870728, 45.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.133621, 43.500202, 33.284416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442993, 43.724434, 33.166058>,  <42.628616, 43.858971, 33.095043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442993, 43.724434, 33.166058>,  <42.133621, 43.500202, 33.284416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442993, 43.724434, 33.166058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344752, -0.019722, -0.938487,
		-0.531929, 0.827868, 0.178006,
		0.773432, 0.560576, -0.295900,
		42.675022, 43.892609, 33.077286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926613, 44.060886, 32.831814>,  <42.133621, 43.500202, 33.284416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926613, 44.060886, 32.831814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308838, 43.977928, 32.748013>,  <42.538174, 43.928154, 32.697731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308838, 43.977928, 32.748013>,  <41.926613, 44.060886, 32.831814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308838, 43.977928, 32.748013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248018, -0.181428, -0.951615,
		0.159353, 0.961286, -0.224803,
		0.955559, -0.207398, -0.209505,
		42.595505, 43.915710, 32.685162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021931, 44.358112, 32.187138>,  <41.926613, 44.060886, 32.831814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021931, 44.358112, 32.187138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336472, 44.111469, 32.202328>,  <42.525196, 43.963482, 32.211441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336472, 44.111469, 32.202328>,  <42.021931, 44.358112, 32.187138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336472, 44.111469, 32.202328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088838, -0.173705, -0.980782,
		0.611356, 0.767868, -0.191372,
		0.786354, -0.616608, 0.037980,
		42.572376, 43.926487, 32.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962498, 44.965988, 32.697353>,  <42.021931, 44.358112, 32.187138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962498, 44.965988, 32.697353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649284, 45.214542, 32.686531>,  <41.461357, 45.363674, 32.680038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649284, 45.214542, 32.686531>,  <41.962498, 44.965988, 32.697353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649284, 45.214542, 32.686531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051330, 0.107916, 0.992834,
		0.619856, 0.776035, -0.116398,
		-0.783035, 0.621389, -0.027059,
		41.414375, 45.400959, 32.678413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194843, 45.424614, 33.264179>,  <41.962498, 44.965988, 32.697353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194843, 45.424614, 33.264179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798424, 45.446472, 33.215454>,  <41.560574, 45.459587, 33.186218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798424, 45.446472, 33.215454>,  <42.194843, 45.424614, 33.264179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798424, 45.446472, 33.215454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119263, 0.047782, 0.991712,
		0.060012, 0.997362, -0.040838,
		-0.991047, 0.054645, -0.121816,
		41.501110, 45.462864, 33.178909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073807, 45.847443, 33.799892>,  <42.194843, 45.424614, 33.264179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073807, 45.847443, 33.799892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.710075, 45.706139, 33.711948>,  <41.491837, 45.621357, 33.659184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.710075, 45.706139, 33.711948>,  <42.073807, 45.847443, 33.799892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710075, 45.706139, 33.711948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257079, 0.061510, 0.964431,
		-0.327167, 0.933503, -0.146747,
		-0.909325, -0.353255, -0.219860,
		41.437279, 45.600163, 33.645992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524883, 46.360256, 34.029209>,  <42.073807, 45.847443, 33.799892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524883, 46.360256, 34.029209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373856, 45.990288, 34.011482>,  <41.283241, 45.768307, 34.000847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373856, 45.990288, 34.011482>,  <41.524883, 46.360256, 34.029209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373856, 45.990288, 34.011482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221154, 0.043596, 0.974264,
		-0.899186, 0.377649, -0.221011,
		-0.377565, -0.924922, -0.044318,
		41.260586, 45.712811, 33.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865856, 46.391235, 34.477276>,  <41.524883, 46.360256, 34.029209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865856, 46.391235, 34.477276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003395, 46.017933, 34.435715>,  <41.085918, 45.793949, 34.410778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003395, 46.017933, 34.435715>,  <40.865856, 46.391235, 34.477276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003395, 46.017933, 34.435715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158126, -0.166617, 0.973260,
		-0.925615, -0.318225, -0.204864,
		0.343850, -0.933259, -0.103904,
		41.106548, 45.737957, 34.404545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438126, 46.031631, 34.988953>,  <40.865856, 46.391235, 34.477276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438126, 46.031631, 34.988953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709068, 45.752373, 34.896187>,  <40.871635, 45.584820, 34.840527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709068, 45.752373, 34.896187>,  <40.438126, 46.031631, 34.988953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709068, 45.752373, 34.896187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095616, -0.396125, 0.913205,
		-0.729415, -0.596390, -0.335071,
		0.677356, -0.698143, -0.231915,
		40.912277, 45.542931, 34.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217201, 45.391884, 35.194710>,  <40.438126, 46.031631, 34.988953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217201, 45.391884, 35.194710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.611328, 45.325645, 35.178078>,  <40.847805, 45.285904, 35.168098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.611328, 45.325645, 35.178078>,  <40.217201, 45.391884, 35.194710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611328, 45.325645, 35.178078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016134, -0.332774, 0.942869,
		-0.169969, -0.928354, -0.330560,
		0.985317, -0.165592, -0.041583,
		40.906925, 45.275967, 35.165604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383991, 44.932240, 35.727657>,  <40.217201, 45.391884, 35.194710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383991, 44.932240, 35.727657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767380, 45.023766, 35.659565>,  <40.997414, 45.078682, 35.618710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767380, 45.023766, 35.659565>,  <40.383991, 44.932240, 35.727657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767380, 45.023766, 35.659565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210943, -0.167106, 0.963109,
		0.191926, -0.959020, -0.208433,
		0.958471, 0.228813, -0.170227,
		41.054920, 45.092411, 35.608498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828442, 44.388271, 36.090237>,  <40.383991, 44.932240, 35.727657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828442, 44.388271, 36.090237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.043747, 44.720371, 36.032322>,  <41.172932, 44.919632, 35.997574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.043747, 44.720371, 36.032322>,  <40.828442, 44.388271, 36.090237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043747, 44.720371, 36.032322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279019, -0.013449, 0.960192,
		0.795248, -0.557236, -0.238893,
		0.538266, 0.830246, -0.144784,
		41.205227, 44.969444, 35.988888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534405, 44.327484, 36.518055>,  <40.828442, 44.388271, 36.090237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534405, 44.327484, 36.518055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496429, 44.714851, 36.425831>,  <41.473644, 44.947273, 36.370499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496429, 44.714851, 36.425831>,  <41.534405, 44.327484, 36.518055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496429, 44.714851, 36.425831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292462, 0.248515, 0.923421,
		0.951553, 0.020238, -0.306818,
		-0.094937, 0.968417, -0.230556,
		41.467949, 45.005375, 36.356663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109184, 44.597141, 36.779510>,  <41.534405, 44.327484, 36.518055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109184, 44.597141, 36.779510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841782, 44.892231, 36.741840>,  <41.681339, 45.069283, 36.719238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841782, 44.892231, 36.741840>,  <42.109184, 44.597141, 36.779510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841782, 44.892231, 36.741840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152194, 0.259650, 0.953635,
		0.727970, 0.623175, -0.285853,
		-0.668504, 0.737722, -0.094174,
		41.641232, 45.113548, 36.713589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396358, 45.152122, 37.151665>,  <42.109184, 44.597141, 36.779510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396358, 45.152122, 37.151665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019493, 45.282711, 37.121353>,  <41.793373, 45.361065, 37.103168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019493, 45.282711, 37.121353>,  <42.396358, 45.152122, 37.151665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019493, 45.282711, 37.121353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039546, 0.332808, 0.942165,
		0.332808, 0.884679, -0.326470,
		-0.942165, 0.326470, -0.075776,
		41.736843, 45.380653, 37.098621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365009, 45.890900, 37.344772>,  <42.396358, 45.152122, 37.151665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365009, 45.890900, 37.344772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003708, 45.731201, 37.407688>,  <41.786926, 45.635380, 37.445438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.003708, 45.731201, 37.407688>,  <42.365009, 45.890900, 37.344772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003708, 45.731201, 37.407688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050133, 0.265843, 0.962712,
		-0.426176, 0.877455, -0.220107,
		-0.903250, -0.399250, 0.157285,
		41.732735, 45.611427, 37.454872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966137, 46.366032, 37.637283>,  <42.365009, 45.890900, 37.344772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966137, 46.366032, 37.637283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.783508, 46.020908, 37.724098>,  <41.673931, 45.813835, 37.776188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.783508, 46.020908, 37.724098>,  <41.966137, 46.366032, 37.637283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783508, 46.020908, 37.724098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047754, 0.219826, 0.974369,
		-0.888404, 0.455235, -0.059164,
		-0.456573, -0.862808, 0.217034,
		41.646538, 45.762066, 37.789207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319675, 46.499077, 38.034695>,  <41.966137, 46.366032, 37.637283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319675, 46.499077, 38.034695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.335373, 46.105431, 38.103947>,  <41.344791, 45.869244, 38.145500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.335373, 46.105431, 38.103947>,  <41.319675, 46.499077, 38.034695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335373, 46.105431, 38.103947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310504, 0.152679, 0.938231,
		-0.949762, -0.090578, -0.299580,
		0.039244, -0.984116, 0.173134,
		41.347145, 45.810196, 38.155888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768066, 46.353291, 38.428600>,  <41.319675, 46.499077, 38.034695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768066, 46.353291, 38.428600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038055, 46.068031, 38.504318>,  <41.200050, 45.896873, 38.549747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038055, 46.068031, 38.504318>,  <40.768066, 46.353291, 38.428600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038055, 46.068031, 38.504318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196514, 0.073528, 0.977740,
		-0.711193, -0.697145, -0.090515,
		0.674971, -0.713150, 0.189291,
		41.240547, 45.854088, 38.561104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413261, 45.902027, 38.856113>,  <40.768066, 46.353291, 38.428600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413261, 45.902027, 38.856113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.791954, 45.799355, 38.933903>,  <41.019169, 45.737751, 38.980576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.791954, 45.799355, 38.933903>,  <40.413261, 45.902027, 38.856113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791954, 45.799355, 38.933903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180548, 0.076994, 0.980548,
		-0.266658, -0.963425, 0.026549,
		0.946729, -0.256678, 0.194476,
		41.075974, 45.722351, 38.992245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505836, 45.302006, 39.293274>,  <40.413261, 45.902027, 38.856113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505836, 45.302006, 39.293274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.856766, 45.489841, 39.332855>,  <41.067322, 45.602543, 39.356602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.856766, 45.489841, 39.332855>,  <40.505836, 45.302006, 39.293274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856766, 45.489841, 39.332855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026127, -0.159144, 0.986910,
		0.479194, -0.868421, -0.127351,
		0.877320, 0.469594, 0.098949,
		41.119961, 45.630718, 39.362541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682232, 44.894878, 39.767197>,  <40.505836, 45.302006, 39.293274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682232, 44.894878, 39.767197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.947960, 45.193577, 39.780190>,  <41.107395, 45.372795, 39.787983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.947960, 45.193577, 39.780190>,  <40.682232, 44.894878, 39.767197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947960, 45.193577, 39.780190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017129, -0.058651, 0.998132,
		0.747256, -0.662518, -0.051754,
		0.664315, 0.746746, 0.032479,
		41.147255, 45.417603, 39.789932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060959, 44.689816, 40.315907>,  <40.682232, 44.894878, 39.767197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060959, 44.689816, 40.315907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132881, 45.077469, 40.248436>,  <41.176037, 45.310062, 40.207954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.132881, 45.077469, 40.248436>,  <41.060959, 44.689816, 40.315907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132881, 45.077469, 40.248436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230025, 0.125290, 0.965086,
		0.956429, -0.212330, -0.200396,
		0.179809, 0.969133, -0.168673,
		41.186825, 45.368210, 40.197834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750195, 44.823692, 40.520321>,  <41.060959, 44.689816, 40.315907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750195, 44.823692, 40.520321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583603, 45.187218, 40.530106>,  <41.483650, 45.405334, 40.535976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583603, 45.187218, 40.530106>,  <41.750195, 44.823692, 40.520321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583603, 45.187218, 40.530106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366975, 0.143427, 0.919107,
		0.831791, 0.391765, -0.393247,
		-0.416476, 0.908817, 0.024466,
		41.458660, 45.459862, 40.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271496, 45.358196, 40.671867>,  <41.750195, 44.823692, 40.520321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271496, 45.358196, 40.671867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.941681, 45.557331, 40.779419>,  <41.743793, 45.676811, 40.843952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.941681, 45.557331, 40.779419>,  <42.271496, 45.358196, 40.671867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941681, 45.557331, 40.779419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356595, 0.088269, 0.930080,
		0.439297, 0.862765, -0.250309,
		-0.824535, 0.497840, 0.268882,
		41.694321, 45.706684, 40.860085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467793, 45.852516, 40.986233>,  <42.271496, 45.358196, 40.671867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467793, 45.852516, 40.986233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093193, 45.855515, 41.126472>,  <41.868435, 45.857315, 41.210617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.093193, 45.855515, 41.126472>,  <42.467793, 45.852516, 40.986233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093193, 45.855515, 41.126472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350674, 0.024865, 0.936167,
		-0.001701, 0.999663, -0.025914,
		-0.936496, 0.007495, 0.350598,
		41.812244, 45.857761, 41.231651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447254, 46.346066, 41.617962>,  <42.467793, 45.852516, 40.986233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447254, 46.346066, 41.617962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124489, 46.110725, 41.638901>,  <41.930828, 45.969521, 41.651466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.124489, 46.110725, 41.638901>,  <42.447254, 46.346066, 41.617962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124489, 46.110725, 41.638901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203050, -0.193069, 0.959945,
		-0.554673, 0.785221, 0.275254,
		-0.806913, -0.588346, 0.052349,
		41.882416, 45.934223, 41.654606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235428, 46.397564, 42.347378>,  <42.447254, 46.346066, 41.617962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235428, 46.397564, 42.347378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010750, 46.082291, 42.246765>,  <41.875942, 45.893127, 42.186398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010750, 46.082291, 42.246765>,  <42.235428, 46.397564, 42.347378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010750, 46.082291, 42.246765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038102, -0.328343, 0.943790,
		-0.826467, 0.520538, 0.214460,
		-0.561695, -0.788182, -0.251531,
		41.842243, 45.845837, 42.171307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575031, 46.364941, 42.796772>,  <42.235428, 46.397564, 42.347378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575031, 46.364941, 42.796772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698540, 46.014221, 42.649323>,  <41.772644, 45.803791, 42.560852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698540, 46.014221, 42.649323>,  <41.575031, 46.364941, 42.796772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698540, 46.014221, 42.649323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172756, -0.329415, 0.928246,
		-0.935316, -0.350297, 0.049758,
		0.308771, -0.876800, -0.368623,
		41.791172, 45.751183, 42.538734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232658, 45.845882, 43.201561>,  <41.575031, 46.364941, 42.796772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232658, 45.845882, 43.201561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469254, 45.581642, 43.016632>,  <41.611210, 45.423096, 42.905674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469254, 45.581642, 43.016632>,  <41.232658, 45.845882, 43.201561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469254, 45.581642, 43.016632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241851, -0.401625, 0.883293,
		-0.769187, -0.634272, -0.077789,
		0.591489, -0.660604, -0.462323,
		41.646702, 45.383461, 42.877934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107594, 45.198177, 43.564560>,  <41.232658, 45.845882, 43.201561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107594, 45.198177, 43.564560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455574, 45.111717, 43.387264>,  <41.664364, 45.059841, 43.280888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455574, 45.111717, 43.387264>,  <41.107594, 45.198177, 43.564560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455574, 45.111717, 43.387264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257377, -0.567667, 0.781992,
		-0.420638, -0.794376, -0.438212,
		0.869954, -0.216150, -0.443236,
		41.716560, 45.046871, 43.254292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306877, 44.457333, 43.603951>,  <41.107594, 45.198177, 43.564560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306877, 44.457333, 43.603951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.636139, 44.679604, 43.557236>,  <41.833694, 44.812965, 43.529205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.636139, 44.679604, 43.557236>,  <41.306877, 44.457333, 43.603951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636139, 44.679604, 43.557236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395888, -0.414197, 0.819581,
		0.407048, -0.720878, -0.560934,
		0.823156, 0.555676, -0.116789,
		41.883087, 44.846306, 43.522198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.873478, 43.971420, 43.678375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039841, 44.326710, 43.756435>,  <42.139660, 44.539883, 43.803272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039841, 44.326710, 43.756435>,  <41.873478, 43.971420, 43.678375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039841, 44.326710, 43.756435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266789, -0.324320, 0.907546,
		0.869392, -0.325395, -0.371855,
		0.415911, 0.888220, 0.195149,
		42.164616, 44.593174, 43.814980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510429, 43.816925, 44.111622>,  <41.873478, 43.971420, 43.678375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510429, 43.816925, 44.111622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420128, 44.198441, 44.190948>,  <42.365948, 44.427349, 44.238544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420128, 44.198441, 44.190948>,  <42.510429, 43.816925, 44.111622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420128, 44.198441, 44.190948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113533, -0.176423, 0.977745,
		0.967546, 0.243246, -0.068458,
		-0.225755, 0.953785, 0.198313,
		42.352402, 44.484577, 44.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041462, 44.069660, 44.473953>,  <42.510429, 43.816925, 44.111622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041462, 44.069660, 44.473953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726776, 44.306263, 44.544601>,  <42.537964, 44.448227, 44.586990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726776, 44.306263, 44.544601>,  <43.041462, 44.069660, 44.473953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726776, 44.306263, 44.544601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290132, 0.101755, 0.951562,
		0.544885, 0.799852, -0.251668,
		-0.786717, 0.591509, 0.176618,
		42.490761, 44.483715, 44.597588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560955, 44.380447, 44.152012>,  <43.041462, 44.069660, 44.473953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560955, 44.380447, 44.152012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957413, 44.339329, 44.118374>,  <44.195286, 44.314659, 44.098190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957413, 44.339329, 44.118374>,  <43.560955, 44.380447, 44.152012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957413, 44.339329, 44.118374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062332, 0.199051, -0.978005,
		0.117273, 0.974583, 0.190881,
		0.991142, -0.102795, -0.084091,
		44.254757, 44.308491, 44.093147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867477, 44.977566, 43.776958>,  <43.560955, 44.380447, 44.152012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867477, 44.977566, 43.776958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147514, 44.693348, 43.748695>,  <44.315536, 44.522816, 43.731739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147514, 44.693348, 43.748695>,  <43.867477, 44.977566, 43.776958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147514, 44.693348, 43.748695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040459, 0.138264, -0.989569,
		0.712903, 0.689933, 0.125546,
		0.700094, -0.710546, -0.070655,
		44.357544, 44.480183, 43.727497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445488, 45.161949, 43.478352>,  <43.867477, 44.977566, 43.776958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445488, 45.161949, 43.478352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463844, 44.772198, 43.390285>,  <44.474857, 44.538345, 43.337448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463844, 44.772198, 43.390285>,  <44.445488, 45.161949, 43.478352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463844, 44.772198, 43.390285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190742, 0.224887, -0.955533,
		0.980567, 0.001860, 0.196177,
		0.045895, -0.974383, -0.220161,
		44.477612, 44.479881, 43.324238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016121, 45.129021, 43.171001>,  <44.445488, 45.161949, 43.478352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016121, 45.129021, 43.171001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851318, 44.776978, 43.076637>,  <44.752438, 44.565750, 43.020020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851318, 44.776978, 43.076637>,  <45.016121, 45.129021, 43.171001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851318, 44.776978, 43.076637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315175, 0.105268, -0.943177,
		0.854935, -0.462949, 0.234018,
		-0.412008, -0.880112, -0.235908,
		44.727715, 44.512943, 43.005863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534691, 44.780560, 42.846756>,  <45.016121, 45.129021, 43.171001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534691, 44.780560, 42.846756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183136, 44.623333, 42.738644>,  <44.972202, 44.528996, 42.673775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183136, 44.623333, 42.738644>,  <45.534691, 44.780560, 42.846756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183136, 44.623333, 42.738644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318447, -0.061596, -0.945938,
		0.355171, -0.917444, 0.179308,
		-0.878889, -0.393069, -0.270280,
		44.919468, 44.505413, 42.657558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677330, 44.285347, 42.433712>,  <45.534691, 44.780560, 42.846756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677330, 44.285347, 42.433712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292374, 44.352184, 42.348030>,  <45.061401, 44.392288, 42.296619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292374, 44.352184, 42.348030>,  <45.677330, 44.285347, 42.433712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292374, 44.352184, 42.348030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169853, -0.245283, -0.954456,
		-0.212024, -0.954943, 0.207676,
		-0.962391, 0.167094, -0.214205,
		45.003658, 44.402313, 42.283768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483936, 43.665924, 42.136414>,  <45.677330, 44.285347, 42.433712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483936, 43.665924, 42.136414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246246, 43.967461, 42.024254>,  <45.103634, 44.148384, 41.956959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246246, 43.967461, 42.024254>,  <45.483936, 43.665924, 42.136414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246246, 43.967461, 42.024254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092409, -0.282323, -0.954858,
		-0.798976, -0.593307, 0.098100,
		-0.594220, 0.753843, -0.280396,
		45.067982, 44.193615, 41.940136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087860, 43.405499, 41.496006>,  <45.483936, 43.665924, 42.136414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087860, 43.405499, 41.496006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045189, 43.803204, 41.499176>,  <45.019585, 44.041828, 41.501080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045189, 43.803204, 41.499176>,  <45.087860, 43.405499, 41.496006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045189, 43.803204, 41.499176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061341, 0.001377, -0.998116,
		-0.992399, -0.106966, 0.060842,
		-0.106681, 0.994262, 0.007928,
		45.013184, 44.101482, 41.501556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539391, 43.596210, 40.960957>,  <45.087860, 43.405499, 41.496006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539391, 43.596210, 40.960957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751831, 43.929543, 41.022270>,  <44.879295, 44.129543, 41.059059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751831, 43.929543, 41.022270>,  <44.539391, 43.596210, 40.960957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751831, 43.929543, 41.022270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053066, 0.213262, -0.975553,
		-0.845646, 0.509981, 0.157485,
		0.531099, 0.833330, 0.153281,
		44.911160, 44.179543, 41.068256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134308, 44.118435, 40.677711>,  <44.539391, 43.596210, 40.960957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134308, 44.118435, 40.677711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493355, 44.291149, 40.713158>,  <44.708782, 44.394775, 40.734425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493355, 44.291149, 40.713158>,  <44.134308, 44.118435, 40.677711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493355, 44.291149, 40.713158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033578, 0.267433, -0.962991,
		-0.439501, 0.861419, 0.254551,
		0.897614, 0.431783, 0.088612,
		44.762638, 44.420685, 40.739742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035336, 44.791374, 40.441795>,  <44.134308, 44.118435, 40.677711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035336, 44.791374, 40.441795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429810, 44.730701, 40.415188>,  <44.666496, 44.694298, 40.399223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429810, 44.730701, 40.415188>,  <44.035336, 44.791374, 40.441795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429810, 44.730701, 40.415188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044443, 0.144571, -0.988496,
		0.159550, 0.977800, 0.135834,
		0.986189, -0.151678, -0.066523,
		44.725666, 44.685200, 40.395229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273060, 45.275898, 40.007298>,  <44.035336, 44.791374, 40.441795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273060, 45.275898, 40.007298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521408, 44.962486, 39.997566>,  <44.670418, 44.774437, 39.991726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521408, 44.962486, 39.997566>,  <44.273060, 45.275898, 40.007298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521408, 44.962486, 39.997566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040499, -0.001066, -0.999179,
		0.782864, 0.621349, -0.032394,
		0.620873, -0.783534, -0.024329,
		44.707668, 44.727425, 39.990269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754723, 45.458679, 39.517101>,  <44.273060, 45.275898, 40.007298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754723, 45.458679, 39.517101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839546, 45.068218, 39.535706>,  <44.890442, 44.833942, 39.546867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839546, 45.068218, 39.535706>,  <44.754723, 45.458679, 39.517101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839546, 45.068218, 39.535706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215069, 0.000193, -0.976599,
		0.953297, 0.217101, 0.209981,
		0.212061, -0.976149, 0.046508,
		44.903164, 44.775375, 39.549660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047150, 45.396908, 38.910202>,  <44.754723, 45.458679, 39.517101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047150, 45.396908, 38.910202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004761, 45.013893, 39.017460>,  <44.979328, 44.784084, 39.081814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004761, 45.013893, 39.017460>,  <45.047150, 45.396908, 38.910202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004761, 45.013893, 39.017460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032706, -0.272871, -0.961495,
		0.993831, -0.093122, 0.060233,
		-0.105973, -0.957533, 0.268142,
		44.972969, 44.726635, 39.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460754, 45.074471, 38.460617>,  <45.047150, 45.396908, 38.910202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460754, 45.074471, 38.460617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185730, 44.816856, 38.594772>,  <45.020718, 44.662289, 38.675266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185730, 44.816856, 38.594772>,  <45.460754, 45.074471, 38.460617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185730, 44.816856, 38.594772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208108, -0.267740, -0.940748,
		0.695670, -0.716615, 0.050058,
		-0.687556, -0.644032, 0.335392,
		44.979462, 44.623646, 38.695389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558464, 44.371937, 38.094296>,  <45.460754, 45.074471, 38.460617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558464, 44.371937, 38.094296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178268, 44.387535, 38.217617>,  <44.950153, 44.396893, 38.291611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178268, 44.387535, 38.217617>,  <45.558464, 44.371937, 38.094296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178268, 44.387535, 38.217617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305004, -0.307197, -0.901445,
		0.059558, -0.950846, 0.303881,
		-0.950487, 0.038997, 0.308308,
		44.893124, 44.399235, 38.310108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274010, 43.830452, 37.673672>,  <45.558464, 44.371937, 38.094296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274010, 43.830452, 37.673672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957443, 44.036625, 37.805122>,  <44.767506, 44.160328, 37.883991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957443, 44.036625, 37.805122>,  <45.274010, 43.830452, 37.673672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957443, 44.036625, 37.805122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433595, -0.094400, -0.896150,
		-0.430882, -0.851715, 0.298199,
		-0.791414, 0.515432, 0.328624,
		44.720020, 44.191254, 37.903709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654922, 43.354111, 37.674133>,  <45.274010, 43.830452, 37.673672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654922, 43.354111, 37.674133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539177, 43.736996, 37.675186>,  <44.469730, 43.966728, 37.675819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539177, 43.736996, 37.675186>,  <44.654922, 43.354111, 37.674133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539177, 43.736996, 37.675186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395607, -0.117082, -0.910926,
		-0.871645, -0.264629, 0.412561,
		-0.289361, 0.957216, 0.002635,
		44.452370, 44.024162, 37.675976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052246, 43.326752, 37.371323>,  <44.654922, 43.354111, 37.674133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052246, 43.326752, 37.371323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145760, 43.712685, 37.323242>,  <44.201866, 43.944244, 37.294395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145760, 43.712685, 37.323242>,  <44.052246, 43.326752, 37.371323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145760, 43.712685, 37.323242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263126, -0.056230, -0.963121,
		-0.936008, 0.256789, 0.240727,
		0.233783, 0.964831, -0.120199,
		44.215893, 44.002132, 37.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471573, 43.596996, 37.085423>,  <44.052246, 43.326752, 37.371323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471573, 43.596996, 37.085423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766151, 43.856564, 37.008945>,  <43.942898, 44.012302, 36.963058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766151, 43.856564, 37.008945>,  <43.471573, 43.596996, 37.085423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766151, 43.856564, 37.008945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245737, -0.006705, -0.969313,
		-0.630283, 0.760832, 0.154524,
		0.736449, 0.648914, -0.191191,
		43.987087, 44.051239, 36.951588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097668, 44.184822, 36.750175>,  <43.471573, 43.596996, 37.085423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097668, 44.184822, 36.750175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484962, 44.232391, 36.662205>,  <43.717339, 44.260933, 36.609425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484962, 44.232391, 36.662205>,  <43.097668, 44.184822, 36.750175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484962, 44.232391, 36.662205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208570, -0.100853, -0.972794,
		-0.137866, 0.987769, -0.072846,
		0.968242, 0.118921, -0.219923,
		43.775436, 44.268066, 36.596230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223236, 44.869923, 36.317894>,  <43.097668, 44.184822, 36.750175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223236, 44.869923, 36.317894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513306, 44.604237, 36.245296>,  <43.687347, 44.444824, 36.201736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513306, 44.604237, 36.245296>,  <43.223236, 44.869923, 36.317894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513306, 44.604237, 36.245296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144249, 0.111192, -0.983274,
		0.673286, 0.739227, -0.015179,
		0.725175, -0.664214, -0.181497,
		43.730858, 44.404972, 36.190845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429779, 45.119419, 35.748905>,  <43.223236, 44.869923, 36.317894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429779, 45.119419, 35.748905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582390, 44.749676, 35.749687>,  <43.673958, 44.527832, 35.750156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582390, 44.749676, 35.749687>,  <43.429779, 45.119419, 35.748905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582390, 44.749676, 35.749687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085293, -0.037308, -0.995657,
		0.920414, 0.379704, -0.093075,
		0.381527, -0.924356, 0.001952,
		43.696850, 44.472370, 35.750275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965096, 45.082355, 35.259426>,  <43.429779, 45.119419, 35.748905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965096, 45.082355, 35.259426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865021, 44.697227, 35.300175>,  <43.804974, 44.466148, 35.324623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865021, 44.697227, 35.300175>,  <43.965096, 45.082355, 35.259426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865021, 44.697227, 35.300175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032068, -0.113400, -0.993032,
		0.967665, -0.245181, 0.059248,
		-0.250192, -0.962822, 0.101870,
		43.789963, 44.408382, 35.330734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361465, 44.836678, 34.762665>,  <43.965096, 45.082355, 35.259426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361465, 44.836678, 34.762665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109863, 44.537571, 34.847706>,  <43.958900, 44.358109, 34.898731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109863, 44.537571, 34.847706>,  <44.361465, 44.836678, 34.762665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109863, 44.537571, 34.847706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006836, -0.268148, -0.963353,
		0.777371, -0.607407, 0.163555,
		-0.629005, -0.747766, 0.212603,
		43.921162, 44.313240, 34.911488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665749, 44.218468, 34.335121>,  <44.361465, 44.836678, 34.762665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665749, 44.218468, 34.335121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280426, 44.152470, 34.419796>,  <44.049232, 44.112869, 34.470600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280426, 44.152470, 34.419796>,  <44.665749, 44.218468, 34.335121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280426, 44.152470, 34.419796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187345, -0.151392, -0.970558,
		0.192188, -0.974605, 0.114925,
		-0.963310, -0.164999, 0.211683,
		43.991432, 44.102970, 34.483299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452778, 43.615475, 33.923931>,  <44.665749, 44.218468, 34.335121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452778, 43.615475, 33.923931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107010, 43.789391, 34.024906>,  <43.899548, 43.893742, 34.085491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107010, 43.789391, 34.024906>,  <44.452778, 43.615475, 33.923931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107010, 43.789391, 34.024906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363541, -0.193717, -0.911214,
		-0.347288, -0.879448, 0.325519,
		-0.864424, 0.434793, 0.252440,
		43.847683, 43.919830, 34.100639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941628, 43.177265, 33.610355>,  <44.452778, 43.615475, 33.923931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941628, 43.177265, 33.610355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753601, 43.521824, 33.687332>,  <43.640785, 43.728558, 33.733517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753601, 43.521824, 33.687332>,  <43.941628, 43.177265, 33.610355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753601, 43.521824, 33.687332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620277, -0.167282, -0.766338,
		-0.627928, -0.479597, 0.612938,
		-0.470067, 0.861396, 0.192442,
		43.612579, 43.780243, 33.745064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211811, 42.926971, 33.688351>,  <43.941628, 43.177265, 33.610355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211811, 42.926971, 33.688351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236504, 43.310226, 33.576523>,  <43.251320, 43.540180, 33.509426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236504, 43.310226, 33.576523>,  <43.211811, 42.926971, 33.688351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236504, 43.310226, 33.576523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520048, -0.208201, -0.828373,
		-0.851903, 0.196531, 0.485424,
		0.061735, 0.958138, -0.279573,
		43.255024, 43.597668, 33.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.696316, 43.161411, 45.308666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.774506, 43.552216, 45.274632>,  <44.821419, 43.786697, 45.254211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.774506, 43.552216, 45.274632>,  <44.696316, 43.161411, 45.308666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774506, 43.552216, 45.274632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530501, 0.032372, -0.847066,
		-0.824839, 0.210715, 0.524633,
		0.195472, 0.977011, -0.085083,
		44.833149, 43.845318, 45.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118095, 43.441730, 45.031315>,  <44.696316, 43.161411, 45.308666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118095, 43.441730, 45.031315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.389221, 43.724007, 44.948792>,  <44.551895, 43.893372, 44.899277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.389221, 43.724007, 44.948792>,  <44.118095, 43.441730, 45.031315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389221, 43.724007, 44.948792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384530, 0.101095, -0.917560,
		-0.626661, 0.701266, 0.339884,
		0.677814, 0.705695, -0.206306,
		44.592567, 43.935715, 44.886898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724842, 43.998077, 44.810665>,  <44.118095, 43.441730, 45.031315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724842, 43.998077, 44.810665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.099876, 44.063435, 44.687870>,  <44.324898, 44.102650, 44.614193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.099876, 44.063435, 44.687870>,  <43.724842, 43.998077, 44.810665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099876, 44.063435, 44.687870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338368, 0.224798, -0.913769,
		-0.080295, 0.960608, 0.266054,
		0.937582, 0.163395, -0.306989,
		44.381149, 44.112453, 44.595772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372574, 44.661964, 44.820793>,  <43.724842, 43.998077, 44.810665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372574, 44.661964, 44.820793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.985802, 44.673443, 44.922165>,  <42.753738, 44.680328, 44.982986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.985802, 44.673443, 44.922165>,  <43.372574, 44.661964, 44.820793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985802, 44.673443, 44.922165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254442, 0.176923, 0.950767,
		-0.017554, 0.983806, -0.178373,
		-0.966929, 0.028696, 0.253427,
		42.695724, 44.682053, 44.998192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271423, 45.165764, 45.394192>,  <43.372574, 44.661964, 44.820793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271423, 45.165764, 45.394192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.936165, 44.949032, 45.419258>,  <42.735008, 44.818993, 45.434299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.936165, 44.949032, 45.419258>,  <43.271423, 45.165764, 45.394192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936165, 44.949032, 45.419258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095073, -0.031994, 0.994956,
		-0.537093, 0.839878, 0.078329,
		-0.838148, -0.541831, 0.062666,
		42.684719, 44.786484, 45.438057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898838, 45.487408, 45.961567>,  <43.271423, 45.165764, 45.394192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898838, 45.487408, 45.961567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.744209, 45.119953, 45.928886>,  <42.651432, 44.899483, 45.909279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.744209, 45.119953, 45.928886>,  <42.898838, 45.487408, 45.961567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744209, 45.119953, 45.928886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039843, -0.105142, 0.993659,
		-0.921399, 0.380865, 0.077246,
		-0.386571, -0.918633, -0.081703,
		42.628239, 44.844364, 45.904377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301567, 45.451023, 46.352676>,  <42.898838, 45.487408, 45.961567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301567, 45.451023, 46.352676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.369637, 45.059608, 46.306190>,  <42.410477, 44.824760, 46.278301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.369637, 45.059608, 46.306190>,  <42.301567, 45.451023, 46.352676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369637, 45.059608, 46.306190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118880, -0.137455, 0.983348,
		-0.978218, -0.153522, -0.139720,
		0.170171, -0.978539, -0.116211,
		42.420689, 44.766048, 46.271328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756447, 45.092056, 46.640434>,  <42.301567, 45.451023, 46.352676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756447, 45.092056, 46.640434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.047943, 44.818531, 46.625858>,  <42.222843, 44.654415, 46.617111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.047943, 44.818531, 46.625858>,  <41.756447, 45.092056, 46.640434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047943, 44.818531, 46.625858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080684, -0.138584, 0.987059,
		-0.680016, -0.716373, -0.156165,
		0.728744, -0.683816, -0.036439,
		42.266567, 44.613388, 46.614925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595490, 44.658436, 47.039722>,  <41.756447, 45.092056, 46.640434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595490, 44.658436, 47.039722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983498, 44.563099, 47.020706>,  <42.216301, 44.505898, 47.009296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983498, 44.563099, 47.020706>,  <41.595490, 44.658436, 47.039722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983498, 44.563099, 47.020706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036072, -0.334623, 0.941661,
		-0.240339, -0.911714, -0.333188,
		0.970018, -0.238337, -0.047535,
		42.274502, 44.491596, 47.006447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707745, 44.035332, 47.347450>,  <41.595490, 44.658436, 47.039722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707745, 44.035332, 47.347450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.077065, 44.185013, 47.382046>,  <42.298656, 44.274822, 47.402805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.077065, 44.185013, 47.382046>,  <41.707745, 44.035332, 47.347450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077065, 44.185013, 47.382046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021680, -0.275620, 0.961022,
		0.383457, -0.885441, -0.262594,
		0.923304, 0.374204, 0.086492,
		42.354057, 44.297276, 47.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003265, 43.643925, 47.788906>,  <41.707745, 44.035332, 47.347450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003265, 43.643925, 47.788906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.250526, 43.958241, 47.797066>,  <42.398884, 44.146832, 47.801964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.250526, 43.958241, 47.797066>,  <42.003265, 43.643925, 47.788906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250526, 43.958241, 47.797066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098748, -0.103378, 0.989728,
		0.779831, -0.609788, -0.141499,
		0.618153, 0.785793, 0.020402,
		42.435974, 44.193977, 47.803185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593113, 43.477837, 48.231148>,  <42.003265, 43.643925, 47.788906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593113, 43.477837, 48.231148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521393, 43.871346, 48.228344>,  <42.478359, 44.107449, 48.226662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521393, 43.871346, 48.228344>,  <42.593113, 43.477837, 48.231148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521393, 43.871346, 48.228344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047464, 0.015771, 0.998749,
		0.982648, 0.178745, -0.049522,
		-0.179303, 0.983769, -0.007014,
		42.467602, 44.166477, 48.226238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123657, 43.841976, 48.764385>,  <42.593113, 43.477837, 48.231148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123657, 43.841976, 48.764385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.837654, 44.112854, 48.694912>,  <42.666050, 44.275383, 48.653229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.837654, 44.112854, 48.694912>,  <43.123657, 43.841976, 48.764385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837654, 44.112854, 48.694912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172428, 0.069932, 0.982536,
		0.677517, 0.732471, 0.066766,
		-0.715010, 0.677198, -0.173679,
		42.623150, 44.316013, 48.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319252, 44.300724, 49.296650>,  <43.123657, 43.841976, 48.764385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319252, 44.300724, 49.296650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942123, 44.385754, 49.193966>,  <42.715847, 44.436771, 49.132355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942123, 44.385754, 49.193966>,  <43.319252, 44.300724, 49.296650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942123, 44.385754, 49.193966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230267, 0.141405, 0.962799,
		0.240969, 0.966859, -0.084370,
		-0.942821, 0.212577, -0.256710,
		42.659279, 44.449528, 49.116951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122402, 44.609806, 49.842442>,  <43.319252, 44.300724, 49.296650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122402, 44.609806, 49.842442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.767677, 44.611500, 49.657597>,  <42.554844, 44.612514, 49.546688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.767677, 44.611500, 49.657597>,  <43.122402, 44.609806, 49.842442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767677, 44.611500, 49.657597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445922, 0.254709, 0.858066,
		0.121334, 0.967008, -0.223993,
		-0.886810, 0.004230, -0.462116,
		42.501633, 44.612770, 49.518963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784309, 45.240383, 50.034531>,  <43.122402, 44.609806, 49.842442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784309, 45.240383, 50.034531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.528847, 44.940269, 49.966187>,  <42.375568, 44.760201, 49.925179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.528847, 44.940269, 49.966187>,  <42.784309, 45.240383, 50.034531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528847, 44.940269, 49.966187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448584, 0.182605, 0.874887,
		-0.625214, 0.635397, -0.453187,
		-0.638655, -0.750284, -0.170861,
		42.337250, 44.715183, 49.914928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112865, 45.456577, 50.044987>,  <42.784309, 45.240383, 50.034531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112865, 45.456577, 50.044987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070030, 45.066685, 50.123398>,  <42.044327, 44.832748, 50.170444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070030, 45.066685, 50.123398>,  <42.112865, 45.456577, 50.044987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070030, 45.066685, 50.123398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536454, 0.222652, 0.814029,
		-0.837107, -0.017986, -0.546743,
		-0.107092, -0.974732, 0.196032,
		42.037903, 44.774265, 50.182209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430096, 45.427425, 50.110500>,  <42.112865, 45.456577, 50.044987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430096, 45.427425, 50.110500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.565147, 45.089336, 50.276203>,  <41.646179, 44.886482, 50.375626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.565147, 45.089336, 50.276203>,  <41.430096, 45.427425, 50.110500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565147, 45.089336, 50.276203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415895, 0.260852, 0.871199,
		-0.844416, -0.466427, -0.263453,
		0.337628, -0.845223, 0.414253,
		41.666435, 44.835770, 50.400478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833233, 45.127937, 50.405636>,  <41.430096, 45.427425, 50.110500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833233, 45.127937, 50.405636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.156219, 44.973278, 50.583855>,  <41.350010, 44.880482, 50.690784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.156219, 44.973278, 50.583855>,  <40.833233, 45.127937, 50.405636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156219, 44.973278, 50.583855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380003, 0.236781, 0.894166,
		-0.451223, -0.891313, 0.044264,
		0.807462, -0.386648, 0.445543,
		41.398457, 44.857285, 50.717518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556007, 44.712223, 50.943893>,  <40.833233, 45.127937, 50.405636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556007, 44.712223, 50.943893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.934608, 44.796028, 51.042068>,  <41.161770, 44.846313, 51.100975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.934608, 44.796028, 51.042068>,  <40.556007, 44.712223, 50.943893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934608, 44.796028, 51.042068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291416, 0.228238, 0.928970,
		0.138611, -0.950796, 0.277082,
		0.946501, 0.209512, 0.245440,
		41.218559, 44.858883, 51.115700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839275, 44.207043, 51.406223>,  <40.556007, 44.712223, 50.943893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839275, 44.207043, 51.406223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.074196, 44.524780, 51.468327>,  <41.215149, 44.715424, 51.505589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.074196, 44.524780, 51.468327>,  <40.839275, 44.207043, 51.406223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074196, 44.524780, 51.468327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280643, 0.019933, 0.959605,
		0.759158, -0.607147, 0.234633,
		0.587298, 0.794340, 0.155260,
		41.250385, 44.763081, 51.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127705, 44.013290, 51.977791>,  <40.839275, 44.207043, 51.406223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127705, 44.013290, 51.977791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186424, 44.406788, 51.936398>,  <41.221657, 44.642887, 51.911560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186424, 44.406788, 51.936398>,  <41.127705, 44.013290, 51.977791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186424, 44.406788, 51.936398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387903, 0.153486, 0.908831,
		0.909935, -0.093271, 0.404126,
		0.146795, 0.983739, -0.103482,
		41.230461, 44.701908, 51.905354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268982, 44.142578, 52.682590>,  <41.127705, 44.013290, 51.977791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268982, 44.142578, 52.682590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.221939, 44.508930, 52.529053>,  <41.193714, 44.728741, 52.436932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.221939, 44.508930, 52.529053>,  <41.268982, 44.142578, 52.682590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221939, 44.508930, 52.529053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525237, 0.270665, 0.806763,
		0.842790, 0.296488, 0.449222,
		-0.117607, 0.915880, -0.383840,
		41.186657, 44.783695, 52.413902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460339, 44.626461, 53.252384>,  <41.268982, 44.142578, 52.682590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460339, 44.626461, 53.252384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.257225, 44.856876, 52.996155>,  <41.135357, 44.995125, 52.842419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.257225, 44.856876, 52.996155>,  <41.460339, 44.626461, 53.252384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257225, 44.856876, 52.996155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415121, 0.487939, 0.767848,
		0.754868, 0.655819, -0.008646,
		-0.507788, 0.576035, -0.640574,
		41.104889, 45.029686, 52.803982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340954, 45.213470, 53.585617>,  <41.460339, 44.626461, 53.252384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340954, 45.213470, 53.585617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078125, 45.277824, 53.291031>,  <40.920429, 45.316437, 53.114281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078125, 45.277824, 53.291031>,  <41.340954, 45.213470, 53.585617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078125, 45.277824, 53.291031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570588, 0.532308, 0.625361,
		0.492636, 0.831122, -0.257964,
		-0.657068, 0.160884, -0.736463,
		40.881004, 45.326088, 53.070091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221561, 45.901371, 53.579224>,  <41.340954, 45.213470, 53.585617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221561, 45.901371, 53.579224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.912720, 45.702366, 53.421066>,  <40.727413, 45.582962, 53.326172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.912720, 45.702366, 53.421066>,  <41.221561, 45.901371, 53.579224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912720, 45.702366, 53.421066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602058, 0.373503, 0.705707,
		-0.203421, 0.782927, -0.587916,
		-0.772105, -0.497515, -0.395389,
		40.681087, 45.553112, 53.302448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771587, 46.464951, 53.522659>,  <41.221561, 45.901371, 53.579224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771587, 46.464951, 53.522659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.566055, 46.122185, 53.506332>,  <40.442734, 45.916523, 53.496536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.566055, 46.122185, 53.506332>,  <40.771587, 46.464951, 53.522659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566055, 46.122185, 53.506332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663589, 0.366856, 0.651971,
		-0.543713, 0.362089, -0.757145,
		-0.513834, -0.856918, -0.040814,
		40.411903, 45.865108, 53.494087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119957, 46.650333, 53.666245>,  <40.771587, 46.464951, 53.522659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119957, 46.650333, 53.666245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084137, 46.254875, 53.714516>,  <40.062645, 46.017601, 53.743477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.084137, 46.254875, 53.714516>,  <40.119957, 46.650333, 53.666245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084137, 46.254875, 53.714516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646292, 0.149872, 0.748228,
		-0.757817, -0.010989, -0.652374,
		-0.089550, -0.988644, 0.120678,
		40.057270, 45.958282, 53.750721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417881, 46.549519, 53.746567>,  <40.119957, 46.650333, 53.666245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417881, 46.549519, 53.746567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586227, 46.226524, 53.911896>,  <39.687237, 46.032726, 54.011093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586227, 46.226524, 53.911896>,  <39.417881, 46.549519, 53.746567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586227, 46.226524, 53.911896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553056, 0.132753, 0.822500,
		-0.719027, -0.574754, -0.390715,
		0.420866, -0.807487, 0.413324,
		39.712486, 45.984280, 54.035892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890682, 46.293518, 53.999783>,  <39.417881, 46.549519, 53.746567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890682, 46.293518, 53.999783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184113, 46.108536, 54.198986>,  <39.360168, 45.997547, 54.318508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184113, 46.108536, 54.198986>,  <38.890682, 46.293518, 53.999783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184113, 46.108536, 54.198986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525196, 0.079316, 0.847277,
		-0.431325, -0.883089, -0.184694,
		0.733572, -0.462453, 0.498006,
		39.404182, 45.969799, 54.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590416, 45.790001, 54.259197>,  <38.890682, 46.293518, 53.999783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590416, 45.790001, 54.259197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903343, 45.814728, 54.507118>,  <39.091099, 45.829563, 54.655869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903343, 45.814728, 54.507118>,  <38.590416, 45.790001, 54.259197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903343, 45.814728, 54.507118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619931, 0.173937, 0.765135,
		-0.060506, -0.982814, 0.174398,
		0.782320, 0.061820, 0.619801,
		39.138039, 45.833275, 54.693058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532330, 45.227478, 54.755730>,  <38.590416, 45.790001, 54.259197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532330, 45.227478, 54.755730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737450, 45.530739, 54.916843>,  <38.860523, 45.712696, 55.013512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737450, 45.530739, 54.916843>,  <38.532330, 45.227478, 54.755730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737450, 45.530739, 54.916843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660115, 0.048243, 0.749614,
		0.548893, -0.650285, 0.525210,
		0.512801, 0.758157, 0.402783,
		38.891289, 45.758186, 55.037678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494064, 45.169056, 55.503815>,  <38.532330, 45.227478, 54.755730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494064, 45.169056, 55.503815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603683, 45.550957, 55.457615>,  <38.669456, 45.780098, 55.429897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603683, 45.550957, 55.457615>,  <38.494064, 45.169056, 55.503815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603683, 45.550957, 55.457615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626911, 0.268421, 0.731391,
		0.729301, -0.128031, 0.672107,
		0.274049, 0.954755, -0.115496,
		38.685898, 45.837383, 55.422966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830173, 45.407051, 56.098984>,  <38.494064, 45.169056, 55.503815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830173, 45.407051, 56.098984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729317, 45.754684, 55.928749>,  <38.668804, 45.963264, 55.826611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729317, 45.754684, 55.928749>,  <38.830173, 45.407051, 56.098984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729317, 45.754684, 55.928749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476203, 0.271421, 0.836398,
		0.842411, 0.413554, 0.345423,
		-0.252140, 0.869082, -0.425584,
		38.653675, 46.015408, 55.801075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083981, 45.783947, 56.532074>,  <38.830173, 45.407051, 56.098984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083981, 45.783947, 56.532074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796860, 45.985260, 56.339626>,  <38.624588, 46.106049, 56.224159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796860, 45.985260, 56.339626>,  <39.083981, 45.783947, 56.532074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796860, 45.985260, 56.339626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398463, 0.269717, 0.876630,
		0.570957, 0.820951, 0.006936,
		-0.717799, 0.503281, -0.481115,
		38.581520, 46.136246, 56.195293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
