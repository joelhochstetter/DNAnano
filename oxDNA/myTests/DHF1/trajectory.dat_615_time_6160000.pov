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
	<5.854766, 1.796291, 2.971425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.597664, 1.670694, 3.250932>,  <5.443403, 1.595336, 3.418636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.597664, 1.670694, 3.250932>,  <5.854766, 1.796291, 2.971425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.597664, 1.670694, 3.250932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764998, 0.311352, -0.563771,
		-0.040543, -0.896922, -0.440327,
		-0.642755, -0.313992, 0.698766,
		5.404837, 1.576497, 3.460562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.389155, 1.152898, 2.808614>,  <5.854766, 1.796291, 2.971425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.389155, 1.152898, 2.808614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.233028, 1.452494, 3.022779>,  <5.139352, 1.632251, 3.151279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.233028, 1.452494, 3.022779>,  <5.389155, 1.152898, 2.808614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.233028, 1.452494, 3.022779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599772, 0.234360, -0.765081,
		-0.698517, -0.619750, 0.357749,
		-0.390316, 0.748990, 0.535413,
		5.115933, 1.677191, 3.183403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703789, 1.266274, 2.633385>,  <5.389155, 1.152898, 2.808614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703789, 1.266274, 2.633385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761391, 1.610844, 2.828203>,  <4.795952, 1.817585, 2.945094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.761391, 1.610844, 2.828203>,  <4.703789, 1.266274, 2.633385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.761391, 1.610844, 2.828203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640914, 0.456189, -0.617350,
		-0.753984, -0.223253, 0.617791,
		0.144004, 0.861423, 0.487045,
		4.804592, 1.869271, 2.974317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.040978, 1.661953, 2.683565>,  <4.703789, 1.266274, 2.633385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.040978, 1.661953, 2.683565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.318317, 1.942503, 2.749706>,  <4.484721, 2.110833, 2.789391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.318317, 1.942503, 2.749706>,  <4.040978, 1.661953, 2.683565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.318317, 1.942503, 2.749706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488886, 0.626423, -0.607112,
		-0.529395, 0.340101, 0.777221,
		0.693349, 0.701374, 0.165354,
		4.526322, 2.152915, 2.799313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.747745, 2.255031, 2.911657>,  <4.040978, 1.661953, 2.683565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.747745, 2.255031, 2.911657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.078911, 2.359716, 2.713239>,  <4.277611, 2.422528, 2.594188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.078911, 2.359716, 2.713239>,  <3.747745, 2.255031, 2.911657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.078911, 2.359716, 2.713239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543193, 0.594365, -0.593019,
		0.139631, 0.760419, 0.634245,
		0.827916, 0.261713, -0.496046,
		4.327286, 2.438230, 2.564425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.874747, 2.951939, 2.927547>,  <3.747745, 2.255031, 2.911657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.874747, 2.951939, 2.927547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.055210, 2.817989, 2.596654>,  <4.163488, 2.737619, 2.398118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.055210, 2.817989, 2.596654>,  <3.874747, 2.951939, 2.927547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.055210, 2.817989, 2.596654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614062, 0.556142, -0.560031,
		0.647599, 0.760635, 0.045274,
		0.451158, -0.334874, -0.827234,
		4.190557, 2.717527, 2.348484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.649665, 3.390431, 2.450396>,  <3.874747, 2.951939, 2.927547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.649665, 3.390431, 2.450396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.773907, 3.097370, 2.208158>,  <3.848452, 2.921534, 2.062816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.773907, 3.097370, 2.208158>,  <3.649665, 3.390431, 2.450396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.773907, 3.097370, 2.208158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636723, 0.312679, -0.704852,
		0.705768, 0.604527, -0.369377,
		0.310605, -0.732653, -0.605595,
		3.867088, 2.877574, 2.026480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.789930, 3.733564, 1.853144>,  <3.649665, 3.390431, 2.450396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.789930, 3.733564, 1.853144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.743542, 3.347610, 1.758867>,  <3.715708, 3.116038, 1.702301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.743542, 3.347610, 1.758867>,  <3.789930, 3.733564, 1.853144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743542, 3.347610, 1.758867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580691, 0.258379, -0.772035,
		0.805821, 0.047330, -0.590264,
		-0.115972, -0.964883, -0.235692,
		3.708750, 3.058146, 1.688160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.651378, 3.504500, 1.158433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.678307, 3.134863, 1.007957>,  <2.694464, 2.913080, 0.917672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.678307, 3.134863, 1.007957>,  <2.651378, 3.504500, 1.158433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.678307, 3.134863, 1.007957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953825, -0.051011, 0.295999,
		-0.292721, -0.378745, 0.877990,
		0.067321, -0.924094, -0.376189,
		2.698503, 2.857635, 0.895101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.835368, 3.027573, 1.755004>,  <2.651378, 3.504500, 1.158433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.835368, 3.027573, 1.755004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.954124, 2.933080, 1.384912>,  <3.025378, 2.876384, 1.162857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.954124, 2.933080, 1.384912>,  <2.835368, 3.027573, 1.755004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.954124, 2.933080, 1.384912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915637, -0.204593, 0.346050,
		-0.271044, -0.949913, 0.155561,
		0.296891, -0.236233, -0.925230,
		3.043192, 2.862210, 1.107344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.001002, 2.341626, 1.522668>,  <2.835368, 3.027573, 1.755004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.001002, 2.341626, 1.522668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.262062, 2.592227, 1.352238>,  <3.418698, 2.742588, 1.249980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.262062, 2.592227, 1.352238>,  <3.001002, 2.341626, 1.522668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.262062, 2.592227, 1.352238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714275, -0.321206, 0.621802,
		0.252703, -0.710155, -0.657131,
		0.652650, 0.626504, -0.426076,
		3.457857, 2.780178, 1.224415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.594440, 1.860469, 1.228682>,  <3.001002, 2.341626, 1.522668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.594440, 1.860469, 1.228682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.677757, 2.239787, 1.324472>,  <3.727748, 2.467378, 1.381947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.677757, 2.239787, 1.324472>,  <3.594440, 1.860469, 1.228682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.677757, 2.239787, 1.324472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708271, -0.315102, 0.631714,
		0.674512, 0.038032, -0.737284,
		0.208294, 0.948296, 0.239477,
		3.740246, 2.524276, 1.396315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.296878, 2.096713, 1.041898>,  <3.594440, 1.860469, 1.228682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.296878, 2.096713, 1.041898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189987, 2.326870, 1.351093>,  <4.125853, 2.464965, 1.536610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189987, 2.326870, 1.351093>,  <4.296878, 2.096713, 1.041898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189987, 2.326870, 1.351093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820789, -0.284360, 0.495423,
		0.504871, 0.766851, -0.396289,
		-0.267227, 0.575394, 0.772988,
		4.109819, 2.499489, 1.582990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.970205, 2.280102, 1.416784>,  <4.296878, 2.096713, 1.041898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.970205, 2.280102, 1.416784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.730072, 2.427598, 1.700651>,  <4.585992, 2.516096, 1.870972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.730072, 2.427598, 1.700651>,  <4.970205, 2.280102, 1.416784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.730072, 2.427598, 1.700651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723968, -0.126466, 0.678142,
		0.339808, 0.920889, -0.191035,
		-0.600334, 0.368742, 0.709668,
		4.549972, 2.538221, 1.913552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336844, 2.832458, 1.731666>,  <4.970205, 2.280102, 1.416784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336844, 2.832458, 1.731666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.056641, 2.694137, 1.981373>,  <4.888518, 2.611145, 2.131197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.056641, 2.694137, 1.981373>,  <5.336844, 2.832458, 1.731666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.056641, 2.694137, 1.981373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694127, -0.126977, 0.708565,
		-0.165755, 0.929676, 0.328979,
		-0.700509, -0.345801, 0.624267,
		4.846488, 2.590396, 2.168653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.208611, 3.243895, 2.305776>,  <5.336844, 2.832458, 1.731666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.208611, 3.243895, 2.305776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.170174, 2.848655, 2.353819>,  <5.147111, 2.611511, 2.382645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.170174, 2.848655, 2.353819>,  <5.208611, 3.243895, 2.305776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.170174, 2.848655, 2.353819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833500, -0.013919, 0.552344,
		-0.544099, 0.153186, 0.824919,
		-0.096093, -0.988099, 0.120107,
		5.141346, 2.552225, 2.389851>
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
