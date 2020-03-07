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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.229015, 53.491005, 49.450577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131104, 53.103176, 49.449287>,  <36.072357, 52.870480, 49.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131104, 53.103176, 49.449287>,  <36.229015, 53.491005, 49.450577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131104, 53.103176, 49.449287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733301, -0.182949, -0.654828,
		0.634315, -0.162650, 0.755771,
		-0.244776, -0.969575, -0.003224,
		36.057671, 52.812305, 49.448318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795811, 53.123482, 49.580006>,  <36.229015, 53.491005, 49.450577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795811, 53.123482, 49.580006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526955, 52.916145, 49.368515>,  <36.365643, 52.791744, 49.241619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526955, 52.916145, 49.368515>,  <36.795811, 53.123482, 49.580006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526955, 52.916145, 49.368515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664412, -0.107074, -0.739657,
		0.326779, -0.848446, 0.416358,
		-0.672140, -0.518338, -0.528728,
		36.325314, 52.760643, 49.209896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010502, 53.755291, 49.376808>,  <36.795811, 53.123482, 49.580006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010502, 53.755291, 49.376808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262253, 53.507622, 49.188972>,  <37.413303, 53.359020, 49.076271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262253, 53.507622, 49.188972>,  <37.010502, 53.755291, 49.376808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262253, 53.507622, 49.188972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772916, 0.436129, 0.460860,
		-0.080552, -0.653004, 0.753059,
		0.629374, -0.619175, -0.469586,
		37.451065, 53.321869, 49.048096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908649, 53.943478, 50.116821>,  <37.010502, 53.755291, 49.376808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908649, 53.943478, 50.116821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660652, 54.226181, 50.253117>,  <36.511856, 54.395805, 50.334892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660652, 54.226181, 50.253117>,  <36.908649, 53.943478, 50.116821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660652, 54.226181, 50.253117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400901, -0.658660, 0.636745,
		0.674457, 0.258173, 0.691704,
		-0.619989, 0.706762, 0.340736,
		36.474655, 54.438210, 50.355339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433727, 54.056229, 50.708763>,  <36.908649, 53.943478, 50.116821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433727, 54.056229, 50.708763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562862, 54.126854, 51.080700>,  <36.640343, 54.169231, 51.303860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562862, 54.126854, 51.080700>,  <36.433727, 54.056229, 50.708763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562862, 54.126854, 51.080700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539968, 0.772509, -0.334164,
		-0.777312, 0.609963, 0.154052,
		0.322834, 0.176566, 0.929840,
		36.659714, 54.179825, 51.359653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311092, 54.746983, 50.943741>,  <36.433727, 54.056229, 50.708763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311092, 54.746983, 50.943741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633778, 54.592388, 51.122559>,  <36.827389, 54.499634, 51.229851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633778, 54.592388, 51.122559>,  <36.311092, 54.746983, 50.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633778, 54.592388, 51.122559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567458, 0.717790, -0.403447,
		-0.164960, 0.579145, 0.798360,
		0.806709, -0.386483, 0.447047,
		36.875790, 54.476444, 51.256672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698669, 55.353065, 51.112671>,  <36.311092, 54.746983, 50.943741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698669, 55.353065, 51.112671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958939, 55.049847, 51.130516>,  <37.115101, 54.867916, 51.141224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958939, 55.049847, 51.130516>,  <36.698669, 55.353065, 51.112671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958939, 55.049847, 51.130516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718782, 0.595894, -0.358137,
		0.244901, 0.265095, 0.932603,
		0.650673, -0.758047, 0.044610,
		37.154140, 54.822433, 51.143898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303440, 55.369671, 51.609962>,  <36.698669, 55.353065, 51.112671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303440, 55.369671, 51.609962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392296, 55.152512, 51.286011>,  <37.445610, 55.022217, 51.091640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392296, 55.152512, 51.286011>,  <37.303440, 55.369671, 51.609962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392296, 55.152512, 51.286011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688881, 0.675216, -0.263680,
		0.689999, -0.499340, 0.523986,
		0.222137, -0.542903, -0.809884,
		37.458939, 54.989639, 51.043045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982582, 55.092289, 51.559994>,  <37.303440, 55.369671, 51.609962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982582, 55.092289, 51.559994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853710, 55.170689, 51.189526>,  <37.776386, 55.217728, 50.967247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853710, 55.170689, 51.189526>,  <37.982582, 55.092289, 51.559994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853710, 55.170689, 51.189526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781007, 0.607921, -0.143039,
		0.535000, -0.769427, -0.348937,
		-0.322184, 0.195997, -0.926166,
		37.757053, 55.229488, 50.911674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497829, 54.796921, 51.047710>,  <37.982582, 55.092289, 51.559994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497829, 54.796921, 51.047710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311638, 55.144356, 50.979740>,  <38.199921, 55.352818, 50.938957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311638, 55.144356, 50.979740>,  <38.497829, 54.796921, 51.047710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311638, 55.144356, 50.979740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884522, 0.463227, -0.055158,
		0.030806, -0.175981, -0.983912,
		-0.465481, 0.868592, -0.169929,
		38.171993, 55.404934, 50.928761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362724, 54.119938, 50.901760>,  <38.497829, 54.796921, 51.047710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362724, 54.119938, 50.901760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081192, 54.390835, 50.816002>,  <37.912273, 54.553375, 50.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081192, 54.390835, 50.816002>,  <38.362724, 54.119938, 50.901760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081192, 54.390835, 50.816002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152199, -0.438567, -0.885717,
		-0.693875, -0.590761, 0.411751,
		-0.703827, 0.677244, -0.214397,
		37.870045, 54.594009, 50.751682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152042, 53.990795, 50.955021>,  <38.362724, 54.119938, 50.901760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152042, 53.990795, 50.955021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499195, 54.165676, 51.049377>,  <39.707485, 54.270603, 51.105991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499195, 54.165676, 51.049377>,  <39.152042, 53.990795, 50.955021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499195, 54.165676, 51.049377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213781, -0.757317, 0.617065,
		0.448427, -0.485107, -0.750723,
		0.867877, 0.437198, 0.235895,
		39.759560, 54.296837, 51.120144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759521, 53.510517, 50.878090>,  <39.152042, 53.990795, 50.955021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759521, 53.510517, 50.878090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796448, 53.797939, 51.153816>,  <39.818604, 53.970390, 51.319252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796448, 53.797939, 51.153816>,  <39.759521, 53.510517, 50.878090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796448, 53.797939, 51.153816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175328, -0.693189, 0.699106,
		0.980173, 0.056322, -0.189971,
		0.092311, 0.718552, 0.689320,
		39.824142, 54.013504, 51.360611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393402, 53.407917, 51.146461>,  <39.759521, 53.510517, 50.878090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393402, 53.407917, 51.146461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121624, 53.565483, 51.394066>,  <39.958557, 53.660023, 51.542629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121624, 53.565483, 51.394066>,  <40.393402, 53.407917, 51.146461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121624, 53.565483, 51.394066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272291, -0.648043, 0.711265,
		0.681329, 0.651819, 0.333051,
		-0.679447, 0.393918, 0.619015,
		39.917789, 53.683659, 51.579769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755619, 53.795574, 51.570717>,  <40.393402, 53.407917, 51.146461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755619, 53.795574, 51.570717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472130, 53.528885, 51.662979>,  <40.302036, 53.368874, 51.718338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472130, 53.528885, 51.662979>,  <40.755619, 53.795574, 51.570717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472130, 53.528885, 51.662979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662649, -0.516901, 0.541950,
		-0.242103, 0.536934, 0.808139,
		-0.708719, -0.666720, 0.230655,
		40.259514, 53.328869, 51.732174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446125, 53.945580, 51.508770>,  <40.755619, 53.795574, 51.570717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446125, 53.945580, 51.508770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661976, 53.824001, 51.822823>,  <41.791485, 53.751053, 52.011253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661976, 53.824001, 51.822823>,  <41.446125, 53.945580, 51.508770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661976, 53.824001, 51.822823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648248, 0.745043, -0.157118,
		-0.537198, 0.593741, 0.599074,
		0.539623, -0.303945, 0.785127,
		41.823864, 53.732819, 52.058361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568188, 54.519890, 51.911842>,  <41.446125, 53.945580, 51.508770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568188, 54.519890, 51.911842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847198, 54.247402, 52.000736>,  <42.014606, 54.083908, 52.054073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847198, 54.247402, 52.000736>,  <41.568188, 54.519890, 51.911842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847198, 54.247402, 52.000736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700199, 0.713886, -0.009418,
		-0.152237, 0.162181, 0.974947,
		0.697528, -0.681222, 0.222239,
		42.056458, 54.043034, 52.067410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939827, 54.711250, 52.562862>,  <41.568188, 54.519890, 51.911842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939827, 54.711250, 52.562862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137024, 54.515896, 52.274849>,  <42.255341, 54.398685, 52.102043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137024, 54.515896, 52.274849>,  <41.939827, 54.711250, 52.562862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137024, 54.515896, 52.274849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563928, 0.809576, -0.163009,
		0.662530, -0.325684, 0.674525,
		0.492990, -0.488382, -0.720031,
		42.284920, 54.369381, 52.058838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662769, 54.778072, 52.793465>,  <41.939827, 54.711250, 52.562862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662769, 54.778072, 52.793465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647995, 54.712753, 52.399113>,  <42.639130, 54.673561, 52.162502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647995, 54.712753, 52.399113>,  <42.662769, 54.778072, 52.793465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647995, 54.712753, 52.399113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750203, 0.647214, -0.135310,
		0.660175, -0.744612, 0.098605,
		-0.036935, -0.163302, -0.985884,
		42.636913, 54.663761, 52.103348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309792, 54.690781, 52.688446>,  <42.662769, 54.778072, 52.793465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309792, 54.690781, 52.688446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152637, 54.843082, 52.353622>,  <43.058346, 54.934464, 52.152729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152637, 54.843082, 52.353622>,  <43.309792, 54.690781, 52.688446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152637, 54.843082, 52.353622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761817, 0.644588, -0.064357,
		0.515054, -0.662970, -0.543315,
		-0.392881, 0.380759, -0.837059,
		43.034775, 54.957310, 52.102505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817451, 54.556435, 52.089371>,  <43.309792, 54.690781, 52.688446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817451, 54.556435, 52.089371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622597, 54.905365, 52.106064>,  <43.505684, 55.114723, 52.116081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622597, 54.905365, 52.106064>,  <43.817451, 54.556435, 52.089371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622597, 54.905365, 52.106064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868733, 0.488914, -0.079160,
		-0.089458, -0.002305, -0.995988,
		-0.487135, 0.872329, 0.041735,
		43.476456, 55.167065, 52.118584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959251, 55.089169, 51.488403>,  <43.817451, 54.556435, 52.089371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959251, 55.089169, 51.488403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838341, 55.293678, 51.810204>,  <43.765793, 55.416386, 52.003284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838341, 55.293678, 51.810204>,  <43.959251, 55.089169, 51.488403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838341, 55.293678, 51.810204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839138, 0.543099, -0.029855,
		-0.452189, 0.666066, -0.593196,
		-0.302279, 0.511273, 0.804504,
		43.747658, 55.447060, 52.051556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508293, 54.726341, 51.151794>,  <43.959251, 55.089169, 51.488403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508293, 54.726341, 51.151794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802292, 54.574066, 50.927345>,  <44.978691, 54.482700, 50.792675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802292, 54.574066, 50.927345>,  <44.508293, 54.726341, 51.151794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802292, 54.574066, 50.927345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469065, -0.312127, 0.826169,
		-0.489653, -0.870433, -0.050845,
		0.734995, -0.380687, -0.561123,
		45.022789, 54.459862, 50.759007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792511, 54.143353, 51.491417>,  <44.508293, 54.726341, 51.151794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792511, 54.143353, 51.491417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070293, 54.293056, 51.245598>,  <45.236961, 54.382881, 51.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070293, 54.293056, 51.245598>,  <44.792511, 54.143353, 51.491417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070293, 54.293056, 51.245598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696631, -0.135917, 0.704438,
		0.180119, -0.917307, -0.355112,
		0.694451, 0.374265, -0.614543,
		45.278629, 54.405334, 51.061234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354893, 53.706448, 51.659016>,  <44.792511, 54.143353, 51.491417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354893, 53.706448, 51.659016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488338, 54.051189, 51.506226>,  <45.568405, 54.258034, 51.414551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488338, 54.051189, 51.506226>,  <45.354893, 53.706448, 51.659016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488338, 54.051189, 51.506226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709683, 0.037094, 0.703544,
		0.620523, -0.505793, -0.599270,
		0.333618, 0.861857, -0.381971,
		45.588425, 54.309746, 51.391636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979092, 53.519836, 51.606270>,  <45.354893, 53.706448, 51.659016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979092, 53.519836, 51.606270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942486, 53.913219, 51.668797>,  <45.920525, 54.149250, 51.706314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942486, 53.913219, 51.668797>,  <45.979092, 53.519836, 51.606270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942486, 53.913219, 51.668797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713942, -0.044636, 0.698781,
		0.694199, 0.175546, -0.698048,
		-0.091510, 0.983459, 0.156316,
		45.915031, 54.208256, 51.715691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631702, 53.896778, 51.338795>,  <45.979092, 53.519836, 51.606270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631702, 53.896778, 51.338795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411659, 54.016071, 51.650803>,  <46.279633, 54.087646, 51.838009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411659, 54.016071, 51.650803>,  <46.631702, 53.896778, 51.338795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411659, 54.016071, 51.650803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782466, -0.142262, 0.606224,
		0.291765, 0.943831, -0.155099,
		-0.550109, 0.298235, 0.780023,
		46.246628, 54.105541, 51.884811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068256, 54.351254, 51.696915>,  <46.631702, 53.896778, 51.338795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068256, 54.351254, 51.696915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818062, 54.146149, 51.932148>,  <46.667946, 54.023087, 52.073288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818062, 54.146149, 51.932148>,  <47.068256, 54.351254, 51.696915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818062, 54.146149, 51.932148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730102, -0.118837, 0.672926,
		-0.275167, 0.850265, 0.448702,
		-0.625487, -0.512765, 0.588080,
		46.630417, 53.992321, 52.108570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887383, 54.516685, 52.459980>,  <47.068256, 54.351254, 51.696915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887383, 54.516685, 52.459980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926510, 54.127193, 52.377731>,  <46.949986, 53.893497, 52.328384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926510, 54.127193, 52.377731>,  <46.887383, 54.516685, 52.459980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926510, 54.127193, 52.377731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738233, -0.067564, 0.671153,
		-0.667415, -0.217445, 0.712232,
		0.097818, -0.973731, -0.205618,
		46.955856, 53.835075, 52.316048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914021, 53.936077, 53.064438>,  <46.887383, 54.516685, 52.459980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914021, 53.936077, 53.064438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136269, 53.864487, 52.739662>,  <47.269619, 53.821533, 52.544796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136269, 53.864487, 52.739662>,  <46.914021, 53.936077, 53.064438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.136269, 53.864487, 52.739662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778561, -0.230695, 0.583629,
		-0.291766, -0.956425, 0.011164,
		0.555622, -0.178975, -0.811944,
		47.302956, 53.810795, 52.496078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273129, 53.325771, 53.077133>,  <46.914021, 53.936077, 53.064438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273129, 53.325771, 53.077133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.488274, 53.565899, 52.840378>,  <47.617359, 53.709976, 52.698326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.488274, 53.565899, 52.840378>,  <47.273129, 53.325771, 53.077133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.488274, 53.565899, 52.840378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839801, -0.320100, 0.438486,
		0.073768, -0.732908, -0.676316,
		0.537859, 0.600318, -0.591884,
		47.649632, 53.745995, 52.662811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853424, 52.922184, 52.869045>,  <47.273129, 53.325771, 53.077133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853424, 52.922184, 52.869045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939453, 53.312515, 52.853485>,  <47.991070, 53.546715, 52.844151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939453, 53.312515, 52.853485>,  <47.853424, 52.922184, 52.869045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.939453, 53.312515, 52.853485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801371, -0.153575, 0.578117,
		0.558166, -0.155508, -0.815026,
		0.215069, 0.975824, -0.038900,
		48.003975, 53.605263, 52.841816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.456402, 53.005852, 52.625652>,  <47.853424, 52.922184, 52.869045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.456402, 53.005852, 52.625652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.412003, 53.351929, 52.821251>,  <48.385365, 53.559574, 52.938610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.412003, 53.351929, 52.821251>,  <48.456402, 53.005852, 52.625652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.412003, 53.351929, 52.821251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838117, -0.182929, 0.513903,
		0.534078, 0.466880, -0.704829,
		-0.110997, 0.865194, 0.488999,
		48.378704, 53.611488, 52.967949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.041889, 53.564362, 52.537903>,  <48.456402, 53.005852, 52.625652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.041889, 53.564362, 52.537903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856453, 53.609455, 52.889442>,  <48.745190, 53.636513, 53.100365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856453, 53.609455, 52.889442>,  <49.041889, 53.564362, 52.537903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.856453, 53.609455, 52.889442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857728, -0.191676, 0.477036,
		0.222233, 0.974962, -0.007837,
		-0.463590, 0.112735, 0.878849,
		48.717377, 53.643276, 53.153095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.293209, 54.173191, 52.845551>,  <49.041889, 53.564362, 52.537903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.293209, 54.173191, 52.845551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.169830, 53.852566, 53.050430>,  <49.095802, 53.660191, 53.173359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.169830, 53.852566, 53.050430>,  <49.293209, 54.173191, 52.845551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.169830, 53.852566, 53.050430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917840, -0.109358, 0.381589,
		-0.249855, 0.587819, 0.769442,
		-0.308450, -0.801567, 0.512200,
		49.077293, 53.612095, 53.204090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.425087, 54.233440, 53.649765>,  <49.293209, 54.173191, 52.845551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.425087, 54.233440, 53.649765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.434479, 53.872356, 53.477921>,  <49.440113, 53.655708, 53.374813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.434479, 53.872356, 53.477921>,  <49.425087, 54.233440, 53.649765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.434479, 53.872356, 53.477921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917084, -0.151635, 0.368733,
		-0.398002, -0.402649, 0.824299,
		0.023478, -0.902708, -0.429614,
		49.441521, 53.601543, 53.349037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.736122, 53.800945, 54.122585>,  <49.425087, 54.233440, 53.649765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.736122, 53.800945, 54.122585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.770699, 53.614651, 53.770309>,  <49.791447, 53.502876, 53.558945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.770699, 53.614651, 53.770309>,  <49.736122, 53.800945, 54.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.770699, 53.614651, 53.770309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832397, -0.451952, 0.320708,
		-0.547396, -0.760810, 0.348607,
		0.086444, -0.465734, -0.880692,
		49.796631, 53.474930, 53.506104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.896847, 53.010303, 54.168301>,  <49.736122, 53.800945, 54.122585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.896847, 53.010303, 54.168301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.050323, 53.194481, 53.848106>,  <50.142410, 53.304985, 53.655991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.050323, 53.194481, 53.848106>,  <49.896847, 53.010303, 54.168301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.050323, 53.194481, 53.848106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904531, -0.362008, 0.225332,
		-0.186029, -0.810521, -0.555383,
		0.383689, 0.460442, -0.800485,
		50.165432, 53.332615, 53.607960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.480377, 52.608994, 53.971191>,  <49.896847, 53.010303, 54.168301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.480377, 52.608994, 53.971191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.518738, 52.968765, 53.800629>,  <50.541756, 53.184628, 53.698292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.518738, 52.968765, 53.800629>,  <50.480377, 52.608994, 53.971191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.518738, 52.968765, 53.800629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987683, -0.032782, 0.152998,
		0.123633, -0.435829, -0.891497,
		0.095906, 0.899432, -0.426408,
		50.547508, 53.238594, 53.672707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.934280, 52.498650, 53.410828>,  <50.480377, 52.608994, 53.971191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.934280, 52.498650, 53.410828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.953304, 52.882252, 53.522575>,  <50.964718, 53.112411, 53.589626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.953304, 52.882252, 53.522575>,  <50.934280, 52.498650, 53.410828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.953304, 52.882252, 53.522575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959418, -0.121689, 0.254382,
		0.277950, 0.255937, -0.925873,
		0.047563, 0.959004, 0.279374,
		50.967571, 53.169952, 53.606388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.613857, 52.712723, 52.980278>,  <50.934280, 52.498650, 53.410828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.613857, 52.712723, 52.980278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.515507, 52.912659, 53.312473>,  <51.456497, 53.032619, 53.511791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.515507, 52.912659, 53.312473>,  <51.613857, 52.712723, 52.980278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.515507, 52.912659, 53.312473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886197, -0.231184, 0.401508,
		0.392685, 0.834694, -0.386114,
		-0.245873, 0.499839, 0.830486,
		51.441746, 53.062611, 53.561619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.047874, 53.341862, 53.225815>,  <51.613857, 52.712723, 52.980278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.047874, 53.341862, 53.225815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.892990, 53.116051, 53.517395>,  <51.800060, 52.980564, 53.692345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.892990, 53.116051, 53.517395>,  <52.047874, 53.341862, 53.225815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.892990, 53.116051, 53.517395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920579, -0.193011, 0.339529,
		-0.050977, 0.802531, 0.594429,
		-0.387214, -0.564527, 0.728954,
		51.776825, 52.946693, 53.736080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.273750, 53.480812, 53.968033>,  <52.047874, 53.341862, 53.225815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.273750, 53.480812, 53.968033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.196404, 53.091713, 53.916859>,  <52.149998, 52.858253, 53.886154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.196404, 53.091713, 53.916859>,  <52.273750, 53.480812, 53.968033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.196404, 53.091713, 53.916859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945526, -0.219564, 0.240358,
		-0.261898, -0.074487, 0.962217,
		-0.193365, -0.972750, -0.127932,
		52.138393, 52.799889, 53.878479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.923599, 53.622032, 54.381596>,  <52.273750, 53.480812, 53.968033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.923599, 53.622032, 54.381596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.989536, 53.873970, 54.685207>,  <53.029099, 54.025131, 54.867374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.989536, 53.873970, 54.685207>,  <52.923599, 53.622032, 54.381596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.989536, 53.873970, 54.685207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407114, -0.744390, 0.529284,
		0.898380, 0.221764, -0.379124,
		0.164840, 0.629844, 0.759028,
		53.038990, 54.062923, 54.912914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.652218, 53.612240, 54.452465>,  <52.923599, 53.622032, 54.381596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.652218, 53.612240, 54.452465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428780, 53.710190, 54.769455>,  <53.294716, 53.768959, 54.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428780, 53.710190, 54.769455>,  <53.652218, 53.612240, 54.452465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.428780, 53.710190, 54.769455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312670, -0.822775, 0.474635,
		0.768253, 0.512909, 0.383029,
		-0.558591, 0.244879, 0.792471,
		53.261204, 53.783653, 55.007195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.979038, 53.912453, 55.028000>,  <53.652218, 53.612240, 54.452465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.979038, 53.912453, 55.028000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.662933, 53.746799, 55.208656>,  <53.473270, 53.647408, 55.317051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.662933, 53.746799, 55.208656>,  <53.979038, 53.912453, 55.028000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.662933, 53.746799, 55.208656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611584, -0.578767, 0.539438,
		0.037995, 0.702514, 0.710655,
		-0.790267, -0.414129, 0.451637,
		53.425854, 53.622562, 55.344147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.097668, 53.869411, 55.709038>,  <53.979038, 53.912453, 55.028000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.097668, 53.869411, 55.709038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.842457, 53.567924, 55.646011>,  <53.689331, 53.387032, 55.608196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.842457, 53.567924, 55.646011>,  <54.097668, 53.869411, 55.709038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.842457, 53.567924, 55.646011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585805, -0.607932, 0.535959,
		-0.499754, 0.249651, 0.829409,
		-0.638027, -0.753720, -0.157570,
		53.651051, 53.341808, 55.598740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.050369, 53.698856, 56.287846>,  <54.097668, 53.869411, 55.709038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.050369, 53.698856, 56.287846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.002937, 53.407032, 56.018425>,  <53.974476, 53.231937, 55.856773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.002937, 53.407032, 56.018425>,  <54.050369, 53.698856, 56.287846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.002937, 53.407032, 56.018425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651543, -0.569054, 0.501667,
		-0.749287, -0.379361, 0.542821,
		-0.118582, -0.729563, -0.673554,
		53.967361, 53.188164, 55.816360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.207306, 53.245152, 56.886349>,  <54.050369, 53.698856, 56.287846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.207306, 53.245152, 56.886349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.273331, 53.633690, 56.954750>,  <54.312946, 53.866814, 56.995792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.273331, 53.633690, 56.954750>,  <54.207306, 53.245152, 56.886349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.273331, 53.633690, 56.954750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079316, 0.159751, -0.983966,
		-0.983089, 0.175975, -0.050675,
		0.165058, 0.971346, 0.171007,
		54.322849, 53.925095, 57.006054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.906654, 52.697327, 57.348438>,  <54.207306, 53.245152, 56.886349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.906654, 52.697327, 57.348438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.146881, 52.853184, 57.627724>,  <54.291019, 52.946697, 57.795296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.146881, 52.853184, 57.627724>,  <53.906654, 52.697327, 57.348438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.146881, 52.853184, 57.627724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375920, -0.908296, 0.183529,
		0.705692, 0.152250, -0.691967,
		0.600569, 0.389640, 0.698211,
		54.327053, 52.970078, 57.837189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.663067, 52.734390, 57.095242>,  <53.906654, 52.697327, 57.348438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.663067, 52.734390, 57.095242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.606049, 52.701733, 57.489807>,  <54.571838, 52.682137, 57.726547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.606049, 52.701733, 57.489807>,  <54.663067, 52.734390, 57.095242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.606049, 52.701733, 57.489807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432937, -0.901344, -0.012044,
		0.890083, 0.425338, 0.163828,
		-0.142542, -0.081648, 0.986415,
		54.563286, 52.677238, 57.785732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.330227, 52.478737, 57.408848>,  <54.663067, 52.734390, 57.095242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.330227, 52.478737, 57.408848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.007774, 52.345680, 57.604607>,  <54.814304, 52.265846, 57.722061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.007774, 52.345680, 57.604607>,  <55.330227, 52.478737, 57.408848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.007774, 52.345680, 57.604607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406088, -0.912538, 0.048655,
		0.430408, 0.237960, 0.870703,
		-0.806127, -0.332641, 0.489396,
		54.765938, 52.245888, 57.751427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.507420, 52.037060, 58.025265>,  <55.330227, 52.478737, 57.408848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.507420, 52.037060, 58.025265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.144012, 51.955311, 57.879478>,  <54.925968, 51.906261, 57.792007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.144012, 51.955311, 57.879478>,  <55.507420, 52.037060, 58.025265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.144012, 51.955311, 57.879478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220821, -0.975308, -0.003556,
		-0.354741, -0.083713, 0.931209,
		-0.908514, -0.204369, -0.364467,
		54.871460, 51.894001, 57.770138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.218842, 51.751461, 58.105724>,  <55.507420, 52.037060, 58.025265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.218842, 51.751461, 58.105724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.371483, 51.987427, 57.821083>,  <56.463070, 52.129005, 57.650299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.371483, 51.987427, 57.821083>,  <56.218842, 51.751461, 58.105724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.371483, 51.987427, 57.821083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732909, 0.275990, 0.621831,
		0.563223, -0.758833, -0.327036,
		0.381607, 0.589917, -0.711599,
		56.485966, 52.164402, 57.607605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.907356, 51.718876, 58.132431>,  <56.218842, 51.751461, 58.105724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.907356, 51.718876, 58.132431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.849228, 52.079464, 57.969345>,  <56.814350, 52.295818, 57.871494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.849228, 52.079464, 57.969345>,  <56.907356, 51.718876, 58.132431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.849228, 52.079464, 57.969345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706661, 0.382992, 0.594935,
		0.692469, -0.201663, -0.692689,
		-0.145318, 0.901470, -0.407718,
		56.805634, 52.349907, 57.847031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.671925, 52.074333, 58.010857>,  <56.907356, 51.718876, 58.132431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.671925, 52.074333, 58.010857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.386032, 52.352814, 58.037598>,  <57.214497, 52.519901, 58.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.386032, 52.352814, 58.037598>,  <57.671925, 52.074333, 58.010857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.386032, 52.352814, 58.037598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484860, 0.424334, 0.764755,
		0.504056, 0.579005, -0.640843,
		-0.714729, 0.696199, 0.066849,
		57.171612, 52.561672, 58.057652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.694977, 52.792191, 57.747452>,  <57.671925, 52.074333, 58.010857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.694977, 52.792191, 57.747452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.044533, 52.626877, 57.645065>,  <58.254265, 52.527687, 57.583633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.044533, 52.626877, 57.645065>,  <57.694977, 52.792191, 57.747452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.044533, 52.626877, 57.645065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243105, 0.084452, -0.966317,
		0.420980, 0.906677, -0.026670,
		0.873885, -0.413284, -0.255970,
		58.306698, 52.502892, 57.568275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.075600, 53.256023, 57.342400>,  <57.694977, 52.792191, 57.747452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.075600, 53.256023, 57.342400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.164360, 52.879715, 57.239868>,  <58.217617, 52.653931, 57.178349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.164360, 52.879715, 57.239868>,  <58.075600, 53.256023, 57.342400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.164360, 52.879715, 57.239868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017549, 0.266692, -0.963622,
		0.974912, 0.209328, 0.075688,
		0.221898, -0.940775, -0.256328,
		58.230930, 52.597481, 57.162971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.641853, 53.396099, 56.937988>,  <58.075600, 53.256023, 57.342400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.641853, 53.396099, 56.937988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.457214, 53.051689, 56.852600>,  <58.346432, 52.845043, 56.801365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.457214, 53.051689, 56.852600>,  <58.641853, 53.396099, 56.937988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.457214, 53.051689, 56.852600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071211, 0.203903, -0.976398,
		0.884228, -0.465901, -0.032807,
		-0.461594, -0.861022, -0.213474,
		58.318737, 52.793381, 56.788559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.147243, 53.047226, 56.437408>,  <58.641853, 53.396099, 56.937988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.147243, 53.047226, 56.437408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.750397, 52.997433, 56.431747>,  <58.512287, 52.967556, 56.428352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.750397, 52.997433, 56.431747>,  <59.147243, 53.047226, 56.437408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.750397, 52.997433, 56.431747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022349, 0.287009, -0.957667,
		0.123274, -0.949805, -0.287529,
		-0.992121, -0.124481, -0.014154,
		58.452759, 52.960087, 56.427502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.633854, 53.048061, 55.860886>,  <59.147243, 53.047226, 56.437408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.633854, 53.048061, 55.860886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.607025, 52.979450, 55.467728>,  <59.590927, 52.938286, 55.231834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.607025, 52.979450, 55.467728>,  <59.633854, 53.048061, 55.860886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.607025, 52.979450, 55.467728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953963, 0.299652, 0.012803,
		0.292330, 0.938503, -0.183726,
		-0.067069, -0.171525, -0.982894,
		59.586903, 52.927994, 55.172859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.697418, 53.756702, 55.678757>,  <59.633854, 53.048061, 55.860886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.697418, 53.756702, 55.678757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.836670, 53.738922, 56.053314>,  <59.920219, 53.728252, 56.278049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.836670, 53.738922, 56.053314>,  <59.697418, 53.756702, 55.678757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.836670, 53.738922, 56.053314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628971, -0.729601, -0.268475,
		0.695127, 0.682427, -0.226034,
		0.348129, -0.044455, 0.936392,
		59.941109, 53.725586, 56.334232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.933460, 53.696804, 55.446934>,  <59.697418, 53.756702, 55.678757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.933460, 53.696804, 55.446934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.039673, 53.991467, 55.695717>,  <59.103401, 54.168262, 55.844986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.039673, 53.991467, 55.695717>,  <58.933460, 53.696804, 55.446934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.039673, 53.991467, 55.695717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938582, -0.050070, -0.341406,
		-0.220357, 0.674412, -0.704706,
		0.265532, 0.736655, 0.621958,
		59.119331, 54.212463, 55.882305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.474464, 54.246864, 55.089272>,  <58.933460, 53.696804, 55.446934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.474464, 54.246864, 55.089272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.484886, 54.289665, 55.486839>,  <59.491138, 54.315346, 55.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.484886, 54.289665, 55.486839>,  <59.474464, 54.246864, 55.089272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.484886, 54.289665, 55.486839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999585, 0.009436, -0.027217,
		-0.012291, 0.994214, -0.106712,
		0.026052, 0.107002, 0.993917,
		59.492702, 54.321766, 55.785015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.039879, 54.806126, 55.277664>,  <59.474464, 54.246864, 55.089272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.039879, 54.806126, 55.277664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.023315, 55.094597, 55.554268>,  <60.013378, 55.267681, 55.720230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.023315, 55.094597, 55.554268>,  <60.039879, 54.806126, 55.277664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.023315, 55.094597, 55.554268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172111, 0.676611, -0.715944,
		-0.984207, -0.148663, 0.096105,
		-0.041408, 0.721178, 0.691511,
		60.010891, 55.310951, 55.761723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.403412, 55.237492, 55.122684>,  <60.039879, 54.806126, 55.277664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.403412, 55.237492, 55.122684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.716141, 55.421696, 55.290817>,  <59.903778, 55.532219, 55.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.716141, 55.421696, 55.290817>,  <59.403412, 55.237492, 55.122684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.716141, 55.421696, 55.290817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152379, 0.512589, -0.845005,
		-0.604590, 0.724697, 0.330584,
		0.781826, 0.460508, 0.420334,
		59.950687, 55.559849, 55.416916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.486595, 56.053108, 55.178921>,  <59.403412, 55.237492, 55.122684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.486595, 56.053108, 55.178921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.822479, 55.854370, 55.091255>,  <60.024010, 55.735126, 55.038654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.822479, 55.854370, 55.091255>,  <59.486595, 56.053108, 55.178921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.822479, 55.854370, 55.091255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149149, 0.599080, -0.786675,
		0.522156, 0.627888, 0.577156,
		0.839707, -0.496850, -0.219165,
		60.074390, 55.705315, 55.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.245064, 56.193985, 55.379528>,  <59.486595, 56.053108, 55.178921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.245064, 56.193985, 55.379528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.194473, 56.041397, 55.013252>,  <60.164120, 55.949844, 54.793488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.194473, 56.041397, 55.013252>,  <60.245064, 56.193985, 55.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.194473, 56.041397, 55.013252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491020, 0.778003, -0.391932,
		0.861919, -0.499189, 0.088915,
		-0.126472, -0.381473, -0.915687,
		60.156532, 55.926956, 54.738544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.769829, 55.906719, 55.744537>,  <60.245064, 56.193985, 55.379528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.769829, 55.906719, 55.744537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.017601, 56.219948, 55.722282>,  <61.166264, 56.407887, 55.708931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.017601, 56.219948, 55.722282>,  <60.769829, 55.906719, 55.744537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.017601, 56.219948, 55.722282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723431, -0.541859, 0.427829,
		0.304877, -0.305258, -0.902146,
		0.619434, 0.783075, -0.055633,
		61.203430, 56.454872, 55.705593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.455872, 55.693066, 55.526630>,  <60.769829, 55.906719, 55.744537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.455872, 55.693066, 55.526630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.540092, 56.053089, 55.679245>,  <61.590626, 56.269104, 55.770813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.540092, 56.053089, 55.679245>,  <61.455872, 55.693066, 55.526630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.540092, 56.053089, 55.679245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886893, -0.340035, 0.312723,
		0.411203, 0.272535, -0.869849,
		0.210551, 0.900056, 0.381533,
		61.603256, 56.323105, 55.793705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.088829, 56.038689, 55.146461>,  <61.455872, 55.693066, 55.526630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.088829, 56.038689, 55.146461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.026741, 56.119164, 55.533333>,  <61.989491, 56.167450, 55.765457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.026741, 56.119164, 55.533333>,  <62.088829, 56.038689, 55.146461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.026741, 56.119164, 55.533333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893971, -0.388019, 0.224182,
		0.420386, 0.899425, -0.119629,
		-0.155217, 0.201188, 0.967177,
		61.980175, 56.179520, 55.823486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.569321, 56.465862, 55.524330>,  <62.088829, 56.038689, 55.146461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.569321, 56.465862, 55.524330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.427345, 56.261459, 55.837479>,  <62.342159, 56.138817, 56.025368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.427345, 56.261459, 55.837479>,  <62.569321, 56.465862, 55.524330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.427345, 56.261459, 55.837479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930217, -0.276644, 0.241172,
		0.093337, 0.813844, 0.573538,
		-0.354942, -0.511004, 0.782873,
		62.320862, 56.108158, 56.072342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.783939, 56.798111, 56.138054>,  <62.569321, 56.465862, 55.524330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.783939, 56.798111, 56.138054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.779297, 56.398643, 56.158180>,  <62.776512, 56.158962, 56.170258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.779297, 56.398643, 56.158180>,  <62.783939, 56.798111, 56.138054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.779297, 56.398643, 56.158180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988735, -0.003954, 0.149623,
		-0.149225, 0.051487, 0.987462,
		-0.011608, -0.998666, 0.050317,
		62.775814, 56.099045, 56.173275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.101589, 56.457691, 56.633675>,  <62.783939, 56.798111, 56.138054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.101589, 56.457691, 56.633675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.160057, 56.161068, 56.371765>,  <63.195137, 55.983093, 56.214619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.160057, 56.161068, 56.371765>,  <63.101589, 56.457691, 56.633675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.160057, 56.161068, 56.371765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973256, -0.010772, 0.229472,
		-0.177220, -0.670801, 0.720152,
		0.146172, -0.741559, -0.654770,
		63.203907, 55.938599, 56.175335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.532993, 55.915512, 57.017906>,  <63.101589, 56.457691, 56.633675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.532993, 55.915512, 57.017906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.568710, 55.945709, 56.620651>,  <63.590141, 55.963825, 56.382298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.568710, 55.945709, 56.620651>,  <63.532993, 55.915512, 57.017906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.568710, 55.945709, 56.620651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991423, 0.088798, 0.095887,
		0.095427, -0.993185, -0.066913,
		0.089292, 0.075489, -0.993141,
		63.595497, 55.968357, 56.322708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.079330, 55.389244, 56.736328>,  <63.532993, 55.915512, 57.017906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.079330, 55.389244, 56.736328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.053215, 55.712532, 56.502228>,  <64.037544, 55.906506, 56.361767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.053215, 55.712532, 56.502228>,  <64.079330, 55.389244, 56.736328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.053215, 55.712532, 56.502228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997024, 0.076923, -0.004997,
		0.040981, -0.583833, -0.810839,
		-0.065289, 0.808222, -0.585248,
		64.033630, 55.954998, 56.326653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.495773, 55.324993, 56.095760>,  <64.079330, 55.389244, 56.736328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.495773, 55.324993, 56.095760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.474991, 55.704140, 56.221527>,  <64.462524, 55.931625, 56.296986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.474991, 55.704140, 56.221527>,  <64.495773, 55.324993, 56.095760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.474991, 55.704140, 56.221527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992726, 0.083257, -0.086974,
		-0.108616, 0.307610, -0.945293,
		-0.051948, 0.947863, 0.314415,
		64.459404, 55.988499, 56.315853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.897545, 55.659065, 55.749695>,  <64.495773, 55.324993, 56.095760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.897545, 55.659065, 55.749695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.875023, 55.899601, 56.068497>,  <64.861511, 56.043922, 56.259777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.875023, 55.899601, 56.068497>,  <64.897545, 55.659065, 55.749695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.875023, 55.899601, 56.068497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968844, 0.225749, -0.101873,
		-0.241184, 0.766441, -0.595314,
		-0.056312, 0.601336, 0.797009,
		64.858131, 56.080002, 56.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.949722, 56.345451, 55.565750>,  <64.897545, 55.659065, 55.749695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.949722, 56.345451, 55.565750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.079796, 56.254452, 55.932899>,  <65.157845, 56.199852, 56.153191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.079796, 56.254452, 55.932899>,  <64.949722, 56.345451, 55.565750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.079796, 56.254452, 55.932899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944010, 0.020963, -0.329251,
		0.055661, 0.973554, 0.221574,
		0.325188, -0.227494, 0.917877,
		65.177353, 56.186203, 56.208263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.597054, 56.747330, 55.945900>,  <64.949722, 56.345451, 55.565750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.597054, 56.747330, 55.945900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.562386, 56.364723, 56.057304>,  <65.541588, 56.135159, 56.124146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.562386, 56.364723, 56.057304>,  <65.597054, 56.747330, 55.945900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.562386, 56.364723, 56.057304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921044, -0.183484, -0.343527,
		0.379691, 0.226748, 0.896895,
		-0.086672, -0.956514, 0.278512,
		65.536385, 56.077770, 56.140858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.163857, 57.262127, 55.903309>,  <65.597054, 56.747330, 55.945900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.163857, 57.262127, 55.903309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.450073, 57.114788, 56.140739>,  <66.621803, 57.026386, 56.283195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.450073, 57.114788, 56.140739>,  <66.163857, 57.262127, 55.903309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.450073, 57.114788, 56.140739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472686, 0.880927, -0.023142,
		-0.514371, 0.297133, 0.804447,
		0.715535, -0.368348, 0.593574,
		66.664734, 57.004284, 56.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.270935, 57.737278, 56.489380>,  <66.163857, 57.262127, 55.903309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.270935, 57.737278, 56.489380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.578468, 57.546768, 56.318703>,  <66.762985, 57.432461, 56.216297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.578468, 57.546768, 56.318703>,  <66.270935, 57.737278, 56.489380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.578468, 57.546768, 56.318703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434407, 0.878674, -0.198047,
		0.469246, -0.033093, 0.882447,
		0.768829, -0.476274, -0.426690,
		66.809120, 57.403885, 56.190697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.927170, 57.922958, 56.756203>,  <66.270935, 57.737278, 56.489380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.927170, 57.922958, 56.756203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.025215, 57.786121, 56.393349>,  <67.084045, 57.704021, 56.175636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.025215, 57.786121, 56.393349>,  <66.927170, 57.922958, 56.756203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.025215, 57.786121, 56.393349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561277, 0.812998, -0.154925,
		0.790495, -0.471177, 0.391291,
		0.245122, -0.342091, -0.907133,
		67.098755, 57.683495, 56.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.539413, 57.595242, 56.833881>,  <66.927170, 57.922958, 56.756203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.539413, 57.595242, 56.833881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.800636, 57.304604, 56.919281>,  <67.957367, 57.130222, 56.970520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.800636, 57.304604, 56.919281>,  <67.539413, 57.595242, 56.833881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.800636, 57.304604, 56.919281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719769, 0.683167, 0.123352,
		-0.235480, 0.073112, 0.969125,
		0.653056, -0.726593, 0.213496,
		67.996552, 57.086624, 56.983330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.920609, 57.672455, 57.540268>,  <67.539413, 57.595242, 56.833881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.920609, 57.672455, 57.540268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123535, 57.498936, 57.242424>,  <68.245293, 57.394825, 57.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123535, 57.498936, 57.242424>,  <67.920609, 57.672455, 57.540268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.123535, 57.498936, 57.242424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766611, 0.621853, 0.160017,
		0.393625, -0.652008, 0.648031,
		0.507313, -0.433802, -0.744614,
		68.275726, 57.368793, 57.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.605911, 57.271542, 57.759842>,  <67.920609, 57.672455, 57.540268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.605911, 57.271542, 57.759842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.601021, 57.446541, 57.400185>,  <68.598091, 57.551540, 57.184391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.601021, 57.446541, 57.400185>,  <68.605911, 57.271542, 57.759842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.601021, 57.446541, 57.400185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731269, 0.617195, 0.290371,
		0.681980, -0.653964, -0.327467,
		-0.012219, 0.437494, -0.899139,
		68.597359, 57.577789, 57.130444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.080803, 57.805634, 57.924870>,  <68.605911, 57.271542, 57.759842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.080803, 57.805634, 57.924870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.060989, 57.863594, 57.529587>,  <69.049103, 57.898369, 57.292416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.060989, 57.863594, 57.529587>,  <69.080803, 57.805634, 57.924870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.060989, 57.863594, 57.529587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689775, 0.720527, 0.071075,
		0.722327, -0.678119, -0.135641,
		-0.049536, 0.144901, -0.988205,
		69.046127, 57.907063, 57.233124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.683937, 57.703911, 57.480026>,  <69.080803, 57.805634, 57.924870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.683937, 57.703911, 57.480026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.469872, 58.009121, 57.335037>,  <69.341431, 58.192249, 57.248043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.469872, 58.009121, 57.335037>,  <69.683937, 57.703911, 57.480026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.469872, 58.009121, 57.335037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793339, 0.601379, 0.094634,
		0.290192, -0.236921, -0.927177,
		-0.535164, 0.763028, -0.362474,
		69.309319, 58.238029, 57.226295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.235367, 58.028305, 57.020824>,  <69.683937, 57.703911, 57.480026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.235367, 58.028305, 57.020824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.960686, 58.288502, 57.150627>,  <69.795876, 58.444618, 57.228508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.960686, 58.288502, 57.150627>,  <70.235367, 58.028305, 57.020824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.960686, 58.288502, 57.150627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701101, 0.710601, 0.059195,
		-0.192088, 0.268161, -0.944030,
		-0.686702, 0.650489, 0.324506,
		69.754677, 58.483650, 57.247978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.376007, 58.702255, 56.704956>,  <70.235367, 58.028305, 57.020824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.376007, 58.702255, 56.704956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.173378, 58.802498, 57.034943>,  <70.051796, 58.862644, 57.232937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.173378, 58.802498, 57.034943>,  <70.376007, 58.702255, 56.704956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.173378, 58.802498, 57.034943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538732, 0.839049, 0.075932,
		-0.673162, 0.482904, -0.560051,
		-0.506578, 0.250602, 0.824971,
		70.021408, 58.877678, 57.282433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.121948, 58.883427, 56.332462>,  <70.376007, 58.702255, 56.704956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.121948, 58.883427, 56.332462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.052063, 59.198170, 56.095711>,  <71.010132, 59.387016, 55.953659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.052063, 59.198170, 56.095711>,  <71.121948, 58.883427, 56.332462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.052063, 59.198170, 56.095711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840463, -0.193971, -0.505963,
		-0.512930, -0.585854, -0.627437,
		-0.174716, 0.786861, -0.591882,
		70.999649, 59.434227, 55.918148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.479172, 59.471161, 56.651501>,  <71.121948, 58.883427, 56.332462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.479172, 59.471161, 56.651501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.448143, 59.864456, 56.585495>,  <71.429527, 60.100433, 56.545891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.448143, 59.864456, 56.585495>,  <71.479172, 59.471161, 56.651501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.448143, 59.864456, 56.585495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986257, -0.099899, -0.131597,
		-0.145876, 0.152538, 0.977472,
		-0.077575, 0.983236, -0.165014,
		71.424873, 60.159428, 56.535992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.036636, 59.380402, 57.347843>,  <71.479172, 59.471161, 56.651501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.036636, 59.380402, 57.347843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.007362, 59.106171, 57.637566>,  <70.989799, 58.941631, 57.811398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.007362, 59.106171, 57.637566>,  <71.036636, 59.380402, 57.347843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.007362, 59.106171, 57.637566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913482, 0.245376, 0.324564,
		-0.400242, 0.685397, 0.608307,
		-0.073191, -0.685582, 0.724307,
		70.985405, 58.900497, 57.854858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.023621, 59.316807, 58.180153>,  <71.036636, 59.380402, 57.347843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.023621, 59.316807, 58.180153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.871529, 59.182953, 58.525047>,  <70.780273, 59.102638, 58.731983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.871529, 59.182953, 58.525047>,  <71.023621, 59.316807, 58.180153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.871529, 59.182953, 58.525047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923909, -0.180414, 0.337405,
		0.042650, 0.924915, 0.377773,
		-0.380227, -0.334638, 0.862233,
		70.757462, 59.082561, 58.783718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.251640, 59.706383, 58.850903>,  <71.023621, 59.316807, 58.180153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.251640, 59.706383, 58.850903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.171883, 59.319687, 58.914978>,  <71.124023, 59.087669, 58.953423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.171883, 59.319687, 58.914978>,  <71.251640, 59.706383, 58.850903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.171883, 59.319687, 58.914978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941199, -0.143451, 0.305886,
		-0.272732, 0.211762, 0.938496,
		-0.199403, -0.966736, 0.160186,
		71.112061, 59.029667, 58.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.285744, 59.402035, 59.658115>,  <71.251640, 59.706383, 58.850903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.285744, 59.402035, 59.658115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.431099, 59.249516, 59.318100>,  <71.518311, 59.158005, 59.114090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.431099, 59.249516, 59.318100>,  <71.285744, 59.402035, 59.658115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.431099, 59.249516, 59.318100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869837, -0.187908, 0.456151,
		-0.333656, -0.905154, 0.263380,
		0.363395, -0.381296, -0.850034,
		71.540115, 59.135128, 59.063091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.544991, 58.796982, 59.806095>,  <71.285744, 59.402035, 59.658115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.544991, 58.796982, 59.806095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.777763, 58.874828, 59.490250>,  <71.917427, 58.921535, 59.300743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.777763, 58.874828, 59.490250>,  <71.544991, 58.796982, 59.806095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.777763, 58.874828, 59.490250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808344, -0.244837, 0.535383,
		-0.089132, -0.949831, -0.299795,
		0.581924, 0.194618, -0.789613,
		71.952339, 58.933212, 59.253365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.005386, 58.285908, 59.653084>,  <71.544991, 58.796982, 59.806095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.005386, 58.285908, 59.653084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.185516, 58.618614, 59.523239>,  <72.293594, 58.818237, 59.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.185516, 58.618614, 59.523239>,  <72.005386, 58.285908, 59.653084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.185516, 58.618614, 59.523239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793572, -0.206235, 0.572460,
		0.409208, -0.515392, -0.752941,
		0.450324, 0.831768, -0.324607,
		72.320610, 58.868145, 59.425858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.985390, 58.091717, 60.342506>,  <72.005386, 58.285908, 59.653084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.985390, 58.091717, 60.342506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.112389, 57.982971, 60.705887>,  <72.188591, 57.917725, 60.923916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.112389, 57.982971, 60.705887>,  <71.985390, 58.091717, 60.342506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.112389, 57.982971, 60.705887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385556, -0.838243, -0.385610,
		0.866335, 0.472691, -0.161327,
		0.317506, -0.271867, 0.908449,
		72.207642, 57.901413, 60.978420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.670197, 57.847950, 60.217228>,  <71.985390, 58.091717, 60.342506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.670197, 57.847950, 60.217228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.514732, 57.666458, 60.537994>,  <72.421455, 57.557564, 60.730453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.514732, 57.666458, 60.537994>,  <72.670197, 57.847950, 60.217228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.514732, 57.666458, 60.537994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301653, -0.885040, -0.354555,
		0.870598, 0.104095, 0.480856,
		-0.388669, -0.453727, 0.801915,
		72.398132, 57.530338, 60.778568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
