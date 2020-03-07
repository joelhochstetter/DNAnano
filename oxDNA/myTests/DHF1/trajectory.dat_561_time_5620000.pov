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
	<-0.175778, 0.402510, 2.993357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.062016, 0.128571, 3.161913>,  <0.204692, -0.035793, 3.263046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.062016, 0.128571, 3.161913>,  <-0.175778, 0.402510, 2.993357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.062016, 0.128571, 3.161913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784573, 0.608823, -0.117384,
		-0.176161, 0.400393, 0.899251,
		0.594485, -0.684850, 0.421389,
		0.240361, -0.076884, 3.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.311033, 0.636013, 3.564810>,  <-0.175778, 0.402510, 2.993357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.311033, 0.636013, 3.564810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.464947, 0.329117, 3.359566>,  <0.557295, 0.144979, 3.236419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.464947, 0.329117, 3.359566>,  <0.311033, 0.636013, 3.564810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.464947, 0.329117, 3.359566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754377, 0.581735, -0.304139,
		0.531842, -0.270051, 0.802631,
		0.384786, -0.767240, -0.513111,
		0.580382, 0.098945, 3.205632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.984036, 0.572779, 3.737735>,  <0.311033, 0.636013, 3.564810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.984036, 0.572779, 3.737735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950020, 0.416653, 3.371037>,  <0.929610, 0.322977, 3.151018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.950020, 0.416653, 3.371037>,  <0.984036, 0.572779, 3.737735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.950020, 0.416653, 3.371037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817873, 0.498157, -0.287965,
		0.569080, -0.774269, 0.276866,
		-0.085040, -0.390317, -0.916745,
		0.924508, 0.299558, 3.096013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.652328, 0.315819, 3.469564>,  <0.984036, 0.572779, 3.737735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.652328, 0.315819, 3.469564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438160, 0.377495, 3.137407>,  <1.309659, 0.414500, 2.938113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.438160, 0.377495, 3.137407>,  <1.652328, 0.315819, 3.469564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.438160, 0.377495, 3.137407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816746, 0.344881, -0.462583,
		0.215061, -0.925896, -0.310589,
		-0.535420, 0.154189, -0.830392,
		1.277534, 0.423752, 2.888290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.100489, -0.040295, 2.943037>,  <1.652328, 0.315819, 3.469564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.100489, -0.040295, 2.943037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835060, 0.197487, 2.761356>,  <1.675803, 0.340156, 2.652348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835060, 0.197487, 2.761356>,  <2.100489, -0.040295, 2.943037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835060, 0.197487, 2.761356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702865, 0.287444, -0.650658,
		-0.256229, -0.751000, -0.608561,
		-0.663571, 0.594454, -0.454200,
		1.635989, 0.375823, 2.625096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.212977, -0.067261, 2.276080>,  <2.100489, -0.040295, 2.943037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.212977, -0.067261, 2.276080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.044495, 0.289452, 2.342186>,  <1.943405, 0.503479, 2.381849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.044495, 0.289452, 2.342186>,  <2.212977, -0.067261, 2.276080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.044495, 0.289452, 2.342186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667762, 0.428231, -0.608861,
		-0.613742, -0.146099, -0.775871,
		-0.421206, 0.891781, 0.165264,
		1.918133, 0.556986, 2.391765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.304683, 0.266703, 1.655614>,  <2.212977, -0.067261, 2.276080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.304683, 0.266703, 1.655614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.190975, 0.572880, 1.886539>,  <2.122751, 0.756586, 2.025095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.190975, 0.572880, 1.886539>,  <2.304683, 0.266703, 1.655614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.190975, 0.572880, 1.886539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630343, 0.602929, -0.489024,
		-0.722398, 0.224890, -0.653885,
		-0.284270, 0.765441, 0.577313,
		2.105694, 0.802512, 2.059733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.007430, 0.826132, 1.177789>,  <2.304683, 0.266703, 1.655614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.007430, 0.826132, 1.177789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.170235, 0.955547, 1.519470>,  <2.267918, 1.033197, 1.724479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.170235, 0.955547, 1.519470>,  <2.007430, 0.826132, 1.177789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.170235, 0.955547, 1.519470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711003, 0.474857, -0.518638,
		-0.573424, 0.818434, -0.036765,
		0.407013, 0.323539, 0.854203,
		2.292339, 1.052609, 1.775731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.236807, 1.455865, 1.323675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.352737, 1.661247, 1.646751>,  <3.422296, 1.784477, 1.840597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.352737, 1.661247, 1.646751>,  <3.236807, 1.455865, 1.323675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.352737, 1.661247, 1.646751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932865, -0.037078, 0.358313,
		0.213926, -0.857314, 0.468240,
		0.289825, 0.513457, 0.807690,
		3.439685, 1.815284, 1.889059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.238953, 1.121338, 2.008843>,  <3.236807, 1.455865, 1.323675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.238953, 1.121338, 2.008843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.162422, 1.506115, 2.086880>,  <3.116504, 1.736981, 2.133702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.162422, 1.506115, 2.086880>,  <3.238953, 1.121338, 2.008843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.162422, 1.506115, 2.086880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861868, -0.259757, 0.435556,
		0.469656, -0.084809, 0.878766,
		-0.191327, 0.961942, 0.195091,
		3.105024, 1.794698, 2.145407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.116212, 1.284961, 2.718365>,  <3.238953, 1.121338, 2.008843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.116212, 1.284961, 2.718365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.906082, 1.397945, 2.397305>,  <2.780004, 1.465736, 2.204668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.906082, 1.397945, 2.397305>,  <3.116212, 1.284961, 2.718365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.906082, 1.397945, 2.397305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798470, -0.489643, 0.350279,
		-0.294072, 0.824903, 0.482759,
		-0.525325, 0.282461, -0.802651,
		2.748485, 1.482684, 2.156509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.527512, 1.748512, 2.828841>,  <3.116212, 1.284961, 2.718365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.527512, 1.748512, 2.828841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.449333, 1.540298, 2.496372>,  <2.402426, 1.415370, 2.296891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.449333, 1.540298, 2.496372>,  <2.527512, 1.748512, 2.828841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.449333, 1.540298, 2.496372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789418, -0.419374, 0.448269,
		-0.581910, 0.743754, -0.328952,
		-0.195448, -0.520533, -0.831171,
		2.390699, 1.384138, 2.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.850720, 1.862814, 2.666818>,  <2.527512, 1.748512, 2.828841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.850720, 1.862814, 2.666818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.911705, 1.529316, 2.454544>,  <1.948296, 1.329217, 2.327180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.911705, 1.529316, 2.454544>,  <1.850720, 1.862814, 2.666818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.911705, 1.529316, 2.454544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814419, -0.410184, 0.410452,
		-0.559891, 0.369620, -0.741555,
		0.152463, -0.833745, -0.530684,
		1.957444, 1.279193, 2.295339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.194009, 1.651273, 2.342249>,  <1.850720, 1.862814, 2.666818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.194009, 1.651273, 2.342249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.410217, 1.314873, 2.351662>,  <1.539942, 1.113032, 2.357309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.410217, 1.314873, 2.351662>,  <1.194009, 1.651273, 2.342249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.410217, 1.314873, 2.351662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801515, -0.506236, 0.318273,
		-0.255755, -0.190895, -0.947707,
		0.540520, -0.841002, 0.023533,
		1.572373, 1.062572, 2.358721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.768417, 1.199892, 2.030291>,  <1.194009, 1.651273, 2.342249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.768417, 1.199892, 2.030291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037216, 0.948982, 2.187744>,  <1.198496, 0.798437, 2.282216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037216, 0.948982, 2.187744>,  <0.768417, 1.199892, 2.030291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037216, 0.948982, 2.187744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736138, -0.623766, 0.262710,
		0.080745, -0.466309, -0.880929,
		0.671998, -0.627273, 0.393634,
		1.238815, 0.760800, 2.305834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.579672, 0.525524, 1.758876>,  <0.768417, 1.199892, 2.030291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.579672, 0.525524, 1.758876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.772667, 0.523930, 2.109234>,  <0.888464, 0.522973, 2.319448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.772667, 0.523930, 2.109234>,  <0.579672, 0.525524, 1.758876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.772667, 0.523930, 2.109234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735540, -0.544811, 0.402694,
		0.475592, -0.838549, -0.265795,
		0.482487, -0.003985, 0.875894,
		0.917413, 0.522734, 2.372002>
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
