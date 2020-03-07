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
	<35.706165, 53.576538, 49.838306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096901, 53.650288, 49.794876>,  <36.331345, 53.694538, 49.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096901, 53.650288, 49.794876>,  <35.706165, 53.576538, 49.838306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096901, 53.650288, 49.794876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037212, 0.646112, 0.762334,
		0.210705, -0.740639, 0.638010,
		0.976841, 0.184369, -0.108579,
		36.389954, 53.705597, 49.762302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978577, 53.333221, 50.468021>,  <35.706165, 53.576538, 49.838306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978577, 53.333221, 50.468021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158894, 53.628506, 50.267288>,  <36.267082, 53.805676, 50.146847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158894, 53.628506, 50.267288>,  <35.978577, 53.333221, 50.468021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158894, 53.628506, 50.267288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281076, 0.650988, 0.705132,
		0.847223, -0.176811, 0.500950,
		0.450787, 0.738209, -0.501835,
		36.294128, 53.849968, 50.116737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568283, 53.617058, 50.768093>,  <35.978577, 53.333221, 50.468021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568283, 53.617058, 50.768093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337143, 53.882248, 50.577705>,  <36.198460, 54.041363, 50.463474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337143, 53.882248, 50.577705>,  <36.568283, 53.617058, 50.768093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337143, 53.882248, 50.577705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238992, 0.420168, 0.875409,
		0.780363, 0.619611, -0.084350,
		-0.577855, 0.662978, -0.475966,
		36.163788, 54.081142, 50.434917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663303, 54.412479, 50.803856>,  <36.568283, 53.617058, 50.768093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663303, 54.412479, 50.803856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277748, 54.306328, 50.794910>,  <36.046417, 54.242638, 50.789543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277748, 54.306328, 50.794910>,  <36.663303, 54.412479, 50.803856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277748, 54.306328, 50.794910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125776, 0.379577, 0.916571,
		-0.234748, 0.886282, -0.399247,
		-0.963885, -0.265378, -0.022368,
		35.988583, 54.226715, 50.788200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329842, 54.526566, 50.308281>,  <36.663303, 54.412479, 50.803856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329842, 54.526566, 50.308281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405476, 54.329136, 49.968719>,  <37.450855, 54.210678, 49.764984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405476, 54.329136, 49.968719>,  <37.329842, 54.526566, 50.308281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405476, 54.329136, 49.968719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358683, 0.839474, -0.408204,
		0.914109, -0.227302, 0.335766,
		0.189081, -0.493576, -0.848900,
		37.462200, 54.181065, 49.714050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916855, 54.756931, 50.676235>,  <37.329842, 54.526566, 50.308281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916855, 54.756931, 50.676235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113491, 54.560265, 50.963737>,  <38.231472, 54.442265, 51.136238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113491, 54.560265, 50.963737>,  <37.916855, 54.756931, 50.676235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113491, 54.560265, 50.963737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752426, -0.175700, -0.634811,
		0.438398, 0.852876, 0.283566,
		0.491592, -0.491662, 0.718753,
		38.260967, 54.412766, 51.179363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649521, 54.934258, 50.774906>,  <37.916855, 54.756931, 50.676235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649521, 54.934258, 50.774906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586964, 54.557522, 50.893890>,  <38.549431, 54.331482, 50.965282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586964, 54.557522, 50.893890>,  <38.649521, 54.934258, 50.774906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586964, 54.557522, 50.893890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715310, -0.315683, -0.623439,
		0.681082, 0.115278, 0.723076,
		-0.156393, -0.941836, 0.297465,
		38.540047, 54.274971, 50.983131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002586, 54.568157, 51.400745>,  <38.649521, 54.934258, 50.774906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002586, 54.568157, 51.400745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917072, 54.329399, 51.091419>,  <38.865765, 54.186146, 50.905823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917072, 54.329399, 51.091419>,  <39.002586, 54.568157, 51.400745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917072, 54.329399, 51.091419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899096, 0.189328, -0.394690,
		0.381997, -0.779664, 0.496188,
		-0.213784, -0.596892, -0.773316,
		38.852936, 54.150333, 50.859425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593952, 54.054749, 51.322495>,  <39.002586, 54.568157, 51.400745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593952, 54.054749, 51.322495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390209, 54.111202, 50.982933>,  <39.267963, 54.145073, 50.779198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390209, 54.111202, 50.982933>,  <39.593952, 54.054749, 51.322495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390209, 54.111202, 50.982933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860280, 0.108345, -0.498177,
		0.021664, -0.984043, -0.176603,
		-0.509362, 0.141136, -0.848900,
		39.237400, 54.153542, 50.728264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737869, 53.568718, 50.714764>,  <39.593952, 54.054749, 51.322495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737869, 53.568718, 50.714764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651691, 53.950829, 50.633743>,  <39.599983, 54.180096, 50.585133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651691, 53.950829, 50.633743>,  <39.737869, 53.568718, 50.714764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651691, 53.950829, 50.633743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895564, 0.110598, -0.430968,
		-0.389293, -0.274246, -0.879341,
		-0.215445, 0.955279, -0.202550,
		39.587059, 54.237411, 50.572979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767975, 53.661987, 49.944439>,  <39.737869, 53.568718, 50.714764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767975, 53.661987, 49.944439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866871, 53.978413, 50.168259>,  <39.926208, 54.168266, 50.302551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866871, 53.978413, 50.168259>,  <39.767975, 53.661987, 49.944439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866871, 53.978413, 50.168259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815111, 0.142428, -0.561523,
		-0.523895, 0.594922, -0.609591,
		0.247240, 0.791064, 0.559545,
		39.941044, 54.215733, 50.336121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827156, 54.367878, 49.710186>,  <39.767975, 53.661987, 49.944439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827156, 54.367878, 49.710186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065304, 54.294548, 50.023090>,  <40.208191, 54.250549, 50.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065304, 54.294548, 50.023090>,  <39.827156, 54.367878, 49.710186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065304, 54.294548, 50.023090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731769, -0.278278, -0.622154,
		0.331745, 0.942842, -0.031523,
		0.595365, -0.183329, 0.782260,
		40.243912, 54.239548, 50.257767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568069, 54.411789, 49.605621>,  <39.827156, 54.367878, 49.710186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568069, 54.411789, 49.605621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624413, 54.337002, 49.994507>,  <40.658218, 54.292130, 50.227837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624413, 54.337002, 49.994507>,  <40.568069, 54.411789, 49.605621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624413, 54.337002, 49.994507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982286, 0.148978, -0.113667,
		-0.123587, 0.971004, 0.204642,
		0.140858, -0.186969, 0.972215,
		40.666672, 54.280910, 50.286171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373093, 54.637875, 49.492474>,  <40.568069, 54.411789, 49.605621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373093, 54.637875, 49.492474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764225, 54.643387, 49.408890>,  <41.998905, 54.646694, 49.358742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764225, 54.643387, 49.408890>,  <41.373093, 54.637875, 49.492474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764225, 54.643387, 49.408890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029464, 0.978851, 0.202439,
		0.207329, -0.204107, 0.956742,
		0.977828, 0.013782, -0.208958,
		42.057571, 54.647522, 49.346203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641655, 54.639324, 50.115650>,  <41.373093, 54.637875, 49.492474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641655, 54.639324, 50.115650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997627, 54.473846, 50.192459>,  <42.211212, 54.374557, 50.238544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997627, 54.473846, 50.192459>,  <41.641655, 54.639324, 50.115650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997627, 54.473846, 50.192459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409122, 0.537993, -0.737009,
		0.201590, 0.734451, 0.648030,
		0.889933, -0.413697, 0.192026,
		42.264606, 54.349739, 50.250069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247013, 55.085052, 50.257744>,  <41.641655, 54.639324, 50.115650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247013, 55.085052, 50.257744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384594, 54.742073, 50.104656>,  <42.467144, 54.536285, 50.012806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384594, 54.742073, 50.104656>,  <42.247013, 55.085052, 50.257744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384594, 54.742073, 50.104656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610788, 0.513878, -0.602384,
		0.713185, -0.026566, 0.700472,
		0.343955, -0.857451, -0.382716,
		42.487782, 54.484837, 49.989841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028683, 54.843597, 50.381046>,  <42.247013, 55.085052, 50.257744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028683, 54.843597, 50.381046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888905, 54.700218, 50.034775>,  <42.805038, 54.614193, 49.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888905, 54.700218, 50.034775>,  <43.028683, 54.843597, 50.381046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888905, 54.700218, 50.034775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789360, 0.385130, -0.478106,
		0.504774, -0.850407, 0.148359,
		-0.349447, -0.358444, -0.865681,
		42.784069, 54.592686, 49.775070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627972, 54.475922, 50.117466>,  <43.028683, 54.843597, 50.381046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627972, 54.475922, 50.117466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375134, 54.632660, 49.850060>,  <43.223431, 54.726704, 49.689617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375134, 54.632660, 49.850060>,  <43.627972, 54.475922, 50.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375134, 54.632660, 49.850060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712120, 0.633885, -0.301784,
		0.305508, -0.666819, -0.679718,
		-0.632099, 0.391844, -0.668513,
		43.185505, 54.750214, 49.649506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040070, 54.534317, 49.455994>,  <43.627972, 54.475922, 50.117466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040070, 54.534317, 49.455994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740101, 54.794662, 49.503304>,  <43.560120, 54.950871, 49.531689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740101, 54.794662, 49.503304>,  <44.040070, 54.534317, 49.455994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740101, 54.794662, 49.503304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585080, 0.736009, -0.340546,
		-0.308701, -0.186184, -0.932759,
		-0.749924, 0.650866, 0.118274,
		43.515125, 54.989922, 49.538784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708126, 54.242130, 49.089909>,  <44.040070, 54.534317, 49.455994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708126, 54.242130, 49.089909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551956, 54.498627, 48.825672>,  <44.458256, 54.652523, 48.667130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551956, 54.498627, 48.825672>,  <44.708126, 54.242130, 49.089909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551956, 54.498627, 48.825672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642110, -0.324537, -0.694529,
		-0.659746, -0.695333, -0.285039,
		-0.390423, 0.641239, -0.660593,
		44.434830, 54.690998, 48.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638897, 53.808838, 49.716995>,  <44.708126, 54.242130, 49.089909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638897, 53.808838, 49.716995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971581, 54.009995, 49.622879>,  <45.171188, 54.130688, 49.566410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971581, 54.009995, 49.622879>,  <44.638897, 53.808838, 49.716995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971581, 54.009995, 49.622879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555195, -0.749724, 0.360100,
		0.004685, -0.430132, -0.902754,
		0.831707, 0.502891, -0.235294,
		45.221092, 54.160862, 49.552292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017944, 53.338520, 49.205650>,  <44.638897, 53.808838, 49.716995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017944, 53.338520, 49.205650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252941, 53.574451, 49.427261>,  <45.393940, 53.716011, 49.560226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252941, 53.574451, 49.427261>,  <45.017944, 53.338520, 49.205650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252941, 53.574451, 49.427261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152260, -0.752981, 0.640185,
		0.794774, -0.291749, -0.532181,
		0.587495, 0.589832, 0.554028,
		45.429192, 53.751400, 49.593472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761566, 53.016613, 49.306660>,  <45.017944, 53.338520, 49.205650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761566, 53.016613, 49.306660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641644, 53.236584, 49.618477>,  <45.569691, 53.368568, 49.805569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641644, 53.236584, 49.618477>,  <45.761566, 53.016613, 49.306660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641644, 53.236584, 49.618477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104443, -0.793302, 0.599803,
		0.948265, 0.261245, 0.180403,
		-0.299810, 0.549930, 0.779545,
		45.551701, 53.401562, 49.852341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228210, 52.763840, 48.825077>,  <45.761566, 53.016613, 49.306660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228210, 52.763840, 48.825077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549152, 52.986778, 48.739670>,  <46.741718, 53.120541, 48.688427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549152, 52.986778, 48.739670>,  <46.228210, 52.763840, 48.825077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549152, 52.986778, 48.739670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377719, 0.751162, 0.541373,
		0.462117, -0.353725, 0.813220,
		0.802357, 0.557346, -0.213516,
		46.789860, 53.153980, 48.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510986, 53.046730, 49.511166>,  <46.228210, 52.763840, 48.825077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510986, 53.046730, 49.511166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580009, 53.287846, 49.199558>,  <46.621422, 53.432514, 49.012592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580009, 53.287846, 49.199558>,  <46.510986, 53.046730, 49.511166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580009, 53.287846, 49.199558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384577, 0.769340, 0.510114,
		0.906822, 0.211569, 0.364572,
		0.172556, 0.602789, -0.779019,
		46.631775, 53.468681, 48.965851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989895, 53.747704, 49.563587>,  <46.510986, 53.046730, 49.511166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989895, 53.747704, 49.563587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665440, 53.759869, 49.329964>,  <46.470764, 53.767166, 49.189789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665440, 53.759869, 49.329964>,  <46.989895, 53.747704, 49.563587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665440, 53.759869, 49.329964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130273, 0.964162, 0.231128,
		0.570156, 0.263564, -0.778110,
		-0.811141, 0.030412, -0.584059,
		46.422096, 53.768993, 49.154747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.172935, 54.390640, 49.210659>,  <46.989895, 53.747704, 49.563587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.172935, 54.390640, 49.210659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792149, 54.273506, 49.246437>,  <46.563675, 54.203224, 49.267906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792149, 54.273506, 49.246437>,  <47.172935, 54.390640, 49.210659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792149, 54.273506, 49.246437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264083, 0.933076, 0.244191,
		-0.154972, 0.208840, -0.965593,
		-0.951968, -0.292840, 0.089449,
		46.506557, 54.185654, 49.273273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739960, 54.831993, 48.740589>,  <47.172935, 54.390640, 49.210659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739960, 54.831993, 48.740589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529640, 54.692371, 49.050865>,  <46.403446, 54.608601, 49.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529640, 54.692371, 49.050865>,  <46.739960, 54.831993, 48.740589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529640, 54.692371, 49.050865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153601, 0.935896, 0.317025,
		-0.836624, 0.047545, -0.545711,
		-0.525802, -0.349052, 0.775690,
		46.371899, 54.587654, 49.283573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091076, 55.280972, 48.836849>,  <46.739960, 54.831993, 48.740589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091076, 55.280972, 48.836849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204170, 55.111290, 49.180969>,  <46.272026, 55.009480, 49.387440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204170, 55.111290, 49.180969>,  <46.091076, 55.280972, 48.836849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204170, 55.111290, 49.180969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107156, 0.905246, 0.411152,
		-0.953194, -0.024061, 0.301401,
		0.282735, -0.424205, 0.860297,
		46.288990, 54.984028, 49.439056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724514, 55.534908, 49.558899>,  <46.091076, 55.280972, 48.836849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724514, 55.534908, 49.558899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106579, 55.419186, 49.584110>,  <46.335815, 55.349754, 49.599239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106579, 55.419186, 49.584110>,  <45.724514, 55.534908, 49.558899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106579, 55.419186, 49.584110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236072, 0.872578, 0.427641,
		-0.178718, -0.393585, 0.901748,
		0.955160, -0.289305, 0.063031,
		46.393127, 55.332394, 49.603020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905235, 55.953133, 50.115757>,  <45.724514, 55.534908, 49.558899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905235, 55.953133, 50.115757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219826, 55.820927, 49.907059>,  <46.408581, 55.741604, 49.781841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219826, 55.820927, 49.907059>,  <45.905235, 55.953133, 50.115757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219826, 55.820927, 49.907059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498343, 0.838615, 0.219950,
		0.364846, -0.432993, 0.824260,
		0.786474, -0.330516, -0.521745,
		46.455769, 55.721771, 49.750534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493275, 55.944099, 50.578697>,  <45.905235, 55.953133, 50.115757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493275, 55.944099, 50.578697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.610615, 55.981529, 50.198132>,  <46.681019, 56.003986, 49.969791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.610615, 55.981529, 50.198132>,  <46.493275, 55.944099, 50.578697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610615, 55.981529, 50.198132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553810, 0.794570, 0.248904,
		0.779254, -0.599919, 0.181270,
		0.293355, 0.093571, -0.951413,
		46.698620, 56.009602, 49.912708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238541, 56.214977, 50.617714>,  <46.493275, 55.944099, 50.578697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238541, 56.214977, 50.617714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115334, 56.334423, 50.256393>,  <47.041409, 56.406090, 50.039600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115334, 56.334423, 50.256393>,  <47.238541, 56.214977, 50.617714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115334, 56.334423, 50.256393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568892, 0.818827, 0.076705,
		0.762553, -0.490254, -0.422094,
		-0.308017, 0.298618, -0.903301,
		47.022930, 56.424007, 49.985405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.850506, 56.316116, 50.062756>,  <47.238541, 56.214977, 50.617714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.850506, 56.316116, 50.062756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530994, 56.556477, 50.050953>,  <47.339287, 56.700695, 50.043869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530994, 56.556477, 50.050953>,  <47.850506, 56.316116, 50.062756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.530994, 56.556477, 50.050953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588344, 0.790451, 0.170406,
		0.125725, 0.118753, -0.984932,
		-0.798777, 0.600903, -0.029511,
		47.291363, 56.736748, 50.042099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.803143, 56.913521, 49.547272>,  <47.850506, 56.316116, 50.062756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.803143, 56.913521, 49.547272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582836, 57.054138, 49.850079>,  <47.450653, 57.138508, 50.031761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582836, 57.054138, 49.850079>,  <47.803143, 56.913521, 49.547272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582836, 57.054138, 49.850079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628879, 0.771117, 0.099445,
		-0.548788, 0.530842, -0.645785,
		-0.550766, 0.351546, 0.757015,
		47.417606, 57.159603, 50.077183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795280, 57.623478, 49.405064>,  <47.803143, 56.913521, 49.547272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795280, 57.623478, 49.405064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707142, 57.557629, 49.789635>,  <47.654259, 57.518120, 50.020378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707142, 57.557629, 49.789635>,  <47.795280, 57.623478, 49.405064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707142, 57.557629, 49.789635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815779, 0.509253, 0.274165,
		-0.534744, 0.844726, 0.022080,
		-0.220350, -0.164621, 0.961429,
		47.641037, 57.508244, 50.078064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.070229, 57.565445, 48.729698>,  <47.795280, 57.623478, 49.405064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.070229, 57.565445, 48.729698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.343773, 57.826477, 48.599182>,  <48.507900, 57.983097, 48.520874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.343773, 57.826477, 48.599182>,  <48.070229, 57.565445, 48.729698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.343773, 57.826477, 48.599182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524612, -0.129004, 0.841510,
		0.507064, -0.746653, -0.430574,
		0.683862, 0.652585, -0.326290,
		48.548931, 58.022251, 48.501293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.727192, 57.427319, 49.133377>,  <48.070229, 57.565445, 48.729698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.727192, 57.427319, 49.133377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897934, 57.698250, 48.893703>,  <49.000381, 57.860809, 48.749901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897934, 57.698250, 48.893703>,  <48.727192, 57.427319, 49.133377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.897934, 57.698250, 48.893703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873547, -0.137461, 0.466926,
		0.233899, -0.722724, -0.650355,
		0.426857, 0.677329, -0.599181,
		49.025990, 57.901447, 48.713947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.247562, 57.176674, 48.584793>,  <48.727192, 57.427319, 49.133377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.247562, 57.176674, 48.584793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.287460, 57.526337, 48.774910>,  <49.311398, 57.736134, 48.888981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.287460, 57.526337, 48.774910>,  <49.247562, 57.176674, 48.584793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.287460, 57.526337, 48.774910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812726, -0.347152, 0.467934,
		0.574046, 0.339608, -0.745076,
		0.099740, 0.874158, 0.475290,
		49.317383, 57.788586, 48.917496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.951141, 57.596649, 48.417545>,  <49.247562, 57.176674, 48.584793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.951141, 57.596649, 48.417545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.802662, 57.624550, 48.787918>,  <49.713573, 57.641289, 49.010143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.802662, 57.624550, 48.787918>,  <49.951141, 57.596649, 48.417545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.802662, 57.624550, 48.787918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865832, -0.334273, 0.372286,
		0.335481, 0.939892, 0.063687,
		-0.371197, 0.069753, 0.925930,
		49.691303, 57.645477, 49.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.521606, 57.372143, 48.732903>,  <49.951141, 57.596649, 48.417545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.521606, 57.372143, 48.732903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.283104, 57.499138, 49.027840>,  <50.140003, 57.575333, 49.204803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.283104, 57.499138, 49.027840>,  <50.521606, 57.372143, 48.732903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.283104, 57.499138, 49.027840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748386, -0.112550, 0.653644,
		0.290511, 0.941560, -0.170493,
		-0.596256, 0.317485, 0.737348,
		50.104225, 57.594383, 49.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.815685, 57.990868, 49.038666>,  <50.521606, 57.372143, 48.732903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.815685, 57.990868, 49.038666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.561180, 57.869450, 49.322365>,  <50.408478, 57.796597, 49.492584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.561180, 57.869450, 49.322365>,  <50.815685, 57.990868, 49.038666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.561180, 57.869450, 49.322365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730557, 0.058358, 0.680354,
		-0.247911, 0.951027, 0.184629,
		-0.636260, -0.303549, 0.709247,
		50.370300, 57.778385, 49.535137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.938839, 58.437790, 49.631767>,  <50.815685, 57.990868, 49.038666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.938839, 58.437790, 49.631767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.717533, 58.132591, 49.765469>,  <50.584747, 57.949471, 49.845692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.717533, 58.132591, 49.765469>,  <50.938839, 58.437790, 49.631767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.717533, 58.132591, 49.765469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404640, 0.104573, 0.908477,
		-0.728122, 0.637883, 0.250884,
		-0.553267, -0.763000, 0.334256,
		50.551552, 57.903690, 49.865746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.823147, 58.664837, 50.356594>,  <50.938839, 58.437790, 49.631767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.823147, 58.664837, 50.356594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.827610, 58.270168, 50.291649>,  <50.830288, 58.033367, 50.252682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.827610, 58.270168, 50.291649>,  <50.823147, 58.664837, 50.356594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.827610, 58.270168, 50.291649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576930, -0.126269, 0.806974,
		-0.816717, -0.102680, 0.567829,
		0.011161, -0.986668, -0.162365,
		50.830959, 57.974167, 50.242939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.404984, 58.251076, 50.952324>,  <50.823147, 58.664837, 50.356594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.404984, 58.251076, 50.952324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.704926, 58.062965, 50.766182>,  <50.884892, 57.950100, 50.654499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.704926, 58.062965, 50.766182>,  <50.404984, 58.251076, 50.952324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.704926, 58.062965, 50.766182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592874, 0.165488, 0.788108,
		-0.293616, -0.866866, 0.402906,
		0.749859, -0.470274, -0.465353,
		50.929882, 57.921883, 50.626575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.372150, 57.521961, 51.179073>,  <50.404984, 58.251076, 50.952324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.372150, 57.521961, 51.179073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.710159, 57.714600, 51.086121>,  <50.912964, 57.830185, 51.030350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.710159, 57.714600, 51.086121>,  <50.372150, 57.521961, 51.179073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.710159, 57.714600, 51.086121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310024, -0.087148, 0.946726,
		0.435690, -0.872048, -0.222949,
		0.845021, 0.481598, -0.232386,
		50.963665, 57.859077, 51.016403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.936623, 57.154396, 51.371746>,  <50.372150, 57.521961, 51.179073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.936623, 57.154396, 51.371746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.062332, 57.534119, 51.374222>,  <51.137760, 57.761951, 51.375710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.062332, 57.534119, 51.374222>,  <50.936623, 57.154396, 51.371746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.062332, 57.534119, 51.374222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113471, -0.044041, 0.992565,
		0.942525, -0.311239, -0.121561,
		0.314278, 0.949311, 0.006194,
		51.156616, 57.818913, 51.376080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.499268, 57.097778, 51.809963>,  <50.936623, 57.154396, 51.371746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.499268, 57.097778, 51.809963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381535, 57.477680, 51.767376>,  <51.310894, 57.705620, 51.741825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.381535, 57.477680, 51.767376>,  <51.499268, 57.097778, 51.809963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.381535, 57.477680, 51.767376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093369, 0.139444, 0.985818,
		0.951130, 0.280222, -0.129721,
		-0.294337, 0.949753, -0.106465,
		51.293232, 57.762608, 51.735435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.960171, 57.441391, 52.217163>,  <51.499268, 57.097778, 51.809963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.960171, 57.441391, 52.217163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.617970, 57.648449, 52.212296>,  <51.412647, 57.772686, 52.209373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.617970, 57.648449, 52.212296>,  <51.960171, 57.441391, 52.217163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.617970, 57.648449, 52.212296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108837, 0.202750, 0.973163,
		0.506224, 0.831224, -0.229793,
		-0.855507, 0.517648, -0.012169,
		51.361317, 57.803745, 52.208645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.435169, 57.144295, 52.661659>,  <51.960171, 57.441391, 52.217163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.435169, 57.144295, 52.661659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.741840, 57.226311, 52.905022>,  <52.925842, 57.275520, 53.051041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.741840, 57.226311, 52.905022>,  <52.435169, 57.144295, 52.661659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.741840, 57.226311, 52.905022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536700, -0.724756, -0.432067,
		0.352352, 0.657789, -0.665704,
		0.766682, 0.205044, 0.608405,
		52.971844, 57.287823, 53.087543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.153664, 57.257030, 52.277328>,  <52.435169, 57.144295, 52.661659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.153664, 57.257030, 52.277328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.252163, 57.086002, 52.625244>,  <53.311264, 56.983383, 52.833996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.252163, 57.086002, 52.625244>,  <53.153664, 57.257030, 52.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.252163, 57.086002, 52.625244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693542, -0.549147, -0.466302,
		0.677023, 0.718066, 0.161313,
		0.246251, -0.427574, 0.869794,
		53.326038, 56.957729, 52.886181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.899166, 57.130478, 52.091286>,  <53.153664, 57.257030, 52.277328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.899166, 57.130478, 52.091286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.753548, 56.890823, 52.376526>,  <53.666176, 56.747032, 52.547668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.753548, 56.890823, 52.376526>,  <53.899166, 57.130478, 52.091286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.753548, 56.890823, 52.376526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669696, -0.700479, -0.246649,
		0.647286, 0.387768, 0.656244,
		-0.364043, -0.599137, 0.713097,
		53.644333, 56.711082, 52.590454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.496986, 56.925533, 52.421501>,  <53.899166, 57.130478, 52.091286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.496986, 56.925533, 52.421501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.221375, 56.647369, 52.503128>,  <54.056007, 56.480473, 52.552105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.221375, 56.647369, 52.503128>,  <54.496986, 56.925533, 52.421501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.221375, 56.647369, 52.503128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558589, -0.688987, -0.461817,
		0.461748, -0.204219, 0.863182,
		-0.689033, -0.695408, 0.204064,
		54.014664, 56.438747, 52.564346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.907532, 57.370995, 52.836235>,  <54.496986, 56.925533, 52.421501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.907532, 57.370995, 52.836235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.208946, 57.349560, 52.574150>,  <55.389797, 57.336700, 52.416901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.208946, 57.349560, 52.574150>,  <54.907532, 57.370995, 52.836235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.208946, 57.349560, 52.574150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458012, -0.672184, 0.581716,
		-0.471594, -0.738443, -0.481977,
		0.753541, -0.053582, -0.655214,
		55.435009, 57.333485, 52.377586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.096828, 56.700607, 52.743378>,  <54.907532, 57.370995, 52.836235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.096828, 56.700607, 52.743378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.422134, 56.928089, 52.694096>,  <55.617317, 57.064579, 52.664528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.422134, 56.928089, 52.694096>,  <55.096828, 56.700607, 52.743378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.422134, 56.928089, 52.694096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496697, -0.568145, 0.656127,
		0.303147, -0.594797, -0.744525,
		0.813261, 0.568707, -0.123203,
		55.666111, 57.098701, 52.657135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.721378, 56.368938, 52.368153>,  <55.096828, 56.700607, 52.743378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.721378, 56.368938, 52.368153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.876923, 56.642094, 52.615524>,  <55.970249, 56.805988, 52.763947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.876923, 56.642094, 52.615524>,  <55.721378, 56.368938, 52.368153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.876923, 56.642094, 52.615524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658629, -0.675422, 0.331682,
		0.644200, 0.278334, -0.712416,
		0.388863, 0.682888, 0.618425,
		55.993580, 56.846958, 52.801052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.445393, 56.340698, 52.256969>,  <55.721378, 56.368938, 52.368153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.445393, 56.340698, 52.256969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.352478, 56.484146, 52.618618>,  <56.296730, 56.570213, 52.835606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.352478, 56.484146, 52.618618>,  <56.445393, 56.340698, 52.256969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.352478, 56.484146, 52.618618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761744, -0.510929, 0.398368,
		0.604804, 0.781246, -0.154491,
		-0.232289, 0.358617, 0.904121,
		56.282791, 56.591732, 52.889854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.036926, 56.590519, 52.585896>,  <56.445393, 56.340698, 52.256969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.036926, 56.590519, 52.585896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.767960, 56.539444, 52.877525>,  <56.606579, 56.508801, 53.052502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.767960, 56.539444, 52.877525>,  <57.036926, 56.590519, 52.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.767960, 56.539444, 52.877525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669129, -0.525943, 0.525024,
		0.316414, 0.840881, 0.439092,
		-0.672421, -0.127684, 0.729073,
		56.566235, 56.501141, 53.096249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.311779, 56.685398, 53.347034>,  <57.036926, 56.590519, 52.585896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.311779, 56.685398, 53.347034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.004051, 56.432919, 53.307564>,  <56.819416, 56.281429, 53.283882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.004051, 56.432919, 53.307564>,  <57.311779, 56.685398, 53.347034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.004051, 56.432919, 53.307564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561961, -0.742056, 0.365449,
		-0.303894, 0.225695, 0.925586,
		-0.769317, -0.631201, -0.098674,
		56.773254, 56.243557, 53.277962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.951427, 56.775379, 53.652222>,  <57.311779, 56.685398, 53.347034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.951427, 56.775379, 53.652222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280968, 56.911316, 53.833675>,  <58.478691, 56.992878, 53.942547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.280968, 56.911316, 53.833675>,  <57.951427, 56.775379, 53.652222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.280968, 56.911316, 53.833675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530329, -0.179671, -0.828535,
		-0.200063, 0.923162, -0.328248,
		0.823848, 0.339839, 0.453634,
		58.528122, 57.013268, 53.969765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.116261, 56.127281, 54.028297>,  <57.951427, 56.775379, 53.652222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.116261, 56.127281, 54.028297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.500534, 56.060711, 54.117199>,  <58.731098, 56.020767, 54.170540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.500534, 56.060711, 54.117199>,  <58.116261, 56.127281, 54.028297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.500534, 56.060711, 54.117199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035526, 0.867557, 0.496067,
		-0.275379, -0.468665, 0.839356,
		0.960679, -0.166425, 0.222257,
		58.788738, 56.010784, 54.183876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.355083, 56.136284, 54.763527>,  <58.116261, 56.127281, 54.028297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.355083, 56.136284, 54.763527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.668320, 56.274021, 54.556374>,  <58.856262, 56.356663, 54.432083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.668320, 56.274021, 54.556374>,  <58.355083, 56.136284, 54.763527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.668320, 56.274021, 54.556374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174222, 0.920847, 0.348837,
		0.597010, -0.182944, 0.781096,
		0.783088, 0.344343, -0.517882,
		58.903248, 56.377323, 54.401009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.742641, 56.481441, 55.209492>,  <58.355083, 56.136284, 54.763527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.742641, 56.481441, 55.209492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.800316, 56.635956, 54.845078>,  <58.834919, 56.728664, 54.626427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.800316, 56.635956, 54.845078>,  <58.742641, 56.481441, 55.209492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.800316, 56.635956, 54.845078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225751, 0.909222, 0.349789,
		0.963456, 0.155235, 0.218298,
		0.144182, 0.386287, -0.911040,
		58.843571, 56.751842, 54.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.353100, 56.910259, 55.133770>,  <58.742641, 56.481441, 55.209492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.353100, 56.910259, 55.133770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.064201, 57.011536, 54.876320>,  <58.890862, 57.072304, 54.721851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.064201, 57.011536, 54.876320>,  <59.353100, 56.910259, 55.133770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.064201, 57.011536, 54.876320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051913, 0.908113, 0.415495,
		0.689683, 0.333503, -0.642739,
		-0.722248, 0.253193, -0.643623,
		58.847527, 57.087494, 54.683231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.497723, 56.168808, 55.050575>,  <59.353100, 56.910259, 55.133770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.497723, 56.168808, 55.050575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.680840, 56.348030, 54.743416>,  <59.790710, 56.455563, 54.559120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.680840, 56.348030, 54.743416>,  <59.497723, 56.168808, 55.050575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.680840, 56.348030, 54.743416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888365, -0.264626, 0.375208,
		-0.035092, -0.853944, -0.519181,
		0.457795, 0.448056, -0.767900,
		59.818176, 56.482449, 54.513046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.058842, 55.709259, 54.801193>,  <59.497723, 56.168808, 55.050575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.058842, 55.709259, 54.801193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145828, 56.093609, 54.732571>,  <60.198021, 56.324219, 54.691395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145828, 56.093609, 54.732571>,  <60.058842, 55.709259, 54.801193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.145828, 56.093609, 54.732571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841150, -0.095323, 0.532334,
		0.495152, -0.260072, -0.828968,
		0.217465, 0.960873, -0.171560,
		60.211067, 56.381870, 54.681103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.705761, 55.933517, 54.412884>,  <60.058842, 55.709259, 54.801193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.705761, 55.933517, 54.412884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.636177, 56.243572, 54.655830>,  <60.594429, 56.429607, 54.801598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.636177, 56.243572, 54.655830>,  <60.705761, 55.933517, 54.412884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.636177, 56.243572, 54.655830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924422, -0.084023, 0.372000,
		0.339385, 0.626176, -0.701941,
		-0.173958, 0.775141, 0.607367,
		60.583988, 56.476116, 54.838039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.338905, 56.005386, 54.835075>,  <60.705761, 55.933517, 54.412884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.338905, 56.005386, 54.835075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.129089, 56.286114, 55.027870>,  <61.003201, 56.454552, 55.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.129089, 56.286114, 55.027870>,  <61.338905, 56.005386, 54.835075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.129089, 56.286114, 55.027870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658382, -0.024569, 0.752283,
		0.539809, 0.711931, -0.449178,
		-0.524537, 0.701820, 0.481985,
		60.971729, 56.496658, 55.172466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.698574, 56.655998, 55.032429>,  <61.338905, 56.005386, 54.835075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.698574, 56.655998, 55.032429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.429291, 56.558949, 55.311836>,  <61.267719, 56.500717, 55.479481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.429291, 56.558949, 55.311836>,  <61.698574, 56.655998, 55.032429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.429291, 56.558949, 55.311836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659712, 0.229634, 0.715575,
		-0.334020, 0.942550, 0.005472,
		-0.673209, -0.242627, 0.698514,
		61.227329, 56.486160, 55.521389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.552769, 57.251923, 55.597355>,  <61.698574, 56.655998, 55.032429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.552769, 57.251923, 55.597355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.554062, 56.852280, 55.614166>,  <61.554836, 56.612492, 55.624252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.554062, 56.852280, 55.614166>,  <61.552769, 57.251923, 55.597355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.554062, 56.852280, 55.614166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800535, 0.027775, 0.598642,
		-0.599277, 0.031711, 0.799913,
		0.003234, -0.999111, 0.042031,
		61.555031, 56.552547, 55.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.188599, 57.666702, 55.703072>,  <61.552769, 57.251923, 55.597355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.188599, 57.666702, 55.703072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.345924, 57.452427, 56.001961>,  <62.440319, 57.323860, 56.181293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.345924, 57.452427, 56.001961>,  <62.188599, 57.666702, 55.703072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.345924, 57.452427, 56.001961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919118, 0.208732, -0.334147,
		0.023031, 0.818208, 0.574461,
		0.393310, -0.535693, 0.747222,
		62.463917, 57.291718, 56.226128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.648701, 58.102531, 56.078243>,  <62.188599, 57.666702, 55.703072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.648701, 58.102531, 56.078243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.737602, 57.713055, 56.098358>,  <62.790943, 57.479370, 56.110428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.737602, 57.713055, 56.098358>,  <62.648701, 58.102531, 56.078243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.737602, 57.713055, 56.098358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954189, 0.206629, -0.216400,
		0.200316, 0.096077, 0.975009,
		0.222256, -0.973691, 0.050284,
		62.804279, 57.420948, 56.113445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.234825, 58.009010, 56.543247>,  <62.648701, 58.102531, 56.078243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.234825, 58.009010, 56.543247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.217468, 57.753174, 56.236252>,  <63.207054, 57.599670, 56.052055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.217468, 57.753174, 56.236252>,  <63.234825, 58.009010, 56.543247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.217468, 57.753174, 56.236252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972201, 0.149891, -0.179883,
		0.230092, -0.753956, 0.615311,
		-0.043394, -0.639595, -0.767486,
		63.204449, 57.561295, 56.006004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.714237, 57.528076, 56.594223>,  <63.234825, 58.009010, 56.543247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.714237, 57.528076, 56.594223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.652054, 57.586105, 56.203369>,  <63.614742, 57.620922, 55.968857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.652054, 57.586105, 56.203369>,  <63.714237, 57.528076, 56.594223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.652054, 57.586105, 56.203369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910041, 0.405807, -0.084534,
		0.384263, -0.902371, -0.195110,
		-0.155458, 0.145074, -0.977131,
		63.605415, 57.629627, 55.910229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.296272, 57.880825, 56.388161>,  <63.714237, 57.528076, 56.594223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.296272, 57.880825, 56.388161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.101570, 57.918549, 56.040787>,  <63.984749, 57.941181, 55.832363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.101570, 57.918549, 56.040787>,  <64.296272, 57.880825, 56.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.101570, 57.918549, 56.040787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749008, 0.556629, -0.359376,
		0.449502, -0.825391, -0.341580,
		-0.486759, 0.094305, -0.868431,
		63.955544, 57.946838, 55.780258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.661522, 57.971416, 56.994904>,  <64.296272, 57.880825, 56.388161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.661522, 57.971416, 56.994904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.422310, 58.221458, 56.794266>,  <64.278786, 58.371483, 56.673882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.422310, 58.221458, 56.794266>,  <64.661522, 57.971416, 56.994904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.422310, 58.221458, 56.794266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206657, 0.724951, 0.657068,
		0.774372, 0.289289, -0.562726,
		-0.598031, 0.625107, -0.501598,
		64.242897, 58.408989, 56.643787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.965500, 58.642353, 56.821648>,  <64.661522, 57.971416, 56.994904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.965500, 58.642353, 56.821648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.571289, 58.708542, 56.836334>,  <64.334763, 58.748257, 56.845146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.571289, 58.708542, 56.836334>,  <64.965500, 58.642353, 56.821648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.571289, 58.708542, 56.836334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160928, 0.845456, 0.509221,
		0.053218, 0.507762, -0.859852,
		-0.985530, 0.165474, 0.036720,
		64.275627, 58.758183, 56.847351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.876991, 59.394260, 56.777695>,  <64.965500, 58.642353, 56.821648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.876991, 59.394260, 56.777695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.568748, 59.223797, 56.967239>,  <64.383804, 59.121517, 57.080967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.568748, 59.223797, 56.967239>,  <64.876991, 59.394260, 56.777695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.568748, 59.223797, 56.967239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019655, 0.759083, 0.650697,
		-0.637003, 0.492120, -0.593333,
		-0.770611, -0.426158, 0.473865,
		64.337563, 59.095951, 57.109398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.442436, 59.167160, 56.291912>,  <64.876991, 59.394260, 56.777695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.442436, 59.167160, 56.291912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.143959, 59.420464, 56.209755>,  <64.964874, 59.572445, 56.160461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.143959, 59.420464, 56.209755>,  <65.442436, 59.167160, 56.291912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.143959, 59.420464, 56.209755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373871, 0.143340, -0.916338,
		-0.550837, -0.760552, -0.343715,
		-0.746190, 0.633257, -0.205391,
		64.920105, 59.610439, 56.148136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.449768, 59.064533, 55.498569>,  <65.442436, 59.167160, 56.291912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.449768, 59.064533, 55.498569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.078476, 58.976063, 55.618217>,  <64.855698, 58.922981, 55.690006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.078476, 58.976063, 55.618217>,  <65.449768, 59.064533, 55.498569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.078476, 58.976063, 55.618217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292248, 0.931057, -0.218457,
		-0.230177, -0.290195, -0.928873,
		-0.928230, -0.221177, 0.299117,
		64.800011, 58.909710, 55.707951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.014519, 58.873531, 55.084103>,  <65.449768, 59.064533, 55.498569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.014519, 58.873531, 55.084103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.064468, 59.248215, 54.953274>,  <66.094437, 59.473026, 54.874779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.064468, 59.248215, 54.953274>,  <66.014519, 58.873531, 55.084103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.064468, 59.248215, 54.953274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414859, 0.250151, 0.874824,
		0.901275, -0.244938, -0.357364,
		0.124883, 0.936712, -0.327070,
		66.101936, 59.529228, 54.855152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.751198, 58.622681, 55.439678>,  <66.014519, 58.873531, 55.084103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.751198, 58.622681, 55.439678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.743446, 59.008213, 55.545998>,  <66.738792, 59.239532, 55.609791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.743446, 59.008213, 55.545998>,  <66.751198, 58.622681, 55.439678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.743446, 59.008213, 55.545998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061530, -0.264195, 0.962504,
		0.997917, 0.035004, -0.054186,
		-0.019376, 0.963834, 0.265799,
		66.737633, 59.297363, 55.625736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.247597, 58.789608, 55.939621>,  <66.751198, 58.622681, 55.439678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.247597, 58.789608, 55.939621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.919762, 59.004478, 56.019348>,  <66.723061, 59.133400, 56.067184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.919762, 59.004478, 56.019348>,  <67.247597, 58.789608, 55.939621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.919762, 59.004478, 56.019348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113322, -0.189020, 0.975413,
		0.561643, 0.822018, 0.094043,
		-0.819583, 0.537176, 0.199315,
		66.673889, 59.165630, 56.079144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.458649, 59.138206, 56.533695>,  <67.247597, 58.789608, 55.939621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.458649, 59.138206, 56.533695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.060562, 59.111938, 56.504799>,  <66.821709, 59.096176, 56.487461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.060562, 59.111938, 56.504799>,  <67.458649, 59.138206, 56.533695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.060562, 59.111938, 56.504799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066172, -0.090259, 0.993718,
		-0.071778, 0.993751, 0.085483,
		-0.995223, -0.065671, -0.072237,
		66.761993, 59.092236, 56.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.183968, 59.638802, 57.065701>,  <67.458649, 59.138206, 56.533695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.183968, 59.638802, 57.065701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.987808, 59.305370, 56.963982>,  <66.870117, 59.105312, 56.902950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.987808, 59.305370, 56.963982>,  <67.183968, 59.638802, 57.065701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.987808, 59.305370, 56.963982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243834, -0.148903, 0.958318,
		-0.836696, 0.531958, -0.130233,
		-0.490393, -0.833576, -0.254296,
		66.840691, 59.055298, 56.887691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.151161, 60.307522, 56.795933>,  <67.183968, 59.638802, 57.065701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.151161, 60.307522, 56.795933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.358551, 59.968552, 56.750214>,  <67.482986, 59.765171, 56.722782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.358551, 59.968552, 56.750214>,  <67.151161, 60.307522, 56.795933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.358551, 59.968552, 56.750214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103915, 0.195119, -0.975259,
		0.848759, 0.493764, 0.189224,
		0.518469, -0.847423, -0.114300,
		67.514091, 59.714325, 56.715923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.342514, 60.639133, 57.443920>,  <67.151161, 60.307522, 56.795933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.342514, 60.639133, 57.443920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.566315, 60.851418, 57.189270>,  <67.700600, 60.978790, 57.036480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.566315, 60.851418, 57.189270>,  <67.342514, 60.639133, 57.443920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.566315, 60.851418, 57.189270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766006, -0.037775, 0.641723,
		0.316521, -0.846710, -0.427664,
		0.559509, 0.530712, -0.636628,
		67.734169, 61.010632, 56.998283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.002045, 60.299046, 57.319153>,  <67.342514, 60.639133, 57.443920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.002045, 60.299046, 57.319153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030937, 60.695900, 57.278252>,  <68.048271, 60.934013, 57.253712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030937, 60.695900, 57.278252>,  <68.002045, 60.299046, 57.319153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.030937, 60.695900, 57.278252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637087, 0.032990, 0.770085,
		0.767400, -0.120764, -0.629693,
		0.072225, 0.992133, -0.102254,
		68.052605, 60.993542, 57.247574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.559807, 60.361668, 57.589981>,  <68.002045, 60.299046, 57.319153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.559807, 60.361668, 57.589981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.410355, 60.732204, 57.570839>,  <68.320686, 60.954525, 57.559353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.410355, 60.732204, 57.570839>,  <68.559807, 60.361668, 57.589981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.410355, 60.732204, 57.570839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444083, 0.223933, 0.867551,
		0.814365, 0.302894, -0.495041,
		-0.373632, 0.926342, -0.047853,
		68.298264, 61.010105, 57.556484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.921570, 60.653923, 58.112385>,  <68.559807, 60.361668, 57.589981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.921570, 60.653923, 58.112385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.753815, 61.001198, 58.006279>,  <68.653160, 61.209564, 57.942616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.753815, 61.001198, 58.006279>,  <68.921570, 60.653923, 58.112385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.753815, 61.001198, 58.006279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590114, 0.482763, 0.647074,
		0.689844, 0.114834, -0.714793,
		-0.419382, 0.868189, -0.265266,
		68.627998, 61.261654, 57.926701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.161354, 61.207233, 58.535080>,  <68.921570, 60.653923, 58.112385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.161354, 61.207233, 58.535080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.900696, 61.394104, 58.774109>,  <68.744301, 61.506226, 58.917526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.900696, 61.394104, 58.774109>,  <69.161354, 61.207233, 58.535080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.900696, 61.394104, 58.774109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299625, -0.565207, 0.768613,
		0.696833, 0.679916, 0.228339,
		-0.651651, 0.467179, 0.597575,
		68.705200, 61.534256, 58.953381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.346893, 61.497028, 59.317295>,  <69.161354, 61.207233, 58.535080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.346893, 61.497028, 59.317295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.969910, 61.364647, 59.298302>,  <68.743721, 61.285217, 59.286903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.969910, 61.364647, 59.298302>,  <69.346893, 61.497028, 59.317295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.969910, 61.364647, 59.298302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147694, -0.539519, 0.828918,
		-0.299957, 0.774200, 0.557351,
		-0.942450, -0.330957, -0.047488,
		68.687172, 61.265358, 59.284054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.681351, 60.762451, 59.328182>,  <69.346893, 61.497028, 59.317295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.681351, 60.762451, 59.328182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.611725, 60.377201, 59.246109>,  <69.569954, 60.146053, 59.196865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.611725, 60.377201, 59.246109>,  <69.681351, 60.762451, 59.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.611725, 60.377201, 59.246109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688386, 0.029985, -0.724725,
		0.704151, -0.267385, 0.657781,
		-0.174057, -0.963123, -0.205178,
		69.559509, 60.088264, 59.184555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.285675, 60.688835, 58.872356>,  <69.681351, 60.762451, 59.328182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.285675, 60.688835, 58.872356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.012566, 60.406036, 58.798622>,  <69.848701, 60.236359, 58.754383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.012566, 60.406036, 58.798622>,  <70.285675, 60.688835, 58.872356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.012566, 60.406036, 58.798622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684317, 0.707199, -0.177708,
		0.255999, 0.004809, -0.966665,
		-0.682769, -0.706998, -0.184333,
		69.807732, 60.193935, 58.743320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.775681, 60.257339, 59.095486>,  <70.285675, 60.688835, 58.872356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.775681, 60.257339, 59.095486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.881279, 59.915478, 59.274315>,  <70.944633, 59.710361, 59.381611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.881279, 59.915478, 59.274315>,  <70.775681, 60.257339, 59.095486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.881279, 59.915478, 59.274315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941220, 0.126993, -0.313014,
		0.210744, 0.503426, 0.837944,
		0.263992, -0.854655, 0.447071,
		70.960480, 59.659081, 59.408436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.439796, 60.377369, 59.545757>,  <70.775681, 60.257339, 59.095486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.439796, 60.377369, 59.545757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.398224, 60.018860, 59.373291>,  <71.373283, 59.803757, 59.269814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.398224, 60.018860, 59.373291>,  <71.439796, 60.377369, 59.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.398224, 60.018860, 59.373291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938582, 0.055039, -0.340638,
		0.329034, -0.440081, 0.835503,
		-0.103924, -0.896269, -0.431162,
		71.367050, 59.749981, 59.243942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.980812, 59.849850, 59.829609>,  <71.439796, 60.377369, 59.545757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.980812, 59.849850, 59.829609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.851112, 59.767616, 59.460266>,  <71.773293, 59.718277, 59.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.851112, 59.767616, 59.460266>,  <71.980812, 59.849850, 59.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.851112, 59.767616, 59.460266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943235, -0.144453, -0.299067,
		-0.071899, -0.967920, 0.240754,
		-0.324250, -0.205585, -0.923362,
		71.753838, 59.705940, 59.183258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.310043, 59.105755, 59.680489>,  <71.980812, 59.849850, 59.829609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.310043, 59.105755, 59.680489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192047, 59.272621, 59.336639>,  <72.121246, 59.372742, 59.130329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192047, 59.272621, 59.336639>,  <72.310043, 59.105755, 59.680489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.192047, 59.272621, 59.336639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838898, -0.317614, -0.442009,
		-0.457418, -0.851526, -0.256264,
		-0.294989, 0.417162, -0.859626,
		72.103554, 59.397770, 59.078751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.772446, 58.554455, 59.398872>,  <72.310043, 59.105755, 59.680489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.772446, 58.554455, 59.398872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.080673, 58.697563, 59.609863>,  <73.265610, 58.783428, 59.736458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.080673, 58.697563, 59.609863>,  <72.772446, 58.554455, 59.398872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.080673, 58.697563, 59.609863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508933, -0.152818, 0.847133,
		0.383684, -0.921222, 0.064323,
		0.770567, 0.357767, 0.527474,
		73.311844, 58.804893, 59.768105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.913788, 58.003014, 59.901814>,  <72.772446, 58.554455, 59.398872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.913788, 58.003014, 59.901814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.204887, 57.793980, 60.079483>,  <73.379547, 57.668560, 60.186085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.204887, 57.793980, 60.079483>,  <72.913788, 58.003014, 59.901814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.204887, 57.793980, 60.079483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605442, -0.185234, 0.774034,
		-0.322227, -0.832218, -0.451201,
		0.727742, -0.522591, 0.444173,
		73.423210, 57.637203, 60.212734>
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
