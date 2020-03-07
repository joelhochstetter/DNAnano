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
	<36.493820, 52.743862, 50.410637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331497, 52.952541, 50.110462>,  <36.234104, 53.077751, 49.930359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331497, 52.952541, 50.110462>,  <36.493820, 52.743862, 50.410637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331497, 52.952541, 50.110462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645348, 0.744976, 0.168926,
		0.647183, -0.415740, -0.638995,
		-0.405807, 0.521700, -0.750433,
		36.209755, 53.109051, 49.885334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049461, 52.802750, 49.942158>,  <36.493820, 52.743862, 50.410637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049461, 52.802750, 49.942158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786251, 53.103939, 49.940361>,  <36.628323, 53.284653, 49.939281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786251, 53.103939, 49.940361>,  <37.049461, 52.802750, 49.942158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786251, 53.103939, 49.940361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752895, 0.657839, -0.019916,
		-0.012041, -0.016488, -0.999792,
		-0.658030, 0.752978, -0.004492,
		36.588840, 53.329834, 49.939014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151459, 53.307545, 49.304089>,  <37.049461, 52.802750, 49.942158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151459, 53.307545, 49.304089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987091, 53.484787, 49.622787>,  <36.888470, 53.591133, 49.814007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987091, 53.484787, 49.622787>,  <37.151459, 53.307545, 49.304089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987091, 53.484787, 49.622787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746160, 0.665605, 0.014661,
		-0.523820, 0.600523, -0.604139,
		-0.410923, 0.443105, 0.796744,
		36.863815, 53.617718, 49.861809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051899, 54.029438, 49.179504>,  <37.151459, 53.307545, 49.304089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051899, 54.029438, 49.179504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118134, 53.923943, 49.559616>,  <37.157875, 53.860645, 49.787682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118134, 53.923943, 49.559616>,  <37.051899, 54.029438, 49.179504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118134, 53.923943, 49.559616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850124, 0.526579, -0.001986,
		-0.499872, 0.808181, 0.311403,
		0.165583, -0.263739, 0.950276,
		37.167809, 53.844822, 49.844700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144577, 54.700893, 49.541679>,  <37.051899, 54.029438, 49.179504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144577, 54.700893, 49.541679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326656, 54.410759, 49.748245>,  <37.435905, 54.236679, 49.872185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326656, 54.410759, 49.748245>,  <37.144577, 54.700893, 49.541679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326656, 54.410759, 49.748245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862936, 0.502296, -0.055145,
		-0.219394, 0.470734, 0.854562,
		0.455202, -0.725333, 0.516414,
		37.463219, 54.193157, 49.903168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633850, 54.980030, 50.206764>,  <37.144577, 54.700893, 49.541679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633850, 54.980030, 50.206764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740192, 54.627178, 50.051247>,  <37.803997, 54.415466, 49.957935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740192, 54.627178, 50.051247>,  <37.633850, 54.980030, 50.206764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740192, 54.627178, 50.051247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902028, 0.369918, -0.222499,
		0.340094, -0.291547, 0.894056,
		0.265858, -0.882134, -0.388791,
		37.819950, 54.362537, 49.934608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231220, 55.175266, 50.711445>,  <37.633850, 54.980030, 50.206764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231220, 55.175266, 50.711445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387287, 54.807957, 50.684486>,  <38.480927, 54.587570, 50.668312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387287, 54.807957, 50.684486>,  <38.231220, 55.175266, 50.711445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387287, 54.807957, 50.684486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784623, 0.369893, -0.497539,
		0.481808, 0.141241, 0.864819,
		0.390164, -0.918275, -0.067396,
		38.504337, 54.532475, 50.664268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912750, 55.268406, 50.805187>,  <38.231220, 55.175266, 50.711445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912750, 55.268406, 50.805187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847076, 54.941265, 50.584583>,  <38.807671, 54.744980, 50.452221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847076, 54.941265, 50.584583>,  <38.912750, 55.268406, 50.805187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847076, 54.941265, 50.584583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614420, 0.352608, -0.705801,
		0.771707, -0.454742, 0.444610,
		-0.164184, -0.817849, -0.551513,
		38.797821, 54.695911, 50.419128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546349, 54.866001, 50.652534>,  <38.912750, 55.268406, 50.805187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546349, 54.866001, 50.652534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269917, 54.826107, 50.366188>,  <39.104057, 54.802170, 50.194378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269917, 54.826107, 50.366188>,  <39.546349, 54.866001, 50.652534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269917, 54.826107, 50.366188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664862, 0.300764, -0.683739,
		0.283494, -0.948470, -0.141546,
		-0.691078, -0.099727, -0.715867,
		39.062595, 54.796188, 50.151428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916008, 54.708439, 50.022671>,  <39.546349, 54.866001, 50.652534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916008, 54.708439, 50.022671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553307, 54.836643, 49.913071>,  <39.335686, 54.913567, 49.847309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553307, 54.836643, 49.913071>,  <39.916008, 54.708439, 50.022671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553307, 54.836643, 49.913071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391763, 0.400008, -0.828563,
		-0.155959, -0.858643, -0.488271,
		-0.906752, 0.320508, -0.273999,
		39.281281, 54.932796, 49.830872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756073, 54.479492, 49.285465>,  <39.916008, 54.708439, 50.022671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756073, 54.479492, 49.285465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533703, 54.804932, 49.353577>,  <39.400280, 55.000195, 49.394444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533703, 54.804932, 49.353577>,  <39.756073, 54.479492, 49.285465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533703, 54.804932, 49.353577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514697, 0.497785, -0.698066,
		-0.652710, -0.300433, -0.695492,
		-0.555928, 0.813603, 0.170277,
		39.366924, 55.049011, 49.404659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945580, 55.224239, 49.184120>,  <39.756073, 54.479492, 49.285465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945580, 55.224239, 49.184120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859417, 55.548519, 49.401878>,  <39.807720, 55.743088, 49.532536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859417, 55.548519, 49.401878>,  <39.945580, 55.224239, 49.184120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859417, 55.548519, 49.401878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913705, 0.029404, -0.405313,
		-0.344594, -0.584726, 0.734405,
		-0.215402, 0.810698, 0.544399,
		39.794796, 55.791729, 49.565197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120743, 55.650261, 48.742527>,  <39.945580, 55.224239, 49.184120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120743, 55.650261, 48.742527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909584, 55.982628, 48.672215>,  <39.782890, 56.182049, 48.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909584, 55.982628, 48.672215>,  <40.120743, 55.650261, 48.742527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909584, 55.982628, 48.672215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171823, 0.307178, 0.936012,
		0.831749, 0.463910, -0.304928,
		-0.527892, 0.830921, -0.175784,
		39.751217, 56.231903, 48.619480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594345, 56.239399, 48.764538>,  <40.120743, 55.650261, 48.742527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594345, 56.239399, 48.764538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210480, 56.257896, 48.875462>,  <39.980160, 56.268997, 48.942017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210480, 56.257896, 48.875462>,  <40.594345, 56.239399, 48.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210480, 56.257896, 48.875462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281137, 0.164660, 0.945436,
		-0.001938, 0.985265, -0.171020,
		-0.959666, 0.046248, 0.277313,
		39.922581, 56.271770, 48.958656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406513, 56.910892, 49.015881>,  <40.594345, 56.239399, 48.764538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406513, 56.910892, 49.015881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184246, 56.644531, 49.215000>,  <40.050888, 56.484715, 49.334473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184246, 56.644531, 49.215000>,  <40.406513, 56.910892, 49.015881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184246, 56.644531, 49.215000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393669, 0.316641, 0.862997,
		-0.732300, 0.675505, 0.086201,
		-0.555664, -0.665907, 0.497801,
		40.017548, 56.444759, 49.364342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473572, 57.213921, 49.682377>,  <40.406513, 56.910892, 49.015881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473572, 57.213921, 49.682377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260784, 56.882984, 49.754501>,  <40.133110, 56.684422, 49.797775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260784, 56.882984, 49.754501>,  <40.473572, 57.213921, 49.682377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260784, 56.882984, 49.754501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106414, 0.276579, 0.955081,
		-0.840049, 0.488888, -0.235172,
		-0.531971, -0.827341, 0.180316,
		40.101192, 56.634781, 49.808598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640991, 56.579102, 50.083286>,  <40.473572, 57.213921, 49.682377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640991, 56.579102, 50.083286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773720, 56.900265, 50.281372>,  <40.853355, 57.092960, 50.400223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773720, 56.900265, 50.281372>,  <40.640991, 56.579102, 50.083286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773720, 56.900265, 50.281372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034310, -0.514340, 0.856900,
		0.942719, -0.301328, -0.143120,
		0.331820, 0.802905, 0.495216,
		40.873264, 57.141136, 50.429935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251514, 56.386147, 50.313026>,  <40.640991, 56.579102, 50.083286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251514, 56.386147, 50.313026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070724, 56.638214, 50.565567>,  <40.962250, 56.789455, 50.717091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070724, 56.638214, 50.565567>,  <41.251514, 56.386147, 50.313026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070724, 56.638214, 50.565567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155372, -0.641341, 0.751360,
		0.878396, 0.437689, 0.191959,
		-0.451973, 0.630167, 0.631356,
		40.935131, 56.827263, 50.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720421, 56.640926, 50.862968>,  <41.251514, 56.386147, 50.313026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720421, 56.640926, 50.862968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363594, 56.642948, 51.043716>,  <41.149498, 56.644161, 51.152164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363594, 56.642948, 51.043716>,  <41.720421, 56.640926, 50.862968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363594, 56.642948, 51.043716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408559, -0.418299, 0.811237,
		0.193116, 0.908295, 0.371088,
		-0.892068, 0.005052, 0.451873,
		41.095974, 56.644463, 51.179279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402954, 56.958389, 50.932579>,  <41.720421, 56.640926, 50.862968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402954, 56.958389, 50.932579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716160, 56.840237, 50.713623>,  <42.904083, 56.769344, 50.582249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716160, 56.840237, 50.713623>,  <42.402954, 56.958389, 50.932579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716160, 56.840237, 50.713623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394372, 0.916306, 0.069672,
		0.480993, -0.270428, 0.833975,
		0.783018, -0.295384, -0.547386,
		42.951065, 56.751621, 50.549408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959896, 57.236504, 51.218658>,  <42.402954, 56.958389, 50.932579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959896, 57.236504, 51.218658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053623, 57.144779, 50.840767>,  <43.109859, 57.089745, 50.614033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053623, 57.144779, 50.840767>,  <42.959896, 57.236504, 51.218658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053623, 57.144779, 50.840767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284630, 0.945380, -0.158876,
		0.929559, -0.231670, 0.286790,
		0.234319, -0.229314, -0.944727,
		43.123920, 57.075985, 50.557350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570469, 57.733440, 51.379379>,  <42.959896, 57.236504, 51.218658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570469, 57.733440, 51.379379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473705, 57.396156, 51.571411>,  <43.415649, 57.193787, 51.686630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473705, 57.396156, 51.571411>,  <43.570469, 57.733440, 51.379379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473705, 57.396156, 51.571411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945965, -0.315063, -0.076714,
		0.215941, 0.435582, 0.873864,
		-0.241907, -0.843211, 0.480080,
		43.401134, 57.143192, 51.715435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123192, 57.401489, 51.338421>,  <43.570469, 57.733440, 51.379379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123192, 57.401489, 51.338421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920181, 57.134621, 51.556522>,  <43.798374, 56.974499, 51.687386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920181, 57.134621, 51.556522>,  <44.123192, 57.401489, 51.338421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920181, 57.134621, 51.556522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619382, -0.722403, -0.307409,
		0.598989, 0.181705, 0.779869,
		-0.507522, -0.667171, 0.545256,
		43.767925, 56.934471, 51.720100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502235, 57.210316, 51.895565>,  <44.123192, 57.401489, 51.338421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502235, 57.210316, 51.895565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248661, 56.925804, 51.774101>,  <44.096516, 56.755096, 51.701221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248661, 56.925804, 51.774101>,  <44.502235, 57.210316, 51.895565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248661, 56.925804, 51.774101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771250, -0.610559, -0.179973,
		-0.057393, -0.348290, 0.935628,
		-0.633939, -0.711274, -0.303661,
		44.058479, 56.712421, 51.683002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926258, 57.577564, 51.479607>,  <44.502235, 57.210316, 51.895565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926258, 57.577564, 51.479607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039112, 57.640778, 51.101097>,  <45.106823, 57.678707, 50.873993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039112, 57.640778, 51.101097>,  <44.926258, 57.577564, 51.479607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039112, 57.640778, 51.101097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878652, -0.438581, 0.188724,
		-0.385191, -0.884687, -0.262597,
		0.282132, 0.158037, -0.946269,
		45.123753, 57.688187, 50.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102657, 56.979939, 51.197968>,  <44.926258, 57.577564, 51.479607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102657, 56.979939, 51.197968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313641, 57.246880, 50.987659>,  <45.440231, 57.407043, 50.861477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313641, 57.246880, 50.987659>,  <45.102657, 56.979939, 51.197968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313641, 57.246880, 50.987659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840935, -0.322029, 0.434885,
		0.120910, -0.671518, -0.731057,
		0.527455, 0.667354, -0.525766,
		45.471878, 57.447086, 50.829929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803719, 56.699577, 51.044392>,  <45.102657, 56.979939, 51.197968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803719, 56.699577, 51.044392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841896, 57.096275, 51.010128>,  <45.864803, 57.334293, 50.989571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841896, 57.096275, 51.010128>,  <45.803719, 56.699577, 51.044392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841896, 57.096275, 51.010128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806121, -0.026519, 0.591156,
		0.584003, -0.125475, -0.801995,
		0.095443, 0.991742, -0.085661,
		45.870529, 57.393799, 50.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443222, 56.925762, 50.685661>,  <45.803719, 56.699577, 51.044392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443222, 56.925762, 50.685661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328697, 57.183598, 50.969223>,  <46.259983, 57.338299, 51.139359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328697, 57.183598, 50.969223>,  <46.443222, 56.925762, 50.685661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328697, 57.183598, 50.969223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892591, -0.089516, 0.441891,
		0.348294, 0.759275, -0.549721,
		-0.286308, 0.644584, 0.708900,
		46.242805, 57.376972, 51.181892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987007, 57.393360, 50.690701>,  <46.443222, 56.925762, 50.685661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987007, 57.393360, 50.690701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799038, 57.399666, 51.043728>,  <46.686256, 57.403450, 51.255543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799038, 57.399666, 51.043728>,  <46.987007, 57.393360, 50.690701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799038, 57.399666, 51.043728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873763, -0.133651, 0.467628,
		0.125329, 0.990903, 0.049030,
		-0.469927, 0.015767, 0.882564,
		46.658058, 57.404396, 51.308498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280563, 57.972641, 51.062042>,  <46.987007, 57.393360, 50.690701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280563, 57.972641, 51.062042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156689, 57.674992, 51.298813>,  <47.082363, 57.496403, 51.440876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156689, 57.674992, 51.298813>,  <47.280563, 57.972641, 51.062042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.156689, 57.674992, 51.298813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829835, 0.092393, 0.550307,
		-0.464186, 0.661622, 0.588887,
		-0.309686, -0.744123, 0.591924,
		47.063782, 57.451756, 51.476391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157726, 58.170399, 51.660938>,  <47.280563, 57.972641, 51.062042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157726, 58.170399, 51.660938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253578, 57.788410, 51.730919>,  <47.311089, 57.559219, 51.772907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253578, 57.788410, 51.730919>,  <47.157726, 58.170399, 51.660938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253578, 57.788410, 51.730919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822595, 0.295427, 0.485861,
		-0.515669, 0.027489, 0.856347,
		0.239632, -0.954970, 0.174955,
		47.325466, 57.501919, 51.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235973, 58.032722, 52.393059>,  <47.157726, 58.170399, 51.660938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235973, 58.032722, 52.393059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458942, 57.801704, 52.154488>,  <47.592724, 57.663094, 52.011345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458942, 57.801704, 52.154488>,  <47.235973, 58.032722, 52.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458942, 57.801704, 52.154488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816080, 0.249089, 0.521505,
		-0.152630, -0.777429, 0.610170,
		0.557420, -0.577545, -0.596426,
		47.626167, 57.628441, 51.975559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645771, 57.545204, 52.735439>,  <47.235973, 58.032722, 52.393059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645771, 57.545204, 52.735439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836800, 57.654892, 52.401558>,  <47.951416, 57.720707, 52.201229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836800, 57.654892, 52.401558>,  <47.645771, 57.545204, 52.735439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836800, 57.654892, 52.401558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758478, 0.350825, 0.549212,
		0.443441, -0.895390, -0.040450,
		0.477568, 0.274223, -0.834704,
		47.980072, 57.737160, 52.151146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.325760, 57.271584, 52.774380>,  <47.645771, 57.545204, 52.735439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.325760, 57.271584, 52.774380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.327332, 57.587963, 52.529633>,  <48.328274, 57.777790, 52.382786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.327332, 57.587963, 52.529633>,  <48.325760, 57.271584, 52.774380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.327332, 57.587963, 52.529633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876826, 0.291458, 0.382398,
		0.480791, -0.538004, -0.692381,
		0.003932, 0.790951, -0.611867,
		48.328510, 57.825249, 52.346073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.830532, 57.278309, 52.243748>,  <48.325760, 57.271584, 52.774380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.830532, 57.278309, 52.243748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.815590, 57.666443, 52.339291>,  <48.806625, 57.899323, 52.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.815590, 57.666443, 52.339291>,  <48.830532, 57.278309, 52.243748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.815590, 57.666443, 52.339291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948384, -0.040898, 0.314477,
		0.314917, 0.238278, -0.918723,
		-0.037359, 0.970335, 0.238859,
		48.804382, 57.957542, 52.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.452480, 57.646309, 52.004669>,  <48.830532, 57.278309, 52.243748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.452480, 57.646309, 52.004669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.324715, 57.819820, 52.341671>,  <49.248055, 57.923927, 52.543873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.324715, 57.819820, 52.341671>,  <49.452480, 57.646309, 52.004669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.324715, 57.819820, 52.341671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931469, -0.019698, 0.363288,
		0.174183, 0.900803, -0.397762,
		-0.319416, 0.433782, 0.842500,
		49.228889, 57.949955, 52.594421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.809654, 58.283722, 52.110229>,  <49.452480, 57.646309, 52.004669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.809654, 58.283722, 52.110229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.719528, 58.071320, 52.436974>,  <49.665455, 57.943878, 52.633022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.719528, 58.071320, 52.436974>,  <49.809654, 58.283722, 52.110229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.719528, 58.071320, 52.436974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973737, -0.094559, 0.207111,
		-0.032735, 0.842076, 0.538365,
		-0.225311, -0.531006, 0.816865,
		49.651936, 57.912018, 52.682034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.005028, 58.625366, 52.748493>,  <49.809654, 58.283722, 52.110229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.005028, 58.625366, 52.748493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.992706, 58.229977, 52.807777>,  <49.985313, 57.992741, 52.843349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.992706, 58.229977, 52.807777>,  <50.005028, 58.625366, 52.748493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.992706, 58.229977, 52.807777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974827, 0.003047, 0.222942,
		-0.220824, 0.151347, 0.963499,
		-0.030805, -0.988476, 0.148210,
		49.983463, 57.933434, 52.852242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.079147, 58.264935, 53.448246>,  <50.005028, 58.625366, 52.748493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.079147, 58.264935, 53.448246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.251171, 58.089481, 53.132614>,  <50.354385, 57.984211, 52.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.251171, 58.089481, 53.132614>,  <50.079147, 58.264935, 53.448246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.251171, 58.089481, 53.132614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894602, 0.324578, 0.307141,
		0.121396, -0.838004, 0.531989,
		0.430057, -0.438633, -0.789083,
		50.380188, 57.957893, 52.895889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.717213, 58.187614, 53.776764>,  <50.079147, 58.264935, 53.448246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.717213, 58.187614, 53.776764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.752483, 58.121471, 53.383850>,  <50.773647, 58.081787, 53.148102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.752483, 58.121471, 53.383850>,  <50.717213, 58.187614, 53.776764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.752483, 58.121471, 53.383850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956220, 0.290305, 0.036970,
		0.279049, -0.942540, 0.183715,
		0.088179, -0.165355, -0.982284,
		50.778938, 58.071865, 53.089165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.225777, 57.637642, 53.510876>,  <50.717213, 58.187614, 53.776764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.225777, 57.637642, 53.510876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.175476, 57.930939, 53.243580>,  <51.145298, 58.106918, 53.083202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.175476, 57.930939, 53.243580>,  <51.225777, 57.637642, 53.510876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.175476, 57.930939, 53.243580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989457, 0.141485, -0.030945,
		0.071855, -0.665083, -0.743304,
		-0.125748, 0.733244, -0.668237,
		51.137753, 58.150913, 53.043110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.445446, 57.423733, 52.773449>,  <51.225777, 57.637642, 53.510876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.445446, 57.423733, 52.773449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.510277, 57.798904, 52.896103>,  <51.549175, 58.024006, 52.969696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.510277, 57.798904, 52.896103>,  <51.445446, 57.423733, 52.773449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.510277, 57.798904, 52.896103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986135, -0.165168, -0.016038,
		0.035605, 0.304985, -0.951691,
		0.162080, 0.937925, 0.306638,
		51.558903, 58.080280, 52.988094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.932323, 57.733788, 52.316391>,  <51.445446, 57.423733, 52.773449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.932323, 57.733788, 52.316391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.954666, 57.943909, 52.656021>,  <51.968071, 58.069981, 52.859798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.954666, 57.943909, 52.656021>,  <51.932323, 57.733788, 52.316391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.954666, 57.943909, 52.656021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998033, -0.005138, -0.062475,
		-0.028456, 0.850898, -0.524559,
		0.055856, 0.525305, 0.849079,
		51.971424, 58.101501, 52.910744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.463169, 58.095123, 52.191628>,  <51.932323, 57.733788, 52.316391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.463169, 58.095123, 52.191628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.398907, 58.162369, 52.580662>,  <52.360352, 58.202717, 52.814083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.398907, 58.162369, 52.580662>,  <52.463169, 58.095123, 52.191628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.398907, 58.162369, 52.580662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960720, 0.252555, 0.115036,
		-0.226292, 0.952866, -0.202086,
		-0.160652, 0.168116, 0.972588,
		52.350712, 58.212803, 52.872437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.715385, 57.836597, 52.877609>,  <52.463169, 58.095123, 52.191628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.715385, 57.836597, 52.877609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.917625, 58.088848, 52.642090>,  <53.038967, 58.240196, 52.500778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.917625, 58.088848, 52.642090>,  <52.715385, 57.836597, 52.877609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.917625, 58.088848, 52.642090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795303, -0.076098, 0.601418,
		0.334463, -0.772348, -0.540012,
		0.505597, 0.630625, -0.588798,
		53.069305, 58.278034, 52.465450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.342537, 57.504887, 52.556049>,  <52.715385, 57.836597, 52.877609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.342537, 57.504887, 52.556049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.378407, 57.894722, 52.638165>,  <53.399929, 58.128624, 52.687435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.378407, 57.894722, 52.638165>,  <53.342537, 57.504887, 52.556049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.378407, 57.894722, 52.638165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820996, -0.189025, 0.538735,
		0.563847, 0.120229, -0.817081,
		0.089678, 0.974584, 0.205289,
		53.405312, 58.187096, 52.699753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.994247, 57.723122, 52.466278>,  <53.342537, 57.504887, 52.556049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.994247, 57.723122, 52.466278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.833881, 57.972359, 52.734913>,  <53.737663, 58.121902, 52.896091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.833881, 57.972359, 52.734913>,  <53.994247, 57.723122, 52.466278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.833881, 57.972359, 52.734913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763331, -0.178142, 0.620960,
		0.506554, 0.761590, -0.404208,
		-0.400911, 0.623094, 0.671583,
		53.713608, 58.159286, 52.936386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.521961, 58.270317, 52.630989>,  <53.994247, 57.723122, 52.466278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.521961, 58.270317, 52.630989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.257309, 58.165726, 52.912094>,  <54.098518, 58.102970, 53.080757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.257309, 58.165726, 52.912094>,  <54.521961, 58.270317, 52.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.257309, 58.165726, 52.912094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727684, -0.450013, 0.517653,
		0.180900, 0.853884, 0.488013,
		-0.661628, -0.261476, 0.702765,
		54.058819, 58.087284, 53.122925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.556545, 58.533905, 53.371189>,  <54.521961, 58.270317, 52.630989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.556545, 58.533905, 53.371189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.376053, 58.177155, 53.383514>,  <54.267757, 57.963104, 53.390911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.376053, 58.177155, 53.383514>,  <54.556545, 58.533905, 53.371189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.376053, 58.177155, 53.383514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655805, -0.307979, 0.689252,
		-0.605237, 0.331218, 0.723866,
		-0.451228, -0.891876, 0.030814,
		54.240685, 57.909592, 53.392757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.453506, 58.454025, 54.030125>,  <54.556545, 58.533905, 53.371189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.453506, 58.454025, 54.030125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.446709, 58.089043, 53.866596>,  <54.442631, 57.870052, 53.768478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.446709, 58.089043, 53.866596>,  <54.453506, 58.454025, 54.030125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.446709, 58.089043, 53.866596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450126, -0.372081, 0.811752,
		-0.892803, -0.170222, 0.417045,
		-0.016997, -0.912458, -0.408817,
		54.441608, 57.815304, 53.743950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.053677, 57.938461, 54.549465>,  <54.453506, 58.454025, 54.030125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.053677, 57.938461, 54.549465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.333862, 57.761135, 54.325745>,  <54.501976, 57.654739, 54.191513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.333862, 57.761135, 54.325745>,  <54.053677, 57.938461, 54.549465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.333862, 57.761135, 54.325745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429914, -0.363442, 0.826489,
		-0.569666, -0.819381, -0.063994,
		0.700467, -0.443311, -0.559304,
		54.544003, 57.628143, 54.157955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.997135, 57.193596, 54.690849>,  <54.053677, 57.938461, 54.549465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.997135, 57.193596, 54.690849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.354973, 57.333519, 54.579620>,  <54.569675, 57.417473, 54.512882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.354973, 57.333519, 54.579620>,  <53.997135, 57.193596, 54.690849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.354973, 57.333519, 54.579620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423933, -0.467550, 0.775679,
		0.141330, -0.811806, -0.566566,
		0.894599, 0.349813, -0.278072,
		54.623352, 57.438461, 54.496197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.428722, 56.714458, 54.774109>,  <53.997135, 57.193596, 54.690849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.428722, 56.714458, 54.774109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.658798, 57.037315, 54.827301>,  <54.796844, 57.231030, 54.859219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.658798, 57.037315, 54.827301>,  <54.428722, 56.714458, 54.774109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.658798, 57.037315, 54.827301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359062, -0.395185, 0.845520,
		0.735004, -0.438586, -0.517119,
		0.575191, 0.807138, 0.132982,
		54.831356, 57.279457, 54.867195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.187748, 56.501793, 55.000168>,  <54.428722, 56.714458, 54.774109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.187748, 56.501793, 55.000168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.101486, 56.871559, 55.125992>,  <55.049728, 57.093418, 55.201485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.101486, 56.871559, 55.125992>,  <55.187748, 56.501793, 55.000168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.101486, 56.871559, 55.125992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315242, -0.238980, 0.918428,
		0.924184, 0.297225, -0.239879,
		-0.215653, 0.924417, 0.314559,
		55.036789, 57.148884, 55.220360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.285648, 56.132580, 55.670658>,  <55.187748, 56.501793, 55.000168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.285648, 56.132580, 55.670658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.232605, 56.200840, 56.061203>,  <55.200779, 56.241798, 56.295532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.232605, 56.200840, 56.061203>,  <55.285648, 56.132580, 55.670658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.232605, 56.200840, 56.061203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989223, -0.038893, 0.141156,
		0.062063, 0.984563, -0.163657,
		-0.132612, 0.170653, 0.976366,
		55.192822, 56.252037, 56.354115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.750244, 56.649017, 56.048500>,  <55.285648, 56.132580, 55.670658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.750244, 56.649017, 56.048500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.627602, 56.394928, 56.332047>,  <55.554016, 56.242474, 56.502174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.627602, 56.394928, 56.332047>,  <55.750244, 56.649017, 56.048500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.627602, 56.394928, 56.332047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945449, -0.289385, 0.149609,
		0.110099, 0.716063, 0.689298,
		-0.306602, -0.635224, 0.708862,
		55.535622, 56.204361, 56.544704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.161148, 56.725639, 56.572350>,  <55.750244, 56.649017, 56.048500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.161148, 56.725639, 56.572350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.011833, 56.357029, 56.615128>,  <55.922245, 56.135860, 56.640793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.011833, 56.357029, 56.615128>,  <56.161148, 56.725639, 56.572350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.011833, 56.357029, 56.615128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927552, -0.372898, 0.024390,
		0.017402, 0.108300, 0.993966,
		-0.373289, -0.921530, 0.106943,
		55.899845, 56.080570, 56.647209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.501247, 56.566341, 57.096539>,  <56.161148, 56.725639, 56.572350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.501247, 56.566341, 57.096539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.381264, 56.233120, 56.910614>,  <56.309273, 56.033188, 56.799057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.381264, 56.233120, 56.910614>,  <56.501247, 56.566341, 57.096539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.381264, 56.233120, 56.910614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906608, -0.400536, 0.132789,
		-0.296795, -0.381573, 0.875394,
		-0.299958, -0.833050, -0.464815,
		56.291275, 55.983204, 56.771172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.087341, 56.156345, 57.061455>,  <56.501247, 56.566341, 57.096539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.087341, 56.156345, 57.061455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.837044, 55.897900, 56.886650>,  <56.686867, 55.742832, 56.781765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.837044, 55.897900, 56.886650>,  <57.087341, 56.156345, 57.061455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.837044, 55.897900, 56.886650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768254, -0.607477, -0.201883,
		-0.135038, -0.462065, 0.876505,
		-0.625740, -0.646117, -0.437016,
		56.649323, 55.704063, 56.755547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.178867, 55.380363, 57.369484>,  <57.087341, 56.156345, 57.061455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.178867, 55.380363, 57.369484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.061111, 55.412041, 56.988525>,  <56.990459, 55.431049, 56.759949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.061111, 55.412041, 56.988525>,  <57.178867, 55.380363, 57.369484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.061111, 55.412041, 56.988525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800460, -0.524006, -0.291000,
		-0.522106, -0.848025, 0.090877,
		-0.294395, 0.079190, -0.952397,
		56.972794, 55.435799, 56.702805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.480221, 54.896908, 57.017483>,  <57.178867, 55.380363, 57.369484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.480221, 54.896908, 57.017483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.363297, 55.114124, 56.702606>,  <57.293140, 55.244453, 56.513680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.363297, 55.114124, 56.702606>,  <57.480221, 54.896908, 57.017483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.363297, 55.114124, 56.702606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743556, -0.388586, -0.544173,
		-0.601397, -0.744386, -0.290191,
		-0.292311, 0.543038, -0.787188,
		57.275604, 55.277035, 56.466450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.043674, 54.602894, 57.416374>,  <57.480221, 54.896908, 57.017483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.043674, 54.602894, 57.416374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.108566, 54.756676, 57.052864>,  <58.147503, 54.848946, 56.834759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.108566, 54.756676, 57.052864>,  <58.043674, 54.602894, 57.416374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.108566, 54.756676, 57.052864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968353, 0.115001, 0.221514,
		0.189672, -0.915954, -0.353627,
		0.162229, 0.384450, -0.908779,
		58.157234, 54.872009, 56.780231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.609337, 54.230274, 57.011971>,  <58.043674, 54.602894, 57.416374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.609337, 54.230274, 57.011971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.580856, 54.613701, 56.901642>,  <58.563766, 54.843758, 56.835445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.580856, 54.613701, 56.901642>,  <58.609337, 54.230274, 57.011971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.580856, 54.613701, 56.901642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969704, 0.131302, 0.205995,
		0.233676, -0.252801, -0.938876,
		-0.071200, 0.958568, -0.275824,
		58.559498, 54.901272, 56.818893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.231422, 54.250862, 56.628628>,  <58.609337, 54.230274, 57.011971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.231422, 54.250862, 56.628628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.066254, 54.589169, 56.763786>,  <58.967152, 54.792152, 56.844883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.066254, 54.589169, 56.763786>,  <59.231422, 54.250862, 56.628628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.066254, 54.589169, 56.763786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909680, 0.401106, 0.107691,
		-0.044451, 0.351846, -0.935002,
		-0.412925, 0.845765, 0.337896,
		58.942375, 54.842899, 56.865154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.383614, 54.879635, 56.147221>,  <59.231422, 54.250862, 56.628628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.383614, 54.879635, 56.147221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.382706, 54.945515, 56.541756>,  <59.382160, 54.985043, 56.778477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.382706, 54.945515, 56.541756>,  <59.383614, 54.879635, 56.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.382706, 54.945515, 56.541756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931090, 0.360148, -0.058000,
		-0.364781, 0.918241, -0.154170,
		-0.002266, 0.164704, 0.986341,
		59.382027, 54.994926, 56.837658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.702705, 55.463196, 56.243053>,  <59.383614, 54.879635, 56.147221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.702705, 55.463196, 56.243053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.728630, 55.261303, 56.587387>,  <59.744186, 55.140167, 56.793987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.728630, 55.261303, 56.587387>,  <59.702705, 55.463196, 56.243053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.728630, 55.261303, 56.587387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986509, 0.162366, 0.020925,
		-0.150333, 0.847869, 0.508447,
		0.064812, -0.504733, 0.860839,
		59.748074, 55.109882, 56.845638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.077919, 55.775112, 56.771725>,  <59.702705, 55.463196, 56.243053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.077919, 55.775112, 56.771725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.138474, 55.384422, 56.832497>,  <60.174805, 55.150009, 56.868961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.138474, 55.384422, 56.832497>,  <60.077919, 55.775112, 56.771725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.138474, 55.384422, 56.832497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977205, 0.171025, 0.125779,
		-0.148836, 0.129426, 0.980355,
		0.151387, -0.976729, 0.151930,
		60.183891, 55.091404, 56.878075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.501720, 55.737617, 57.343201>,  <60.077919, 55.775112, 56.771725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.501720, 55.737617, 57.343201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.565147, 55.405220, 57.129921>,  <60.603203, 55.205780, 57.001953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.565147, 55.405220, 57.129921>,  <60.501720, 55.737617, 57.343201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.565147, 55.405220, 57.129921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985384, 0.099143, 0.138519,
		-0.062245, -0.547375, 0.834569,
		0.158564, -0.830994, -0.533204,
		60.612717, 55.155922, 56.969959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.429520, 56.369541, 57.131596>,  <60.501720, 55.737617, 57.343201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.429520, 56.369541, 57.131596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.481293, 56.308945, 56.739616>,  <60.512356, 56.272587, 56.504429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.481293, 56.308945, 56.739616>,  <60.429520, 56.369541, 57.131596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.481293, 56.308945, 56.739616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137933, 0.981403, -0.133501,
		0.981948, -0.117887, 0.147924,
		0.129435, -0.151495, -0.979947,
		60.520123, 56.263496, 56.445633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.957737, 56.862492, 56.842281>,  <60.429520, 56.369541, 57.131596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.957737, 56.862492, 56.842281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.718498, 56.762661, 56.537651>,  <60.574955, 56.702763, 56.354874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.718498, 56.762661, 56.537651>,  <60.957737, 56.862492, 56.842281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.718498, 56.762661, 56.537651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027044, 0.956018, -0.292057,
		0.800969, -0.154082, -0.578539,
		-0.598095, -0.249575, -0.761574,
		60.539070, 56.687790, 56.309177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.187855, 57.127411, 56.240711>,  <60.957737, 56.862492, 56.842281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.187855, 57.127411, 56.240711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.790321, 57.102539, 56.203972>,  <60.551804, 57.087616, 56.181931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.790321, 57.102539, 56.203972>,  <61.187855, 57.127411, 56.240711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.790321, 57.102539, 56.203972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016157, 0.900417, -0.434728,
		0.109729, -0.430562, -0.895866,
		-0.993830, -0.062176, -0.091845,
		60.492172, 57.083885, 56.176418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.512165, 57.621166, 55.699322>,  <61.187855, 57.127411, 56.240711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.512165, 57.621166, 55.699322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.132088, 57.515907, 55.632530>,  <60.904041, 57.452751, 55.592457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.132088, 57.515907, 55.632530>,  <61.512165, 57.621166, 55.699322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.132088, 57.515907, 55.632530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309515, -0.859479, -0.406812,
		-0.036461, -0.438233, 0.898121,
		-0.950195, -0.263149, -0.166978,
		60.847031, 57.436962, 55.582436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.242126, 57.631760, 56.026245>,  <61.512165, 57.621166, 55.699322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.242126, 57.631760, 56.026245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.988121, 57.326366, 56.073341>,  <61.835720, 57.143131, 56.101597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.988121, 57.326366, 56.073341>,  <62.242126, 57.631760, 56.026245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.988121, 57.326366, 56.073341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760251, 0.644675, 0.080080,
		-0.137041, -0.038657, -0.989811,
		-0.635010, -0.763479, 0.117736,
		61.797619, 57.097324, 56.108662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.514473, 56.969860, 56.138107>,  <62.242126, 57.631760, 56.026245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.514473, 56.969860, 56.138107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.782150, 57.261215, 56.196953>,  <62.942757, 57.436028, 56.232258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.782150, 57.261215, 56.196953>,  <62.514473, 56.969860, 56.138107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.782150, 57.261215, 56.196953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210226, -0.375457, 0.902683,
		0.712734, -0.573140, -0.404378,
		0.669190, 0.728383, 0.147112,
		62.982906, 57.479729, 56.241085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.284615, 56.773750, 56.258686>,  <62.514473, 56.969860, 56.138107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.284615, 56.773750, 56.258686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.207649, 57.114388, 56.453728>,  <63.161469, 57.318771, 56.570755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.207649, 57.114388, 56.453728>,  <63.284615, 56.773750, 56.258686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.207649, 57.114388, 56.453728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291807, -0.424763, 0.856986,
		0.936924, 0.307182, -0.166772,
		-0.192412, 0.851596, 0.487609,
		63.149925, 57.369865, 56.600010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.894196, 56.856647, 56.748207>,  <63.284615, 56.773750, 56.258686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.894196, 56.856647, 56.748207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.579033, 57.058525, 56.889336>,  <63.389935, 57.179653, 56.974010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.579033, 57.058525, 56.889336>,  <63.894196, 56.856647, 56.748207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.579033, 57.058525, 56.889336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208324, -0.320705, 0.923985,
		0.579482, 0.801518, 0.147546,
		-0.787909, 0.504696, 0.352819,
		63.342659, 57.209934, 56.995182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.117981, 57.192837, 57.269085>,  <63.894196, 56.856647, 56.748207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.117981, 57.192837, 57.269085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.763870, 57.064587, 57.403847>,  <63.551407, 56.987637, 57.484703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.763870, 57.064587, 57.403847>,  <64.117981, 57.192837, 57.269085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.763870, 57.064587, 57.403847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461591, -0.517129, 0.720771,
		-0.056873, 0.793586, 0.605794,
		-0.885268, -0.320622, 0.336902,
		63.498291, 56.968399, 57.504917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.841282, 57.421776, 58.007034>,  <64.117981, 57.192837, 57.269085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.841282, 57.421776, 58.007034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.750595, 57.051018, 57.887390>,  <63.696182, 56.828564, 57.815605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.750595, 57.051018, 57.887390>,  <63.841282, 57.421776, 58.007034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.750595, 57.051018, 57.887390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541148, -0.375221, 0.752574,
		-0.809788, 0.008762, 0.586657,
		-0.226720, -0.926894, -0.299108,
		63.682579, 56.772949, 57.797657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.517090, 57.194542, 58.524323>,  <63.841282, 57.421776, 58.007034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.517090, 57.194542, 58.524323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.678001, 57.471146, 58.284325>,  <64.774551, 57.637108, 58.140327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.678001, 57.471146, 58.284325>,  <64.517090, 57.194542, 58.524323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.678001, 57.471146, 58.284325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893618, -0.439061, 0.093121,
		-0.199039, -0.573624, -0.794568,
		0.402281, 0.691506, -0.599992,
		64.798683, 57.678596, 58.104328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.934135, 56.797626, 58.089748>,  <64.517090, 57.194542, 58.524323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.934135, 56.797626, 58.089748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.064568, 57.170483, 58.026779>,  <65.142830, 57.394196, 57.988998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.064568, 57.170483, 58.026779>,  <64.934135, 56.797626, 58.089748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.064568, 57.170483, 58.026779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945163, -0.318258, 0.073344,
		0.018265, -0.172710, -0.984803,
		0.326088, 0.932139, -0.157426,
		65.162392, 57.450123, 57.979553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.364021, 56.775803, 57.521492>,  <64.934135, 56.797626, 58.089748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.364021, 56.775803, 57.521492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.463432, 57.082592, 57.758133>,  <65.523079, 57.266666, 57.900116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.463432, 57.082592, 57.758133>,  <65.364021, 56.775803, 57.521492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.463432, 57.082592, 57.758133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954318, -0.298467, -0.013953,
		0.165872, 0.568042, -0.806111,
		0.248523, 0.766972, 0.591600,
		65.537987, 57.312683, 57.935612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.832832, 57.211399, 57.240940>,  <65.364021, 56.775803, 57.521492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.832832, 57.211399, 57.240940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.922310, 57.239719, 57.629776>,  <65.975998, 57.256710, 57.863075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.922310, 57.239719, 57.629776>,  <65.832832, 57.211399, 57.240940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.922310, 57.239719, 57.629776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961883, -0.177001, -0.208449,
		0.157303, 0.981661, -0.107691,
		0.223688, 0.070796, 0.972086,
		65.989418, 57.260960, 57.921402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.328026, 57.799065, 57.465542>,  <65.832832, 57.211399, 57.240940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.328026, 57.799065, 57.465542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.336113, 57.482243, 57.709587>,  <66.340965, 57.292149, 57.856014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.336113, 57.482243, 57.709587>,  <66.328026, 57.799065, 57.465542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.336113, 57.482243, 57.709587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988415, -0.075974, -0.131390,
		0.150421, 0.605705, 0.781342,
		0.020222, -0.792054, 0.610117,
		66.342178, 57.244625, 57.892624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.917831, 57.928299, 57.950806>,  <66.328026, 57.799065, 57.465542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.917831, 57.928299, 57.950806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821648, 57.540039, 57.952705>,  <66.763939, 57.307083, 57.953846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821648, 57.540039, 57.952705>,  <66.917831, 57.928299, 57.950806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.821648, 57.540039, 57.952705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960741, -0.238691, -0.141437,
		0.138419, -0.029448, 0.989936,
		-0.240454, -0.970649, 0.004748,
		66.749512, 57.248844, 57.954128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.175255, 57.525829, 58.522827>,  <66.917831, 57.928299, 57.950806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.175255, 57.525829, 58.522827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.135132, 57.308334, 58.189529>,  <67.111053, 57.177837, 57.989552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.135132, 57.308334, 58.189529>,  <67.175255, 57.525829, 58.522827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.135132, 57.308334, 58.189529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973898, -0.225046, 0.029609,
		-0.203618, -0.808522, 0.552116,
		-0.100312, -0.543734, -0.833241,
		67.105042, 57.145214, 57.939556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.514740, 56.874138, 58.548401>,  <67.175255, 57.525829, 58.522827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.514740, 56.874138, 58.548401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.504463, 56.935493, 58.153267>,  <67.498299, 56.972305, 57.916187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.504463, 56.935493, 58.153267>,  <67.514740, 56.874138, 58.548401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.504463, 56.935493, 58.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943614, -0.322525, -0.074627,
		-0.330048, -0.934050, -0.136451,
		-0.025696, 0.153388, -0.987832,
		67.496758, 56.981510, 57.856918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.856934, 56.278316, 58.201786>,  <67.514740, 56.874138, 58.548401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.856934, 56.278316, 58.201786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.866196, 56.614872, 57.985809>,  <67.871750, 56.816803, 57.856224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.866196, 56.614872, 57.985809>,  <67.856934, 56.278316, 58.201786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.866196, 56.614872, 57.985809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986614, -0.106434, -0.123554,
		-0.161425, -0.529854, -0.832585,
		0.023149, 0.841384, -0.539942,
		67.873138, 56.867287, 57.823826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.266464, 56.259315, 57.502354>,  <67.856934, 56.278316, 58.201786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.266464, 56.259315, 57.502354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.257027, 56.620472, 57.674042>,  <68.251366, 56.837166, 57.777054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.257027, 56.620472, 57.674042>,  <68.266464, 56.259315, 57.502354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.257027, 56.620472, 57.674042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993499, 0.069005, -0.090547,
		-0.111372, 0.424293, -0.898650,
		-0.023593, 0.902892, 0.429220,
		68.249947, 56.891338, 57.802807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.640999, 56.851990, 57.013451>,  <68.266464, 56.259315, 57.502354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.640999, 56.851990, 57.013451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680450, 56.889732, 57.409706>,  <68.704124, 56.912376, 57.647461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680450, 56.889732, 57.409706>,  <68.640999, 56.851990, 57.013451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.680450, 56.889732, 57.409706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961261, 0.248451, -0.119368,
		-0.257389, 0.964038, -0.066197,
		0.098629, 0.094357, 0.990641,
		68.710037, 56.918041, 57.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.027519, 57.512863, 57.219082>,  <68.640999, 56.851990, 57.013451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.027519, 57.512863, 57.219082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.068291, 57.258217, 57.524849>,  <69.092758, 57.105431, 57.708309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.068291, 57.258217, 57.524849>,  <69.027519, 57.512863, 57.219082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.068291, 57.258217, 57.524849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977761, 0.205690, 0.040915,
		-0.183280, 0.743245, 0.643425,
		0.101937, -0.636615, 0.764415,
		69.098869, 57.067234, 57.754173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.422768, 57.899899, 57.715946>,  <69.027519, 57.512863, 57.219082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.422768, 57.899899, 57.715946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.426262, 57.509686, 57.803818>,  <69.428360, 57.275558, 57.856541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.426262, 57.509686, 57.803818>,  <69.422768, 57.899899, 57.715946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.426262, 57.509686, 57.803818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956153, 0.072458, 0.283762,
		-0.292737, 0.207566, 0.933392,
		0.008732, -0.975534, 0.219676,
		69.428879, 57.217026, 57.869720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.758713, 57.753651, 58.411835>,  <69.422768, 57.899899, 57.715946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.758713, 57.753651, 58.411835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.792168, 57.449028, 58.154762>,  <69.812241, 57.266254, 58.000519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.792168, 57.449028, 58.154762>,  <69.758713, 57.753651, 58.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.792168, 57.449028, 58.154762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991637, -0.000016, 0.129058,
		-0.098295, -0.648102, 0.755184,
		0.083630, -0.761554, -0.642683,
		69.817253, 57.220562, 57.961956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.843918, 57.113503, 58.726921>,  <69.758713, 57.753651, 58.411835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.843918, 57.113503, 58.726921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.039650, 57.085251, 58.379227>,  <70.157089, 57.068302, 58.170612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.039650, 57.085251, 58.379227>,  <69.843918, 57.113503, 58.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.039650, 57.085251, 58.379227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841929, -0.221638, 0.491968,
		-0.227404, -0.972568, -0.048986,
		0.489330, -0.070632, -0.869234,
		70.186447, 57.064064, 58.118458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.286469, 56.451111, 58.694786>,  <69.843918, 57.113503, 58.726921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.286469, 56.451111, 58.694786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.455254, 56.748810, 58.487694>,  <70.556526, 56.927429, 58.363438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.455254, 56.748810, 58.487694>,  <70.286469, 56.451111, 58.694786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.455254, 56.748810, 58.487694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832209, -0.091403, 0.546876,
		0.359689, -0.661620, -0.657938,
		0.421962, 0.744248, -0.517729,
		70.581841, 56.972084, 58.332375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.037621, 56.209698, 58.422276>,  <70.286469, 56.451111, 58.694786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.037621, 56.209698, 58.422276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.970375, 56.603046, 58.449776>,  <70.930031, 56.839054, 58.466274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.970375, 56.603046, 58.449776>,  <71.037621, 56.209698, 58.422276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.970375, 56.603046, 58.449776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674725, 0.063942, 0.735294,
		0.718668, 0.170002, -0.674252,
		-0.168115, 0.983367, 0.068751,
		70.919937, 56.898056, 58.470402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.734154, 56.497616, 58.497204>,  <71.037621, 56.209698, 58.422276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.734154, 56.497616, 58.497204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.441338, 56.727989, 58.642761>,  <71.265648, 56.866215, 58.730095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.441338, 56.727989, 58.642761>,  <71.734154, 56.497616, 58.497204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.441338, 56.727989, 58.642761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453917, 0.014034, 0.890933,
		0.508013, 0.817375, -0.271700,
		-0.732040, 0.575935, 0.363891,
		71.221725, 56.900768, 58.751930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.914635, 57.225815, 58.728310>,  <71.734154, 56.497616, 58.497204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.914635, 57.225815, 58.728310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.598228, 57.093994, 58.934494>,  <71.408386, 57.014904, 59.058205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.598228, 57.093994, 58.934494>,  <71.914635, 57.225815, 58.728310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.598228, 57.093994, 58.934494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488708, 0.166517, 0.856409,
		-0.368060, 0.929339, 0.029336,
		-0.791010, -0.329547, 0.515463,
		71.360924, 56.995129, 59.089134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.575760, 57.725243, 59.293449>,  <71.914635, 57.225815, 58.728310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.575760, 57.725243, 59.293449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.528984, 57.337013, 59.377655>,  <71.500916, 57.104076, 59.428181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.528984, 57.337013, 59.377655>,  <71.575760, 57.725243, 59.293449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.528984, 57.337013, 59.377655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437026, 0.140055, 0.888478,
		-0.891815, 0.195900, 0.407786,
		-0.116940, -0.970571, 0.210517,
		71.493904, 57.045841, 59.440811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.232513, 57.968052, 59.686081>,  <71.575760, 57.725243, 59.293449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.232513, 57.968052, 59.686081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.344376, 58.000854, 60.068718>,  <72.411491, 58.020535, 60.298302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.344376, 58.000854, 60.068718>,  <72.232513, 57.968052, 59.686081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.344376, 58.000854, 60.068718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959539, 0.010243, -0.281389,
		-0.032873, 0.996579, -0.075823,
		0.279650, 0.082005, 0.956594,
		72.428268, 58.025455, 60.355698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.633713, 58.674351, 59.832802>,  <72.232513, 57.968052, 59.686081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.633713, 58.674351, 59.832802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.730721, 58.329575, 60.010895>,  <72.788925, 58.122707, 60.117752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.730721, 58.329575, 60.010895>,  <72.633713, 58.674351, 59.832802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.730721, 58.329575, 60.010895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880107, 0.002395, -0.474769,
		0.408158, 0.506997, 0.759184,
		0.242524, -0.861944, 0.445235,
		72.803474, 58.070992, 60.144466>
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
