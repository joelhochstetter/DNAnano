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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.508083, 32.400406, 23.043900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896328, 32.494049, 23.066231>,  <43.129272, 32.550236, 23.079630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896328, 32.494049, 23.066231>,  <42.508083, 32.400406, 23.043900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896328, 32.494049, 23.066231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235895, 0.879423, 0.413484,
		0.047703, -0.414500, 0.908798,
		0.970607, 0.234105, 0.055828,
		43.187511, 32.564281, 23.082979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724880, 32.477840, 23.784575>,  <42.508083, 32.400406, 23.043900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724880, 32.477840, 23.784575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943287, 32.684326, 23.520638>,  <43.074329, 32.808216, 23.362276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943287, 32.684326, 23.520638>,  <42.724880, 32.477840, 23.784575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943287, 32.684326, 23.520638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077147, 0.815247, 0.573951,
		0.834213, -0.262483, 0.484964,
		0.546019, 0.516212, -0.659841,
		43.107090, 32.839191, 23.322685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310787, 33.063107, 23.434294>,  <42.724880, 32.477840, 23.784575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310787, 33.063107, 23.434294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228725, 32.757538, 23.679024>,  <42.179489, 32.574196, 23.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228725, 32.757538, 23.679024>,  <42.310787, 33.063107, 23.434294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228725, 32.757538, 23.679024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297344, -0.546929, -0.782595,
		0.932469, -0.342475, -0.114944,
		-0.205153, -0.763924, 0.611827,
		42.167179, 32.528362, 23.862572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230385, 33.665455, 23.864838>,  <42.310787, 33.063107, 23.434294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230385, 33.665455, 23.864838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238167, 33.959610, 23.593891>,  <42.242836, 34.136105, 23.431324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238167, 33.959610, 23.593891>,  <42.230385, 33.665455, 23.864838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238167, 33.959610, 23.593891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688493, -0.501119, -0.524268,
		-0.724982, -0.456159, -0.516063,
		0.019459, 0.735391, -0.677364,
		42.244003, 34.180225, 23.390682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973274, 33.370739, 24.412169>,  <42.230385, 33.665455, 23.864838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973274, 33.370739, 24.412169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622780, 33.320084, 24.598148>,  <41.412483, 33.289692, 24.709736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622780, 33.320084, 24.598148>,  <41.973274, 33.370739, 24.412169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622780, 33.320084, 24.598148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413760, -0.692302, 0.591202,
		0.247018, 0.710409, 0.659016,
		-0.876233, -0.126637, 0.464950,
		41.359909, 33.282093, 24.737633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187313, 33.073170, 24.942190>,  <41.973274, 33.370739, 24.412169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187313, 33.073170, 24.942190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795094, 33.023109, 25.002666>,  <41.559761, 32.993073, 25.038952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795094, 33.023109, 25.002666>,  <42.187313, 33.073170, 24.942190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795094, 33.023109, 25.002666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195497, -0.691036, 0.695881,
		0.017387, 0.711903, 0.702062,
		-0.980550, -0.125152, 0.151190,
		41.500927, 32.985565, 25.048023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086910, 33.048428, 25.637537>,  <42.187313, 33.073170, 24.942190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086910, 33.048428, 25.637537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757225, 32.854275, 25.520866>,  <41.559414, 32.737782, 25.450863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757225, 32.854275, 25.520866>,  <42.086910, 33.048428, 25.637537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757225, 32.854275, 25.520866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176561, -0.709672, 0.682049,
		-0.538051, 0.510655, 0.670621,
		-0.824213, -0.485383, -0.291678,
		41.509960, 32.708660, 25.433363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747696, 32.804207, 26.312822>,  <42.086910, 33.048428, 25.637537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747696, 32.804207, 26.312822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591114, 32.588100, 26.014862>,  <41.497166, 32.458435, 25.836086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591114, 32.588100, 26.014862>,  <41.747696, 32.804207, 26.312822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591114, 32.588100, 26.014862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124915, -0.770808, 0.624701,
		-0.911681, 0.337589, 0.234246,
		-0.391451, -0.540267, -0.744901,
		41.473679, 32.426022, 25.791391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253620, 32.550453, 26.695786>,  <41.747696, 32.804207, 26.312822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253620, 32.550453, 26.695786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294022, 32.302551, 26.384480>,  <41.318260, 32.153809, 26.197697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294022, 32.302551, 26.384480>,  <41.253620, 32.550453, 26.695786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294022, 32.302551, 26.384480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087658, -0.784767, 0.613561,
		-0.991017, 0.006252, -0.133588,
		0.101000, -0.619759, -0.778266,
		41.324322, 32.116623, 26.150999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767944, 31.975527, 26.848759>,  <41.253620, 32.550453, 26.695786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767944, 31.975527, 26.848759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024067, 31.827293, 26.579632>,  <41.177738, 31.738354, 26.418156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024067, 31.827293, 26.579632>,  <40.767944, 31.975527, 26.848759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024067, 31.827293, 26.579632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074559, -0.841801, 0.534614,
		-0.764495, -0.392480, -0.511378,
		0.640304, -0.370582, -0.672815,
		41.216156, 31.716118, 26.377787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552784, 31.237658, 26.658558>,  <40.767944, 31.975527, 26.848759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552784, 31.237658, 26.658558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943123, 31.276672, 26.580364>,  <41.177326, 31.300081, 26.533449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943123, 31.276672, 26.580364>,  <40.552784, 31.237658, 26.658558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943123, 31.276672, 26.580364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179845, -0.866655, 0.465366,
		-0.124025, -0.489282, -0.863262,
		0.975845, 0.097536, -0.195482,
		41.235878, 31.305933, 26.521719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704937, 30.687061, 26.323133>,  <40.552784, 31.237658, 26.658558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704937, 30.687061, 26.323133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068985, 30.797218, 26.446960>,  <41.287415, 30.863314, 26.521257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068985, 30.797218, 26.446960>,  <40.704937, 30.687061, 26.323133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068985, 30.797218, 26.446960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148535, -0.914342, 0.376717,
		0.386796, -0.296878, -0.873071,
		0.910124, 0.275394, 0.309567,
		41.342022, 30.879837, 26.539831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097252, 30.079237, 26.160076>,  <40.704937, 30.687061, 26.323133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097252, 30.079237, 26.160076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297283, 30.293350, 26.432369>,  <41.417301, 30.421818, 26.595745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297283, 30.293350, 26.432369>,  <41.097252, 30.079237, 26.160076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297283, 30.293350, 26.432369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111904, -0.819436, 0.562141,
		0.858719, -0.204939, -0.469682,
		0.500079, 0.535281, 0.680732,
		41.447308, 30.453934, 26.636589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818684, 29.875851, 26.127577>,  <41.097252, 30.079237, 26.160076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818684, 29.875851, 26.127577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752598, 29.996372, 26.503220>,  <41.712944, 30.068686, 26.728605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752598, 29.996372, 26.503220>,  <41.818684, 29.875851, 26.127577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752598, 29.996372, 26.503220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047512, -0.948654, 0.312726,
		0.985112, 0.096287, 0.142419,
		-0.165218, 0.301303, 0.939106,
		41.703033, 30.086763, 26.784952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344357, 29.565729, 26.535902>,  <41.818684, 29.875851, 26.127577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344357, 29.565729, 26.535902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046616, 29.655926, 26.787331>,  <41.867973, 29.710043, 26.938187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046616, 29.655926, 26.787331>,  <42.344357, 29.565729, 26.535902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046616, 29.655926, 26.787331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017558, -0.947549, 0.319128,
		0.667561, 0.226506, 0.709265,
		-0.744348, 0.225490, 0.628570,
		41.823311, 29.723574, 26.975901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485703, 29.103407, 27.047132>,  <42.344357, 29.565729, 26.535902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485703, 29.103407, 27.047132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108852, 29.217518, 27.117584>,  <41.882744, 29.285984, 27.159855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108852, 29.217518, 27.117584>,  <42.485703, 29.103407, 27.047132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108852, 29.217518, 27.117584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198972, -0.898572, 0.391125,
		0.269845, 0.333443, 0.903327,
		-0.942122, 0.285280, 0.176129,
		41.826214, 29.303102, 27.170424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157978, 28.608103, 27.323334>,  <42.485703, 29.103407, 27.047132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157978, 28.608103, 27.323334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844585, 28.849995, 27.380558>,  <41.656551, 28.995129, 27.414892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844585, 28.849995, 27.380558>,  <42.157978, 28.608103, 27.323334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844585, 28.849995, 27.380558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477372, -0.733084, 0.484462,
		0.397842, 0.311273, 0.863036,
		-0.783478, 0.604729, 0.143059,
		41.609543, 29.031414, 27.423475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987644, 28.535892, 28.087643>,  <42.157978, 28.608103, 27.323334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987644, 28.535892, 28.087643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715778, 28.622231, 27.807224>,  <41.552658, 28.674032, 27.638973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715778, 28.622231, 27.807224>,  <41.987644, 28.535892, 28.087643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715778, 28.622231, 27.807224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562802, -0.766390, 0.309678,
		-0.470431, 0.605027, 0.642368,
		-0.679668, 0.215844, -0.701044,
		41.511879, 28.686983, 27.596910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339096, 28.529474, 28.325142>,  <41.987644, 28.535892, 28.087643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339096, 28.529474, 28.325142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283276, 28.452633, 27.936581>,  <41.249783, 28.406528, 27.703444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283276, 28.452633, 27.936581>,  <41.339096, 28.529474, 28.325142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283276, 28.452633, 27.936581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523439, -0.818425, 0.237050,
		-0.840557, 0.541551, 0.013659,
		-0.139553, -0.192105, -0.971401,
		41.241409, 28.395002, 27.645161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700169, 28.354441, 28.284901>,  <41.339096, 28.529474, 28.325142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700169, 28.354441, 28.284901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860470, 28.182678, 27.961170>,  <40.956650, 28.079620, 27.766932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860470, 28.182678, 27.961170>,  <40.700169, 28.354441, 28.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860470, 28.182678, 27.961170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723400, -0.690381, 0.008089,
		-0.562216, 0.582225, -0.587305,
		0.400755, -0.429404, -0.809325,
		40.980698, 28.053858, 27.718372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089024, 28.225008, 27.760427>,  <40.700169, 28.354441, 28.284901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089024, 28.225008, 27.760427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403275, 27.992470, 27.675735>,  <40.591824, 27.852947, 27.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403275, 27.992470, 27.675735>,  <40.089024, 28.225008, 27.760427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403275, 27.992470, 27.675735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592164, -0.805680, 0.014911,
		-0.179254, 0.113664, -0.977215,
		0.785627, -0.581344, -0.211729,
		40.638962, 27.818068, 27.612217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831165, 27.666601, 27.247131>,  <40.089024, 28.225008, 27.760427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831165, 27.666601, 27.247131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166401, 27.513603, 27.402721>,  <40.367542, 27.421804, 27.496075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166401, 27.513603, 27.402721>,  <39.831165, 27.666601, 27.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166401, 27.513603, 27.402721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338513, -0.923775, -0.179021,
		0.427798, 0.018363, -0.903688,
		0.838092, -0.382495, 0.388973,
		40.417828, 27.398855, 27.519413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915577, 27.067860, 26.794367>,  <39.831165, 27.666601, 27.247131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915577, 27.067860, 26.794367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155216, 26.997562, 27.106827>,  <40.299000, 26.955385, 27.294302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155216, 26.997562, 27.106827>,  <39.915577, 27.067860, 26.794367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155216, 26.997562, 27.106827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215803, -0.974952, -0.053834,
		0.771045, -0.136323, -0.622018,
		0.599098, -0.175741, 0.781150,
		40.334946, 26.944839, 27.341171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432144, 26.462629, 26.588911>,  <39.915577, 27.067860, 26.794367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432144, 26.462629, 26.588911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374584, 26.498230, 26.983143>,  <40.340050, 26.519590, 27.219683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374584, 26.498230, 26.983143>,  <40.432144, 26.462629, 26.588911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374584, 26.498230, 26.983143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243940, -0.968404, 0.051835,
		0.959055, -0.232964, 0.161065,
		-0.143901, 0.089003, 0.985581,
		40.331413, 26.524931, 27.278818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891376, 25.988947, 26.919008>,  <40.432144, 26.462629, 26.588911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891376, 25.988947, 26.919008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628010, 26.076183, 27.207153>,  <40.469990, 26.128525, 27.380041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628010, 26.076183, 27.207153>,  <40.891376, 25.988947, 26.919008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628010, 26.076183, 27.207153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163448, -0.975689, 0.146000,
		0.734691, -0.021613, 0.678058,
		-0.658418, 0.218092, 0.720362,
		40.430485, 26.141611, 27.423262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905102, 25.454254, 27.461882>,  <40.891376, 25.988947, 26.919008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905102, 25.454254, 27.461882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539845, 25.602749, 27.529236>,  <40.320690, 25.691845, 27.569649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539845, 25.602749, 27.529236>,  <40.905102, 25.454254, 27.461882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539845, 25.602749, 27.529236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377981, -0.925772, -0.008724,
		0.152649, -0.071613, 0.985683,
		-0.913142, 0.371238, 0.168387,
		40.265903, 25.714121, 27.579752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603600, 25.248932, 28.069696>,  <40.905102, 25.454254, 27.461882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603600, 25.248932, 28.069696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341240, 25.299118, 27.771957>,  <40.183823, 25.329229, 27.593313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341240, 25.299118, 27.771957>,  <40.603600, 25.248932, 28.069696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341240, 25.299118, 27.771957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235391, -0.970915, 0.043765,
		-0.717209, 0.203919, 0.666355,
		-0.655898, 0.125465, -0.744349,
		40.144470, 25.336758, 27.548653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815948, 24.966696, 28.182966>,  <40.603600, 25.248932, 28.069696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815948, 24.966696, 28.182966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992649, 24.946415, 27.824684>,  <40.098671, 24.934246, 27.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992649, 24.946415, 27.824684>,  <39.815948, 24.966696, 28.182966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992649, 24.946415, 27.824684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019838, -0.997606, 0.066253,
		-0.896917, -0.047036, -0.439689,
		0.441753, -0.050701, -0.895703,
		40.125175, 24.931204, 27.555973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478233, 24.478804, 27.823252>,  <39.815948, 24.966696, 28.182966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478233, 24.478804, 27.823252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861904, 24.504173, 27.713013>,  <40.092106, 24.519396, 27.646870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861904, 24.504173, 27.713013>,  <39.478233, 24.478804, 27.823252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861904, 24.504173, 27.713013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063159, -0.997955, -0.009846,
		-0.275660, -0.007962, -0.961222,
		0.959178, 0.063424, -0.275599,
		40.149658, 24.523201, 27.630333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556202, 24.284147, 27.116890>,  <39.478233, 24.478804, 27.823252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556202, 24.284147, 27.116890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838177, 24.167366, 27.375446>,  <40.007362, 24.097298, 27.530581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838177, 24.167366, 27.375446>,  <39.556202, 24.284147, 27.116890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838177, 24.167366, 27.375446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293593, -0.949722, -0.108774,
		0.645647, -0.113097, -0.755214,
		0.704941, -0.291955, 0.646390,
		40.049660, 24.079779, 27.569363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818066, 24.084669, 27.117697>,  <39.556202, 24.284147, 27.116890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818066, 24.084669, 27.117697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974030, 23.908604, 26.794159>,  <39.067608, 23.802965, 26.600037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974030, 23.908604, 26.794159>,  <38.818066, 24.084669, 27.117697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974030, 23.908604, 26.794159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823475, -0.559789, -0.092329,
		-0.412143, 0.702063, -0.580729,
		0.389906, -0.440163, -0.808845,
		39.091000, 23.776554, 26.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092018, 24.241489, 27.004860>,  <38.818066, 24.084669, 27.117697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092018, 24.241489, 27.004860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839436, 24.064468, 27.259548>,  <37.687885, 23.958256, 27.412361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839436, 24.064468, 27.259548>,  <38.092018, 24.241489, 27.004860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839436, 24.064468, 27.259548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023784, -0.809696, -0.586367,
		0.775048, -0.385407, 0.500761,
		-0.631454, -0.442553, 0.636720,
		37.649998, 23.931702, 27.450563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817982, 23.802481, 26.387806>,  <38.092018, 24.241489, 27.004860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817982, 23.802481, 26.387806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492195, 23.889362, 26.172596>,  <37.296722, 23.941490, 26.043470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492195, 23.889362, 26.172596>,  <37.817982, 23.802481, 26.387806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492195, 23.889362, 26.172596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222821, 0.973272, 0.055607,
		0.535724, -0.074594, -0.841092,
		-0.814464, 0.217203, -0.538026,
		37.247856, 23.954523, 26.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948833, 24.098461, 25.717325>,  <37.817982, 23.802481, 26.387806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948833, 24.098461, 25.717325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663059, 24.219830, 25.969521>,  <37.491596, 24.292650, 26.120838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663059, 24.219830, 25.969521>,  <37.948833, 24.098461, 25.717325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663059, 24.219830, 25.969521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473474, 0.873090, 0.116342,
		-0.515174, 0.381640, -0.767429,
		-0.714435, 0.303422, 0.630490,
		37.448730, 24.310856, 26.158669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914860, 24.830776, 25.586805>,  <37.948833, 24.098461, 25.717325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914860, 24.830776, 25.586805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698135, 24.759853, 25.915440>,  <37.568100, 24.717299, 26.112621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698135, 24.759853, 25.915440>,  <37.914860, 24.830776, 25.586805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698135, 24.759853, 25.915440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158448, 0.938423, 0.307013,
		-0.825432, 0.296521, -0.480351,
		-0.541808, -0.177308, 0.821588,
		37.535591, 24.706661, 26.161917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402485, 25.428885, 25.733534>,  <37.914860, 24.830776, 25.586805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402485, 25.428885, 25.733534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453224, 25.230103, 26.076916>,  <37.483665, 25.110834, 26.282946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453224, 25.230103, 26.076916>,  <37.402485, 25.428885, 25.733534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453224, 25.230103, 26.076916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167646, 0.863738, 0.475239,
		-0.977653, 0.083635, 0.192874,
		0.126846, -0.496953, 0.858457,
		37.491280, 25.081017, 26.334454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767570, 25.506887, 26.183437>,  <37.402485, 25.428885, 25.733534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767570, 25.506887, 26.183437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088963, 25.461590, 26.417221>,  <37.281799, 25.434412, 26.557491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088963, 25.461590, 26.417221>,  <36.767570, 25.506887, 26.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088963, 25.461590, 26.417221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098091, 0.943140, 0.317592,
		-0.587191, -0.312510, 0.746689,
		0.803483, -0.113243, 0.584458,
		37.330006, 25.427616, 26.592558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574951, 25.809965, 26.811319>,  <36.767570, 25.506887, 26.183437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574951, 25.809965, 26.811319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974659, 25.797832, 26.802044>,  <37.214485, 25.790552, 26.796478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974659, 25.797832, 26.802044>,  <36.574951, 25.809965, 26.811319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974659, 25.797832, 26.802044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036523, 0.936392, 0.349051,
		0.011124, -0.349643, 0.936817,
		0.999271, -0.030333, -0.023187,
		37.274441, 25.788733, 26.795088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748886, 26.189245, 27.488579>,  <36.574951, 25.809965, 26.811319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748886, 26.189245, 27.488579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049103, 26.201298, 27.224525>,  <37.229233, 26.208530, 27.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049103, 26.201298, 27.224525>,  <36.748886, 26.189245, 27.488579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049103, 26.201298, 27.224525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035779, 0.995641, 0.086128,
		0.659851, -0.088262, 0.746195,
		0.750544, 0.030133, -0.660133,
		37.274265, 26.210339, 27.026485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260719, 26.665302, 27.709282>,  <36.748886, 26.189245, 27.488579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260719, 26.665302, 27.709282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316532, 26.623711, 27.315384>,  <37.350018, 26.598757, 27.079046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316532, 26.623711, 27.315384>,  <37.260719, 26.665302, 27.709282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316532, 26.623711, 27.315384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005732, 0.994540, -0.104200,
		0.990201, 0.008895, 0.139362,
		0.139528, -0.103977, -0.984744,
		37.358391, 26.592518, 27.019960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928577, 27.083670, 27.583782>,  <37.260719, 26.665302, 27.709282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928577, 27.083670, 27.583782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715111, 27.052338, 27.246960>,  <37.587029, 27.033539, 27.044867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715111, 27.052338, 27.246960>,  <37.928577, 27.083670, 27.583782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715111, 27.052338, 27.246960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242667, 0.939645, -0.241204,
		0.810130, -0.333062, -0.482451,
		-0.533669, -0.078332, -0.842058,
		37.555012, 27.028839, 26.994343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406929, 27.374090, 27.053204>,  <37.928577, 27.083670, 27.583782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406929, 27.374090, 27.053204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048317, 27.379307, 26.876091>,  <37.833149, 27.382437, 26.769823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048317, 27.379307, 26.876091>,  <38.406929, 27.374090, 27.053204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048317, 27.379307, 26.876091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080468, 0.987731, -0.133835,
		0.435605, -0.155617, -0.886584,
		-0.896534, 0.013043, -0.442783,
		37.779358, 27.383219, 26.743256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383877, 27.622694, 26.335110>,  <38.406929, 27.374090, 27.053204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383877, 27.622694, 26.335110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997173, 27.690041, 26.412079>,  <37.765152, 27.730448, 26.458261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997173, 27.690041, 26.412079>,  <38.383877, 27.622694, 26.335110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997173, 27.690041, 26.412079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076173, 0.908071, -0.411830,
		-0.244073, -0.383484, -0.890713,
		-0.966760, 0.168365, 0.192425,
		37.707146, 27.740551, 26.469807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269794, 28.022923, 25.744022>,  <38.383877, 27.622694, 26.335110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269794, 28.022923, 25.744022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977867, 28.097851, 26.007011>,  <37.802711, 28.142809, 26.164804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977867, 28.097851, 26.007011>,  <38.269794, 28.022923, 25.744022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977867, 28.097851, 26.007011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133553, 0.904130, -0.405847,
		-0.670467, -0.384003, -0.634835,
		-0.729821, 0.187323, 0.657474,
		37.758923, 28.154047, 26.204254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690720, 28.231054, 25.337914>,  <38.269794, 28.022923, 25.744022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690720, 28.231054, 25.337914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670406, 28.372391, 25.711559>,  <37.658218, 28.457193, 25.935747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670406, 28.372391, 25.711559>,  <37.690720, 28.231054, 25.337914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670406, 28.372391, 25.711559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184989, 0.915809, -0.356473,
		-0.981428, -0.190903, 0.018861,
		-0.050779, 0.353342, 0.934115,
		37.655174, 28.478394, 25.991795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457565, 28.851173, 25.180779>,  <37.690720, 28.231054, 25.337914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457565, 28.851173, 25.180779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559700, 28.891205, 25.565441>,  <37.620983, 28.915224, 25.796240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559700, 28.891205, 25.565441>,  <37.457565, 28.851173, 25.180779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559700, 28.891205, 25.565441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141898, 0.979979, -0.139664,
		-0.956382, 0.172119, 0.236027,
		0.255341, 0.100080, 0.961657,
		37.636303, 28.921228, 25.853939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026653, 29.379566, 25.470861>,  <37.457565, 28.851173, 25.180779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026653, 29.379566, 25.470861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344696, 29.363880, 25.712940>,  <37.535522, 29.354467, 25.858187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344696, 29.363880, 25.712940>,  <37.026653, 29.379566, 25.470861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344696, 29.363880, 25.712940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165764, 0.973961, -0.154669,
		-0.583372, 0.223299, 0.780906,
		0.795110, -0.039217, 0.605196,
		37.583229, 29.352116, 25.894499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995777, 29.955132, 25.900499>,  <37.026653, 29.379566, 25.470861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995777, 29.955132, 25.900499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380966, 29.847305, 25.902431>,  <37.612080, 29.782610, 25.903591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380966, 29.847305, 25.902431>,  <36.995777, 29.955132, 25.900499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380966, 29.847305, 25.902431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268257, 0.956195, -0.117171,
		0.026967, 0.114128, 0.993100,
		0.962970, -0.269566, 0.004830,
		37.669857, 29.766436, 25.903881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292492, 30.458542, 26.300510>,  <36.995777, 29.955132, 25.900499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292492, 30.458542, 26.300510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606056, 30.293777, 26.114689>,  <37.794197, 30.194920, 26.003197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606056, 30.293777, 26.114689>,  <37.292492, 30.458542, 26.300510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606056, 30.293777, 26.114689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408842, 0.905576, -0.113054,
		0.467255, -0.101303, 0.878299,
		0.783914, -0.411911, -0.464552,
		37.841228, 30.170204, 25.975323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782917, 30.830441, 26.594730>,  <37.292492, 30.458542, 26.300510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782917, 30.830441, 26.594730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945854, 30.664364, 26.269352>,  <38.043617, 30.564718, 26.074125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945854, 30.664364, 26.269352>,  <37.782917, 30.830441, 26.594730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945854, 30.664364, 26.269352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369884, 0.889368, -0.268721,
		0.835021, -0.191420, 0.515846,
		0.407339, -0.415191, -0.813444,
		38.068054, 30.539806, 26.025318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527733, 30.941307, 26.577267>,  <37.782917, 30.830441, 26.594730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527733, 30.941307, 26.577267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418373, 30.900543, 26.194672>,  <38.352757, 30.876085, 25.965115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418373, 30.900543, 26.194672>,  <38.527733, 30.941307, 26.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418373, 30.900543, 26.194672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599376, 0.759678, -0.252263,
		0.752331, -0.642264, -0.146611,
		-0.273397, -0.101910, -0.956488,
		38.336353, 30.869970, 25.907726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203259, 30.937632, 26.208311>,  <38.527733, 30.941307, 26.577267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203259, 30.937632, 26.208311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881618, 31.035408, 25.991547>,  <38.688633, 31.094074, 25.861488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881618, 31.035408, 25.991547>,  <39.203259, 30.937632, 26.208311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881618, 31.035408, 25.991547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446022, 0.850725, -0.278086,
		0.393041, -0.465314, -0.793096,
		-0.804104, 0.244439, -0.541910,
		38.640388, 31.108740, 25.828974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515331, 31.132570, 25.590618>,  <39.203259, 30.937632, 26.208311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515331, 31.132570, 25.590618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145947, 31.283230, 25.561333>,  <38.924316, 31.373625, 25.543762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145947, 31.283230, 25.561333>,  <39.515331, 31.132570, 25.590618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145947, 31.283230, 25.561333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365313, 0.804697, -0.467983,
		-0.117352, -0.458909, -0.880699,
		-0.923458, 0.376650, -0.073213,
		38.868908, 31.396225, 25.539370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537945, 31.388010, 24.911074>,  <39.515331, 31.132570, 25.590618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537945, 31.388010, 24.911074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244110, 31.589169, 25.093269>,  <39.067810, 31.709864, 25.202587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244110, 31.589169, 25.093269>,  <39.537945, 31.388010, 24.911074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244110, 31.589169, 25.093269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245826, 0.822960, -0.512159,
		-0.632412, -0.264257, -0.728164,
		-0.734591, 0.502898, 0.455489,
		39.023731, 31.740038, 25.229916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355553, 31.773087, 24.363882>,  <39.537945, 31.388010, 24.911074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355553, 31.773087, 24.363882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193264, 31.934776, 24.691784>,  <39.095890, 32.031792, 24.888525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193264, 31.934776, 24.691784>,  <39.355553, 31.773087, 24.363882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193264, 31.934776, 24.691784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183233, 0.914651, -0.360331,
		-0.895443, 0.004014, -0.445158,
		-0.405718, 0.404224, 0.819754,
		39.071548, 32.056042, 24.937710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102879, 32.404568, 24.103128>,  <39.355553, 31.773087, 24.363882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102879, 32.404568, 24.103128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109020, 32.480164, 24.495872>,  <39.112705, 32.525520, 24.731520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109020, 32.480164, 24.495872>,  <39.102879, 32.404568, 24.103128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109020, 32.480164, 24.495872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282478, 0.941154, -0.185569,
		-0.959151, 0.280203, -0.038935,
		0.015354, 0.188987, 0.981860,
		39.113625, 32.536861, 24.790430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479233, 32.909874, 24.308304>,  <39.102879, 32.404568, 24.103128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479233, 32.909874, 24.308304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801937, 32.920441, 24.544418>,  <38.995560, 32.926781, 24.686087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801937, 32.920441, 24.544418>,  <38.479233, 32.909874, 24.308304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801937, 32.920441, 24.544418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154840, 0.954636, -0.254353,
		-0.570230, 0.296602, 0.766071,
		0.806760, 0.026421, 0.590288,
		39.043964, 32.928368, 24.721504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389084, 33.465816, 24.752522>,  <38.479233, 32.909874, 24.308304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389084, 33.465816, 24.752522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784004, 33.402378, 24.748955>,  <39.020958, 33.364315, 24.746815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784004, 33.402378, 24.748955>,  <38.389084, 33.465816, 24.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784004, 33.402378, 24.748955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158126, 0.986624, -0.039630,
		0.015081, 0.037717, 0.999175,
		0.987304, -0.158593, -0.008915,
		39.080196, 33.354801, 24.746281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820000, 33.883972, 25.102102>,  <38.389084, 33.465816, 24.752522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820000, 33.883972, 25.102102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739964, 33.551685, 25.309902>,  <37.691944, 33.352314, 25.434582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739964, 33.551685, 25.309902>,  <37.820000, 33.883972, 25.102102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739964, 33.551685, 25.309902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977844, 0.136006, -0.159135,
		0.061540, -0.539833, -0.839520,
		-0.200086, -0.830712, 0.519502,
		37.679939, 33.302471, 25.465754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229820, 33.442829, 24.807438>,  <37.820000, 33.883972, 25.102102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229820, 33.442829, 24.807438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201233, 33.384663, 25.202152>,  <37.184082, 33.349762, 25.438980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201233, 33.384663, 25.202152>,  <37.229820, 33.442829, 24.807438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201233, 33.384663, 25.202152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989619, 0.134006, -0.051926,
		-0.124684, -0.980254, -0.153480,
		-0.071468, -0.145412, 0.986787,
		37.179790, 33.341038, 25.498188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562504, 33.079689, 24.959333>,  <37.229820, 33.442829, 24.807438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562504, 33.079689, 24.959333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684906, 33.261158, 25.294128>,  <36.758347, 33.370041, 25.495005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684906, 33.261158, 25.294128>,  <36.562504, 33.079689, 24.959333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684906, 33.261158, 25.294128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913419, 0.387744, 0.123778,
		-0.268381, -0.802394, 0.533043,
		0.306003, 0.453671, 0.836985,
		36.776707, 33.397259, 25.545223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104275, 32.586720, 25.167685>,  <36.562504, 33.079689, 24.959333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104275, 32.586720, 25.167685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302719, 32.321266, 24.943733>,  <36.421787, 32.161995, 24.809362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302719, 32.321266, 24.943733>,  <36.104275, 32.586720, 25.167685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302719, 32.321266, 24.943733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786082, -0.617134, 0.034945,
		-0.368710, 0.422773, -0.827838,
		0.496113, -0.663633, -0.559878,
		36.451553, 32.122177, 24.775770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727512, 32.354958, 24.570253>,  <36.104275, 32.586720, 25.167685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727512, 32.354958, 24.570253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970543, 32.072887, 24.716450>,  <36.116364, 31.903646, 24.804167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970543, 32.072887, 24.716450>,  <35.727512, 32.354958, 24.570253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970543, 32.072887, 24.716450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785541, -0.601500, 0.145336,
		0.117355, -0.375410, -0.919399,
		0.607579, -0.705170, 0.365489,
		36.152817, 31.861336, 24.826096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425419, 31.668404, 24.387310>,  <35.727512, 32.354958, 24.570253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425419, 31.668404, 24.387310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692532, 31.600460, 24.677197>,  <35.852798, 31.559694, 24.851128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692532, 31.600460, 24.677197>,  <35.425419, 31.668404, 24.387310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692532, 31.600460, 24.677197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539278, -0.781500, 0.313748,
		0.513072, -0.600339, -0.613474,
		0.667785, -0.169858, 0.724715,
		35.892868, 31.549503, 24.894611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533722, 30.868340, 24.451519>,  <35.425419, 31.668404, 24.387310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533722, 30.868340, 24.451519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589764, 31.057690, 24.799377>,  <35.623386, 31.171301, 25.008093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589764, 31.057690, 24.799377>,  <35.533722, 30.868340, 24.451519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589764, 31.057690, 24.799377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472730, -0.739761, 0.478833,
		0.869999, -0.478194, 0.120137,
		0.140102, 0.473376, 0.869647,
		35.631794, 31.199703, 25.060272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795193, 30.417862, 24.929899>,  <35.533722, 30.868340, 24.451519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795193, 30.417862, 24.929899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602661, 30.696285, 25.143002>,  <35.487141, 30.863338, 25.270863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602661, 30.696285, 25.143002>,  <35.795193, 30.417862, 24.929899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602661, 30.696285, 25.143002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586608, -0.707417, 0.394273,
		0.651317, -0.122744, 0.748812,
		-0.481328, 0.696057, 0.532755,
		35.458263, 30.905102, 25.302828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837006, 30.244064, 25.612888>,  <35.795193, 30.417862, 24.929899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837006, 30.244064, 25.612888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521469, 30.488560, 25.587238>,  <35.332146, 30.635256, 25.571848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521469, 30.488560, 25.587238>,  <35.837006, 30.244064, 25.612888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521469, 30.488560, 25.587238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577541, -0.701564, 0.417439,
		0.210165, 0.366330, 0.906440,
		-0.788846, 0.611237, -0.064126,
		35.284817, 30.671930, 25.568001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477581, 30.177502, 26.270475>,  <35.837006, 30.244064, 25.612888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477581, 30.177502, 26.270475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215702, 30.312904, 26.000130>,  <35.058575, 30.394146, 25.837923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215702, 30.312904, 26.000130>,  <35.477581, 30.177502, 26.270475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215702, 30.312904, 26.000130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662207, -0.688000, 0.296880,
		-0.364498, 0.641926, 0.674590,
		-0.654693, 0.338506, -0.675863,
		35.019295, 30.414455, 25.797371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823315, 30.361137, 26.707153>,  <35.477581, 30.177502, 26.270475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823315, 30.361137, 26.707153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710854, 30.313416, 26.326267>,  <34.643375, 30.284782, 26.097734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710854, 30.313416, 26.326267>,  <34.823315, 30.361137, 26.707153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710854, 30.313416, 26.326267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749579, -0.592278, 0.295531,
		-0.599235, 0.796852, 0.077094,
		-0.281155, -0.119305, -0.952218,
		34.626507, 30.277624, 26.040602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106358, 30.425617, 26.783905>,  <34.823315, 30.361137, 26.707153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106358, 30.425617, 26.783905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158512, 30.259998, 26.423557>,  <34.189804, 30.160627, 26.207348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158512, 30.259998, 26.423557>,  <34.106358, 30.425617, 26.783905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158512, 30.259998, 26.423557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772500, -0.611984, 0.169466,
		-0.621485, 0.673827, -0.399642,
		0.130384, -0.414044, -0.900871,
		34.197628, 30.135784, 26.153296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460899, 30.275440, 26.417334>,  <34.106358, 30.425617, 26.783905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460899, 30.275440, 26.417334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731087, 30.034412, 26.247322>,  <33.893200, 29.889795, 26.145315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731087, 30.034412, 26.247322>,  <33.460899, 30.275440, 26.417334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731087, 30.034412, 26.247322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667741, -0.744370, -0.005892,
		-0.312827, 0.287789, -0.905161,
		0.675470, -0.602570, -0.425027,
		33.933727, 29.853642, 26.119814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055019, 29.950453, 25.962107>,  <33.460899, 30.275440, 26.417334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055019, 29.950453, 25.962107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389050, 29.734432, 26.004055>,  <33.589466, 29.604820, 26.029224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389050, 29.734432, 26.004055>,  <33.055019, 29.950453, 25.962107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389050, 29.734432, 26.004055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547947, -0.833495, 0.070995,
		0.049068, -0.116749, -0.991949,
		0.835073, -0.540052, 0.104870,
		33.639572, 29.572416, 26.035517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855019, 29.309322, 25.635801>,  <33.055019, 29.950453, 25.962107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855019, 29.309322, 25.635801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185017, 29.232506, 25.848408>,  <33.383015, 29.186417, 25.975971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185017, 29.232506, 25.848408>,  <32.855019, 29.309322, 25.635801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185017, 29.232506, 25.848408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434899, -0.816334, 0.380081,
		0.360904, -0.544720, -0.756987,
		0.824992, -0.192040, 0.531516,
		33.432514, 29.174894, 26.007862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930744, 28.609945, 25.597818>,  <32.855019, 29.309322, 25.635801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930744, 28.609945, 25.597818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159058, 28.698639, 25.914055>,  <33.296047, 28.751854, 26.103798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159058, 28.698639, 25.914055>,  <32.930744, 28.609945, 25.597818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159058, 28.698639, 25.914055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261086, -0.863865, 0.430780,
		0.778483, -0.452297, -0.435192,
		0.570788, 0.221732, 0.790592,
		33.330296, 28.765158, 26.151232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015034, 28.012180, 25.867933>,  <32.930744, 28.609945, 25.597818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015034, 28.012180, 25.867933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128613, 28.212318, 26.195110>,  <33.196758, 28.332401, 26.391417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128613, 28.212318, 26.195110>,  <33.015034, 28.012180, 25.867933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128613, 28.212318, 26.195110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424911, -0.699056, 0.575127,
		0.859550, -0.510857, 0.014109,
		0.283945, 0.500345, 0.817943,
		33.213795, 28.362421, 26.440493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377808, 27.535538, 26.261332>,  <33.015034, 28.012180, 25.867933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377808, 27.535538, 26.261332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247734, 27.814198, 26.517124>,  <33.169689, 27.981394, 26.670601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247734, 27.814198, 26.517124>,  <33.377808, 27.535538, 26.261332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247734, 27.814198, 26.517124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294154, -0.717204, 0.631737,
		0.898739, 0.017322, 0.438143,
		-0.325180, 0.696648, 0.639484,
		33.150181, 28.023191, 26.708969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566677, 27.273724, 26.835653>,  <33.377808, 27.535538, 26.261332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566677, 27.273724, 26.835653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314926, 27.557808, 26.961815>,  <33.163876, 27.728258, 27.037512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314926, 27.557808, 26.961815>,  <33.566677, 27.273724, 26.835653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314926, 27.557808, 26.961815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422360, -0.653327, 0.628312,
		0.652296, 0.262234, 0.711156,
		-0.629382, 0.710210, 0.315405,
		33.126110, 27.770870, 27.056437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655888, 27.318584, 27.626701>,  <33.566677, 27.273724, 26.835653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655888, 27.318584, 27.626701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297863, 27.462898, 27.521858>,  <33.083050, 27.549486, 27.458952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297863, 27.462898, 27.521858>,  <33.655888, 27.318584, 27.626701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297863, 27.462898, 27.521858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440594, -0.624688, 0.644703,
		0.068862, 0.692532, 0.718093,
		-0.895061, 0.360783, -0.262108,
		33.029346, 27.571133, 27.443226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411217, 27.554804, 28.224861>,  <33.655888, 27.318584, 27.626701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411217, 27.554804, 28.224861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087669, 27.507912, 27.994389>,  <32.893539, 27.479776, 27.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087669, 27.507912, 27.994389>,  <33.411217, 27.554804, 28.224861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087669, 27.507912, 27.994389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385351, -0.634448, 0.670060,
		-0.444109, 0.764024, 0.468011,
		-0.808871, -0.117231, -0.576181,
		32.845009, 27.472742, 27.821535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839008, 27.626429, 28.643625>,  <33.411217, 27.554804, 28.224861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839008, 27.626429, 28.643625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711880, 27.439930, 28.313389>,  <32.635601, 27.328032, 28.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711880, 27.439930, 28.313389>,  <32.839008, 27.626429, 28.643625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711880, 27.439930, 28.313389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473703, -0.676198, 0.564236,
		-0.821336, 0.570414, -0.005948,
		-0.317825, -0.466245, -0.825592,
		32.616531, 27.300056, 28.065712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109009, 27.631134, 28.752335>,  <32.839008, 27.626429, 28.643625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109009, 27.631134, 28.752335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234932, 27.341030, 28.507420>,  <32.310486, 27.166967, 28.360470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234932, 27.341030, 28.507420>,  <32.109009, 27.631134, 28.752335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234932, 27.341030, 28.507420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464533, -0.680275, 0.566952,
		-0.827712, 0.105948, -0.551061,
		0.314806, -0.725259, -0.612288,
		32.329372, 27.123453, 28.323732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547808, 27.294983, 28.659918>,  <32.109009, 27.631134, 28.752335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547808, 27.294983, 28.659918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831671, 27.043030, 28.533657>,  <32.001987, 26.891857, 28.457901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831671, 27.043030, 28.533657>,  <31.547808, 27.294983, 28.659918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831671, 27.043030, 28.533657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373426, -0.716187, 0.589601,
		-0.597444, -0.300542, -0.743461,
		0.709657, -0.629882, -0.315652,
		32.044567, 26.854065, 28.438961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236515, 26.626335, 28.412535>,  <31.547808, 27.294983, 28.659918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236515, 26.626335, 28.412535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607782, 26.527187, 28.523579>,  <31.830542, 26.467699, 28.590204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607782, 26.527187, 28.523579>,  <31.236515, 26.626335, 28.412535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607782, 26.527187, 28.523579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362447, -0.771378, 0.523075,
		0.084489, -0.586120, -0.805807,
		0.928167, -0.247868, 0.277611,
		31.886232, 26.452827, 28.606861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214272, 25.922308, 28.779282>,  <31.236515, 26.626335, 28.412535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214272, 25.922308, 28.779282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604246, 25.938236, 28.866840>,  <31.838230, 25.947792, 28.919374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604246, 25.938236, 28.866840>,  <31.214272, 25.922308, 28.779282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604246, 25.938236, 28.866840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109838, -0.769463, 0.629176,
		0.193485, -0.637449, -0.745804,
		0.974936, 0.039819, 0.218895,
		31.896727, 25.950182, 28.932508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507145, 25.252953, 28.702225>,  <31.214272, 25.922308, 28.779282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507145, 25.252953, 28.702225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748003, 25.438698, 28.962006>,  <31.892517, 25.550146, 29.117874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748003, 25.438698, 28.962006>,  <31.507145, 25.252953, 28.702225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748003, 25.438698, 28.962006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075079, -0.842784, 0.532991,
		0.794848, -0.272178, -0.542342,
		0.602145, 0.464365, 0.649450,
		31.928646, 25.578007, 29.156841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143898, 24.881310, 28.762779>,  <31.507145, 25.252953, 28.702225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143898, 24.881310, 28.762779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101849, 25.086376, 29.103630>,  <32.076618, 25.209415, 29.308142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101849, 25.086376, 29.103630>,  <32.143898, 24.881310, 28.762779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101849, 25.086376, 29.103630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067932, -0.851173, 0.520471,
		0.992137, 0.112598, 0.054649,
		-0.105120, 0.512666, 0.852129,
		32.070312, 25.240175, 29.359268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493210, 24.500134, 29.163736>,  <32.143898, 24.881310, 28.762779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493210, 24.500134, 29.163736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303822, 24.716698, 29.441643>,  <32.190189, 24.846636, 29.608387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303822, 24.716698, 29.441643>,  <32.493210, 24.500134, 29.163736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303822, 24.716698, 29.441643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234844, -0.837824, 0.492848,
		0.848924, 0.070189, 0.523834,
		-0.473473, 0.541409, 0.694765,
		32.161781, 24.879120, 29.650072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843899, 24.438663, 29.726206>,  <32.493210, 24.500134, 29.163736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843899, 24.438663, 29.726206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483604, 24.560112, 29.850456>,  <32.267429, 24.632980, 29.925007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483604, 24.560112, 29.850456>,  <32.843899, 24.438663, 29.726206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483604, 24.560112, 29.850456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072232, -0.809866, 0.582151,
		0.428318, 0.501928, 0.751407,
		-0.900737, 0.303621, 0.310624,
		32.213383, 24.651199, 29.943644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883888, 24.485670, 30.393780>,  <32.843899, 24.438663, 29.726206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883888, 24.485670, 30.393780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490753, 24.432194, 30.342922>,  <32.254871, 24.400108, 30.312408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490753, 24.432194, 30.342922>,  <32.883888, 24.485670, 30.393780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490753, 24.432194, 30.342922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014627, -0.743426, 0.668658,
		-0.183916, 0.655320, 0.732619,
		-0.982833, -0.133693, -0.127143,
		32.195904, 24.392086, 30.304779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538029, 24.456762, 31.056988>,  <32.883888, 24.485670, 30.393780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538029, 24.456762, 31.056988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257359, 24.305782, 30.815266>,  <32.088959, 24.215195, 30.670233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257359, 24.305782, 30.815266>,  <32.538029, 24.456762, 31.056988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257359, 24.305782, 30.815266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231927, -0.680962, 0.694622,
		-0.673695, 0.627553, 0.390272,
		-0.701673, -0.377449, -0.604307,
		32.046856, 24.192547, 30.633974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925755, 24.405657, 31.512897>,  <32.538029, 24.456762, 31.056988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925755, 24.405657, 31.512897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871702, 24.160088, 31.201813>,  <31.839272, 24.012747, 31.015162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871702, 24.160088, 31.201813>,  <31.925755, 24.405657, 31.512897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871702, 24.160088, 31.201813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337356, -0.709509, 0.618698,
		-0.931628, 0.345971, -0.111235,
		-0.135129, -0.613922, -0.777714,
		31.831163, 23.975910, 30.968498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204111, 24.191969, 31.569441>,  <31.925755, 24.405657, 31.512897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204111, 24.191969, 31.569441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411013, 23.927998, 31.351471>,  <31.535154, 23.769615, 31.220690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411013, 23.927998, 31.351471>,  <31.204111, 24.191969, 31.569441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411013, 23.927998, 31.351471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255271, -0.726701, 0.637763,
		-0.816876, -0.190782, -0.544350,
		0.517253, -0.659930, -0.544924,
		31.566189, 23.730019, 31.187994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777908, 23.538979, 31.499895>,  <31.204111, 24.191969, 31.569441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777908, 23.538979, 31.499895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148758, 23.418594, 31.410576>,  <31.371267, 23.346365, 31.356983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148758, 23.418594, 31.410576>,  <30.777908, 23.538979, 31.499895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148758, 23.418594, 31.410576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127726, -0.813953, 0.566716,
		-0.352314, -0.496895, -0.793076,
		0.927125, -0.300959, -0.223300,
		31.426895, 23.328306, 31.343586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754238, 22.915514, 31.255207>,  <30.777908, 23.538979, 31.499895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754238, 22.915514, 31.255207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114122, 22.946007, 31.427116>,  <31.330053, 22.964302, 31.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114122, 22.946007, 31.427116>,  <30.754238, 22.915514, 31.255207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114122, 22.946007, 31.427116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236658, -0.742144, 0.627069,
		0.366758, -0.665891, -0.649675,
		0.899712, 0.076232, 0.429775,
		31.384037, 22.968876, 31.556049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999458, 22.251801, 31.273132>,  <30.754238, 22.915514, 31.255207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999458, 22.251801, 31.273132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211412, 22.435177, 31.558525>,  <31.338585, 22.545202, 31.729761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211412, 22.435177, 31.558525>,  <30.999458, 22.251801, 31.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211412, 22.435177, 31.558525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284409, -0.696521, 0.658764,
		0.798959, -0.551989, -0.238691,
		0.529884, 0.458439, 0.713482,
		31.370378, 22.572708, 31.772570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430517, 21.722034, 31.589104>,  <30.999458, 22.251801, 31.273132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430517, 21.722034, 31.589104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363247, 22.011196, 31.857170>,  <31.322884, 22.184694, 32.018009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363247, 22.011196, 31.857170>,  <31.430517, 21.722034, 31.589104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363247, 22.011196, 31.857170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145887, -0.690616, 0.708355,
		0.974902, 0.021361, 0.221609,
		-0.168178, 0.722906, 0.670166,
		31.312794, 22.228067, 32.058220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578602, 21.371048, 32.194851>,  <31.430517, 21.722034, 31.589104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578602, 21.371048, 32.194851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377422, 21.702251, 32.294003>,  <31.256714, 21.900972, 32.353493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377422, 21.702251, 32.294003>,  <31.578602, 21.371048, 32.194851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377422, 21.702251, 32.294003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360857, -0.461767, 0.810280,
		0.785381, 0.318081, 0.531038,
		-0.502951, 0.828007, 0.247881,
		31.226538, 21.950653, 32.368366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628143, 21.373861, 32.913818>,  <31.578602, 21.371048, 32.194851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628143, 21.373861, 32.913818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327003, 21.629784, 32.852024>,  <31.146320, 21.783337, 32.814949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327003, 21.629784, 32.852024>,  <31.628143, 21.373861, 32.913818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327003, 21.629784, 32.852024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505197, -0.411262, 0.758709,
		0.421892, 0.649240, 0.632846,
		-0.752850, 0.639806, -0.154486,
		31.101149, 21.821726, 32.805679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440710, 21.705156, 33.575649>,  <31.628143, 21.373861, 32.913818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440710, 21.705156, 33.575649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121088, 21.716732, 33.335426>,  <30.929314, 21.723677, 33.191292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121088, 21.716732, 33.335426>,  <31.440710, 21.705156, 33.575649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121088, 21.716732, 33.335426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589722, -0.232429, 0.773437,
		-0.117206, 0.972183, 0.202789,
		-0.799056, 0.028938, -0.600560,
		30.881371, 21.725414, 33.155258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953928, 22.244005, 33.856621>,  <31.440710, 21.705156, 33.575649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953928, 22.244005, 33.856621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760691, 21.968567, 33.640305>,  <30.644749, 21.803303, 33.510513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760691, 21.968567, 33.640305>,  <30.953928, 22.244005, 33.856621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760691, 21.968567, 33.640305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599552, -0.189959, 0.777466,
		-0.638089, 0.699821, -0.321082,
		-0.483095, -0.688597, -0.540789,
		30.615763, 21.761988, 33.478069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265320, 22.367447, 33.953697>,  <30.953928, 22.244005, 33.856621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265320, 22.367447, 33.953697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264181, 21.995380, 33.806847>,  <30.263498, 21.772141, 33.718735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264181, 21.995380, 33.806847>,  <30.265320, 22.367447, 33.953697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264181, 21.995380, 33.806847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523435, -0.311432, 0.793111,
		-0.852061, 0.194427, -0.485995,
		-0.002848, -0.930166, -0.367129,
		30.263327, 21.716331, 33.696709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554152, 22.192118, 33.898945>,  <30.265320, 22.367447, 33.953697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554152, 22.192118, 33.898945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751095, 21.845848, 33.935146>,  <29.869261, 21.638086, 33.956867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751095, 21.845848, 33.935146>,  <29.554152, 22.192118, 33.898945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751095, 21.845848, 33.935146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575619, -0.245854, 0.779883,
		-0.652875, -0.436076, -0.619347,
		0.492358, -0.865675, 0.090502,
		29.898802, 21.586145, 33.962296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062052, 21.672092, 33.966724>,  <29.554152, 22.192118, 33.898945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062052, 21.672092, 33.966724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391539, 21.484917, 34.094803>,  <29.589230, 21.372612, 34.171650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391539, 21.484917, 34.094803>,  <29.062052, 21.672092, 33.966724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391539, 21.484917, 34.094803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479224, -0.272733, 0.834243,
		-0.303050, -0.840623, -0.448903,
		0.823714, -0.467943, 0.320195,
		29.638653, 21.344536, 34.190861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790834, 21.038084, 34.147442>,  <29.062052, 21.672092, 33.966724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790834, 21.038084, 34.147442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147631, 21.023743, 34.327694>,  <29.361708, 21.015137, 34.435844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147631, 21.023743, 34.327694>,  <28.790834, 21.038084, 34.147442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147631, 21.023743, 34.327694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433412, -0.351173, 0.829959,
		0.128492, -0.935624, -0.328783,
		0.891989, -0.035855, 0.450633,
		29.415228, 21.012985, 34.462883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856489, 20.344378, 34.442345>,  <28.790834, 21.038084, 34.147442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856489, 20.344378, 34.442345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087072, 20.587070, 34.661278>,  <29.225422, 20.732687, 34.792637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087072, 20.587070, 34.661278>,  <28.856489, 20.344378, 34.442345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087072, 20.587070, 34.661278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414533, -0.360091, 0.835761,
		0.704174, -0.708667, 0.043935,
		0.576456, 0.606734, 0.547333,
		29.260010, 20.769091, 34.825478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070555, 19.987123, 35.009804>,  <28.856489, 20.344378, 34.442345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070555, 19.987123, 35.009804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124220, 20.371048, 35.108406>,  <29.156418, 20.601402, 35.167568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124220, 20.371048, 35.108406>,  <29.070555, 19.987123, 35.009804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124220, 20.371048, 35.108406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379492, -0.180031, 0.907510,
		0.915416, -0.215301, 0.340087,
		0.134162, 0.959810, 0.246508,
		29.164469, 20.658991, 35.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508335, 20.006184, 35.639809>,  <29.070555, 19.987123, 35.009804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508335, 20.006184, 35.639809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262474, 20.318214, 35.593021>,  <29.114958, 20.505432, 35.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262474, 20.318214, 35.593021>,  <29.508335, 20.006184, 35.639809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262474, 20.318214, 35.593021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390657, -0.172220, 0.904283,
		0.685266, 0.601515, 0.410598,
		-0.614653, 0.780077, -0.116970,
		29.078077, 20.552237, 35.557930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422668, 20.466866, 36.267815>,  <29.508335, 20.006184, 35.639809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422668, 20.466866, 36.267815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084137, 20.472740, 36.054832>,  <28.881018, 20.476265, 35.927044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084137, 20.472740, 36.054832>,  <29.422668, 20.466866, 36.267815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084137, 20.472740, 36.054832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484023, -0.438521, 0.757246,
		-0.222375, 0.898601, 0.378240,
		-0.846328, 0.014685, -0.532459,
		28.830238, 20.477146, 35.895096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913452, 20.818502, 36.645542>,  <29.422668, 20.466866, 36.267815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913452, 20.818502, 36.645542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729900, 20.560108, 36.401531>,  <28.619770, 20.405071, 36.255123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729900, 20.560108, 36.401531>,  <28.913452, 20.818502, 36.645542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729900, 20.560108, 36.401531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613235, -0.266561, 0.743565,
		-0.642941, 0.715296, -0.273822,
		-0.458879, -0.645985, -0.610028,
		28.592237, 20.366312, 36.218521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222616, 20.791891, 36.825535>,  <28.913452, 20.818502, 36.645542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222616, 20.791891, 36.825535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273647, 20.442696, 36.637230>,  <28.304266, 20.233179, 36.524246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273647, 20.442696, 36.637230>,  <28.222616, 20.791891, 36.825535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273647, 20.442696, 36.637230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560669, -0.455004, 0.691824,
		-0.818152, 0.175678, -0.547507,
		0.127580, -0.872988, -0.470760,
		28.311922, 20.180799, 36.496002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557632, 20.397507, 36.825405>,  <28.222616, 20.791891, 36.825535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557632, 20.397507, 36.825405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861202, 20.137627, 36.807880>,  <28.043344, 19.981699, 36.797363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861202, 20.137627, 36.807880>,  <27.557632, 20.397507, 36.825405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861202, 20.137627, 36.807880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484410, -0.608249, 0.628793,
		-0.435177, -0.455984, -0.776338,
		0.758926, -0.649702, -0.043813,
		28.088881, 19.942717, 36.794735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417601, 20.863087, 37.349194>,  <27.557632, 20.397507, 36.825405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417601, 20.863087, 37.349194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298216, 21.083855, 37.660656>,  <27.226585, 21.216316, 37.847534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298216, 21.083855, 37.660656>,  <27.417601, 20.863087, 37.349194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298216, 21.083855, 37.660656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857624, 0.513089, -0.034951,
		-0.418809, 0.657361, -0.626478,
		-0.298464, 0.551920, 0.778655,
		27.208677, 21.249432, 37.894253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251383, 21.527573, 37.225426>,  <27.417601, 20.863087, 37.349194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251383, 21.527573, 37.225426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426445, 21.482620, 37.582264>,  <27.531483, 21.455648, 37.796368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426445, 21.482620, 37.582264>,  <27.251383, 21.527573, 37.225426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426445, 21.482620, 37.582264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836923, 0.413576, -0.358488,
		-0.328662, 0.903507, 0.275056,
		0.437653, -0.112379, 0.892093,
		27.557741, 21.448906, 37.849892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708206, 21.979637, 37.196484>,  <27.251383, 21.527573, 37.225426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708206, 21.979637, 37.196484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828863, 21.790104, 37.527420>,  <27.901258, 21.676384, 37.725983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828863, 21.790104, 37.527420>,  <27.708206, 21.979637, 37.196484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828863, 21.790104, 37.527420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873732, 0.484679, -0.040973,
		-0.381580, 0.735233, 0.560204,
		0.301644, -0.473834, 0.827341,
		27.919357, 21.647953, 37.775623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284584, 21.763729, 36.966377>,  <27.708206, 21.979637, 37.196484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284584, 21.763729, 36.966377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597748, 21.705795, 37.208397>,  <28.785646, 21.671036, 37.353607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597748, 21.705795, 37.208397>,  <28.284584, 21.763729, 36.966377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597748, 21.705795, 37.208397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445093, 0.809886, -0.382068,
		-0.434681, 0.568425, 0.698531,
		0.782908, -0.144834, 0.605044,
		28.832621, 21.662346, 37.389912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360981, 22.227579, 37.563171>,  <28.284584, 21.763729, 36.966377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360981, 22.227579, 37.563171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696758, 22.081863, 37.401863>,  <28.898224, 21.994434, 37.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696758, 22.081863, 37.401863>,  <28.360981, 22.227579, 37.563171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696758, 22.081863, 37.401863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196285, 0.895209, -0.400091,
		0.506761, 0.256698, 0.822982,
		0.839444, -0.364289, -0.403271,
		28.948591, 21.972576, 37.280880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930241, 22.618208, 37.818085>,  <28.360981, 22.227579, 37.563171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930241, 22.618208, 37.818085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965277, 22.456261, 37.454018>,  <28.986298, 22.359093, 37.235577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965277, 22.456261, 37.454018>,  <28.930241, 22.618208, 37.818085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965277, 22.456261, 37.454018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030119, 0.912188, -0.408664,
		0.995701, 0.063209, 0.067705,
		0.087591, -0.404868, -0.910170,
		28.991554, 22.334801, 37.180965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214838, 23.119446, 37.486324>,  <28.930241, 22.618208, 37.818085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214838, 23.119446, 37.486324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126633, 22.881531, 37.177105>,  <29.073709, 22.738781, 36.991573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126633, 22.881531, 37.177105>,  <29.214838, 23.119446, 37.486324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126633, 22.881531, 37.177105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037784, 0.786751, -0.616113,
		0.974652, -0.165070, -0.151016,
		-0.220514, -0.594789, -0.773045,
		29.060478, 22.703094, 36.945190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736322, 23.254000, 37.000931>,  <29.214838, 23.119446, 37.486324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736322, 23.254000, 37.000931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427402, 23.112709, 36.789730>,  <29.242050, 23.027935, 36.663010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427402, 23.112709, 36.789730>,  <29.736322, 23.254000, 37.000931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427402, 23.112709, 36.789730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027812, 0.849161, -0.527401,
		0.634647, -0.392628, -0.665632,
		-0.772301, -0.353226, -0.527998,
		29.195713, 23.006741, 36.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764523, 23.369408, 36.284504>,  <29.736322, 23.254000, 37.000931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764523, 23.369408, 36.284504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374537, 23.280987, 36.274849>,  <29.140545, 23.227934, 36.269058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374537, 23.280987, 36.274849>,  <29.764523, 23.369408, 36.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374537, 23.280987, 36.274849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150259, 0.734924, -0.661293,
		0.163915, -0.641110, -0.749740,
		-0.974964, -0.221051, -0.024133,
		29.082047, 23.214672, 36.267609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570869, 23.428677, 35.584229>,  <29.764523, 23.369408, 36.284504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570869, 23.428677, 35.584229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215336, 23.439312, 35.767212>,  <29.002016, 23.445694, 35.877003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215336, 23.439312, 35.767212>,  <29.570869, 23.428677, 35.584229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215336, 23.439312, 35.767212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355328, 0.590360, -0.724719,
		-0.289333, -0.806702, -0.515284,
		-0.888836, 0.026591, 0.457455,
		28.948685, 23.447289, 35.904449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059002, 23.404119, 35.090740>,  <29.570869, 23.428677, 35.584229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059002, 23.404119, 35.090740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871622, 23.575684, 35.399696>,  <28.759193, 23.678621, 35.585072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871622, 23.575684, 35.399696>,  <29.059002, 23.404119, 35.090740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871622, 23.575684, 35.399696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261435, 0.767804, -0.584917,
		-0.843923, -0.475935, -0.247546,
		-0.468450, 0.428908, 0.772394,
		28.731087, 23.704355, 35.631416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371510, 23.678009, 34.934780>,  <29.059002, 23.404119, 35.090740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371510, 23.678009, 34.934780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519855, 23.876431, 35.248821>,  <28.608864, 23.995483, 35.437248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519855, 23.876431, 35.248821>,  <28.371510, 23.678009, 34.934780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519855, 23.876431, 35.248821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030847, 0.851507, -0.523436,
		-0.928174, 0.169906, 0.331096,
		0.370865, 0.496053, 0.785105,
		28.631115, 24.025246, 35.484352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199984, 24.331757, 34.660198>,  <28.371510, 23.678009, 34.934780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199984, 24.331757, 34.660198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430960, 24.433052, 34.970665>,  <28.569546, 24.493830, 35.156944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430960, 24.433052, 34.970665>,  <28.199984, 24.331757, 34.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430960, 24.433052, 34.970665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232723, 0.860183, -0.453790,
		-0.782561, 0.442668, 0.437770,
		0.577441, 0.253239, 0.776165,
		28.604193, 24.509024, 35.203514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058607, 25.052359, 34.731152>,  <28.199984, 24.331757, 34.660198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058607, 25.052359, 34.731152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402380, 24.976376, 34.921009>,  <28.608644, 24.930786, 35.034924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402380, 24.976376, 34.921009>,  <28.058607, 25.052359, 34.731152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402380, 24.976376, 34.921009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386557, 0.849043, -0.360139,
		-0.334585, 0.492993, 0.803125,
		0.859434, -0.189956, 0.474647,
		28.660210, 24.919388, 35.063404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259909, 25.719238, 35.085983>,  <28.058607, 25.052359, 34.731152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259909, 25.719238, 35.085983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592985, 25.497879, 35.078236>,  <28.792831, 25.365063, 35.073586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592985, 25.497879, 35.078236>,  <28.259909, 25.719238, 35.085983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592985, 25.497879, 35.078236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509232, 0.779033, -0.365774,
		0.217507, 0.294714, 0.930502,
		0.832690, -0.553400, -0.019368,
		28.842793, 25.331860, 35.072426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796957, 26.178057, 35.289680>,  <28.259909, 25.719238, 35.085983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796957, 26.178057, 35.289680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994085, 25.883953, 35.103554>,  <29.112362, 25.707491, 34.991879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994085, 25.883953, 35.103554>,  <28.796957, 26.178057, 35.289680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994085, 25.883953, 35.103554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585506, 0.675805, -0.447738,
		0.643667, -0.051791, 0.763551,
		0.492823, -0.735258, -0.465318,
		29.141932, 25.663376, 34.963959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504221, 26.483110, 35.166569>,  <28.796957, 26.178057, 35.289680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504221, 26.483110, 35.166569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425274, 26.177650, 34.920681>,  <29.377905, 25.994373, 34.773148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425274, 26.177650, 34.920681>,  <29.504221, 26.483110, 35.166569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425274, 26.177650, 34.920681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316164, 0.543967, -0.777265,
		0.927947, -0.347761, 0.134077,
		-0.197369, -0.763651, -0.614722,
		29.366064, 25.948555, 34.736263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120100, 26.301886, 34.849865>,  <29.504221, 26.483110, 35.166569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120100, 26.301886, 34.849865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825569, 26.158447, 34.620350>,  <29.648851, 26.072384, 34.482639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825569, 26.158447, 34.620350>,  <30.120100, 26.301886, 34.849865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825569, 26.158447, 34.620350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284186, 0.605688, -0.743223,
		0.614067, -0.710311, -0.344065,
		-0.736315, -0.358610, -0.573793,
		29.604671, 26.050869, 34.448215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505642, 26.020596, 34.284554>,  <30.120100, 26.301886, 34.849865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505642, 26.020596, 34.284554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136791, 26.020779, 34.129799>,  <29.915480, 26.020889, 34.036945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136791, 26.020779, 34.129799>,  <30.505642, 26.020596, 34.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136791, 26.020779, 34.129799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308255, 0.605163, -0.734001,
		0.233790, -0.796102, -0.558179,
		-0.922128, 0.000460, -0.386883,
		29.860153, 26.020916, 34.013733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545307, 25.924929, 33.548431>,  <30.505642, 26.020596, 34.284554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545307, 25.924929, 33.548431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160852, 26.032394, 33.523022>,  <29.930180, 26.096874, 33.507778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160852, 26.032394, 33.523022>,  <30.545307, 25.924929, 33.548431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160852, 26.032394, 33.523022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150981, 0.318901, -0.935685,
		-0.231129, -0.908912, -0.347071,
		-0.961137, 0.268665, -0.063522,
		29.872511, 26.112993, 33.503963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223743, 25.580383, 32.869499>,  <30.545307, 25.924929, 33.548431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223743, 25.580383, 32.869499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028851, 25.898430, 33.013943>,  <29.911915, 26.089258, 33.100609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028851, 25.898430, 33.013943>,  <30.223743, 25.580383, 32.869499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028851, 25.898430, 33.013943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138143, 0.478478, -0.867165,
		-0.862276, -0.372628, -0.342970,
		-0.487234, 0.795114, 0.361105,
		29.882681, 26.136965, 33.122272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744650, 25.788427, 32.326408>,  <30.223743, 25.580383, 32.869499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744650, 25.788427, 32.326408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801519, 26.120358, 32.542252>,  <29.835642, 26.319515, 32.671757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801519, 26.120358, 32.542252>,  <29.744650, 25.788427, 32.326408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801519, 26.120358, 32.542252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219843, 0.505054, -0.834619,
		-0.965119, 0.237291, -0.110626,
		0.142175, 0.829827, 0.539604,
		29.844172, 26.369307, 32.704132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349463, 26.346418, 32.021503>,  <29.744650, 25.788427, 32.326408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349463, 26.346418, 32.021503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621077, 26.548050, 32.234978>,  <29.784046, 26.669029, 32.363060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621077, 26.548050, 32.234978>,  <29.349463, 26.346418, 32.021503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621077, 26.548050, 32.234978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065153, 0.682733, -0.727757,
		-0.731208, 0.528944, 0.430758,
		0.679036, 0.504077, 0.533682,
		29.824787, 26.699272, 32.395081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127390, 27.086914, 32.013550>,  <29.349463, 26.346418, 32.021503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127390, 27.086914, 32.013550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520666, 27.031292, 32.060883>,  <29.756632, 26.997919, 32.089283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520666, 27.031292, 32.060883>,  <29.127390, 27.086914, 32.013550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520666, 27.031292, 32.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180526, 0.643129, -0.744174,
		0.027378, 0.753026, 0.657421,
		0.983189, -0.139055, 0.118333,
		29.815622, 26.989576, 32.096382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386940, 27.715012, 31.814329>,  <29.127390, 27.086914, 32.013550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386940, 27.715012, 31.814329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729923, 27.509930, 31.831779>,  <29.935713, 27.386881, 31.842249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729923, 27.509930, 31.831779>,  <29.386940, 27.715012, 31.814329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729923, 27.509930, 31.831779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424822, 0.657536, -0.622233,
		0.290335, 0.552071, 0.781616,
		0.857457, -0.512703, 0.043626,
		29.987160, 27.356119, 31.844868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868902, 28.205727, 31.933182>,  <29.386940, 27.715012, 31.814329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868902, 28.205727, 31.933182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104080, 27.914013, 31.793201>,  <30.245186, 27.738985, 31.709213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104080, 27.914013, 31.793201>,  <29.868902, 28.205727, 31.933182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104080, 27.914013, 31.793201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498842, 0.667457, -0.552863,
		0.636772, 0.150482, 0.756225,
		0.587944, -0.729285, -0.349952,
		30.280464, 27.695227, 31.688215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600504, 28.405933, 32.007587>,  <29.868902, 28.205727, 31.933182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600504, 28.405933, 32.007587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610710, 28.127922, 31.720177>,  <30.616833, 27.961115, 31.547729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610710, 28.127922, 31.720177>,  <30.600504, 28.405933, 32.007587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610710, 28.127922, 31.720177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706748, 0.520876, -0.478745,
		0.707005, -0.495603, 0.504501,
		0.025515, -0.695030, -0.718528,
		30.618364, 27.919413, 31.504618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285881, 28.240976, 31.844831>,  <30.600504, 28.405933, 32.007587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285881, 28.240976, 31.844831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069420, 28.154232, 31.519840>,  <30.939543, 28.102186, 31.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069420, 28.154232, 31.519840>,  <31.285881, 28.240976, 31.844831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069420, 28.154232, 31.519840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650842, 0.503805, -0.567966,
		0.532500, -0.836153, -0.131495,
		-0.541155, -0.216859, -0.812480,
		30.907074, 28.089174, 31.276096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845877, 28.025557, 31.389236>,  <31.285881, 28.240976, 31.844831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845877, 28.025557, 31.389236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510185, 28.093021, 31.182453>,  <31.308769, 28.133501, 31.058384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510185, 28.093021, 31.182453>,  <31.845877, 28.025557, 31.389236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510185, 28.093021, 31.182453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531781, 0.453148, -0.715448,
		0.113589, -0.875334, -0.469987,
		-0.839230, 0.168663, -0.516959,
		31.258417, 28.143620, 31.027365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054806, 27.867846, 30.688709>,  <31.845877, 28.025557, 31.389236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054806, 27.867846, 30.688709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714422, 28.066082, 30.619125>,  <31.510193, 28.185024, 30.577375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714422, 28.066082, 30.619125>,  <32.054806, 27.867846, 30.688709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714422, 28.066082, 30.619125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432487, 0.473213, -0.767480,
		-0.298036, -0.728327, -0.617020,
		-0.850958, 0.495590, -0.173957,
		31.459135, 28.214760, 30.566938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815666, 27.815104, 29.943172>,  <32.054806, 27.867846, 30.688709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815666, 27.815104, 29.943172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650801, 28.146595, 30.094608>,  <31.551882, 28.345490, 30.185471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650801, 28.146595, 30.094608>,  <31.815666, 27.815104, 29.943172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650801, 28.146595, 30.094608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430718, 0.543391, -0.720561,
		-0.802872, -0.133924, -0.580914,
		-0.412164, 0.828728, 0.378590,
		31.527151, 28.395214, 30.208185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620684, 28.237133, 29.276621>,  <31.815666, 27.815104, 29.943172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620684, 28.237133, 29.276621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637358, 28.491837, 29.584595>,  <31.647362, 28.644659, 29.769379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637358, 28.491837, 29.584595>,  <31.620684, 28.237133, 29.276621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637358, 28.491837, 29.584595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426784, 0.685417, -0.589964,
		-0.903392, 0.353188, -0.243188,
		0.041683, 0.636758, 0.769936,
		31.649862, 28.682863, 29.815575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475834, 28.882404, 28.982004>,  <31.620684, 28.237133, 29.276621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475834, 28.882404, 28.982004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640715, 28.978062, 29.333664>,  <31.739643, 29.035456, 29.544659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640715, 28.978062, 29.333664>,  <31.475834, 28.882404, 28.982004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640715, 28.978062, 29.333664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502289, 0.745405, -0.438267,
		-0.760130, 0.622240, 0.187138,
		0.412201, 0.239142, 0.879148,
		31.764376, 29.049805, 29.597408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463413, 29.583652, 29.023510>,  <31.475834, 28.882404, 28.982004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463413, 29.583652, 29.023510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724314, 29.490761, 29.312130>,  <31.880854, 29.435026, 29.485302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724314, 29.490761, 29.312130>,  <31.463413, 29.583652, 29.023510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724314, 29.490761, 29.312130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531895, 0.818428, -0.217400,
		-0.540051, 0.525589, 0.657344,
		0.652252, -0.232231, 0.721551,
		31.919989, 29.421091, 29.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583885, 30.232374, 29.412767>,  <31.463413, 29.583652, 29.023510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583885, 30.232374, 29.412767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914270, 30.007034, 29.421001>,  <32.112503, 29.871830, 29.425941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914270, 30.007034, 29.421001>,  <31.583885, 30.232374, 29.412767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914270, 30.007034, 29.421001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543132, 0.785480, -0.296697,
		0.150973, 0.256242, 0.954750,
		0.825963, -0.563349, 0.020587,
		32.162060, 29.838030, 29.427177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051369, 30.647079, 29.729963>,  <31.583885, 30.232374, 29.412767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051369, 30.647079, 29.729963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250984, 30.366745, 29.526085>,  <32.370754, 30.198544, 29.403757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250984, 30.366745, 29.526085>,  <32.051369, 30.647079, 29.729963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250984, 30.366745, 29.526085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639600, 0.694728, -0.329038,
		0.584703, -0.161801, 0.794949,
		0.499034, -0.700838, -0.509697,
		32.400696, 30.156494, 29.373177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744598, 30.931194, 29.729263>,  <32.051369, 30.647079, 29.729963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744598, 30.931194, 29.729263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746040, 30.651337, 29.443470>,  <32.746906, 30.483423, 29.271994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746040, 30.651337, 29.443470>,  <32.744598, 30.931194, 29.729263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746040, 30.651337, 29.443470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771697, 0.456349, -0.442978,
		0.635980, -0.549769, 0.541555,
		0.003603, -0.699642, -0.714485,
		32.747120, 30.441444, 29.229124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470512, 30.904482, 29.549938>,  <32.744598, 30.931194, 29.729263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470512, 30.904482, 29.549938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283344, 30.717033, 29.250217>,  <33.171043, 30.604565, 29.070385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283344, 30.717033, 29.250217>,  <33.470512, 30.904482, 29.549938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283344, 30.717033, 29.250217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501461, 0.557362, -0.661728,
		0.727730, -0.685378, -0.025804,
		-0.467916, -0.468620, -0.749300,
		33.142971, 30.576448, 29.025427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941742, 30.718523, 29.049507>,  <33.470512, 30.904482, 29.549938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941742, 30.718523, 29.049507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601952, 30.732544, 28.838921>,  <33.398079, 30.740955, 28.712568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601952, 30.732544, 28.838921>,  <33.941742, 30.718523, 29.049507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601952, 30.732544, 28.838921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439988, 0.597762, -0.670143,
		0.291211, -0.800907, -0.523206,
		-0.849475, 0.035051, -0.526464,
		33.347111, 30.743059, 28.680981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133224, 30.591564, 28.448835>,  <33.941742, 30.718523, 29.049507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133224, 30.591564, 28.448835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785988, 30.783913, 28.399540>,  <33.577648, 30.899321, 28.369963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785988, 30.783913, 28.399540>,  <34.133224, 30.591564, 28.448835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785988, 30.783913, 28.399540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394742, 0.518157, -0.758744,
		-0.301002, -0.707303, -0.639625,
		-0.868088, 0.480870, -0.123236,
		33.525562, 30.928173, 28.362570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020649, 30.598589, 27.742777>,  <34.133224, 30.591564, 28.448835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020649, 30.598589, 27.742777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816177, 30.908348, 27.891911>,  <33.693493, 31.094204, 27.981390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816177, 30.908348, 27.891911>,  <34.020649, 30.598589, 27.742777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816177, 30.908348, 27.891911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396538, 0.597364, -0.697075,
		-0.762529, -0.208489, -0.612439,
		-0.511181, 0.774396, 0.372833,
		33.662823, 31.140667, 28.003761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017174, 31.066538, 27.123604>,  <34.020649, 30.598589, 27.742777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017174, 31.066538, 27.123604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856789, 31.295483, 27.409718>,  <33.760559, 31.432850, 27.581387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856789, 31.295483, 27.409718>,  <34.017174, 31.066538, 27.123604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856789, 31.295483, 27.409718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415976, 0.809415, -0.414502,
		-0.816206, 0.131341, -0.562634,
		-0.400963, 0.572361, 0.715284,
		33.736500, 31.467192, 27.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564697, 31.659723, 26.786995>,  <34.017174, 31.066538, 27.123604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564697, 31.659723, 26.786995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675476, 31.759895, 27.158066>,  <33.741943, 31.819998, 27.380709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675476, 31.759895, 27.158066>,  <33.564697, 31.659723, 26.786995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675476, 31.759895, 27.158066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339311, 0.877755, -0.338250,
		-0.898982, 0.408448, 0.158116,
		0.276945, 0.250430, 0.927678,
		33.758560, 31.835024, 27.436369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325603, 32.392654, 26.885546>,  <33.564697, 31.659723, 26.786995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325603, 32.392654, 26.885546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623707, 32.336864, 27.146358>,  <33.802567, 32.303391, 27.302845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623707, 32.336864, 27.146358>,  <33.325603, 32.392654, 26.885546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623707, 32.336864, 27.146358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419073, 0.858579, -0.295330,
		-0.518628, 0.493343, 0.698310,
		0.745254, -0.139477, 0.652030,
		33.847282, 32.295021, 27.341967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325768, 32.945972, 27.126911>,  <33.325603, 32.392654, 26.885546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325768, 32.945972, 27.126911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687180, 32.780098, 27.170128>,  <33.904026, 32.680573, 27.196058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687180, 32.780098, 27.170128>,  <33.325768, 32.945972, 27.126911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687180, 32.780098, 27.170128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411250, 0.768207, -0.490644,
		0.120465, 0.487742, 0.864636,
		0.903527, -0.414687, 0.108042,
		33.958237, 32.655693, 27.202539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713631, 33.140076, 27.284143>,  <33.325768, 32.945972, 27.126911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713631, 33.140076, 27.284143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399269, 33.324635, 27.119476>,  <32.210651, 33.435368, 27.020676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399269, 33.324635, 27.119476>,  <32.713631, 33.140076, 27.284143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399269, 33.324635, 27.119476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617587, -0.552643, 0.559617,
		0.030698, 0.694046, 0.719276,
		-0.785903, 0.461395, -0.411669,
		32.163498, 33.463055, 26.995975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218460, 33.158588, 27.857813>,  <32.713631, 33.140076, 27.284143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218460, 33.158588, 27.857813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959932, 33.240749, 27.563850>,  <31.804815, 33.290047, 27.387474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959932, 33.240749, 27.563850>,  <32.218460, 33.158588, 27.857813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959932, 33.240749, 27.563850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721529, -0.477931, 0.500977,
		-0.248335, 0.854045, 0.457096,
		-0.646317, 0.205398, -0.734905,
		31.766037, 33.302368, 27.343378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528528, 33.465042, 28.110165>,  <32.218460, 33.158588, 27.857813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528528, 33.465042, 28.110165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449614, 33.286926, 27.760811>,  <31.402264, 33.180058, 27.551199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449614, 33.286926, 27.760811>,  <31.528528, 33.465042, 28.110165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449614, 33.286926, 27.760811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756342, -0.497670, 0.424583,
		-0.623718, 0.744341, -0.238606,
		-0.197288, -0.445288, -0.873382,
		31.390427, 33.153339, 27.498796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750858, 33.347366, 28.089401>,  <31.528528, 33.465042, 28.110165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750858, 33.347366, 28.089401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899652, 33.060329, 27.853882>,  <30.988928, 32.888107, 27.712570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899652, 33.060329, 27.853882>,  <30.750858, 33.347366, 28.089401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899652, 33.060329, 27.853882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758268, -0.600784, 0.253155,
		-0.535404, 0.352298, -0.767612,
		0.371983, -0.717597, -0.588798,
		31.011248, 32.845051, 27.677242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198381, 33.149616, 27.800390>,  <30.750858, 33.347366, 28.089401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198381, 33.149616, 27.800390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462608, 32.852139, 27.759251>,  <30.621143, 32.673653, 27.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462608, 32.852139, 27.759251>,  <30.198381, 33.149616, 27.800390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462608, 32.852139, 27.759251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705265, -0.661647, 0.254605,
		-0.257398, -0.095647, -0.961560,
		0.660566, -0.743690, -0.102850,
		30.660778, 32.629032, 27.728395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773914, 32.667664, 27.825052>,  <30.198381, 33.149616, 27.800390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773914, 32.667664, 27.825052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112432, 32.454967, 27.837948>,  <30.315542, 32.327351, 27.845686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112432, 32.454967, 27.837948>,  <29.773914, 32.667664, 27.825052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112432, 32.454967, 27.837948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485838, -0.745582, 0.456145,
		-0.218514, -0.401696, -0.889321,
		0.846293, -0.531741, 0.032239,
		30.366320, 32.295444, 27.847620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628710, 31.947371, 27.507868>,  <29.773914, 32.667664, 27.825052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628710, 31.947371, 27.507868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927217, 31.920879, 27.772804>,  <30.106321, 31.904985, 27.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927217, 31.920879, 27.772804>,  <29.628710, 31.947371, 27.507868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927217, 31.920879, 27.772804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374479, -0.864412, 0.335496,
		0.550318, -0.498404, -0.669883,
		0.746267, -0.066228, 0.662343,
		30.151098, 31.901011, 27.971508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752695, 31.209177, 27.539562>,  <29.628710, 31.947371, 27.507868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752695, 31.209177, 27.539562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915514, 31.378231, 27.863461>,  <30.013205, 31.479664, 28.057800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915514, 31.378231, 27.863461>,  <29.752695, 31.209177, 27.539562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915514, 31.378231, 27.863461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386920, -0.723266, 0.571997,
		0.827409, -0.546137, -0.130877,
		0.407047, 0.422636, 0.809748,
		30.037628, 31.505022, 28.106384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915590, 30.698395, 27.945360>,  <29.752695, 31.209177, 27.539562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915590, 30.698395, 27.945360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930262, 31.000462, 28.207161>,  <29.939064, 31.181702, 28.364243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930262, 31.000462, 28.207161>,  <29.915590, 30.698395, 27.945360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930262, 31.000462, 28.207161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138740, -0.644754, 0.751694,
		0.989649, -0.118376, 0.081125,
		0.036677, 0.755169, 0.654503,
		29.941265, 31.227013, 28.403511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313946, 30.364580, 28.504520>,  <29.915590, 30.698395, 27.945360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313946, 30.364580, 28.504520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157167, 30.685001, 28.685493>,  <30.063101, 30.877254, 28.794077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157167, 30.685001, 28.685493>,  <30.313946, 30.364580, 28.504520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157167, 30.685001, 28.685493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365805, -0.586930, 0.722288,
		0.844136, 0.117596, 0.523074,
		-0.391946, 0.801052, 0.452431,
		30.039583, 30.925318, 28.821222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553978, 30.445456, 29.277519>,  <30.313946, 30.364580, 28.504520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553978, 30.445456, 29.277519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215500, 30.658581, 29.274300>,  <30.012413, 30.786455, 29.272367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215500, 30.658581, 29.274300>,  <30.553978, 30.445456, 29.277519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215500, 30.658581, 29.274300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242608, -0.371764, 0.896065,
		0.474443, 0.760198, 0.443850,
		-0.846194, 0.532814, -0.008049,
		29.961641, 30.818424, 29.271885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440830, 30.749857, 29.959272>,  <30.553978, 30.445456, 29.277519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440830, 30.749857, 29.959272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063034, 30.758480, 29.828140>,  <29.836357, 30.763655, 29.749460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063034, 30.758480, 29.828140>,  <30.440830, 30.749857, 29.959272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063034, 30.758480, 29.828140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327227, -0.150853, 0.932827,
		-0.029345, 0.988321, 0.149534,
		-0.944490, 0.021558, -0.327832,
		29.779688, 30.764948, 29.729790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074581, 31.087225, 30.522648>,  <30.440830, 30.749857, 29.959272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074581, 31.087225, 30.522648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770067, 30.927532, 30.318272>,  <29.587358, 30.831717, 30.195646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770067, 30.927532, 30.318272>,  <30.074581, 31.087225, 30.522648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770067, 30.927532, 30.318272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483548, -0.175444, 0.857555,
		-0.432006, 0.899907, -0.059486,
		-0.761283, -0.399233, -0.510941,
		29.541683, 30.807762, 30.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510103, 31.281912, 30.916515>,  <30.074581, 31.087225, 30.522648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510103, 31.281912, 30.916515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417028, 30.955471, 30.704918>,  <29.361183, 30.759607, 30.577959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417028, 30.955471, 30.704918>,  <29.510103, 31.281912, 30.916515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417028, 30.955471, 30.704918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211278, -0.488518, 0.846588,
		-0.949325, 0.308755, -0.058752,
		-0.232687, -0.816101, -0.528996,
		29.347223, 30.710640, 30.546219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855078, 31.106386, 31.135059>,  <29.510103, 31.281912, 30.916515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855078, 31.106386, 31.135059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963364, 30.760712, 30.965405>,  <29.028336, 30.553307, 30.863611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963364, 30.760712, 30.965405>,  <28.855078, 31.106386, 31.135059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963364, 30.760712, 30.965405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541158, -0.500998, 0.675388,
		-0.796154, 0.046688, -0.603290,
		0.270714, -0.864189, -0.424137,
		29.044579, 30.501455, 30.838163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321600, 30.703089, 31.186092>,  <28.855078, 31.106386, 31.135059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321600, 30.703089, 31.186092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630344, 30.451572, 31.148460>,  <28.815590, 30.300663, 31.125881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630344, 30.451572, 31.148460>,  <28.321600, 30.703089, 31.186092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630344, 30.451572, 31.148460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441596, -0.636659, 0.632185,
		-0.457412, -0.446412, -0.769084,
		0.771860, -0.628793, -0.094082,
		28.861902, 30.262934, 31.120235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062464, 29.977646, 31.023228>,  <28.321600, 30.703089, 31.186092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062464, 29.977646, 31.023228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442760, 29.924625, 31.135315>,  <28.670938, 29.892813, 31.202568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442760, 29.924625, 31.135315>,  <28.062464, 29.977646, 31.023228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442760, 29.924625, 31.135315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293637, -0.674794, 0.677075,
		0.099344, -0.726005, -0.680476,
		0.950741, -0.132550, 0.280218,
		28.727983, 29.884861, 31.219381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190935, 29.272881, 30.979483>,  <28.062464, 29.977646, 31.023228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190935, 29.272881, 30.979483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459007, 29.412865, 31.241287>,  <28.619850, 29.496855, 31.398369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459007, 29.412865, 31.241287>,  <28.190935, 29.272881, 30.979483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459007, 29.412865, 31.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307178, -0.671995, 0.673844,
		0.675647, -0.652648, -0.342858,
		0.670181, 0.349962, 0.654510,
		28.660061, 29.517853, 31.437641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587658, 28.692829, 31.184031>,  <28.190935, 29.272881, 30.979483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587658, 28.692829, 31.184031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619131, 28.959274, 31.480705>,  <28.638016, 29.119143, 31.658710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619131, 28.959274, 31.480705>,  <28.587658, 28.692829, 31.184031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619131, 28.959274, 31.480705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270748, -0.701750, 0.658970,
		0.959429, -0.252660, 0.125134,
		0.078683, 0.666115, 0.741687,
		28.642736, 29.159109, 31.703211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971504, 28.363380, 31.758085>,  <28.587658, 28.692829, 31.184031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971504, 28.363380, 31.758085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800022, 28.658554, 31.966572>,  <28.697134, 28.835659, 32.091663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800022, 28.658554, 31.966572>,  <28.971504, 28.363380, 31.758085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800022, 28.658554, 31.966572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254889, -0.652274, 0.713842,
		0.866744, 0.173174, 0.467723,
		-0.428703, 0.737936, 0.521215,
		28.671412, 28.879934, 32.122936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049204, 28.165487, 32.478294>,  <28.971504, 28.363380, 31.758085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049204, 28.165487, 32.478294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764540, 28.446495, 32.478764>,  <28.593740, 28.615101, 32.479046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764540, 28.446495, 32.478764>,  <29.049204, 28.165487, 32.478294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764540, 28.446495, 32.478764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472670, -0.480058, 0.739004,
		0.519731, 0.525365, 0.673700,
		-0.711662, 0.702521, 0.001176,
		28.551041, 28.657251, 32.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858276, 28.357815, 33.188694>,  <29.049204, 28.165487, 32.478294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858276, 28.357815, 33.188694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535563, 28.465466, 32.978298>,  <28.341934, 28.530056, 32.852058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535563, 28.465466, 32.978298>,  <28.858276, 28.357815, 33.188694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535563, 28.465466, 32.978298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589148, -0.433859, 0.681667,
		-0.044752, 0.859847, 0.508587,
		-0.806785, 0.269127, -0.525993,
		28.293528, 28.546204, 32.820499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442802, 28.617884, 33.678360>,  <28.858276, 28.357815, 33.188694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442802, 28.617884, 33.678360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212776, 28.508446, 33.369961>,  <28.074760, 28.442783, 33.184921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212776, 28.508446, 33.369961>,  <28.442802, 28.617884, 33.678360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212776, 28.508446, 33.369961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521094, -0.604022, 0.603008,
		-0.630682, 0.748534, 0.204785,
		-0.575067, -0.273594, -0.771002,
		28.040257, 28.426367, 33.138660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900150, 28.298620, 34.058788>,  <28.442802, 28.617884, 33.678360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900150, 28.298620, 34.058788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782423, 28.224174, 33.683823>,  <27.711786, 28.179506, 33.458843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782423, 28.224174, 33.683823>,  <27.900150, 28.298620, 34.058788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782423, 28.224174, 33.683823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579462, -0.745246, 0.329898,
		-0.759999, 0.640289, 0.111494,
		-0.294321, -0.186115, -0.937409,
		27.694126, 28.168341, 33.402599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188128, 28.095486, 34.033115>,  <27.900150, 28.298620, 34.058788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188128, 28.095486, 34.033115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368807, 27.946774, 33.708710>,  <27.477215, 27.857546, 33.514065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368807, 27.946774, 33.708710>,  <27.188128, 28.095486, 34.033115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368807, 27.946774, 33.708710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468021, -0.872658, 0.139371,
		-0.759555, 0.316619, -0.568181,
		0.451700, -0.371780, -0.811016,
		27.504316, 27.835239, 33.465405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661779, 27.848934, 33.634525>,  <27.188128, 28.095486, 34.033115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661779, 27.848934, 33.634525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969082, 27.633091, 33.496769>,  <27.153463, 27.503584, 33.414116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969082, 27.633091, 33.496769>,  <26.661779, 27.848934, 33.634525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969082, 27.633091, 33.496769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514498, -0.840599, 0.169368,
		-0.380886, 0.047069, -0.923423,
		0.768256, -0.539609, -0.344389,
		27.199558, 27.471209, 33.393452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385122, 27.380255, 33.084488>,  <26.661779, 27.848934, 33.634525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385122, 27.380255, 33.084488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723526, 27.225025, 33.230728>,  <26.926569, 27.131887, 33.318474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723526, 27.225025, 33.230728>,  <26.385122, 27.380255, 33.084488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723526, 27.225025, 33.230728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418275, -0.908313, 0.003750,
		0.330625, -0.156094, -0.930764,
		0.846010, -0.388076, 0.365601,
		26.977329, 27.108603, 33.340408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355835, 26.710957, 32.665836>,  <26.385122, 27.380255, 33.084488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355835, 26.710957, 32.665836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635344, 26.700390, 32.951778>,  <26.803049, 26.694050, 33.123344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635344, 26.700390, 32.951778>,  <26.355835, 26.710957, 32.665836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635344, 26.700390, 32.951778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214390, -0.961116, 0.174048,
		0.682464, -0.274878, -0.677263,
		0.698770, -0.026417, 0.714858,
		26.844975, 26.692465, 33.166237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754917, 26.060345, 32.540520>,  <26.355835, 26.710957, 32.665836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754917, 26.060345, 32.540520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799442, 26.159256, 32.925533>,  <26.826159, 26.218603, 33.156540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799442, 26.159256, 32.925533>,  <26.754917, 26.060345, 32.540520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799442, 26.159256, 32.925533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360629, -0.892476, 0.270986,
		0.926043, -0.377281, -0.010170,
		0.111314, 0.247277, 0.962530,
		26.832836, 26.233438, 33.214291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073648, 25.424286, 32.787838>,  <26.754917, 26.060345, 32.540520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073648, 25.424286, 32.787838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920141, 25.639126, 33.088303>,  <26.828037, 25.768030, 33.268581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920141, 25.639126, 33.088303>,  <27.073648, 25.424286, 32.787838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920141, 25.639126, 33.088303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367873, -0.835037, 0.409124,
		0.846990, -0.119324, 0.518045,
		-0.383768, 0.537099, 0.751164,
		26.805012, 25.800255, 33.313652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378601, 25.129879, 33.362583>,  <27.073648, 25.424286, 32.787838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378601, 25.129879, 33.362583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048073, 25.310253, 33.497555>,  <26.849756, 25.418478, 33.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048073, 25.310253, 33.497555>,  <27.378601, 25.129879, 33.362583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048073, 25.310253, 33.497555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266705, -0.840986, 0.470757,
		0.496051, 0.299002, 0.815188,
		-0.826319, 0.450934, 0.337426,
		26.800177, 25.445534, 33.598782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331995, 24.922846, 34.059204>,  <27.378601, 25.129879, 33.362583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331995, 24.922846, 34.059204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963383, 25.045963, 33.964508>,  <26.742216, 25.119833, 33.907692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963383, 25.045963, 33.964508>,  <27.331995, 24.922846, 34.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963383, 25.045963, 33.964508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381317, -0.832456, 0.402013,
		-0.073336, 0.460739, 0.884501,
		-0.921531, 0.307793, -0.236736,
		26.686924, 25.138302, 33.893486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939779, 24.989069, 34.700806>,  <27.331995, 24.922846, 34.059204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939779, 24.989069, 34.700806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678961, 24.935165, 34.402363>,  <26.522469, 24.902824, 34.223297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678961, 24.935165, 34.402363>,  <26.939779, 24.989069, 34.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678961, 24.935165, 34.402363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327697, -0.837321, 0.437617,
		-0.683702, 0.529844, 0.501814,
		-0.652048, -0.134757, -0.746106,
		26.483347, 24.894739, 34.178532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268894, 24.803053, 35.081745>,  <26.939779, 24.989069, 34.700806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268894, 24.803053, 35.081745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207848, 24.684292, 34.704693>,  <26.171219, 24.613035, 34.478462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207848, 24.684292, 34.704693>,  <26.268894, 24.803053, 35.081745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207848, 24.684292, 34.704693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345983, -0.877396, 0.332373,
		-0.925745, 0.376861, 0.031181,
		-0.152617, -0.296905, -0.942632,
		26.162064, 24.595221, 34.421902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618206, 24.472467, 35.149029>,  <26.268894, 24.803053, 35.081745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618206, 24.472467, 35.149029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791582, 24.320057, 34.822361>,  <25.895607, 24.228611, 34.626362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791582, 24.320057, 34.822361>,  <25.618206, 24.472467, 35.149029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791582, 24.320057, 34.822361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153006, -0.924177, 0.349979,
		-0.888099, -0.026740, -0.458875,
		0.433440, -0.381027, -0.816669,
		25.921614, 24.205750, 34.577362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260920, 23.858475, 35.034565>,  <25.618206, 24.472467, 35.149029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260920, 23.858475, 35.034565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592428, 23.794968, 34.819927>,  <25.791334, 23.756865, 34.691147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592428, 23.794968, 34.819927>,  <25.260920, 23.858475, 35.034565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592428, 23.794968, 34.819927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023043, -0.967777, 0.250753,
		-0.559112, -0.195452, -0.805725,
		0.828772, -0.158765, -0.536592,
		25.841061, 23.747337, 34.658951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154310, 23.260195, 34.731628>,  <25.260920, 23.858475, 35.034565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154310, 23.260195, 34.731628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553711, 23.281956, 34.729149>,  <25.793350, 23.295012, 34.727661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553711, 23.281956, 34.729149>,  <25.154310, 23.260195, 34.731628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553711, 23.281956, 34.729149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054515, -0.977179, 0.205305,
		0.005113, -0.205335, -0.978679,
		0.998500, 0.054402, -0.006198,
		25.853260, 23.298277, 34.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338648, 22.665169, 34.235523>,  <25.154310, 23.260195, 34.731628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338648, 22.665169, 34.235523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674534, 22.722443, 34.445049>,  <25.876064, 22.756807, 34.570763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674534, 22.722443, 34.445049>,  <25.338648, 22.665169, 34.235523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674534, 22.722443, 34.445049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012000, -0.969269, 0.245710,
		0.542897, -0.200040, -0.815626,
		0.839714, 0.143183, 0.523813,
		25.926449, 22.765398, 34.602192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322304, 22.004463, 33.822021>,  <25.338648, 22.665169, 34.235523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322304, 22.004463, 33.822021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019678, 22.031853, 33.561893>,  <24.838102, 22.048286, 33.405815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019678, 22.031853, 33.561893>,  <25.322304, 22.004463, 33.822021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019678, 22.031853, 33.561893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653481, 0.115456, -0.748085,
		0.023859, -0.990949, -0.132097,
		-0.756567, 0.068475, -0.650322,
		24.792707, 22.052395, 33.366798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446098, 21.567118, 33.195892>,  <25.322304, 22.004463, 33.822021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446098, 21.567118, 33.195892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195095, 21.866909, 33.111496>,  <25.044493, 22.046783, 33.060860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195095, 21.866909, 33.111496>,  <25.446098, 21.567118, 33.195892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195095, 21.866909, 33.111496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660012, 0.368269, -0.654799,
		-0.413058, -0.550145, -0.725757,
		-0.627508, 0.749479, -0.210986,
		25.006842, 22.091753, 33.048199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631802, 21.690937, 32.527557>,  <25.446098, 21.567118, 33.195892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631802, 21.690937, 32.527557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401722, 22.006977, 32.612305>,  <25.263674, 22.196600, 32.663155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401722, 22.006977, 32.612305>,  <25.631802, 21.690937, 32.527557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401722, 22.006977, 32.612305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526330, 0.555740, -0.643529,
		-0.626197, -0.258643, -0.735514,
		-0.575199, 0.790099, 0.211871,
		25.229162, 22.244007, 32.675865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376987, 21.861139, 31.896002>,  <25.631802, 21.690937, 32.527557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376987, 21.861139, 31.896002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386806, 22.177784, 32.140213>,  <25.392698, 22.367771, 32.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386806, 22.177784, 32.140213>,  <25.376987, 21.861139, 31.896002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386806, 22.177784, 32.140213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472042, 0.529165, -0.705096,
		-0.881234, 0.305503, -0.360686,
		0.024546, 0.791614, 0.610528,
		25.394171, 22.415268, 32.323372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316259, 22.380030, 31.455631>,  <25.376987, 21.861139, 31.896002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316259, 22.380030, 31.455631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459259, 22.568813, 31.777985>,  <25.545059, 22.682083, 31.971397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459259, 22.568813, 31.777985>,  <25.316259, 22.380030, 31.455631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459259, 22.568813, 31.777985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561413, 0.580985, -0.589298,
		-0.746330, 0.663108, -0.057261,
		0.357500, 0.471958, 0.805884,
		25.566509, 22.710402, 32.019749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196409, 23.066813, 31.280455>,  <25.316259, 22.380030, 31.455631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196409, 23.066813, 31.280455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470488, 23.089783, 31.570892>,  <25.634933, 23.103565, 31.745155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470488, 23.089783, 31.570892>,  <25.196409, 23.066813, 31.280455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470488, 23.089783, 31.570892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492324, 0.698153, -0.519808,
		-0.536773, 0.713642, 0.450099,
		0.685195, 0.057424, 0.726092,
		25.676046, 23.107010, 31.788719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278034, 23.766611, 31.453737>,  <25.196409, 23.066813, 31.280455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278034, 23.766611, 31.453737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609255, 23.612434, 31.616592>,  <25.807987, 23.519928, 31.714306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609255, 23.612434, 31.616592>,  <25.278034, 23.766611, 31.453737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609255, 23.612434, 31.616592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546957, 0.714886, -0.435632,
		-0.123144, 0.583413, 0.802786,
		0.828054, -0.385444, 0.407136,
		25.857672, 23.496801, 31.738733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519949, 24.391111, 31.882738>,  <25.278034, 23.766611, 31.453737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519949, 24.391111, 31.882738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802111, 24.131554, 31.768658>,  <25.971409, 23.975819, 31.700209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802111, 24.131554, 31.768658>,  <25.519949, 24.391111, 31.882738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802111, 24.131554, 31.768658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607023, 0.760797, -0.229589,
		0.365958, -0.011170, 0.930564,
		0.705406, -0.648894, -0.285200,
		26.013733, 23.936886, 31.683098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182878, 24.725613, 31.968380>,  <25.519949, 24.391111, 31.882738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182878, 24.725613, 31.968380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301041, 24.438850, 31.715782>,  <26.371937, 24.266794, 31.564224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301041, 24.438850, 31.715782>,  <26.182878, 24.725613, 31.968380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301041, 24.438850, 31.715782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698129, 0.613213, -0.369576,
		0.652191, -0.331690, 0.681637,
		0.295404, -0.716904, -0.631494,
		26.389662, 24.223780, 31.526335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870605, 24.737488, 32.063324>,  <26.182878, 24.725613, 31.968380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870605, 24.737488, 32.063324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789442, 24.542133, 31.723839>,  <26.740744, 24.424921, 31.520147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789442, 24.542133, 31.723839>,  <26.870605, 24.737488, 32.063324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789442, 24.542133, 31.723839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665834, 0.566707, -0.485292,
		0.717979, -0.663569, 0.210194,
		-0.202907, -0.488384, -0.848711,
		26.728571, 24.395618, 31.469225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421240, 24.669014, 31.705706>,  <26.870605, 24.737488, 32.063324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421240, 24.669014, 31.705706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170996, 24.608711, 31.399532>,  <27.020849, 24.572529, 31.215828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170996, 24.608711, 31.399532>,  <27.421240, 24.669014, 31.705706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170996, 24.608711, 31.399532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565581, 0.588144, -0.578104,
		0.537339, -0.794581, -0.282681,
		-0.625608, -0.150759, -0.765432,
		26.983313, 24.563484, 31.169903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829168, 24.747751, 31.156429>,  <27.421240, 24.669014, 31.705706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829168, 24.747751, 31.156429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477612, 24.800671, 30.973106>,  <27.266678, 24.832422, 30.863113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477612, 24.800671, 30.973106>,  <27.829168, 24.747751, 31.156429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477612, 24.800671, 30.973106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422579, 0.661664, -0.619377,
		0.221304, -0.738037, -0.637437,
		-0.878893, 0.132297, -0.458307,
		27.213943, 24.840359, 30.835613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016348, 24.760921, 30.507263>,  <27.829168, 24.747751, 31.156429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016348, 24.760921, 30.507263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666508, 24.954746, 30.500607>,  <27.456604, 25.071041, 30.496613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666508, 24.954746, 30.500607>,  <28.016348, 24.760921, 30.507263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666508, 24.954746, 30.500607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450915, 0.800296, -0.395224,
		-0.178192, -0.353167, -0.918434,
		-0.874599, 0.484561, -0.016642,
		27.404127, 25.100115, 30.495613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862276, 25.002335, 29.853161>,  <28.016348, 24.760921, 30.507263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862276, 25.002335, 29.853161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690722, 25.230183, 30.133614>,  <27.587788, 25.366892, 30.301886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690722, 25.230183, 30.133614>,  <27.862276, 25.002335, 29.853161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690722, 25.230183, 30.133614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319572, 0.821623, -0.472027,
		-0.844943, 0.021615, -0.534419,
		-0.428888, 0.569621, 0.701132,
		27.562056, 25.401070, 30.343954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659796, 25.579731, 29.489452>,  <27.862276, 25.002335, 29.853161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659796, 25.579731, 29.489452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592398, 25.707146, 29.862579>,  <27.551958, 25.783594, 30.086454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592398, 25.707146, 29.862579>,  <27.659796, 25.579731, 29.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592398, 25.707146, 29.862579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000937, 0.946293, -0.323308,
		-0.985702, -0.055350, -0.159147,
		-0.168495, 0.318536, 0.932815,
		27.541849, 25.802706, 30.142424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061476, 25.994062, 29.444723>,  <27.659796, 25.579731, 29.489452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061476, 25.994062, 29.444723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247478, 26.093212, 29.784683>,  <27.359079, 26.152702, 29.988659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247478, 26.093212, 29.784683>,  <27.061476, 25.994062, 29.444723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247478, 26.093212, 29.784683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077885, 0.967735, -0.239629,
		-0.881875, 0.045234, 0.469307,
		0.465005, 0.247875, 0.849899,
		27.386980, 26.167574, 30.039654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731440, 26.502697, 29.714809>,  <27.061476, 25.994062, 29.444723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731440, 26.502697, 29.714809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079266, 26.556503, 29.904865>,  <27.287962, 26.588787, 30.018900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079266, 26.556503, 29.904865>,  <26.731440, 26.502697, 29.714809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079266, 26.556503, 29.904865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057894, 0.983319, -0.172427,
		-0.490410, 0.122429, 0.862849,
		0.869567, 0.134514, 0.475142,
		27.340136, 26.596857, 30.047407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609873, 27.031429, 30.148672>,  <26.731440, 26.502697, 29.714809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609873, 27.031429, 30.148672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003189, 27.027588, 30.075958>,  <27.239180, 27.025284, 30.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003189, 27.027588, 30.075958>,  <26.609873, 27.031429, 30.148672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003189, 27.027588, 30.075958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019588, 0.987227, -0.158109,
		0.180979, 0.159028, 0.970545,
		0.983292, -0.009603, -0.181783,
		27.298176, 27.024708, 30.021423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851767, 27.572538, 30.435020>,  <26.609873, 27.031429, 30.148672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851767, 27.572538, 30.435020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158785, 27.491898, 30.191635>,  <27.342997, 27.443514, 30.045603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158785, 27.491898, 30.191635>,  <26.851767, 27.572538, 30.435020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158785, 27.491898, 30.191635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039270, 0.962260, -0.269284,
		0.639789, 0.182793, 0.746496,
		0.767546, -0.201600, -0.608465,
		27.389050, 27.431417, 30.009096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232056, 28.098818, 30.577303>,  <26.851767, 27.572538, 30.435020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232056, 28.098818, 30.577303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390453, 27.958454, 30.237881>,  <27.485493, 27.874235, 30.034227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390453, 27.958454, 30.237881>,  <27.232056, 28.098818, 30.577303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390453, 27.958454, 30.237881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067080, 0.932686, -0.354398,
		0.915799, 0.083419, 0.392879,
		0.395996, -0.350911, -0.848557,
		27.509253, 27.853180, 29.983315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909269, 28.552235, 30.498877>,  <27.232056, 28.098818, 30.577303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909269, 28.552235, 30.498877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762527, 28.398407, 30.160049>,  <27.674482, 28.306110, 29.956753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762527, 28.398407, 30.160049>,  <27.909269, 28.552235, 30.498877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762527, 28.398407, 30.160049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125310, 0.881827, -0.454619,
		0.921801, -0.272924, -0.275310,
		-0.366853, -0.384570, -0.847069,
		27.652472, 28.283035, 29.905930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254963, 28.845652, 29.966843>,  <27.909269, 28.552235, 30.498877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254963, 28.845652, 29.966843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929737, 28.709774, 29.777725>,  <27.734602, 28.628248, 29.664255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929737, 28.709774, 29.777725>,  <28.254963, 28.845652, 29.966843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929737, 28.709774, 29.777725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014464, 0.800080, -0.599718,
		0.581992, -0.494449, -0.645605,
		-0.813066, -0.339693, -0.472792,
		27.685818, 28.607866, 29.635887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411911, 28.885315, 29.271502>,  <28.254963, 28.845652, 29.966843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411911, 28.885315, 29.271502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012323, 28.868713, 29.278816>,  <27.772570, 28.858751, 29.283205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012323, 28.868713, 29.278816>,  <28.411911, 28.885315, 29.271502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012323, 28.868713, 29.278816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043921, 0.784644, -0.618389,
		0.011318, -0.618556, -0.785659,
		-0.998971, -0.041505, 0.018287,
		27.712631, 28.856262, 29.284302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209538, 28.869637, 28.540602>,  <28.411911, 28.885315, 29.271502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209538, 28.869637, 28.540602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903324, 29.004539, 28.759769>,  <27.719597, 29.085482, 28.891270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903324, 29.004539, 28.759769>,  <28.209538, 28.869637, 28.540602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903324, 29.004539, 28.759769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157777, 0.727199, -0.668048,
		-0.623753, -0.597861, -0.503482,
		-0.765532, 0.337259, 0.547921,
		27.673664, 29.105717, 28.924147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712019, 29.176823, 27.996490>,  <28.209538, 28.869637, 28.540602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712019, 29.176823, 27.996490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598341, 29.320766, 28.351959>,  <27.530134, 29.407133, 28.565241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598341, 29.320766, 28.351959>,  <27.712019, 29.176823, 27.996490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598341, 29.320766, 28.351959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308393, 0.843320, -0.440119,
		-0.907814, -0.399139, -0.128689,
		-0.284195, 0.359860, 0.888670,
		27.513083, 29.428724, 28.618561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067822, 29.529602, 27.842937>,  <27.712019, 29.176823, 27.996490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067822, 29.529602, 27.842937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232376, 29.674927, 28.177307>,  <27.331108, 29.762121, 28.377928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232376, 29.674927, 28.177307>,  <27.067822, 29.529602, 27.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232376, 29.674927, 28.177307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193393, 0.931034, -0.309476,
		-0.890708, -0.034347, 0.453276,
		0.411386, 0.363313, 0.835922,
		27.355791, 29.783920, 28.428083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520634, 29.872696, 28.263016>,  <27.067822, 29.529602, 27.842937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520634, 29.872696, 28.263016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871994, 30.044975, 28.345879>,  <27.082809, 30.148342, 28.395597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871994, 30.044975, 28.345879>,  <26.520634, 29.872696, 28.263016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871994, 30.044975, 28.345879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404916, 0.900923, -0.156145,
		-0.253886, 0.053275, 0.965766,
		0.878399, 0.430697, 0.207159,
		27.135513, 30.174185, 28.408026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384567, 30.480556, 28.735250>,  <26.520634, 29.872696, 28.263016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384567, 30.480556, 28.735250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761820, 30.537632, 28.615154>,  <26.988171, 30.571877, 28.543097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761820, 30.537632, 28.615154>,  <26.384567, 30.480556, 28.735250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761820, 30.537632, 28.615154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192894, 0.970489, -0.144714,
		0.270730, 0.194399, 0.942823,
		0.943132, 0.142687, -0.300239,
		27.044760, 30.580439, 28.525084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593142, 31.087700, 29.072119>,  <26.384567, 30.480556, 28.735250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593142, 31.087700, 29.072119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858971, 31.036816, 28.777592>,  <27.018467, 31.006285, 28.600876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858971, 31.036816, 28.777592>,  <26.593142, 31.087700, 29.072119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858971, 31.036816, 28.777592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093058, 0.963640, -0.250476,
		0.741408, 0.234979, 0.628569,
		0.664571, -0.127212, -0.736317,
		27.058342, 30.998652, 28.556696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179335, 31.633553, 29.170980>,  <26.593142, 31.087700, 29.072119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179335, 31.633553, 29.170980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134079, 31.505222, 28.794838>,  <27.106926, 31.428225, 28.569153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134079, 31.505222, 28.794838>,  <27.179335, 31.633553, 29.170980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134079, 31.505222, 28.794838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036180, 0.947137, -0.318784,
		0.992920, -0.002045, -0.118764,
		-0.113138, -0.320823, -0.940357,
		27.100138, 31.408976, 28.512732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613567, 32.095505, 28.712198>,  <27.179335, 31.633553, 29.170980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613567, 32.095505, 28.712198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380468, 31.903721, 28.449741>,  <27.240610, 31.788651, 28.292267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380468, 31.903721, 28.449741>,  <27.613567, 32.095505, 28.712198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380468, 31.903721, 28.449741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163288, 0.860023, -0.483423,
		0.796080, -0.174574, -0.579467,
		-0.582747, -0.479462, -0.656141,
		27.205645, 31.759882, 28.252899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750568, 32.328236, 28.010443>,  <27.613567, 32.095505, 28.712198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750568, 32.328236, 28.010443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383972, 32.173172, 27.970917>,  <27.164015, 32.080135, 27.947201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383972, 32.173172, 27.970917>,  <27.750568, 32.328236, 28.010443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383972, 32.173172, 27.970917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271857, 0.784716, -0.557058,
		0.293490, -0.483675, -0.824574,
		-0.916492, -0.387657, -0.098816,
		27.109024, 32.056873, 27.941273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500036, 32.517040, 27.319242>,  <27.750568, 32.328236, 28.010443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500036, 32.517040, 27.319242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147064, 32.406086, 27.471226>,  <26.935280, 32.339512, 27.562416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147064, 32.406086, 27.471226>,  <27.500036, 32.517040, 27.319242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147064, 32.406086, 27.471226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469513, 0.569954, -0.674321,
		-0.029510, -0.773439, -0.633184,
		-0.882432, -0.277389, 0.379959,
		26.882334, 32.322868, 27.585213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076986, 32.126472, 26.794041>,  <27.500036, 32.517040, 27.319242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076986, 32.126472, 26.794041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837034, 32.307629, 27.057869>,  <26.693062, 32.416321, 27.216166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837034, 32.307629, 27.057869>,  <27.076986, 32.126472, 26.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837034, 32.307629, 27.057869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383477, 0.560767, -0.733816,
		-0.702202, -0.693133, -0.162722,
		-0.599882, 0.452887, 0.659572,
		26.657070, 32.443493, 27.255741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428301, 32.242203, 26.404598>,  <27.076986, 32.126472, 26.794041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428301, 32.242203, 26.404598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394979, 32.484062, 26.721447>,  <26.374987, 32.629177, 26.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394979, 32.484062, 26.721447>,  <26.428301, 32.242203, 26.404598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394979, 32.484062, 26.721447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529260, 0.646665, -0.549279,
		-0.844360, -0.464994, 0.266150,
		-0.083302, 0.604652, 0.792121,
		26.369989, 32.665459, 26.959084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739933, 32.209801, 26.540445>,  <26.428301, 32.242203, 26.404598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739933, 32.209801, 26.540445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880701, 32.545097, 26.707062>,  <25.965162, 32.746273, 26.807032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880701, 32.545097, 26.707062>,  <25.739933, 32.209801, 26.540445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880701, 32.545097, 26.707062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608713, 0.543007, -0.578456,
		-0.711070, -0.049983, 0.701343,
		0.351921, 0.838239, 0.416541,
		25.986277, 32.796570, 26.832024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169477, 32.714012, 26.669786>,  <25.739933, 32.209801, 26.540445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169477, 32.714012, 26.669786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481628, 32.961006, 26.630344>,  <25.668919, 33.109203, 26.606680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481628, 32.961006, 26.630344>,  <25.169477, 32.714012, 26.669786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481628, 32.961006, 26.630344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531778, 0.572395, -0.624160,
		-0.328969, 0.539517, 0.775049,
		0.780379, 0.617484, -0.098603,
		25.715742, 33.146252, 26.600763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898066, 33.360695, 26.600836>,  <25.169477, 32.714012, 26.669786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898066, 33.360695, 26.600836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279482, 33.442757, 26.512592>,  <25.508331, 33.491993, 26.459646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279482, 33.442757, 26.512592>,  <24.898066, 33.360695, 26.600836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279482, 33.442757, 26.512592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299675, 0.721010, -0.624771,
		0.030885, 0.661856, 0.748994,
		0.953541, 0.205159, -0.220610,
		25.565544, 33.504303, 26.446409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999403, 34.075859, 26.829208>,  <24.898066, 33.360695, 26.600836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999403, 34.075859, 26.829208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271442, 34.019909, 26.541348>,  <25.434666, 33.986340, 26.368631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271442, 34.019909, 26.541348>,  <24.999403, 34.075859, 26.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271442, 34.019909, 26.541348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307923, 0.836344, -0.453555,
		0.665319, 0.530060, 0.525726,
		0.680099, -0.139875, -0.719653,
		25.475471, 33.977947, 26.325451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.407255, 34.717873, 26.717258>,  <24.999403, 34.075859, 26.829208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.407255, 34.717873, 26.717258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493727, 34.528988, 26.375431>,  <25.545609, 34.415657, 26.170334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493727, 34.528988, 26.375431>,  <25.407255, 34.717873, 26.717258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493727, 34.528988, 26.375431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098334, 0.860283, -0.500243,
		0.971390, 0.192174, 0.139540,
		0.216177, -0.472209, -0.854568,
		25.558580, 34.387325, 26.119061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848904, 35.160217, 26.287661>,  <25.407255, 34.717873, 26.717258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848904, 35.160217, 26.287661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657835, 34.949738, 26.006252>,  <25.543194, 34.823448, 25.837408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657835, 34.949738, 26.006252>,  <25.848904, 35.160217, 26.287661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657835, 34.949738, 26.006252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217325, 0.846670, -0.485716,
		0.851239, -0.079116, -0.518781,
		-0.477664, -0.526204, -0.703524,
		25.514534, 34.791878, 25.795197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243912, 35.338322, 25.629810>,  <25.848904, 35.160217, 26.287661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243912, 35.338322, 25.629810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861391, 35.233688, 25.577557>,  <25.631880, 35.170910, 25.546204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861391, 35.233688, 25.577557>,  <26.243912, 35.338322, 25.629810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861391, 35.233688, 25.577557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127917, 0.776055, -0.617556,
		0.262921, -0.573858, -0.775602,
		-0.956300, -0.261581, -0.130635,
		25.574501, 35.155212, 25.538366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061323, 35.410206, 24.872833>,  <26.243912, 35.338322, 25.629810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061323, 35.410206, 24.872833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703114, 35.415550, 25.050758>,  <25.488188, 35.418755, 25.157513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703114, 35.415550, 25.050758>,  <26.061323, 35.410206, 24.872833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703114, 35.415550, 25.050758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306702, 0.705720, -0.638666,
		-0.322443, -0.708365, -0.627893,
		-0.895525, 0.013357, 0.444811,
		25.434456, 35.419556, 25.184202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319294, 36.149181, 25.026943>,  <26.061323, 35.410206, 24.872833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319294, 36.149181, 25.026943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177496, 36.522617, 25.047882>,  <26.092417, 36.746677, 25.060446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177496, 36.522617, 25.047882>,  <26.319294, 36.149181, 25.026943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177496, 36.522617, 25.047882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250979, -0.041072, -0.967121,
		-0.900745, -0.355979, 0.248872,
		-0.354496, 0.933591, 0.052347,
		26.071148, 36.802696, 25.063587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815788, 36.202744, 24.536581>,  <26.319294, 36.149181, 25.026943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815788, 36.202744, 24.536581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876385, 36.593227, 24.598633>,  <25.912743, 36.827518, 24.635864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876385, 36.593227, 24.598633>,  <25.815788, 36.202744, 24.536581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876385, 36.593227, 24.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207736, 0.184879, -0.960555,
		-0.966383, 0.113292, 0.230802,
		0.151493, 0.976209, 0.155129,
		25.921833, 36.886089, 24.645172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258381, 36.501194, 24.238958>,  <25.815788, 36.202744, 24.536581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258381, 36.501194, 24.238958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531239, 36.791553, 24.274181>,  <25.694954, 36.965767, 24.295315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531239, 36.791553, 24.274181>,  <25.258381, 36.501194, 24.238958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531239, 36.791553, 24.274181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344070, 0.424902, -0.837301,
		-0.645210, 0.540862, 0.539604,
		0.682143, 0.725897, 0.088057,
		25.735882, 37.009323, 24.300598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003502, 36.955025, 23.807922>,  <25.258381, 36.501194, 24.238958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003502, 36.955025, 23.807922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706419, 36.698727, 23.885731>,  <24.528170, 36.544949, 23.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706419, 36.698727, 23.885731>,  <25.003502, 36.955025, 23.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706419, 36.698727, 23.885731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207310, -0.056200, -0.976660,
		0.636717, -0.765698, -0.091092,
		-0.742707, -0.640741, 0.194520,
		24.483606, 36.506504, 23.944086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130251, 36.419247, 23.373180>,  <25.003502, 36.955025, 23.807922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130251, 36.419247, 23.373180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747553, 36.491680, 23.464260>,  <24.517933, 36.535141, 23.518908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747553, 36.491680, 23.464260>,  <25.130251, 36.419247, 23.373180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747553, 36.491680, 23.464260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231884, -0.002002, -0.972741,
		-0.175693, -0.983465, 0.043906,
		-0.956745, 0.181085, 0.227698,
		24.460529, 36.546005, 23.532570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831818, 35.840401, 23.083515>,  <25.130251, 36.419247, 23.373180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831818, 35.840401, 23.083515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576410, 36.145390, 23.125336>,  <24.423166, 36.328384, 23.150429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576410, 36.145390, 23.125336>,  <24.831818, 35.840401, 23.083515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576410, 36.145390, 23.125336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217837, -0.048762, -0.974766,
		-0.738133, -0.645182, 0.197230,
		-0.638519, 0.762471, 0.104551,
		24.384855, 36.374130, 23.156702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337124, 35.671192, 22.646544>,  <24.831818, 35.840401, 23.083515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337124, 35.671192, 22.646544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253065, 36.058746, 22.698837>,  <24.202629, 36.291279, 22.730213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253065, 36.058746, 22.698837>,  <24.337124, 35.671192, 22.646544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253065, 36.058746, 22.698837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189209, 0.090886, -0.977722,
		-0.959187, -0.230200, 0.164223,
		-0.210146, 0.968890, 0.130732,
		24.190022, 36.349415, 22.738056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.878569, 35.753132, 22.093140>,  <24.337124, 35.671192, 22.646544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.878569, 35.753132, 22.093140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.020956, 36.111015, 22.201054>,  <24.106388, 36.325745, 22.265802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.020956, 36.111015, 22.201054>,  <23.878569, 35.753132, 22.093140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.020956, 36.111015, 22.201054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019888, 0.281378, -0.959391,
		-0.934287, 0.346876, 0.082367,
		0.355966, 0.894709, 0.269786,
		24.127747, 36.379429, 22.281990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394297, 36.259575, 21.801405>,  <23.878569, 35.753132, 22.093140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394297, 36.259575, 21.801405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741522, 36.441036, 21.882065>,  <23.949858, 36.549915, 21.930460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741522, 36.441036, 21.882065>,  <23.394297, 36.259575, 21.801405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.741522, 36.441036, 21.882065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026901, 0.362599, -0.931557,
		-0.495724, 0.814075, 0.302556,
		0.868064, 0.453656, 0.201648,
		24.001942, 36.577133, 21.942560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364079, 36.894775, 21.395767>,  <23.394297, 36.259575, 21.801405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364079, 36.894775, 21.395767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.752903, 36.848202, 21.477291>,  <23.986198, 36.820255, 21.526205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.752903, 36.848202, 21.477291>,  <23.364079, 36.894775, 21.395767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.752903, 36.848202, 21.477291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230266, 0.304623, -0.924220,
		0.045528, 0.945329, 0.322923,
		0.972062, -0.116436, 0.203808,
		24.044521, 36.813271, 21.538433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.755617, 37.577213, 21.211502>,  <23.364079, 36.894775, 21.395767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.755617, 37.577213, 21.211502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996881, 37.258171, 21.213497>,  <24.141640, 37.066746, 21.214695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996881, 37.258171, 21.213497>,  <23.755617, 37.577213, 21.211502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996881, 37.258171, 21.213497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178998, 0.129260, -0.975321,
		0.777276, 0.589168, 0.220734,
		0.603160, -0.797604, 0.004989,
		24.177830, 37.018890, 21.214994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.385899, 37.822697, 20.987450>,  <23.755617, 37.577213, 21.211502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.385899, 37.822697, 20.987450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384878, 37.425171, 20.943039>,  <24.384266, 37.186657, 20.916393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384878, 37.425171, 20.943039>,  <24.385899, 37.822697, 20.987450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384878, 37.425171, 20.943039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122573, 0.109878, -0.986358,
		0.992456, -0.016125, 0.121535,
		-0.002551, -0.993814, -0.111025,
		24.384113, 37.127026, 20.909731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969990, 37.660557, 20.536264>,  <24.385899, 37.822697, 20.987450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969990, 37.660557, 20.536264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707607, 37.360851, 20.499760>,  <24.550179, 37.181026, 20.477858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707607, 37.360851, 20.499760>,  <24.969990, 37.660557, 20.536264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707607, 37.360851, 20.499760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213225, -0.067960, -0.974636,
		0.724057, -0.658777, 0.204340,
		-0.655955, -0.749263, -0.091261,
		24.510820, 37.136074, 20.472382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361416, 37.136555, 20.080437>,  <24.969990, 37.660557, 20.536264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361416, 37.136555, 20.080437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967701, 37.067955, 20.063614>,  <24.731472, 37.026794, 20.053520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967701, 37.067955, 20.063614>,  <25.361416, 37.136555, 20.080437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967701, 37.067955, 20.063614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095689, -0.317856, -0.943298,
		0.148407, -0.932499, 0.329272,
		-0.984286, -0.171500, -0.042058,
		24.672415, 37.016506, 20.050997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249968, 36.465126, 19.753382>,  <25.361416, 37.136555, 20.080437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249968, 36.465126, 19.753382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873720, 36.597088, 19.721386>,  <24.647972, 36.676266, 19.702188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873720, 36.597088, 19.721386>,  <25.249968, 36.465126, 19.753382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.873720, 36.597088, 19.721386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013592, -0.272057, -0.962185,
		-0.339192, -0.903962, 0.260386,
		-0.940619, 0.329905, -0.079992,
		24.591534, 36.696060, 19.697388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880831, 35.994152, 19.298153>,  <25.249968, 36.465126, 19.753382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880831, 35.994152, 19.298153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644289, 36.316135, 19.278763>,  <24.502365, 36.509323, 19.267128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644289, 36.316135, 19.278763>,  <24.880831, 35.994152, 19.298153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644289, 36.316135, 19.278763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219220, -0.218317, -0.950936,
		-0.776044, -0.551711, 0.305565,
		-0.591352, 0.804955, -0.048477,
		24.466883, 36.557621, 19.264219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275986, 35.749302, 19.092930>,  <24.880831, 35.994152, 19.298153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275986, 35.749302, 19.092930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302776, 36.135590, 18.992603>,  <24.318851, 36.367363, 18.932407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302776, 36.135590, 18.992603>,  <24.275986, 35.749302, 19.092930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302776, 36.135590, 18.992603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283887, -0.222544, -0.932675,
		-0.956516, 0.133673, 0.259248,
		0.066979, 0.965715, -0.250815,
		24.322870, 36.425304, 18.917358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.745720, 35.784145, 18.678749>,  <24.275986, 35.749302, 19.092930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.745720, 35.784145, 18.678749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.917582, 36.134190, 18.589684>,  <24.020699, 36.344215, 18.536243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.917582, 36.134190, 18.589684>,  <23.745720, 35.784145, 18.678749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.917582, 36.134190, 18.589684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321967, -0.081912, -0.943201,
		-0.843642, 0.476943, 0.246562,
		0.429657, 0.875109, -0.222665,
		24.046478, 36.396721, 18.522884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221872, 36.195293, 18.339361>,  <23.745720, 35.784145, 18.678749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221872, 36.195293, 18.339361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582529, 36.340752, 18.245720>,  <23.798923, 36.428028, 18.189535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582529, 36.340752, 18.245720>,  <23.221872, 36.195293, 18.339361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582529, 36.340752, 18.245720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239834, -0.030021, -0.970350,
		-0.359894, 0.931052, 0.060147,
		0.901641, 0.363648, -0.234103,
		23.853022, 36.449844, 18.175489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.043043, 36.556042, 17.816652>,  <23.221872, 36.195293, 18.339361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.043043, 36.556042, 17.816652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442064, 36.551872, 17.788986>,  <23.681477, 36.549370, 17.772387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442064, 36.551872, 17.788986>,  <23.043043, 36.556042, 17.816652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442064, 36.551872, 17.788986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068511, 0.053760, -0.996201,
		0.014104, 0.998499, 0.052914,
		0.997551, -0.010426, -0.069166,
		23.741329, 36.548744, 17.768236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.273218, 37.230995, 17.489309>,  <23.043043, 36.556042, 17.816652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.273218, 37.230995, 17.489309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559196, 36.956814, 17.434158>,  <23.730783, 36.792305, 17.401068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559196, 36.956814, 17.434158>,  <23.273218, 37.230995, 17.489309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.559196, 36.956814, 17.434158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125185, 0.068516, -0.989765,
		0.687880, 0.724890, -0.036823,
		0.714947, -0.685449, -0.137876,
		23.773682, 36.751179, 17.392796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909935, 37.483757, 16.946556>,  <23.273218, 37.230995, 17.489309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909935, 37.483757, 16.946556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.913296, 37.083904, 16.956898>,  <23.915312, 36.843994, 16.963102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.913296, 37.083904, 16.956898>,  <23.909935, 37.483757, 16.946556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.913296, 37.083904, 16.956898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061761, -0.025287, -0.997770,
		0.998056, 0.009978, 0.061526,
		0.008400, -0.999630, 0.025854,
		23.915815, 36.784016, 16.964655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443270, 37.326546, 16.471231>,  <23.909935, 37.483757, 16.946556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443270, 37.326546, 16.471231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173002, 37.032841, 16.497551>,  <24.010841, 36.856617, 16.513344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173002, 37.032841, 16.497551>,  <24.443270, 37.326546, 16.471231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173002, 37.032841, 16.497551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079622, -0.016049, -0.996696,
		0.732891, -0.678677, -0.047619,
		-0.675670, -0.734261, 0.065800,
		23.970301, 36.812561, 16.517290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582932, 36.948895, 15.880696>,  <24.443270, 37.326546, 16.471231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582932, 36.948895, 15.880696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238146, 36.772934, 15.981496>,  <24.031275, 36.667358, 16.041975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238146, 36.772934, 15.981496>,  <24.582932, 36.948895, 15.880696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238146, 36.772934, 15.981496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165906, -0.224939, -0.960145,
		0.479052, -0.869420, 0.120908,
		-0.861966, -0.439899, 0.252000,
		23.979557, 36.640965, 16.057096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487514, 36.253147, 15.464309>,  <24.582932, 36.948895, 15.880696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487514, 36.253147, 15.464309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124613, 36.382172, 15.572265>,  <23.906872, 36.459587, 15.637038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124613, 36.382172, 15.572265>,  <24.487514, 36.253147, 15.464309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124613, 36.382172, 15.572265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237350, 0.137078, -0.961704,
		-0.347208, -0.936569, -0.047804,
		-0.907255, 0.322565, 0.269889,
		23.852436, 36.478943, 15.653232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950920, 35.906139, 15.124524>,  <24.487514, 36.253147, 15.464309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950920, 35.906139, 15.124524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867474, 36.280254, 15.238873>,  <23.817406, 36.504723, 15.307484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867474, 36.280254, 15.238873>,  <23.950920, 35.906139, 15.124524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.867474, 36.280254, 15.238873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173501, 0.252276, -0.951974,
		-0.962485, -0.248195, 0.109644,
		-0.208614, 0.935284, 0.285874,
		23.804890, 36.560841, 15.324636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394859, 36.186344, 14.832096>,  <23.950920, 35.906139, 15.124524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394859, 36.186344, 14.832096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645252, 36.489281, 14.906482>,  <23.795488, 36.671043, 14.951113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645252, 36.489281, 14.906482>,  <23.394859, 36.186344, 14.832096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.645252, 36.489281, 14.906482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118652, 0.328183, -0.937133,
		-0.770758, 0.564563, 0.295296,
		0.625982, 0.757340, 0.185963,
		23.833046, 36.716484, 14.962271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008089, 36.808399, 14.552138>,  <23.394859, 36.186344, 14.832096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008089, 36.808399, 14.552138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385807, 36.921169, 14.620046>,  <23.612438, 36.988831, 14.660789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385807, 36.921169, 14.620046>,  <23.008089, 36.808399, 14.552138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.385807, 36.921169, 14.620046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066692, 0.341219, -0.937615,
		-0.322269, 0.896708, 0.303410,
		0.944296, 0.281929, 0.169767,
		23.669096, 37.005749, 14.670976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.126427, 37.549702, 14.296693>,  <23.008089, 36.808399, 14.552138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.126427, 37.549702, 14.296693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.457777, 37.325768, 14.288913>,  <23.656588, 37.191406, 14.284245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.457777, 37.325768, 14.288913>,  <23.126427, 37.549702, 14.296693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457777, 37.325768, 14.288913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192654, 0.317328, -0.928540,
		0.526000, 0.765434, 0.370722,
		0.828377, -0.559833, -0.019451,
		23.706289, 37.157818, 14.283077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.814831, 38.127686, 14.020803>,  <23.126427, 37.549702, 14.296693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.814831, 38.127686, 14.020803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.512819, 38.300873, 14.217769>,  <22.331612, 38.404785, 14.335948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.512819, 38.300873, 14.217769>,  <22.814831, 38.127686, 14.020803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.512819, 38.300873, 14.217769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316597, 0.416912, -0.852027,
		-0.574192, -0.799202, -0.177705,
		-0.755030, 0.432967, 0.492413,
		22.286310, 38.430763, 14.365493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.123463, 37.867157, 13.893944>,  <22.814831, 38.127686, 14.020803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.123463, 37.867157, 13.893944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.108763, 38.258263, 13.976521>,  <22.099943, 38.492928, 14.026068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.108763, 38.258263, 13.976521>,  <22.123463, 37.867157, 13.893944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.108763, 38.258263, 13.976521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292413, 0.187019, -0.937826,
		-0.955586, -0.094833, 0.279039,
		-0.036752, 0.977768, 0.206443,
		22.097736, 38.551594, 14.038455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.941359, 37.342205, 14.413350>,  <22.123463, 37.867157, 13.893944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.941359, 37.342205, 14.413350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597858, 37.542622, 14.456252>,  <21.391758, 37.662872, 14.481994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597858, 37.542622, 14.456252>,  <21.941359, 37.342205, 14.413350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597858, 37.542622, 14.456252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190515, 0.117909, 0.974578,
		0.475657, 0.857354, -0.196711,
		-0.858752, 0.501041, 0.107255,
		21.340233, 37.692932, 14.488428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.085089, 37.710754, 14.960901>,  <21.941359, 37.342205, 14.413350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.085089, 37.710754, 14.960901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685095, 37.710915, 14.958848>,  <21.445099, 37.711010, 14.957616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685095, 37.710915, 14.958848>,  <22.085089, 37.710754, 14.960901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.685095, 37.710915, 14.958848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004885, 0.241114, 0.970485,
		0.001629, 0.970497, -0.241109,
		-0.999987, 0.000403, -0.005134,
		21.385099, 37.711037, 14.957308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.787113, 38.363155, 15.174340>,  <22.085089, 37.710754, 14.960901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.787113, 38.363155, 15.174340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613623, 38.011795, 15.254628>,  <21.509529, 37.800980, 15.302801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613623, 38.011795, 15.254628>,  <21.787113, 38.363155, 15.174340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613623, 38.011795, 15.254628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013693, 0.216312, 0.976228,
		-0.900941, 0.426164, -0.081792,
		-0.433726, -0.878404, 0.200720,
		21.483505, 37.748276, 15.314844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060547, 38.474831, 15.374819>,  <21.787113, 38.363155, 15.174340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060547, 38.474831, 15.374819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252583, 38.158340, 15.526332>,  <21.367804, 37.968445, 15.617240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252583, 38.158340, 15.526332>,  <21.060547, 38.474831, 15.374819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252583, 38.158340, 15.526332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152916, 0.349704, 0.924296,
		-0.863790, -0.501665, 0.046898,
		0.480088, -0.791226, 0.378783,
		21.396608, 37.920971, 15.639967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.716743, 38.283428, 15.976179>,  <21.060547, 38.474831, 15.374819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.716743, 38.283428, 15.976179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.093115, 38.150234, 16.000748>,  <21.318937, 38.070316, 16.015488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.093115, 38.150234, 16.000748>,  <20.716743, 38.283428, 15.976179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093115, 38.150234, 16.000748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022296, 0.120069, 0.992515,
		-0.337871, -0.935255, 0.105552,
		0.940928, -0.332989, 0.061420,
		21.375393, 38.050339, 16.019175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768700, 37.713646, 16.543703>,  <20.716743, 38.283428, 15.976179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768700, 37.713646, 16.543703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.145195, 37.845802, 16.515659>,  <21.371092, 37.925095, 16.498833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.145195, 37.845802, 16.515659>,  <20.768700, 37.713646, 16.543703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.145195, 37.845802, 16.515659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038186, 0.102153, 0.994036,
		0.335582, -0.938300, 0.083534,
		0.941236, 0.330391, -0.070110,
		21.427567, 37.944920, 16.494627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064262, 37.425358, 17.100948>,  <20.768700, 37.713646, 16.543703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064262, 37.425358, 17.100948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.309420, 37.724144, 16.997868>,  <21.456514, 37.903416, 16.936020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.309420, 37.724144, 16.997868>,  <21.064262, 37.425358, 17.100948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309420, 37.724144, 16.997868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139128, 0.219025, 0.965749,
		0.777819, -0.627756, 0.030316,
		0.612895, 0.746961, -0.257700,
		21.493288, 37.948231, 16.920557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.751141, 37.295540, 17.399111>,  <21.064262, 37.425358, 17.100948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.751141, 37.295540, 17.399111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.710354, 37.690109, 17.347630>,  <21.685881, 37.926853, 17.316740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.710354, 37.690109, 17.347630>,  <21.751141, 37.295540, 17.399111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.710354, 37.690109, 17.347630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218336, 0.148415, 0.964522,
		0.970532, 0.070250, -0.230506,
		-0.101968, 0.986427, -0.128703,
		21.679764, 37.986038, 17.309019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.262085, 37.503208, 17.860785>,  <21.751141, 37.295540, 17.399111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.262085, 37.503208, 17.860785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082973, 37.844124, 17.752644>,  <21.975508, 38.048676, 17.687759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082973, 37.844124, 17.752644>,  <22.262085, 37.503208, 17.860785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.082973, 37.844124, 17.752644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209368, 0.393895, 0.894993,
		0.869287, 0.344155, -0.354820,
		-0.447778, 0.852294, -0.270353,
		21.948641, 38.099812, 17.671537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.662910, 38.115086, 18.012808>,  <22.262085, 37.503208, 17.860785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.662910, 38.115086, 18.012808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.272459, 38.201752, 18.006779>,  <22.038189, 38.253754, 18.003160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.272459, 38.201752, 18.006779>,  <22.662910, 38.115086, 18.012808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.272459, 38.201752, 18.006779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043925, 0.264897, 0.963276,
		0.212706, 0.939619, -0.268090,
		-0.976129, 0.216670, -0.015072,
		21.979620, 38.266754, 18.002256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.569620, 38.659012, 18.519020>,  <22.662910, 38.115086, 18.012808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.569620, 38.659012, 18.519020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199753, 38.514942, 18.469593>,  <21.977833, 38.428501, 18.439936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199753, 38.514942, 18.469593>,  <22.569620, 38.659012, 18.519020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199753, 38.514942, 18.469593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219119, 0.237901, 0.946250,
		-0.311413, 0.902043, -0.298899,
		-0.924667, -0.360169, -0.123570,
		21.922352, 38.406891, 18.432522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.071447, 39.092407, 18.936777>,  <22.569620, 38.659012, 18.519020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.071447, 39.092407, 18.936777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851505, 38.766453, 18.863438>,  <21.719540, 38.570881, 18.819435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851505, 38.766453, 18.863438>,  <22.071447, 39.092407, 18.936777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851505, 38.766453, 18.863438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164583, -0.109503, 0.980266,
		-0.818883, 0.569182, -0.073905,
		-0.549857, -0.814887, -0.183347,
		21.686548, 38.521988, 18.808434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477980, 39.202255, 19.168816>,  <22.071447, 39.092407, 18.936777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477980, 39.202255, 19.168816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511480, 38.803711, 19.175266>,  <21.531582, 38.564587, 19.179136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511480, 38.803711, 19.175266>,  <21.477980, 39.202255, 19.168816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511480, 38.803711, 19.175266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162221, 0.002337, 0.986752,
		-0.983194, -0.085259, -0.161434,
		0.083753, -0.996356, 0.016128,
		21.536606, 38.504803, 19.180105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.989246, 39.051064, 19.669689>,  <21.477980, 39.202255, 19.168816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.989246, 39.051064, 19.669689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.200375, 38.712475, 19.641708>,  <21.327053, 38.509323, 19.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.200375, 38.712475, 19.641708>,  <20.989246, 39.051064, 19.669689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.200375, 38.712475, 19.641708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179965, -0.191949, 0.964763,
		-0.830070, -0.496635, -0.253650,
		0.527823, -0.846469, -0.069954,
		21.358721, 38.458534, 19.620722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641726, 38.631435, 20.082691>,  <20.989246, 39.051064, 19.669689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641726, 38.631435, 20.082691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996891, 38.448788, 20.060394>,  <21.209991, 38.339199, 20.047016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996891, 38.448788, 20.060394>,  <20.641726, 38.631435, 20.082691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.996891, 38.448788, 20.060394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044853, -0.206541, 0.977409,
		-0.457814, -0.865357, -0.203872,
		0.887916, -0.456616, -0.055743,
		21.263266, 38.311802, 20.043671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549822, 38.013046, 20.487427>,  <20.641726, 38.631435, 20.082691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549822, 38.013046, 20.487427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.949013, 38.032562, 20.471146>,  <21.188528, 38.044273, 20.461376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.949013, 38.032562, 20.471146>,  <20.549822, 38.013046, 20.487427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.949013, 38.032562, 20.471146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056407, -0.385376, 0.921034,
		0.029253, -0.921469, -0.387349,
		0.997979, 0.048793, -0.040704,
		21.248407, 38.047199, 20.458935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659607, 37.407230, 20.767843>,  <20.549822, 38.013046, 20.487427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659607, 37.407230, 20.767843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.977903, 37.647594, 20.798054>,  <21.168882, 37.791813, 20.816181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.977903, 37.647594, 20.798054>,  <20.659607, 37.407230, 20.767843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.977903, 37.647594, 20.798054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166549, -0.337020, 0.926649,
		0.582286, -0.724794, -0.368262,
		0.795741, 0.600908, 0.075528,
		21.216625, 37.827866, 20.820713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194387, 37.075768, 21.140511>,  <20.659607, 37.407230, 20.767843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194387, 37.075768, 21.140511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340721, 37.444370, 21.192654>,  <21.428520, 37.665531, 21.223940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340721, 37.444370, 21.192654>,  <21.194387, 37.075768, 21.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340721, 37.444370, 21.192654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328253, -0.258825, 0.908438,
		0.870871, -0.289545, -0.397173,
		0.365832, 0.921506, 0.130359,
		21.450470, 37.720821, 21.231762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884871, 36.982906, 21.527046>,  <21.194387, 37.075768, 21.140511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884871, 36.982906, 21.527046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747940, 37.355339, 21.577484>,  <21.665783, 37.578800, 21.607748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747940, 37.355339, 21.577484>,  <21.884871, 36.982906, 21.527046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747940, 37.355339, 21.577484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194336, -0.061140, 0.979028,
		0.919265, 0.359650, -0.160013,
		-0.342324, 0.931082, 0.126097,
		21.645243, 37.634663, 21.615313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.409651, 37.382053, 21.956182>,  <21.884871, 36.982906, 21.527046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.409651, 37.382053, 21.956182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049601, 37.554924, 21.978104>,  <21.833570, 37.658646, 21.991257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049601, 37.554924, 21.978104>,  <22.409651, 37.382053, 21.956182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.049601, 37.554924, 21.978104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132003, 0.150694, 0.979728,
		0.415153, 0.889111, -0.192691,
		-0.900124, 0.432172, 0.054805,
		21.779564, 37.684574, 21.994545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.555128, 37.982899, 22.322041>,  <22.409651, 37.382053, 21.956182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.555128, 37.982899, 22.322041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.161909, 37.912338, 22.342030>,  <21.925978, 37.870003, 22.354023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.161909, 37.912338, 22.342030>,  <22.555128, 37.982899, 22.322041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.161909, 37.912338, 22.342030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048871, 0.010578, 0.998749,
		-0.176706, 0.984262, -0.001778,
		-0.983050, -0.176398, 0.049971,
		21.866995, 37.859421, 22.357021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428303, 38.361588, 22.913849>,  <22.555128, 37.982899, 22.322041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428303, 38.361588, 22.913849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106268, 38.131603, 22.855526>,  <21.913048, 37.993614, 22.820532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106268, 38.131603, 22.855526>,  <22.428303, 38.361588, 22.913849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106268, 38.131603, 22.855526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154184, -0.034513, 0.987439,
		-0.572767, 0.817455, -0.060864,
		-0.805087, -0.574957, -0.145807,
		21.864742, 37.959118, 22.811785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.960464, 38.673786, 23.337841>,  <22.428303, 38.361588, 22.913849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.960464, 38.673786, 23.337841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.804499, 38.314186, 23.258080>,  <21.710918, 38.098427, 23.210222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.804499, 38.314186, 23.258080>,  <21.960464, 38.673786, 23.337841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804499, 38.314186, 23.258080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282874, -0.089135, 0.955006,
		-0.876326, 0.428779, -0.219548,
		-0.389917, -0.899002, -0.199402,
		21.687523, 38.044487, 23.198259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214094, 38.572968, 23.718180>,  <21.960464, 38.673786, 23.337841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214094, 38.572968, 23.718180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.409441, 38.233204, 23.638172>,  <21.526649, 38.029346, 23.590168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.409441, 38.233204, 23.638172>,  <21.214094, 38.572968, 23.718180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409441, 38.233204, 23.638172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035370, -0.209753, 0.977114,
		-0.871920, -0.484267, -0.072393,
		0.488369, -0.849405, -0.200016,
		21.555952, 37.978382, 23.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964922, 38.102543, 24.129894>,  <21.214094, 38.572968, 23.718180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964922, 38.102543, 24.129894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.325285, 37.953743, 24.040466>,  <21.541502, 37.864464, 23.986811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.325285, 37.953743, 24.040466>,  <20.964922, 38.102543, 24.129894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325285, 37.953743, 24.040466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196152, -0.110520, 0.974325,
		-0.387161, -0.921628, -0.026599,
		0.900905, -0.372003, -0.223569,
		21.595556, 37.842144, 23.973396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009054, 37.572697, 24.587271>,  <20.964922, 38.102543, 24.129894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009054, 37.572697, 24.587271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363159, 37.727581, 24.484211>,  <21.575623, 37.820511, 24.422375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363159, 37.727581, 24.484211>,  <21.009054, 37.572697, 24.587271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363159, 37.727581, 24.484211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263710, 0.038427, 0.963836,
		0.383107, -0.921191, -0.068093,
		0.885261, 0.387209, -0.257649,
		21.628738, 37.843742, 24.406916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.272675, 37.364574, 24.685467>,  <21.009054, 37.572697, 24.587271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.272675, 37.364574, 24.685467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092173, 37.021503, 24.586864>,  <19.983871, 36.815662, 24.527702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092173, 37.021503, 24.586864>,  <20.272675, 37.364574, 24.685467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092173, 37.021503, 24.586864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829417, 0.301163, 0.470498,
		-0.329295, 0.416771, -0.847270,
		-0.451256, -0.857673, -0.246505,
		19.956795, 36.764202, 24.512913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590662, 37.455517, 24.345491>,  <20.272675, 37.364574, 24.685467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590662, 37.455517, 24.345491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.611404, 37.114780, 24.553986>,  <19.623850, 36.910339, 24.679083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.611404, 37.114780, 24.553986>,  <19.590662, 37.455517, 24.345491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611404, 37.114780, 24.553986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857386, 0.229647, 0.460600,
		-0.512056, -0.470783, -0.718444,
		0.051854, -0.851837, 0.521235,
		19.626961, 36.859230, 24.710356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925777, 36.943329, 24.318871>,  <19.590662, 37.455517, 24.345491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925777, 36.943329, 24.318871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.125725, 36.904068, 24.663078>,  <19.245693, 36.880512, 24.869604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.125725, 36.904068, 24.663078>,  <18.925777, 36.943329, 24.318871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125725, 36.904068, 24.663078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836110, 0.204507, 0.509015,
		-0.225943, -0.973932, 0.020162,
		0.499870, -0.098151, 0.860522,
		19.275686, 36.874622, 24.921234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529621, 37.283146, 23.740288>,  <18.925777, 36.943329, 24.318871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529621, 37.283146, 23.740288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.161499, 37.221977, 23.596256>,  <17.940626, 37.185276, 23.509838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.161499, 37.221977, 23.596256>,  <18.529621, 37.283146, 23.740288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161499, 37.221977, 23.596256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367168, 0.019972, 0.929940,
		-0.135018, 0.988036, -0.074529,
		-0.920303, -0.152924, -0.360079,
		17.885408, 37.176102, 23.488234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.359129, 23.989676, 27.905077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738277, 23.927814, 28.016521>,  <29.965767, 23.890697, 28.083387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738277, 23.927814, 28.016521>,  <29.359129, 23.989676, 27.905077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738277, 23.927814, 28.016521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283738, 0.807549, -0.517066,
		-0.145026, 0.569164, 0.809333,
		0.947871, -0.154651, 0.278609,
		30.022638, 23.881420, 28.100103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544884, 24.569115, 28.320492>,  <29.359129, 23.989676, 27.905077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544884, 24.569115, 28.320492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863983, 24.372787, 28.180382>,  <30.055443, 24.254992, 28.096315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863983, 24.372787, 28.180382>,  <29.544884, 24.569115, 28.320492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863983, 24.372787, 28.180382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341098, 0.846345, -0.409087,
		0.497241, 0.206871, 0.842589,
		0.797749, -0.490820, -0.350275,
		30.103308, 24.225542, 28.075300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955717, 25.083618, 28.261936>,  <29.544884, 24.569115, 28.320492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955717, 25.083618, 28.261936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170109, 24.820210, 28.050625>,  <30.298744, 24.662165, 27.923838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170109, 24.820210, 28.050625>,  <29.955717, 25.083618, 28.261936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170109, 24.820210, 28.050625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278334, 0.728598, -0.625839,
		0.797030, 0.188399, 0.573802,
		0.535979, -0.658521, -0.528277,
		30.330902, 24.622654, 27.892141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686007, 25.357706, 28.295429>,  <29.955717, 25.083618, 28.261936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686007, 25.357706, 28.295429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.672979, 25.113533, 27.978870>,  <30.665163, 24.967030, 27.788935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.672979, 25.113533, 27.978870>,  <30.686007, 25.357706, 28.295429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672979, 25.113533, 27.978870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319472, 0.743921, -0.586958,
		0.947036, -0.271946, 0.170788,
		-0.032569, -0.610432, -0.791399,
		30.663208, 24.930403, 27.741451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238083, 25.520140, 27.838907>,  <30.686007, 25.357706, 28.295429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238083, 25.520140, 27.838907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969204, 25.352039, 27.595093>,  <30.807877, 25.251179, 27.448803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969204, 25.352039, 27.595093>,  <31.238083, 25.520140, 27.838907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969204, 25.352039, 27.595093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157220, 0.723484, -0.672199,
		0.723484, -0.547684, -0.420253,
		0.672199, 0.420253, 0.609537,
		30.767544, 25.225964, 27.412231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557806, 25.617624, 27.238182>,  <31.238083, 25.520140, 27.838907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557806, 25.617624, 27.238182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.168121, 25.545708, 27.183643>,  <30.934311, 25.502558, 27.150921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.168121, 25.545708, 27.183643>,  <31.557806, 25.617624, 27.238182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168121, 25.545708, 27.183643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049186, 0.758930, -0.649311,
		0.220218, -0.625859, -0.748201,
		-0.974210, -0.179791, -0.136346,
		30.875858, 25.491770, 27.142740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506878, 25.521172, 26.567993>,  <31.557806, 25.617624, 27.238182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506878, 25.521172, 26.567993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145372, 25.641968, 26.689331>,  <30.928469, 25.714445, 26.762135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145372, 25.641968, 26.689331>,  <31.506878, 25.521172, 26.567993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145372, 25.641968, 26.689331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065200, 0.797543, -0.599728,
		-0.423041, -0.522233, -0.740479,
		-0.903762, 0.301989, 0.303344,
		30.874245, 25.732565, 26.780334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244818, 25.774908, 25.962904>,  <31.506878, 25.521172, 26.567993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244818, 25.774908, 25.962904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.014238, 25.941986, 26.243828>,  <30.875891, 26.042233, 26.412382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.014238, 25.941986, 26.243828>,  <31.244818, 25.774908, 25.962904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014238, 25.941986, 26.243828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077118, 0.827835, -0.555645,
		-0.813487, -0.374461, -0.444991,
		-0.576447, 0.417693, 0.702311,
		30.841305, 26.067293, 26.454521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793131, 26.210243, 25.553041>,  <31.244818, 25.774908, 25.962904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793131, 26.210243, 25.553041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.741774, 26.359489, 25.920586>,  <30.710960, 26.449038, 26.141111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.741774, 26.359489, 25.920586>,  <30.793131, 26.210243, 25.553041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741774, 26.359489, 25.920586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200411, 0.897649, -0.392507,
		-0.971263, -0.234544, -0.040473,
		-0.128391, 0.373116, 0.918858,
		30.703257, 26.471424, 26.196243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177937, 26.602070, 25.523628>,  <30.793131, 26.210243, 25.553041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177937, 26.602070, 25.523628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.363611, 26.747509, 25.846695>,  <30.475016, 26.834772, 26.040535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.363611, 26.747509, 25.846695>,  <30.177937, 26.602070, 25.523628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363611, 26.747509, 25.846695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221566, 0.930535, -0.291570,
		-0.857577, -0.043608, 0.512504,
		0.464188, 0.363597, 0.807667,
		30.502869, 26.856588, 26.088995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750956, 27.051380, 25.699791>,  <30.177937, 26.602070, 25.523628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750956, 27.051380, 25.699791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.105614, 27.141052, 25.861584>,  <30.318409, 27.194855, 25.958658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.105614, 27.141052, 25.861584>,  <29.750956, 27.051380, 25.699791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105614, 27.141052, 25.861584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120446, 0.956403, -0.266055,
		-0.446491, 0.187179, 0.874991,
		0.886645, 0.224180, 0.404480,
		30.371607, 27.208305, 25.982927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575359, 27.667538, 25.979441>,  <29.750956, 27.051380, 25.699791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575359, 27.667538, 25.979441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.975004, 27.669994, 25.962788>,  <30.214792, 27.671469, 25.952795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.975004, 27.669994, 25.962788>,  <29.575359, 27.667538, 25.979441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975004, 27.669994, 25.962788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016783, 0.965380, -0.260307,
		0.038593, 0.260775, 0.964628,
		0.999114, 0.006143, -0.041634,
		30.274738, 27.671837, 25.950298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793505, 28.312773, 26.284700>,  <29.575359, 27.667538, 25.979441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793505, 28.312773, 26.284700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.075174, 28.162415, 26.043755>,  <30.244177, 28.072201, 25.899187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.075174, 28.162415, 26.043755>,  <29.793505, 28.312773, 26.284700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075174, 28.162415, 26.043755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184621, 0.916120, -0.355864,
		0.685604, 0.139381, 0.714507,
		0.704175, -0.375895, -0.602363,
		30.286427, 28.049646, 25.863045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381790, 28.761189, 26.444607>,  <29.793505, 28.312773, 26.284700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381790, 28.761189, 26.444607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.455065, 28.585213, 26.092949>,  <30.499029, 28.479628, 25.881954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.455065, 28.585213, 26.092949>,  <30.381790, 28.761189, 26.444607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455065, 28.585213, 26.092949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286592, 0.879332, -0.380317,
		0.940376, -0.182287, 0.287167,
		0.183188, -0.439940, -0.879144,
		30.510021, 28.453230, 25.829206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979452, 29.023169, 26.235285>,  <30.381790, 28.761189, 26.444607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979452, 29.023169, 26.235285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.846985, 28.885796, 25.883743>,  <30.767504, 28.803371, 25.672819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.846985, 28.885796, 25.883743>,  <30.979452, 29.023169, 26.235285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846985, 28.885796, 25.883743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059359, 0.921983, -0.382653,
		0.941704, -0.178890, -0.284943,
		-0.331165, -0.343432, -0.878854,
		30.747635, 28.782766, 25.620087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496380, 29.198555, 25.768204>,  <30.979452, 29.023169, 26.235285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496380, 29.198555, 25.768204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.143595, 29.167606, 25.582233>,  <30.931923, 29.149036, 25.470652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.143595, 29.167606, 25.582233>,  <31.496380, 29.198555, 25.768204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143595, 29.167606, 25.582233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071603, 0.952989, -0.294424,
		0.465849, -0.292961, -0.834960,
		-0.881963, -0.077371, -0.464925,
		30.879005, 29.144396, 25.442757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500172, 29.552395, 25.096092>,  <31.496380, 29.198555, 25.768204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500172, 29.552395, 25.096092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105303, 29.514748, 25.147686>,  <30.868382, 29.492159, 25.178642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105303, 29.514748, 25.147686>,  <31.500172, 29.552395, 25.096092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105303, 29.514748, 25.147686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125892, 0.955675, -0.266150,
		-0.098217, -0.278974, -0.955263,
		-0.987170, -0.094119, 0.128984,
		30.809153, 29.486511, 25.186380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319544, 29.984791, 24.650103>,  <31.500172, 29.552395, 25.096092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319544, 29.984791, 24.650103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986576, 29.917931, 24.861435>,  <30.786795, 29.877815, 24.988235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986576, 29.917931, 24.861435>,  <31.319544, 29.984791, 24.650103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986576, 29.917931, 24.861435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213539, 0.976548, -0.027490,
		-0.511347, -0.135703, -0.848592,
		-0.832421, -0.167151, 0.528333,
		30.736849, 29.867785, 25.019936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785376, 30.108259, 24.212711>,  <31.319544, 29.984791, 24.650103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785376, 30.108259, 24.212711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.639629, 30.173389, 24.579475>,  <30.552181, 30.212467, 24.799534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.639629, 30.173389, 24.579475>,  <30.785376, 30.108259, 24.212711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639629, 30.173389, 24.579475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127666, 0.966566, -0.222376,
		-0.922464, -0.198084, -0.331396,
		-0.364366, 0.162826, 0.916911,
		30.530319, 30.222237, 24.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326723, 30.564293, 24.156155>,  <30.785376, 30.108259, 24.212711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326723, 30.564293, 24.156155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.383446, 30.596962, 24.550762>,  <30.417479, 30.616562, 24.787527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.383446, 30.596962, 24.550762>,  <30.326723, 30.564293, 24.156155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383446, 30.596962, 24.550762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133837, 0.989022, -0.062639,
		-0.980805, -0.123151, 0.151179,
		0.141805, 0.081670, 0.986520,
		30.425987, 30.621464, 24.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830832, 31.010504, 24.300003>,  <30.326723, 30.564293, 24.156155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830832, 31.010504, 24.300003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.072142, 31.012794, 24.619007>,  <30.216928, 31.014168, 24.810410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.072142, 31.012794, 24.619007>,  <29.830832, 31.010504, 24.300003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072142, 31.012794, 24.619007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148822, 0.983218, 0.105517,
		-0.783525, -0.182343, 0.594003,
		0.603275, 0.005725, 0.797512,
		30.253124, 31.014513, 24.858261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496359, 31.398649, 24.749640>,  <29.830832, 31.010504, 24.300003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496359, 31.398649, 24.749640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879608, 31.416832, 24.862732>,  <30.109558, 31.427742, 24.930588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879608, 31.416832, 24.862732>,  <29.496359, 31.398649, 24.749640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879608, 31.416832, 24.862732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100474, 0.977917, 0.183258,
		-0.268158, -0.203990, 0.941530,
		0.958121, 0.045457, 0.282732,
		30.167044, 31.430470, 24.947552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748608, 31.486336, 25.151897>,  <29.496359, 31.398649, 24.749640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748608, 31.486336, 25.151897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.456940, 31.759529, 25.134716>,  <28.281939, 31.923445, 25.124407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.456940, 31.759529, 25.134716>,  <28.748608, 31.486336, 25.151897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456940, 31.759529, 25.134716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676866, -0.710547, 0.192288,
		0.100808, 0.169286, 0.980398,
		-0.729171, 0.682983, -0.042956,
		28.238188, 31.964424, 25.121830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477127, 31.676805, 25.896778>,  <28.748608, 31.486336, 25.151897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477127, 31.676805, 25.896778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.225496, 31.690250, 25.586132>,  <28.074518, 31.698318, 25.399744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.225496, 31.690250, 25.586132>,  <28.477127, 31.676805, 25.896778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225496, 31.690250, 25.586132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628548, -0.609824, 0.482745,
		-0.457371, 0.791824, 0.404755,
		-0.629078, 0.033615, -0.776615,
		28.036774, 31.700335, 25.353148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835842, 31.852184, 26.182476>,  <28.477127, 31.676805, 25.896778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835842, 31.852184, 26.182476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.791660, 31.661858, 25.833443>,  <27.765152, 31.547663, 25.624023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.791660, 31.661858, 25.833443>,  <27.835842, 31.852184, 26.182476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791660, 31.661858, 25.833443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632185, -0.643817, 0.431094,
		-0.766904, 0.599249, -0.229691,
		-0.110454, -0.475815, -0.872582,
		27.758524, 31.519114, 25.571669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135563, 31.567818, 26.092197>,  <27.835842, 31.852184, 26.182476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135563, 31.567818, 26.092197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.297756, 31.351246, 25.797596>,  <27.395071, 31.221304, 25.620834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.297756, 31.351246, 25.797596>,  <27.135563, 31.567818, 26.092197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297756, 31.351246, 25.797596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355069, -0.835736, 0.418893,
		-0.842328, 0.091662, -0.531113,
		0.405474, -0.541427, -0.736511,
		27.419401, 31.188818, 25.576645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622252, 31.121191, 25.713734>,  <27.135563, 31.567818, 26.092197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622252, 31.121191, 25.713734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.970964, 30.944584, 25.628826>,  <27.180193, 30.838619, 25.577883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.970964, 30.944584, 25.628826>,  <26.622252, 31.121191, 25.713734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970964, 30.944584, 25.628826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400049, -0.891701, 0.211730,
		-0.282762, -0.099665, -0.953998,
		0.871783, -0.441516, -0.212268,
		27.232500, 30.812130, 25.565145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418140, 30.534361, 25.309593>,  <26.622252, 31.121191, 25.713734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418140, 30.534361, 25.309593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.792315, 30.463890, 25.432182>,  <27.016819, 30.421608, 25.505735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.792315, 30.463890, 25.432182>,  <26.418140, 30.534361, 25.309593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792315, 30.463890, 25.432182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252908, -0.939261, 0.232003,
		0.246986, -0.294533, -0.923173,
		0.935433, -0.176177, 0.306474,
		27.072945, 30.411037, 25.524124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565487, 29.975744, 24.977423>,  <26.418140, 30.534361, 25.309593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565487, 29.975744, 24.977423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.820057, 29.999989, 25.285004>,  <26.972799, 30.014536, 25.469553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.820057, 29.999989, 25.285004>,  <26.565487, 29.975744, 24.977423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820057, 29.999989, 25.285004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145180, -0.969678, 0.196591,
		0.757553, -0.236752, -0.608327,
		0.636424, 0.060611, 0.768954,
		27.010984, 30.018171, 25.515690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029013, 29.346727, 24.936615>,  <26.565487, 29.975744, 24.977423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029013, 29.346727, 24.936615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.070482, 29.475143, 25.313164>,  <27.095364, 29.552193, 25.539093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.070482, 29.475143, 25.313164>,  <27.029013, 29.346727, 24.936615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070482, 29.475143, 25.313164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106207, -0.937489, 0.331414,
		0.988925, -0.134339, -0.063095,
		0.103672, 0.321042, 0.941374,
		27.101583, 29.571457, 25.595575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574341, 28.883501, 25.227642>,  <27.029013, 29.346727, 24.936615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574341, 28.883501, 25.227642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.384186, 29.060390, 25.531864>,  <27.270092, 29.166525, 25.714397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.384186, 29.060390, 25.531864>,  <27.574341, 28.883501, 25.227642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384186, 29.060390, 25.531864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007239, -0.866423, 0.499258,
		0.879746, 0.231836, 0.415089,
		-0.475389, 0.442225, 0.760554,
		27.241570, 29.193058, 25.760031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925236, 28.781979, 25.865059>,  <27.574341, 28.883501, 25.227642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925236, 28.781979, 25.865059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.549099, 28.857586, 25.978218>,  <27.323418, 28.902950, 26.046114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.549099, 28.857586, 25.978218>,  <27.925236, 28.781979, 25.865059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549099, 28.857586, 25.978218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023664, -0.793135, 0.608587,
		0.339409, 0.578973, 0.741344,
		-0.940341, 0.189016, 0.282897,
		27.266996, 28.914291, 26.063087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873663, 28.729746, 26.582687>,  <27.925236, 28.781979, 25.865059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873663, 28.729746, 26.582687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.489466, 28.651779, 26.503227>,  <27.258947, 28.605000, 26.455551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.489466, 28.651779, 26.503227>,  <27.873663, 28.729746, 26.582687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489466, 28.651779, 26.503227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080164, -0.877297, 0.473206,
		-0.266512, 0.438586, 0.858262,
		-0.960492, -0.194916, -0.198651,
		27.201319, 28.593304, 26.443632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646034, 28.441830, 27.119610>,  <27.873663, 28.729746, 26.582687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646034, 28.441830, 27.119610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.354546, 28.322659, 26.872967>,  <27.179653, 28.251156, 26.724981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.354546, 28.322659, 26.872967>,  <27.646034, 28.441830, 27.119610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354546, 28.322659, 26.872967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053080, -0.873123, 0.484602,
		-0.682749, 0.385870, 0.620450,
		-0.728722, -0.297928, -0.616606,
		27.135929, 28.233280, 26.687984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056885, 28.116253, 27.527901>,  <27.646034, 28.441830, 27.119610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056885, 28.116253, 27.527901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.991259, 27.975948, 27.159107>,  <26.951883, 27.891766, 26.937832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.991259, 27.975948, 27.159107>,  <27.056885, 28.116253, 27.527901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991259, 27.975948, 27.159107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038929, -0.931616, 0.361353,
		-0.985681, 0.095177, 0.139191,
		-0.164065, -0.350760, -0.921982,
		26.942039, 27.870720, 26.882513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418076, 27.779110, 27.608082>,  <27.056885, 28.116253, 27.527901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418076, 27.779110, 27.608082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.620489, 27.645382, 27.290047>,  <26.741938, 27.565145, 27.099226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.620489, 27.645382, 27.290047>,  <26.418076, 27.779110, 27.608082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620489, 27.645382, 27.290047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108304, -0.939156, 0.325970,
		-0.855687, -0.078840, -0.511452,
		0.506033, -0.334321, -0.795085,
		26.772299, 27.545086, 27.051521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121101, 27.167463, 27.329306>,  <26.418076, 27.779110, 27.608082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121101, 27.167463, 27.329306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.468851, 27.129738, 27.135277>,  <26.677502, 27.107103, 27.018860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.468851, 27.129738, 27.135277>,  <26.121101, 27.167463, 27.329306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468851, 27.129738, 27.135277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005481, -0.979717, 0.200313,
		-0.494124, -0.176806, -0.851223,
		0.869374, -0.094314, -0.485071,
		26.729664, 27.101444, 26.989756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017288, 26.627459, 26.666582>,  <26.121101, 27.167463, 27.329306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017288, 26.627459, 26.666582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.392271, 26.663040, 26.801197>,  <26.617262, 26.684389, 26.881966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.392271, 26.663040, 26.801197>,  <26.017288, 26.627459, 26.666582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392271, 26.663040, 26.801197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007089, -0.961717, 0.273954,
		0.348025, -0.259206, -0.900939,
		0.937459, 0.088956, 0.336539,
		26.673508, 26.689728, 26.902159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326937, 25.936708, 26.462843>,  <26.017288, 26.627459, 26.666582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326937, 25.936708, 26.462843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.593077, 26.094799, 26.716175>,  <26.752762, 26.189653, 26.868174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.593077, 26.094799, 26.716175>,  <26.326937, 25.936708, 26.462843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593077, 26.094799, 26.716175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178094, -0.907901, 0.379470,
		0.724976, -0.139689, -0.674461,
		0.665352, 0.395224, 0.633329,
		26.792683, 26.213366, 26.906174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904222, 25.615559, 26.340359>,  <26.326937, 25.936708, 26.462843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904222, 25.615559, 26.340359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.963346, 25.724049, 26.720798>,  <26.998821, 25.789143, 26.949062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.963346, 25.724049, 26.720798>,  <26.904222, 25.615559, 26.340359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963346, 25.724049, 26.720798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042893, -0.962516, 0.267813,
		0.988085, 0.001210, -0.153903,
		0.147810, 0.271223, 0.951099,
		27.007690, 25.805416, 27.006128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.693121, 25.240788, 26.607729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.510384, 25.371086, 26.938831>,  <27.400742, 25.449266, 27.137493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.510384, 25.371086, 26.938831>,  <27.693121, 25.240788, 26.607729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510384, 25.371086, 26.938831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225578, -0.857697, 0.462028,
		0.860471, 0.397798, 0.318350,
		-0.456842, 0.325749, 0.827758,
		27.373331, 25.468811, 27.187159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183372, 25.149994, 27.156054>,  <27.693121, 25.240788, 26.607729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183372, 25.149994, 27.156054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820377, 25.134727, 27.323391>,  <27.602581, 25.125568, 27.423794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820377, 25.134727, 27.323391>,  <28.183372, 25.149994, 27.156054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820377, 25.134727, 27.323391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275212, -0.806395, 0.523436,
		0.317372, 0.590145, 0.742297,
		-0.907487, -0.038165, 0.418342,
		27.548132, 25.123278, 27.448895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281408, 24.912764, 27.861526>,  <28.183372, 25.149994, 27.156054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281408, 24.912764, 27.861526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.894512, 24.836578, 27.794388>,  <27.662374, 24.790867, 27.754105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.894512, 24.836578, 27.794388>,  <28.281408, 24.912764, 27.861526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894512, 24.836578, 27.794388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068783, -0.833039, 0.548921,
		-0.244373, 0.519393, 0.818848,
		-0.967239, -0.190464, -0.167847,
		27.604340, 24.779440, 27.744034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998568, 24.742714, 28.519344>,  <28.281408, 24.912764, 27.861526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998568, 24.742714, 28.519344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754379, 24.608624, 28.232304>,  <27.607866, 24.528170, 28.060080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754379, 24.608624, 28.232304>,  <27.998568, 24.742714, 28.519344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754379, 24.608624, 28.232304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146196, -0.842755, 0.518064,
		-0.778430, 0.421173, 0.465468,
		-0.610470, -0.335227, -0.717600,
		27.571238, 24.508055, 28.017023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479567, 24.564367, 28.962143>,  <27.998568, 24.742714, 28.519344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479567, 24.564367, 28.962143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.431601, 24.370285, 28.615688>,  <27.402821, 24.253836, 28.407816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.431601, 24.370285, 28.615688>,  <27.479567, 24.564367, 28.962143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431601, 24.370285, 28.615688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182317, -0.846833, 0.499635,
		-0.975900, 0.217826, 0.013088,
		-0.119916, -0.485207, -0.866138,
		27.395626, 24.224724, 28.355846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883690, 24.243158, 29.035721>,  <27.479567, 24.564367, 28.962143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883690, 24.243158, 29.035721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093550, 24.041180, 28.761562>,  <27.219465, 23.919992, 28.597067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093550, 24.041180, 28.761562>,  <26.883690, 24.243158, 29.035721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093550, 24.041180, 28.761562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140360, -0.845391, 0.515376,
		-0.839666, -0.174192, -0.514411,
		0.524653, -0.504947, -0.685396,
		27.250946, 23.889696, 28.555943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473364, 23.740257, 28.797548>,  <26.883690, 24.243158, 29.035721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473364, 23.740257, 28.797548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842371, 23.611935, 28.711716>,  <27.063776, 23.534941, 28.660217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842371, 23.611935, 28.711716>,  <26.473364, 23.740257, 28.797548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842371, 23.611935, 28.711716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247465, -0.918302, 0.309004,
		-0.296179, -0.231961, -0.926538,
		0.922518, -0.320806, -0.214579,
		27.119127, 23.515694, 28.647343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363512, 23.176329, 28.443626>,  <26.473364, 23.740257, 28.797548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363512, 23.176329, 28.443626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743109, 23.137554, 28.563637>,  <26.970867, 23.114290, 28.635643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743109, 23.137554, 28.563637>,  <26.363512, 23.176329, 28.443626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743109, 23.137554, 28.563637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185187, -0.941504, 0.281561,
		0.255182, -0.322761, -0.911432,
		0.948993, -0.096936, 0.300026,
		27.027807, 23.108473, 28.653645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563021, 22.490221, 28.370090>,  <26.363512, 23.176329, 28.443626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563021, 22.490221, 28.370090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.854746, 22.618305, 28.611938>,  <27.029781, 22.695156, 28.757048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.854746, 22.618305, 28.611938>,  <26.563021, 22.490221, 28.370090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854746, 22.618305, 28.611938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126092, -0.805673, 0.578786,
		0.672459, -0.498354, -0.547213,
		0.729315, 0.320210, 0.604620,
		27.073540, 22.714369, 28.793324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027725, 21.926378, 28.498564>,  <26.563021, 22.490221, 28.370090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027725, 21.926378, 28.498564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.071697, 22.188900, 28.797142>,  <27.098082, 22.346413, 28.976290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.071697, 22.188900, 28.797142>,  <27.027725, 21.926378, 28.498564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071697, 22.188900, 28.797142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173602, -0.726775, 0.664576,
		0.978661, -0.202642, 0.034041,
		0.109931, 0.656304, 0.746445,
		27.104677, 22.385792, 29.021076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381384, 21.470449, 29.004677>,  <27.027725, 21.926378, 28.498564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381384, 21.470449, 29.004677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.234419, 21.787224, 29.199753>,  <27.146240, 21.977289, 29.316799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.234419, 21.787224, 29.199753>,  <27.381384, 21.470449, 29.004677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234419, 21.787224, 29.199753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294706, -0.596478, 0.746567,
		0.882132, 0.130573, 0.452542,
		-0.367413, 0.791937, 0.487692,
		27.124195, 22.024805, 29.346060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736155, 21.437010, 29.648361>,  <27.381384, 21.470449, 29.004677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736155, 21.437010, 29.648361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.395493, 21.644314, 29.679569>,  <27.191095, 21.768696, 29.698294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.395493, 21.644314, 29.679569>,  <27.736155, 21.437010, 29.648361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395493, 21.644314, 29.679569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288923, -0.588468, 0.755135,
		0.437269, 0.620574, 0.650910,
		-0.851657, 0.518260, 0.078021,
		27.139996, 21.799791, 29.702976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650299, 21.450451, 30.265720>,  <27.736155, 21.437010, 29.648361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650299, 21.450451, 30.265720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.281815, 21.546940, 30.143620>,  <27.060724, 21.604834, 30.070360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.281815, 21.546940, 30.143620>,  <27.650299, 21.450451, 30.265720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281815, 21.546940, 30.143620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386259, -0.473107, 0.791817,
		0.046587, 0.847338, 0.529007,
		-0.921213, 0.241222, -0.305251,
		27.005451, 21.619307, 30.052044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298176, 21.776335, 30.793236>,  <27.650299, 21.450451, 30.265720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298176, 21.776335, 30.793236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.017168, 21.626053, 30.551472>,  <26.848564, 21.535883, 30.406412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.017168, 21.626053, 30.551472>,  <27.298176, 21.776335, 30.793236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017168, 21.626053, 30.551472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349094, -0.558165, 0.752718,
		-0.620162, 0.739795, 0.260965,
		-0.702519, -0.375706, -0.604411,
		26.806412, 21.513342, 30.370148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606640, 21.878914, 31.100855>,  <27.298176, 21.776335, 30.793236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606640, 21.878914, 31.100855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.543385, 21.578892, 30.843979>,  <26.505430, 21.398878, 30.689854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.543385, 21.578892, 30.843979>,  <26.606640, 21.878914, 31.100855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543385, 21.578892, 30.843979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647722, -0.412090, 0.640811,
		-0.745284, 0.517296, -0.420661,
		-0.158139, -0.750058, -0.642188,
		26.495943, 21.353874, 30.651323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981876, 21.741341, 31.221371>,  <26.606640, 21.878914, 31.100855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981876, 21.741341, 31.221371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.077909, 21.408401, 31.021549>,  <26.135530, 21.208637, 30.901655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.077909, 21.408401, 31.021549>,  <25.981876, 21.741341, 31.221371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077909, 21.408401, 31.021549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773496, -0.474972, 0.419649,
		-0.586570, 0.285654, -0.757851,
		0.240083, -0.832348, -0.499557,
		26.149935, 21.158697, 30.871683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386454, 21.377577, 30.952717>,  <25.981876, 21.741341, 31.221371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386454, 21.377577, 30.952717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.664011, 21.089554, 30.950737>,  <25.830545, 20.916740, 30.949549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.664011, 21.089554, 30.950737>,  <25.386454, 21.377577, 30.952717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664011, 21.089554, 30.950737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600685, -0.582623, 0.547474,
		-0.397097, -0.376916, -0.836808,
		0.693896, -0.720059, -0.004950,
		25.872179, 20.873537, 30.949251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060791, 20.753338, 30.771353>,  <25.386454, 21.377577, 30.952717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060791, 20.753338, 30.771353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384935, 20.643314, 30.978294>,  <25.579422, 20.577301, 31.102459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384935, 20.643314, 30.978294>,  <25.060791, 20.753338, 30.771353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384935, 20.643314, 30.978294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577696, -0.522579, 0.627040,
		0.097887, -0.807003, -0.582378,
		0.810362, -0.275059, 0.517356,
		25.628044, 20.560797, 31.133501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763680, 20.221710, 31.030722>,  <25.060791, 20.753338, 30.771353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763680, 20.221710, 31.030722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.114317, 20.221531, 31.223213>,  <25.324699, 20.221424, 31.338709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.114317, 20.221531, 31.223213>,  <24.763680, 20.221710, 31.030722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114317, 20.221531, 31.223213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395839, -0.569354, 0.720519,
		0.273669, -0.822092, -0.499269,
		0.876594, -0.000447, 0.481231,
		25.377295, 20.221397, 31.367582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892048, 19.561117, 31.196035>,  <24.763680, 20.221710, 31.030722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892048, 19.561117, 31.196035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.140888, 19.730408, 31.459511>,  <25.290194, 19.831982, 31.617596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.140888, 19.730408, 31.459511>,  <24.892048, 19.561117, 31.196035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140888, 19.730408, 31.459511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411879, -0.538570, 0.735050,
		0.665842, -0.728575, -0.160727,
		0.622102, 0.423227, 0.658687,
		25.327518, 19.857376, 31.657116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141745, 18.996197, 31.611656>,  <24.892048, 19.561117, 31.196035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141745, 18.996197, 31.611656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.194876, 19.337410, 31.813522>,  <25.226755, 19.542139, 31.934643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.194876, 19.337410, 31.813522>,  <25.141745, 18.996197, 31.611656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194876, 19.337410, 31.813522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250394, -0.463780, 0.849830,
		0.958989, -0.239248, 0.151992,
		0.132829, 0.853035, 0.504666,
		25.234724, 19.593321, 31.964922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614891, 18.922474, 32.086250>,  <25.141745, 18.996197, 31.611656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614891, 18.922474, 32.086250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.352142, 19.200176, 32.203915>,  <25.194492, 19.366796, 32.274513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.352142, 19.200176, 32.203915>,  <25.614891, 18.922474, 32.086250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352142, 19.200176, 32.203915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208732, -0.542317, 0.813832,
		0.724534, 0.473183, 0.501146,
		-0.656872, 0.694255, 0.294159,
		25.155081, 19.408453, 32.292164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298002, 19.293211, 32.326267>,  <25.614891, 18.922474, 32.086250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298002, 19.293211, 32.326267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.666935, 19.385143, 32.450512>,  <26.888294, 19.440302, 32.525059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.666935, 19.385143, 32.450512>,  <26.298002, 19.293211, 32.326267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666935, 19.385143, 32.450512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358632, 0.808405, 0.466760,
		-0.143826, -0.541904, 0.828042,
		0.922332, 0.229830, 0.310614,
		26.943634, 19.454092, 32.543697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365681, 19.460363, 33.099689>,  <26.298002, 19.293211, 32.326267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365681, 19.460363, 33.099689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.612436, 19.663971, 32.859573>,  <26.760490, 19.786137, 32.715504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.612436, 19.663971, 32.859573>,  <26.365681, 19.460363, 33.099689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612436, 19.663971, 32.859573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339251, 0.860187, 0.380772,
		0.710179, -0.031247, 0.703327,
		0.616891, 0.509021, -0.600287,
		26.797504, 19.816677, 32.679489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749605, 18.901989, 33.563759>,  <26.365681, 19.460363, 33.099689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749605, 18.901989, 33.563759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.113289, 18.736237, 33.579880>,  <27.331499, 18.636786, 33.589554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.113289, 18.736237, 33.579880>,  <26.749605, 18.901989, 33.563759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113289, 18.736237, 33.579880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396458, 0.832181, -0.387681,
		0.127108, 0.368462, 0.920912,
		0.909211, -0.414381, 0.040303,
		27.386051, 18.611923, 33.591972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153404, 19.477352, 33.813145>,  <26.749605, 18.901989, 33.563759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153404, 19.477352, 33.813145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.387323, 19.206913, 33.633858>,  <27.527676, 19.044649, 33.526283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.387323, 19.206913, 33.633858>,  <27.153404, 19.477352, 33.813145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387323, 19.206913, 33.633858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574228, 0.735319, -0.359957,
		0.572952, -0.046879, 0.818247,
		0.584798, -0.676098, -0.448222,
		27.562763, 19.004084, 33.499390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814440, 19.644739, 33.954597>,  <27.153404, 19.477352, 33.813145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814440, 19.644739, 33.954597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852331, 19.402157, 33.638817>,  <27.875065, 19.256607, 33.449348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852331, 19.402157, 33.638817>,  <27.814440, 19.644739, 33.954597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852331, 19.402157, 33.638817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625932, 0.652936, -0.426478,
		0.774103, -0.453745, 0.441452,
		0.094728, -0.606457, -0.789453,
		27.880749, 19.220219, 33.401981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481701, 19.801382, 33.716412>,  <27.814440, 19.644739, 33.954597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481701, 19.801382, 33.716412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.313400, 19.629200, 33.396996>,  <28.212420, 19.525890, 33.205345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.313400, 19.629200, 33.396996>,  <28.481701, 19.801382, 33.716412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313400, 19.629200, 33.396996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525508, 0.601869, -0.601329,
		0.739465, -0.672652, -0.027030,
		-0.420754, -0.430457, -0.798545,
		28.187174, 19.500063, 33.157433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109604, 19.598413, 33.288181>,  <28.481701, 19.801382, 33.716412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109604, 19.598413, 33.288181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772635, 19.623413, 33.074108>,  <28.570454, 19.638412, 32.945663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772635, 19.623413, 33.074108>,  <29.109604, 19.598413, 33.288181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772635, 19.623413, 33.074108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427994, 0.681018, -0.594168,
		0.327332, -0.729595, -0.600454,
		-0.842422, 0.062501, -0.535181,
		28.519907, 19.642162, 32.913555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360216, 19.460730, 32.698582>,  <29.109604, 19.598413, 33.288181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360216, 19.460730, 32.698582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013983, 19.652386, 32.640354>,  <28.806244, 19.767380, 32.605419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013983, 19.652386, 32.640354>,  <29.360216, 19.460730, 32.698582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013983, 19.652386, 32.640354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438977, 0.586132, -0.680991,
		-0.240970, -0.653354, -0.717678,
		-0.865582, 0.479142, -0.145567,
		28.754309, 19.796129, 32.596684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206850, 19.464874, 31.927193>,  <29.360216, 19.460730, 32.698582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206850, 19.464874, 31.927193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010553, 19.774158, 32.087852>,  <28.892776, 19.959728, 32.184250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010553, 19.774158, 32.087852>,  <29.206850, 19.464874, 31.927193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010553, 19.774158, 32.087852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218092, 0.555306, -0.802541,
		-0.843570, -0.306242, -0.441141,
		-0.490740, 0.773209, 0.401650,
		28.863331, 20.006121, 32.208347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892433, 19.738529, 31.386688>,  <29.206850, 19.464874, 31.927193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892433, 19.738529, 31.386688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862709, 20.029263, 31.659801>,  <28.844875, 20.203703, 31.823669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862709, 20.029263, 31.659801>,  <28.892433, 19.738529, 31.386688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862709, 20.029263, 31.659801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071042, 0.686793, -0.723373,
		-0.994702, -0.005247, -0.102671,
		-0.074310, 0.726834, 0.682782,
		28.840416, 20.247313, 31.864635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371719, 20.192083, 31.211016>,  <28.892433, 19.738529, 31.386688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371719, 20.192083, 31.211016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602348, 20.403492, 31.460247>,  <28.740726, 20.530338, 31.609785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602348, 20.403492, 31.460247>,  <28.371719, 20.192083, 31.211016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602348, 20.403492, 31.460247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021541, 0.752501, -0.658239,
		-0.816762, 0.392944, 0.422487,
		0.576573, 0.528523, 0.623078,
		28.775320, 20.562050, 31.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110399, 20.775045, 31.089228>,  <28.371719, 20.192083, 31.211016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110399, 20.775045, 31.089228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.461025, 20.849480, 31.266769>,  <28.671400, 20.894140, 31.373295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.461025, 20.849480, 31.266769>,  <28.110399, 20.775045, 31.089228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461025, 20.849480, 31.266769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145439, 0.776696, -0.612855,
		-0.458781, 0.601761, 0.653761,
		0.876565, 0.186084, 0.443853,
		28.723995, 20.905304, 31.399925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147659, 21.454617, 31.087996>,  <28.110399, 20.775045, 31.089228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147659, 21.454617, 31.087996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534899, 21.393501, 31.167439>,  <28.767242, 21.356833, 31.215105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534899, 21.393501, 31.167439>,  <28.147659, 21.454617, 31.087996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534899, 21.393501, 31.167439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246057, 0.729501, -0.638188,
		-0.047377, 0.666697, 0.743822,
		0.968097, -0.152788, 0.198607,
		28.825327, 21.347666, 31.227020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485003, 22.101347, 31.190420>,  <28.147659, 21.454617, 31.087996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485003, 22.101347, 31.190420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772287, 21.854893, 31.061085>,  <28.944658, 21.707020, 30.983484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772287, 21.854893, 31.061085>,  <28.485003, 22.101347, 31.190420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772287, 21.854893, 31.061085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286144, 0.685099, -0.669896,
		0.634266, 0.388606, 0.668350,
		0.718212, -0.616137, -0.323337,
		28.987751, 21.670052, 30.964083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009712, 22.574509, 31.067307>,  <28.485003, 22.101347, 31.190420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009712, 22.574509, 31.067307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.085274, 22.231571, 30.875774>,  <29.130610, 22.025808, 30.760855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.085274, 22.231571, 30.875774>,  <29.009712, 22.574509, 31.067307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085274, 22.231571, 30.875774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351741, 0.514329, -0.782141,
		0.916839, -0.020675, 0.398721,
		0.188903, -0.857343, -0.478830,
		29.141945, 21.974369, 30.732126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667572, 22.741350, 30.735928>,  <29.009712, 22.574509, 31.067307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667572, 22.741350, 30.735928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.518734, 22.433788, 30.527954>,  <29.429432, 22.249250, 30.403170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.518734, 22.433788, 30.527954>,  <29.667572, 22.741350, 30.735928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518734, 22.433788, 30.527954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401450, 0.371738, -0.837048,
		0.836890, -0.520186, 0.170357,
		-0.372093, -0.768906, -0.519933,
		29.407106, 22.203115, 30.371975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204254, 22.389717, 30.381147>,  <29.667572, 22.741350, 30.735928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204254, 22.389717, 30.381147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.861229, 22.288513, 30.202007>,  <29.655413, 22.227791, 30.094522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.861229, 22.288513, 30.202007>,  <30.204254, 22.389717, 30.381147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861229, 22.288513, 30.202007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299119, 0.463024, -0.834349,
		0.418455, -0.849470, -0.321397,
		-0.857568, -0.253002, -0.447847,
		29.603960, 22.212610, 30.067652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436853, 22.185616, 29.747334>,  <30.204254, 22.389717, 30.381147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436853, 22.185616, 29.747334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058031, 22.277931, 29.658054>,  <29.830738, 22.333321, 29.604486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058031, 22.277931, 29.658054>,  <30.436853, 22.185616, 29.747334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058031, 22.277931, 29.658054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308528, 0.461826, -0.831581,
		-0.088840, -0.856418, -0.508581,
		-0.947058, 0.230789, -0.223200,
		29.773914, 22.347168, 29.591095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388660, 22.011137, 29.058792>,  <30.436853, 22.185616, 29.747334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388660, 22.011137, 29.058792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116354, 22.293251, 29.137917>,  <29.952971, 22.462521, 29.185390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116354, 22.293251, 29.137917>,  <30.388660, 22.011137, 29.058792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116354, 22.293251, 29.137917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429104, 0.602840, -0.672647,
		-0.593657, -0.373033, -0.713034,
		-0.680765, 0.705287, 0.197810,
		29.912125, 22.504837, 29.197260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424433, 22.327702, 28.412722>,  <30.388660, 22.011137, 29.058792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424433, 22.327702, 28.412722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.228260, 22.577984, 28.655365>,  <30.110556, 22.728153, 28.800951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.228260, 22.577984, 28.655365>,  <30.424433, 22.327702, 28.412722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228260, 22.577984, 28.655365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328843, 0.777477, -0.536090,
		-0.807056, -0.063437, -0.587057,
		-0.490431, 0.625704, 0.606607,
		30.081131, 22.765696, 28.837347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947708, 22.584019, 27.985561>,  <30.424433, 22.327702, 28.412722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947708, 22.584019, 27.985561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988611, 22.858768, 28.273380>,  <30.013153, 23.023619, 28.446072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.988611, 22.858768, 28.273380>,  <29.947708, 22.584019, 27.985561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988611, 22.858768, 28.273380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125682, 0.708621, -0.694306,
		-0.986786, 0.161432, -0.013866,
		0.102257, 0.686874, 0.719546,
		30.019289, 23.064831, 28.489244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493708, 23.117535, 27.903942>,  <29.947708, 22.584019, 27.985561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493708, 23.117535, 27.903942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798529, 23.271893, 28.111927>,  <29.981421, 23.364508, 28.236717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798529, 23.271893, 28.111927>,  <29.493708, 23.117535, 27.903942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798529, 23.271893, 28.111927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044948, 0.832601, -0.552046,
		-0.645954, 0.397316, 0.651831,
		0.762052, 0.385895, 0.519963,
		30.027143, 23.387661, 28.267916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.685078, 36.758446, 16.014494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061274, 36.670364, 15.910964>,  <23.286991, 36.617516, 15.848845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061274, 36.670364, 15.910964>,  <22.685078, 36.758446, 16.014494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061274, 36.670364, 15.910964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241073, -0.104475, 0.964867,
		-0.239511, -0.969843, -0.045171,
		0.940488, -0.220206, -0.258826,
		23.343420, 36.604301, 15.833316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843081, 36.134628, 16.335213>,  <22.685078, 36.758446, 16.014494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843081, 36.134628, 16.335213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193062, 36.318100, 16.273155>,  <23.403051, 36.428185, 16.235922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.193062, 36.318100, 16.273155>,  <22.843081, 36.134628, 16.335213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193062, 36.318100, 16.273155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286135, -0.231309, 0.929851,
		0.390617, -0.857969, -0.333629,
		0.874955, 0.458679, -0.155142,
		23.455547, 36.455704, 16.226612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.349691, 35.661835, 16.623016>,  <22.843081, 36.134628, 16.335213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.349691, 35.661835, 16.623016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.498650, 36.033054, 16.625931>,  <23.588024, 36.255787, 16.627680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.498650, 36.033054, 16.625931>,  <23.349691, 35.661835, 16.623016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.498650, 36.033054, 16.625931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387894, -0.162771, 0.907218,
		0.843126, -0.335016, -0.420599,
		0.372393, 0.928046, 0.007286,
		23.610367, 36.311470, 16.628117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.955975, 35.520531, 17.000742>,  <23.349691, 35.661835, 16.623016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.955975, 35.520531, 17.000742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.925648, 35.918907, 16.981377>,  <23.907452, 36.157932, 16.969757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.925648, 35.918907, 16.981377>,  <23.955975, 35.520531, 17.000742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.925648, 35.918907, 16.981377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324979, 0.070583, 0.943084,
		0.942678, 0.055767, -0.329012,
		-0.075816, 0.995946, -0.048414,
		23.902903, 36.217690, 16.966852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645281, 35.813221, 17.137896>,  <23.955975, 35.520531, 17.000742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645281, 35.813221, 17.137896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.388868, 36.104618, 17.234539>,  <24.235022, 36.279457, 17.292526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.388868, 36.104618, 17.234539>,  <24.645281, 35.813221, 17.137896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388868, 36.104618, 17.234539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416741, 0.066018, 0.906625,
		0.644521, 0.681863, -0.345913,
		-0.641030, 0.728495, 0.241611,
		24.196560, 36.323166, 17.307022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032286, 36.281357, 17.595947>,  <24.645281, 35.813221, 17.137896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032286, 36.281357, 17.595947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.653576, 36.386261, 17.670609>,  <24.426350, 36.449203, 17.715405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.653576, 36.386261, 17.670609>,  <25.032286, 36.281357, 17.595947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653576, 36.386261, 17.670609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184919, -0.031506, 0.982249,
		0.263487, 0.964482, -0.018668,
		-0.946773, 0.262262, 0.186653,
		24.369543, 36.464939, 17.726604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114264, 36.784508, 18.025745>,  <25.032286, 36.281357, 17.595947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114264, 36.784508, 18.025745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.726765, 36.692535, 18.062977>,  <24.494267, 36.637352, 18.085316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.726765, 36.692535, 18.062977>,  <25.114264, 36.784508, 18.025745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726765, 36.692535, 18.062977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079293, 0.068498, 0.994495,
		-0.235045, 0.970793, -0.048125,
		-0.968745, -0.229935, 0.093077,
		24.436142, 36.623554, 18.090900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777542, 37.403374, 18.232052>,  <25.114264, 36.784508, 18.025745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777542, 37.403374, 18.232052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.554146, 37.088486, 18.336643>,  <24.420109, 36.899551, 18.399399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.554146, 37.088486, 18.336643>,  <24.777542, 37.403374, 18.232052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554146, 37.088486, 18.336643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032819, 0.294004, 0.955241,
		-0.828862, 0.542073, -0.138362,
		-0.558489, -0.787222, 0.261479,
		24.386599, 36.852318, 18.415087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.288006, 37.728245, 18.723337>,  <24.777542, 37.403374, 18.232052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.288006, 37.728245, 18.723337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.335419, 37.332916, 18.761646>,  <24.363867, 37.095718, 18.784632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.335419, 37.332916, 18.761646>,  <24.288006, 37.728245, 18.723337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335419, 37.332916, 18.761646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037951, 0.100890, 0.994174,
		-0.992225, -0.114207, 0.049467,
		0.118532, -0.988321, 0.095771,
		24.370979, 37.036419, 18.790379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.749836, 37.644352, 19.170551>,  <24.288006, 37.728245, 18.723337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.749836, 37.644352, 19.170551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.969313, 37.311821, 19.205944>,  <24.100998, 37.112301, 19.227180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.969313, 37.311821, 19.205944>,  <23.749836, 37.644352, 19.170551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.969313, 37.311821, 19.205944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136340, 0.015442, 0.990542,
		-0.824833, -0.555566, -0.104871,
		0.548692, -0.831329, 0.088482,
		24.133921, 37.062424, 19.232489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396679, 37.166988, 19.588112>,  <23.749836, 37.644352, 19.170551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396679, 37.166988, 19.588112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.768646, 37.023022, 19.618328>,  <23.991827, 36.936642, 19.636457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.768646, 37.023022, 19.618328>,  <23.396679, 37.166988, 19.588112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768646, 37.023022, 19.618328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096355, -0.040212, 0.994534,
		-0.354915, -0.932116, -0.072074,
		0.929920, -0.359920, 0.075543,
		24.047623, 36.915047, 19.640991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.438799, 36.617947, 20.140028>,  <23.396679, 37.166988, 19.588112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.438799, 36.617947, 20.140028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.823904, 36.717892, 20.098736>,  <24.054966, 36.777859, 20.073961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.823904, 36.717892, 20.098736>,  <23.438799, 36.617947, 20.140028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.823904, 36.717892, 20.098736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130358, -0.094539, 0.986950,
		0.236847, -0.963654, -0.123590,
		0.962762, 0.249867, -0.103229,
		24.112732, 36.792850, 20.067766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.795574, 36.057529, 20.445269>,  <23.438799, 36.617947, 20.140028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.795574, 36.057529, 20.445269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.036238, 36.376778, 20.458027>,  <24.180635, 36.568325, 20.465681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.036238, 36.376778, 20.458027>,  <23.795574, 36.057529, 20.445269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.036238, 36.376778, 20.458027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208386, -0.195390, 0.958331,
		0.771093, -0.569939, -0.283874,
		0.601657, 0.798118, 0.031896,
		24.216734, 36.616215, 20.467596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455139, 35.861671, 20.784746>,  <23.795574, 36.057529, 20.445269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455139, 35.861671, 20.784746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.426733, 36.259510, 20.815044>,  <24.409689, 36.498215, 20.833223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.426733, 36.259510, 20.815044>,  <24.455139, 35.861671, 20.784746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426733, 36.259510, 20.815044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104614, -0.068092, 0.992179,
		0.991974, 0.078382, -0.099213,
		-0.071014, 0.994595, 0.075745,
		24.405428, 36.557888, 20.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089157, 36.123306, 21.153868>,  <24.455139, 35.861671, 20.784746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089157, 36.123306, 21.153868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.809725, 36.405693, 21.200516>,  <24.642065, 36.575123, 21.228504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.809725, 36.405693, 21.200516>,  <25.089157, 36.123306, 21.153868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809725, 36.405693, 21.200516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115526, -0.049564, 0.992067,
		0.706144, 0.706511, -0.046933,
		-0.698580, 0.705964, 0.116620,
		24.600151, 36.617481, 21.235502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262939, 36.567474, 21.782736>,  <25.089157, 36.123306, 21.153868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262939, 36.567474, 21.782736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.882702, 36.669418, 21.711842>,  <24.654558, 36.730587, 21.669304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.882702, 36.669418, 21.711842>,  <25.262939, 36.567474, 21.782736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882702, 36.669418, 21.711842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114603, 0.242491, 0.963361,
		0.288504, 0.936078, -0.201303,
		-0.950595, 0.254863, -0.177237,
		24.597523, 36.745876, 21.658670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094078, 37.256321, 22.196980>,  <25.262939, 36.567474, 21.782736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094078, 37.256321, 22.196980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.763844, 37.045418, 22.116573>,  <24.565702, 36.918877, 22.068329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.763844, 37.045418, 22.116573>,  <25.094078, 37.256321, 22.196980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763844, 37.045418, 22.116573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282533, 0.077888, 0.956090,
		-0.488449, 0.846128, -0.213271,
		-0.825586, -0.527257, -0.201015,
		24.516169, 36.887241, 22.056269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660587, 37.526749, 22.642103>,  <25.094078, 37.256321, 22.196980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660587, 37.526749, 22.642103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.488176, 37.183006, 22.532032>,  <24.384729, 36.976761, 22.465988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.488176, 37.183006, 22.532032>,  <24.660587, 37.526749, 22.642103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488176, 37.183006, 22.532032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498118, -0.027680, 0.866668,
		-0.752392, 0.510631, -0.416129,
		-0.431029, -0.859355, -0.275180,
		24.358868, 36.925201, 22.449478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.886461, 37.616920, 22.727718>,  <24.660587, 37.526749, 22.642103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.886461, 37.616920, 22.727718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997898, 37.233704, 22.754677>,  <24.064760, 37.003773, 22.770851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997898, 37.233704, 22.754677>,  <23.886461, 37.616920, 22.727718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997898, 37.233704, 22.754677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333449, -0.030679, 0.942269,
		-0.900666, -0.284979, -0.328005,
		0.278590, -0.958043, 0.067395,
		24.081474, 36.946289, 22.774895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.430588, 37.289230, 23.088825>,  <23.886461, 37.616920, 22.727718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.430588, 37.289230, 23.088825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.731386, 37.031368, 23.143841>,  <23.911865, 36.876652, 23.176849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.731386, 37.031368, 23.143841>,  <23.430588, 37.289230, 23.088825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.731386, 37.031368, 23.143841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237250, -0.070033, 0.968921,
		-0.614989, -0.761258, -0.205610,
		0.751998, -0.644656, 0.137539,
		23.956985, 36.837971, 23.185102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221212, 36.899906, 23.736965>,  <23.430588, 37.289230, 23.088825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221212, 36.899906, 23.736965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.608612, 36.823139, 23.673496>,  <23.841051, 36.777081, 23.635414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.608612, 36.823139, 23.673496>,  <23.221212, 36.899906, 23.736965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.608612, 36.823139, 23.673496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141288, -0.101189, 0.984783,
		-0.205055, -0.976180, -0.070886,
		0.968499, -0.191919, -0.158672,
		23.899162, 36.765564, 23.625895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.683168, 37.262550, 23.605017>,  <23.221212, 36.899906, 23.736965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.683168, 37.262550, 23.605017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.337616, 37.427265, 23.721043>,  <22.130283, 37.526093, 23.790659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.337616, 37.427265, 23.721043>,  <22.683168, 37.262550, 23.605017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337616, 37.427265, 23.721043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347566, -0.070533, -0.934999,
		-0.364560, -0.908547, 0.204055,
		-0.863883, 0.411786, 0.290067,
		22.078451, 37.550800, 23.808064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172289, 36.924713, 23.216179>,  <22.683168, 37.262550, 23.605017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172289, 36.924713, 23.216179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.953619, 37.234005, 23.344715>,  <21.822416, 37.419582, 23.421837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.953619, 37.234005, 23.344715>,  <22.172289, 36.924713, 23.216179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953619, 37.234005, 23.344715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441359, 0.060036, -0.895320,
		-0.711582, -0.631274, 0.308453,
		-0.546674, 0.773232, 0.321339,
		21.789618, 37.465973, 23.441116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415743, 36.830376, 23.015085>,  <22.172289, 36.924713, 23.216179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415743, 36.830376, 23.015085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.486113, 37.219154, 23.077526>,  <21.528336, 37.452423, 23.114990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.486113, 37.219154, 23.077526>,  <21.415743, 36.830376, 23.015085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.486113, 37.219154, 23.077526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327961, 0.207384, -0.921647,
		-0.928166, 0.110946, 0.355245,
		0.175926, 0.971948, 0.156101,
		21.538891, 37.510738, 23.124357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.890278, 37.101688, 22.808992>,  <21.415743, 36.830376, 23.015085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.890278, 37.101688, 22.808992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185629, 37.370831, 22.790821>,  <21.362839, 37.532318, 22.779919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185629, 37.370831, 22.790821>,  <20.890278, 37.101688, 22.808992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185629, 37.370831, 22.790821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272353, 0.235893, -0.932833,
		-0.616948, 0.701154, 0.357433,
		0.738376, 0.672858, -0.045428,
		21.407141, 37.572689, 22.777193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598955, 37.721840, 22.549004>,  <20.890278, 37.101688, 22.808992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598955, 37.721840, 22.549004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993603, 37.758259, 22.494900>,  <21.230391, 37.780109, 22.462437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993603, 37.758259, 22.494900>,  <20.598955, 37.721840, 22.549004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993603, 37.758259, 22.494900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153395, 0.237117, -0.959294,
		-0.055265, 0.967206, 0.247910,
		0.986618, 0.091043, -0.135260,
		21.289589, 37.785572, 22.454321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694433, 38.375820, 22.111509>,  <20.598955, 37.721840, 22.549004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694433, 38.375820, 22.111509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.042477, 38.186043, 22.058117>,  <21.251303, 38.072178, 22.026081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.042477, 38.186043, 22.058117>,  <20.694433, 38.375820, 22.111509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042477, 38.186043, 22.058117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049311, 0.353267, -0.934222,
		0.490389, 0.806291, 0.330776,
		0.870107, -0.474443, -0.133479,
		21.303509, 38.043709, 22.018074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144287, 38.822716, 21.768311>,  <20.694433, 38.375820, 22.111509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144287, 38.822716, 21.768311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.324244, 38.469475, 21.715042>,  <21.432219, 38.257530, 21.683083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.324244, 38.469475, 21.715042>,  <21.144287, 38.822716, 21.768311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324244, 38.469475, 21.715042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083992, 0.190289, -0.978129,
		0.889124, 0.428869, 0.159783,
		0.449893, -0.883098, -0.133169,
		21.459211, 38.204544, 21.675091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.730511, 38.936893, 21.295151>,  <21.144287, 38.822716, 21.768311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.730511, 38.936893, 21.295151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.663370, 38.542923, 21.278450>,  <21.623085, 38.306541, 21.268429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.663370, 38.542923, 21.278450>,  <21.730511, 38.936893, 21.295151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663370, 38.542923, 21.278450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072488, 0.029909, -0.996921,
		0.983143, -0.170362, 0.066375,
		-0.167852, -0.984927, -0.041754,
		21.613014, 38.247444, 21.265924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251230, 38.708961, 20.897537>,  <21.730511, 38.936893, 21.295151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251230, 38.708961, 20.897537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.949461, 38.446510, 20.890087>,  <21.768400, 38.289040, 20.885616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.949461, 38.446510, 20.890087>,  <22.251230, 38.708961, 20.897537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.949461, 38.446510, 20.890087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152314, -0.147388, -0.977280,
		0.638473, -0.740119, 0.211130,
		-0.754421, -0.656126, -0.018627,
		21.723135, 38.249672, 20.884499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532444, 38.198524, 20.466600>,  <22.251230, 38.708961, 20.897537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532444, 38.198524, 20.466600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.134800, 38.155788, 20.473911>,  <21.896214, 38.130146, 20.478298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.134800, 38.155788, 20.473911>,  <22.532444, 38.198524, 20.466600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.134800, 38.155788, 20.473911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003978, -0.132557, -0.991168,
		0.108323, -0.985400, 0.131351,
		-0.994108, -0.106844, 0.018279,
		21.836567, 38.123737, 20.479395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388346, 37.682758, 20.050112>,  <22.532444, 38.198524, 20.466600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388346, 37.682758, 20.050112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056789, 37.906277, 20.039604>,  <21.857857, 38.040386, 20.033298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.056789, 37.906277, 20.039604>,  <22.388346, 37.682758, 20.050112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056789, 37.906277, 20.039604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057052, -0.131157, -0.989719,
		-0.556496, -0.818868, 0.140595,
		-0.828889, 0.558796, -0.026270,
		21.808123, 38.073914, 20.031723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013500, 37.402802, 19.607359>,  <22.388346, 37.682758, 20.050112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013500, 37.402802, 19.607359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.825077, 37.755642, 19.608242>,  <21.712023, 37.967346, 19.608772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.825077, 37.755642, 19.608242>,  <22.013500, 37.402802, 19.607359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.825077, 37.755642, 19.608242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089705, -0.045413, -0.994933,
		-0.877529, -0.468869, 0.100521,
		-0.471058, 0.882099, 0.002209,
		21.683760, 38.020271, 19.608904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.519838, 37.232914, 19.102289>,  <22.013500, 37.402802, 19.607359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.519838, 37.232914, 19.102289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.515326, 37.631786, 19.131958>,  <21.512617, 37.871109, 19.149759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.515326, 37.631786, 19.131958>,  <21.519838, 37.232914, 19.102289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.515326, 37.631786, 19.131958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086945, 0.072918, -0.993541,
		-0.996149, -0.017658, 0.085877,
		-0.011282, 0.997182, 0.074172,
		21.511942, 37.930943, 19.154209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930986, 37.504436, 18.693888>,  <21.519838, 37.232914, 19.102289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930986, 37.504436, 18.693888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.167778, 37.824207, 18.734844>,  <21.309853, 38.016068, 18.759418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.167778, 37.824207, 18.734844>,  <20.930986, 37.504436, 18.693888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167778, 37.824207, 18.734844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000862, 0.126413, -0.991977,
		-0.805953, 0.587318, 0.074145,
		0.591979, 0.799423, 0.102390,
		21.345371, 38.064034, 18.765560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.705355, 37.961441, 18.191973>,  <20.930986, 37.504436, 18.693888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.705355, 37.961441, 18.191973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.079914, 38.077648, 18.270718>,  <21.304649, 38.147373, 18.317965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.079914, 38.077648, 18.270718>,  <20.705355, 37.961441, 18.191973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.079914, 38.077648, 18.270718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179404, 0.085830, -0.980024,
		-0.301610, 0.953013, 0.028252,
		0.936400, 0.290517, 0.196862,
		21.360834, 38.164803, 18.329777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746689, 38.652119, 17.910671>,  <20.705355, 37.961441, 18.191973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746689, 38.652119, 17.910671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.122463, 38.516983, 17.933735>,  <21.347927, 38.435902, 17.947573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.122463, 38.516983, 17.933735>,  <20.746689, 38.652119, 17.910671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.122463, 38.516983, 17.933735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125839, 0.183535, -0.974925,
		0.318785, 0.923136, 0.214932,
		0.939436, -0.337839, 0.057659,
		21.404295, 38.415630, 17.951033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156363, 39.186607, 17.669115>,  <20.746689, 38.652119, 17.910671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156363, 39.186607, 17.669115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.372126, 38.851078, 17.639671>,  <21.501583, 38.649761, 17.622005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.372126, 38.851078, 17.639671>,  <21.156363, 39.186607, 17.669115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372126, 38.851078, 17.639671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152438, 0.183247, -0.971176,
		0.828133, 0.512637, 0.226713,
		0.539406, -0.838823, -0.073608,
		21.533947, 38.599430, 17.617588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632631, 39.266411, 17.059059>,  <21.156363, 39.186607, 17.669115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632631, 39.266411, 17.059059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640083, 38.871353, 17.121304>,  <21.644554, 38.634319, 17.158649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640083, 38.871353, 17.121304>,  <21.632631, 39.266411, 17.059059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640083, 38.871353, 17.121304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191348, -0.149239, -0.970110,
		0.981345, 0.047849, 0.186203,
		0.018630, -0.987643, 0.155610,
		21.645672, 38.575062, 17.167986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.198965, 39.008583, 16.721550>,  <21.632631, 39.266411, 17.059059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.198965, 39.008583, 16.721550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963314, 38.689476, 16.772919>,  <21.821922, 38.498013, 16.803740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963314, 38.689476, 16.772919>,  <22.198965, 39.008583, 16.721550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963314, 38.689476, 16.772919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236126, -0.321962, -0.916834,
		0.772769, -0.509810, 0.378051,
		-0.589129, -0.797768, 0.128423,
		21.786575, 38.450146, 16.811445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647202, 38.311779, 16.617218>,  <22.198965, 39.008583, 16.721550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647202, 38.311779, 16.617218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.262436, 38.216122, 16.564251>,  <22.031576, 38.158730, 16.532471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.262436, 38.216122, 16.564251>,  <22.647202, 38.311779, 16.617218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262436, 38.216122, 16.564251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249699, -0.571573, -0.781636,
		0.111234, -0.784930, 0.609517,
		-0.961913, -0.239141, -0.132418,
		21.973862, 38.144379, 16.524525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609432, 37.610462, 16.216597>,  <22.647202, 38.311779, 16.617218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609432, 37.610462, 16.216597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237675, 37.739956, 16.145691>,  <22.014620, 37.817654, 16.103148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237675, 37.739956, 16.145691>,  <22.609432, 37.610462, 16.216597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.237675, 37.739956, 16.145691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070622, -0.315426, -0.946319,
		-0.362273, -0.892020, 0.270291,
		-0.929392, 0.323737, -0.177267,
		21.958857, 37.837078, 16.092510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.114101, 27.872963, 25.944201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432690, 27.990532, 26.155575>,  <26.623842, 28.061073, 26.282400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432690, 27.990532, 26.155575>,  <26.114101, 27.872963, 25.944201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432690, 27.990532, 26.155575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076997, 0.916098, -0.393493,
		-0.599755, 0.272718, 0.752276,
		0.796471, 0.293923, 0.528436,
		26.671631, 28.078709, 26.314106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905457, 28.483284, 26.259018>,  <26.114101, 27.872963, 25.944201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905457, 28.483284, 26.259018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305367, 28.491207, 26.256065>,  <26.545313, 28.495960, 26.254293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305367, 28.491207, 26.256065>,  <25.905457, 28.483284, 26.259018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305367, 28.491207, 26.256065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020987, 0.971927, -0.234347,
		0.002533, 0.234449, 0.972125,
		0.999777, 0.019808, -0.007383,
		26.605299, 28.497150, 26.253851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951717, 29.210293, 26.297674>,  <25.905457, 28.483284, 26.259018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951717, 29.210293, 26.297674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334188, 29.103580, 26.249420>,  <26.563671, 29.039553, 26.220469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334188, 29.103580, 26.249420>,  <25.951717, 29.210293, 26.297674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334188, 29.103580, 26.249420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259204, 0.962910, -0.074955,
		0.136156, 0.040402, 0.989863,
		0.956177, -0.266782, -0.120634,
		26.621042, 29.023546, 26.213230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499044, 29.605833, 26.692493>,  <25.951717, 29.210293, 26.297674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499044, 29.605833, 26.692493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759304, 29.448200, 26.432846>,  <26.915461, 29.353621, 26.277058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759304, 29.448200, 26.432846>,  <26.499044, 29.605833, 26.692493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759304, 29.448200, 26.432846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484742, 0.873528, -0.044432,
		0.584532, -0.285746, 0.759389,
		0.650651, -0.394080, -0.649118,
		26.954500, 29.329977, 26.238111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272213, 29.889162, 26.846743>,  <26.499044, 29.605833, 26.692493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272213, 29.889162, 26.846743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225006, 29.815697, 26.456390>,  <27.196682, 29.771618, 26.222179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225006, 29.815697, 26.456390>,  <27.272213, 29.889162, 26.846743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225006, 29.815697, 26.456390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274398, 0.938450, -0.209804,
		0.954347, -0.292540, -0.060356,
		-0.118017, -0.183664, -0.975879,
		27.189602, 29.760597, 26.163628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923479, 30.164333, 26.484562>,  <27.272213, 29.889162, 26.846743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923479, 30.164333, 26.484562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637634, 30.142540, 26.205605>,  <27.466127, 30.129463, 26.038231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637634, 30.142540, 26.205605>,  <27.923479, 30.164333, 26.484562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637634, 30.142540, 26.205605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347843, 0.837288, -0.421846,
		0.606904, -0.544040, -0.579386,
		-0.714614, -0.054485, -0.697394,
		27.423250, 30.126194, 25.996386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339966, 30.274708, 25.933842>,  <27.923479, 30.164333, 26.484562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339966, 30.274708, 25.933842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958279, 30.311172, 25.819889>,  <27.729267, 30.333052, 25.751518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958279, 30.311172, 25.819889>,  <28.339966, 30.274708, 25.933842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958279, 30.311172, 25.819889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263729, 0.705767, -0.657526,
		0.141119, -0.702555, -0.697497,
		-0.954218, 0.091161, -0.284881,
		27.672012, 30.338520, 25.734425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357353, 30.304989, 25.188700>,  <28.339966, 30.274708, 25.933842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357353, 30.304989, 25.188700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013746, 30.470833, 25.308826>,  <27.807583, 30.570339, 25.380903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013746, 30.470833, 25.308826>,  <28.357353, 30.304989, 25.188700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013746, 30.470833, 25.308826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181010, 0.794701, -0.579385,
		-0.478881, -0.443340, -0.757708,
		-0.859016, 0.414609, 0.300318,
		27.756041, 30.595215, 25.398922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044794, 30.585760, 24.638685>,  <28.357353, 30.304989, 25.188700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044794, 30.585760, 24.638685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847891, 30.786343, 24.923283>,  <27.729750, 30.906693, 25.094042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847891, 30.786343, 24.923283>,  <28.044794, 30.585760, 24.638685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847891, 30.786343, 24.923283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095649, 0.843600, -0.528385,
		-0.865179, -0.192048, -0.463231,
		-0.492257, 0.501455, 0.711496,
		27.700214, 30.936779, 25.136732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509417, 31.070360, 24.296745>,  <28.044794, 30.585760, 24.638685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509417, 31.070360, 24.296745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607361, 31.214214, 24.656902>,  <27.666128, 31.300528, 24.872995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607361, 31.214214, 24.656902>,  <27.509417, 31.070360, 24.296745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607361, 31.214214, 24.656902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166622, 0.899237, -0.404487,
		-0.955133, 0.249068, 0.160265,
		0.244862, 0.359636, 0.900391,
		27.680819, 31.322105, 24.927019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235706, 31.728083, 24.259573>,  <27.509417, 31.070360, 24.296745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235706, 31.728083, 24.259573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468792, 31.732731, 24.584610>,  <27.608644, 31.735519, 24.779633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468792, 31.732731, 24.584610>,  <27.235706, 31.728083, 24.259573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468792, 31.732731, 24.584610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201711, 0.966540, -0.158470,
		-0.787245, 0.256252, 0.560875,
		0.582716, 0.011620, 0.812593,
		27.643606, 31.736217, 24.828388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413855, 32.435272, 24.221186>,  <27.235706, 31.728083, 24.259573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413855, 32.435272, 24.221186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383553, 32.667332, 24.545578>,  <27.365372, 32.806568, 24.740213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383553, 32.667332, 24.545578>,  <27.413855, 32.435272, 24.221186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383553, 32.667332, 24.545578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393785, 0.764616, -0.510192,
		-0.916076, 0.280704, -0.286375,
		-0.075754, 0.580145, 0.810983,
		27.360826, 32.841373, 24.788874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772360, 32.947170, 24.215500>,  <27.413855, 32.435272, 24.221186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772360, 32.947170, 24.215500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110126, 33.076477, 24.386360>,  <27.312786, 33.154060, 24.488876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110126, 33.076477, 24.386360>,  <26.772360, 32.947170, 24.215500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110126, 33.076477, 24.386360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204805, 0.541992, -0.815046,
		-0.494989, 0.775722, 0.391461,
		0.844417, 0.323266, 0.427152,
		27.363451, 33.173458, 24.514505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078325, 33.155350, 24.600168>,  <26.772360, 32.947170, 24.215500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078325, 33.155350, 24.600168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687061, 33.170475, 24.681923>,  <25.452303, 33.179550, 24.730976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687061, 33.170475, 24.681923>,  <26.078325, 33.155350, 24.600168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687061, 33.170475, 24.681923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160390, -0.762771, -0.626462,
		0.132210, -0.645562, 0.752177,
		-0.978159, 0.037817, 0.204388,
		25.393614, 33.181820, 24.743238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658215, 33.566383, 25.134809>,  <26.078325, 33.155350, 24.600168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658215, 33.566383, 25.134809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645052, 33.850315, 25.416252>,  <25.637156, 34.020676, 25.585117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645052, 33.850315, 25.416252>,  <25.658215, 33.566383, 25.134809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645052, 33.850315, 25.416252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092024, -0.698845, 0.709328,
		0.995213, 0.088088, -0.042326,
		-0.032904, 0.709828, 0.703606,
		25.635181, 34.063263, 25.627335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306204, 33.626873, 25.353374>,  <25.658215, 33.566383, 25.134809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306204, 33.626873, 25.353374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067060, 33.742317, 25.652512>,  <25.923574, 33.811584, 25.831993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067060, 33.742317, 25.652512>,  <26.306204, 33.626873, 25.353374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067060, 33.742317, 25.652512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467163, -0.632682, 0.617635,
		0.651400, 0.718624, 0.243430,
		-0.597861, 0.288606, 0.747843,
		25.887703, 33.828899, 25.876865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716589, 33.678799, 25.858049>,  <26.306204, 33.626873, 25.353374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716589, 33.678799, 25.858049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376116, 33.643276, 26.064972>,  <26.171833, 33.621964, 26.189125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376116, 33.643276, 26.064972>,  <26.716589, 33.678799, 25.858049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376116, 33.643276, 26.064972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497220, -0.452111, 0.740519,
		0.168116, 0.887530, 0.428985,
		-0.851181, -0.088806, 0.517304,
		26.120762, 33.616634, 26.220163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844507, 33.747822, 26.577749>,  <26.716589, 33.678799, 25.858049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844507, 33.747822, 26.577749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478926, 33.588024, 26.606289>,  <26.259577, 33.492146, 26.623413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478926, 33.588024, 26.606289>,  <26.844507, 33.747822, 26.577749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478926, 33.588024, 26.606289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311921, -0.579066, 0.753252,
		-0.259606, 0.710693, 0.653851,
		-0.913953, -0.399499, 0.071351,
		26.204741, 33.468174, 26.627695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563538, 33.843304, 27.251556>,  <26.844507, 33.747822, 26.577749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563538, 33.843304, 27.251556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362659, 33.518250, 27.133286>,  <26.242132, 33.323215, 27.062323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362659, 33.518250, 27.133286>,  <26.563538, 33.843304, 27.251556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362659, 33.518250, 27.133286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344543, -0.501639, 0.793504,
		-0.793152, 0.296620, 0.531908,
		-0.502195, -0.812634, -0.295677,
		26.212002, 33.274460, 27.044582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166908, 33.538937, 27.929659>,  <26.563538, 33.843304, 27.251556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166908, 33.538937, 27.929659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228756, 33.262459, 27.647285>,  <26.265865, 33.096573, 27.477861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228756, 33.262459, 27.647285>,  <26.166908, 33.538937, 27.929659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228756, 33.262459, 27.647285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228406, -0.670162, 0.706197,
		-0.961209, -0.270432, 0.054252,
		0.154621, -0.691194, -0.705934,
		26.275143, 33.055099, 27.435505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953485, 32.929829, 28.210112>,  <26.166908, 33.538937, 27.929659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953485, 32.929829, 28.210112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169228, 32.783337, 27.906803>,  <26.298674, 32.695442, 27.724819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169228, 32.783337, 27.906803>,  <25.953485, 32.929829, 28.210112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169228, 32.783337, 27.906803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293408, -0.762313, 0.576880,
		-0.789309, -0.533625, -0.303703,
		0.539355, -0.366228, -0.758270,
		26.331034, 32.673470, 27.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718035, 32.173210, 28.084181>,  <25.953485, 32.929829, 28.210112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718035, 32.173210, 28.084181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085682, 32.227467, 27.936222>,  <26.306271, 32.260021, 27.847446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085682, 32.227467, 27.936222>,  <25.718035, 32.173210, 28.084181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085682, 32.227467, 27.936222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334268, -0.765422, 0.549904,
		-0.208537, -0.629071, -0.748854,
		0.919118, 0.135643, -0.369897,
		26.361418, 32.268158, 27.825253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955601, 31.512005, 27.803518>,  <25.718035, 32.173210, 28.084181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955601, 31.512005, 27.803518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311773, 31.692245, 27.829105>,  <26.525476, 31.800390, 27.844458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311773, 31.692245, 27.829105>,  <25.955601, 31.512005, 27.803518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311773, 31.692245, 27.829105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385080, -0.820837, 0.421830,
		0.242587, -0.350976, -0.904416,
		0.890430, 0.450603, 0.063970,
		26.578903, 31.827427, 27.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336632, 31.031021, 27.496965>,  <25.955601, 31.512005, 27.803518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336632, 31.031021, 27.496965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594017, 31.254593, 27.706173>,  <26.748449, 31.388737, 27.831697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594017, 31.254593, 27.706173>,  <26.336632, 31.031021, 27.496965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594017, 31.254593, 27.706173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463056, -0.828288, 0.315465,
		0.609534, 0.039197, -0.791790,
		0.643465, 0.558930, 0.523020,
		26.787056, 31.422272, 27.863079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059052, 30.971260, 27.261675>,  <26.336632, 31.031021, 27.496965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059052, 30.971260, 27.261675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114218, 31.094749, 27.638115>,  <27.147318, 31.168844, 27.863979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114218, 31.094749, 27.638115>,  <27.059052, 30.971260, 27.261675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114218, 31.094749, 27.638115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571244, -0.801012, 0.179056,
		0.809111, 0.512903, -0.286827,
		0.137914, 0.308724, 0.941100,
		27.155592, 31.187366, 27.920444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831755, 30.949509, 27.536261>,  <27.059052, 30.971260, 27.261675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831755, 30.949509, 27.536261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580944, 30.939716, 27.847706>,  <27.430458, 30.933842, 28.034573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580944, 30.939716, 27.847706>,  <27.831755, 30.949509, 27.536261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580944, 30.939716, 27.847706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466635, -0.812142, 0.350254,
		0.623768, 0.582946, 0.520660,
		-0.627029, -0.024481, 0.778611,
		27.392836, 30.932373, 28.081289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260538, 30.800270, 28.089556>,  <27.831755, 30.949509, 27.536261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260538, 30.800270, 28.089556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886530, 30.737919, 28.216957>,  <27.662125, 30.700508, 28.293398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886530, 30.737919, 28.216957>,  <28.260538, 30.800270, 28.089556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886530, 30.737919, 28.216957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322244, -0.748363, 0.579751,
		0.147986, 0.644713, 0.749963,
		-0.935018, -0.155876, 0.318502,
		27.606024, 30.691156, 28.312508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296923, 30.604870, 28.759827>,  <28.260538, 30.800270, 28.089556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296923, 30.604870, 28.759827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949986, 30.464081, 28.619068>,  <27.741823, 30.379608, 28.534613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949986, 30.464081, 28.619068>,  <28.296923, 30.604870, 28.759827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949986, 30.464081, 28.619068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280971, -0.929858, 0.237529,
		-0.410818, 0.107146, 0.905399,
		-0.867343, -0.351972, -0.351898,
		27.689783, 30.358490, 28.513498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609262, 30.978918, 29.238352>,  <28.296923, 30.604870, 28.759827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609262, 30.978918, 29.238352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960524, 30.905983, 29.415260>,  <29.171280, 30.862223, 29.521404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960524, 30.905983, 29.415260>,  <28.609262, 30.978918, 29.238352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960524, 30.905983, 29.415260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446986, 0.642153, -0.622770,
		-0.170450, 0.744575, 0.645410,
		0.878152, -0.182338, 0.442270,
		29.223969, 30.851282, 29.547941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935213, 31.532642, 29.355183>,  <28.609262, 30.978918, 29.238352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935213, 31.532642, 29.355183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260557, 31.301231, 29.330692>,  <29.455765, 31.162384, 29.315998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260557, 31.301231, 29.330692>,  <28.935213, 31.532642, 29.355183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260557, 31.301231, 29.330692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432674, 0.671920, -0.601096,
		0.388890, 0.462417, 0.796828,
		0.813362, -0.578527, -0.061227,
		29.504566, 31.127674, 29.312325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367828, 32.007504, 29.161461>,  <28.935213, 31.532642, 29.355183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367828, 32.007504, 29.161461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590267, 31.680649, 29.100742>,  <29.723730, 31.484535, 29.064310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590267, 31.680649, 29.100742>,  <29.367828, 32.007504, 29.161461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590267, 31.680649, 29.100742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583194, 0.513776, -0.629221,
		0.592151, 0.261379, 0.762259,
		0.556096, -0.817138, -0.151798,
		29.757095, 31.435507, 29.055202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149612, 32.157467, 29.305115>,  <29.367828, 32.007504, 29.161461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149612, 32.157467, 29.305115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083921, 31.869324, 29.035564>,  <30.044506, 31.696438, 28.873835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083921, 31.869324, 29.035564>,  <30.149612, 32.157467, 29.305115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083921, 31.869324, 29.035564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650188, 0.434696, -0.623134,
		0.741812, -0.540482, 0.396980,
		-0.164227, -0.720360, -0.673877,
		30.034653, 31.653215, 28.833401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727402, 32.047184, 29.088223>,  <30.149612, 32.157467, 29.305115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727402, 32.047184, 29.088223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518606, 31.880638, 28.790451>,  <30.393330, 31.780712, 28.611788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518606, 31.880638, 28.790451>,  <30.727402, 32.047184, 29.088223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518606, 31.880638, 28.790451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499800, 0.557929, -0.662507,
		0.691180, -0.717885, -0.083134,
		-0.521987, -0.416361, -0.744428,
		30.362011, 31.755730, 28.567123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162930, 31.640074, 28.715275>,  <30.727402, 32.047184, 29.088223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162930, 31.640074, 28.715275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855627, 31.743385, 28.480984>,  <30.671246, 31.805372, 28.340410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855627, 31.743385, 28.480984>,  <31.162930, 31.640074, 28.715275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855627, 31.743385, 28.480984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625206, 0.499243, -0.599895,
		0.137479, -0.827072, -0.545024,
		-0.768256, 0.258280, -0.585726,
		30.625151, 31.820869, 28.305265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445362, 31.629850, 28.094925>,  <31.162930, 31.640074, 28.715275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445362, 31.629850, 28.094925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110582, 31.827759, 28.001362>,  <30.909714, 31.946505, 27.945225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110582, 31.827759, 28.001362>,  <31.445362, 31.629850, 28.094925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110582, 31.827759, 28.001362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525210, 0.606008, -0.597418,
		-0.153838, -0.622860, -0.767059,
		-0.836952, 0.494773, -0.233905,
		30.859497, 31.976191, 27.931190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613192, 31.682474, 27.354624>,  <31.445362, 31.629850, 28.094925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613192, 31.682474, 27.354624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329901, 31.954994, 27.428642>,  <31.159925, 32.118507, 27.473053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329901, 31.954994, 27.428642>,  <31.613192, 31.682474, 27.354624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329901, 31.954994, 27.428642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501975, 0.670272, -0.546586,
		-0.496420, -0.294220, -0.816702,
		-0.708229, 0.681300, 0.185045,
		31.117432, 32.159386, 27.484156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445082, 32.090256, 26.746845>,  <31.613192, 31.682474, 27.354624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445082, 32.090256, 26.746845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334871, 32.320793, 27.054588>,  <31.268745, 32.459118, 27.239233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334871, 32.320793, 27.054588>,  <31.445082, 32.090256, 26.746845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334871, 32.320793, 27.054588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520318, 0.762375, -0.384778,
		-0.808303, 0.294292, -0.509940,
		-0.275528, 0.576348, 0.769355,
		31.252213, 32.493698, 27.285395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268988, 32.661976, 26.317335>,  <31.445082, 32.090256, 26.746845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268988, 32.661976, 26.317335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269156, 32.818085, 26.685616>,  <31.269257, 32.911751, 26.906584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269156, 32.818085, 26.685616>,  <31.268988, 32.661976, 26.317335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269156, 32.818085, 26.685616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304378, 0.876965, -0.371870,
		-0.952551, 0.280397, -0.118421,
		0.000420, 0.390270, 0.920700,
		31.269281, 32.935165, 26.961826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015417, 33.328621, 26.205101>,  <31.268988, 32.661976, 26.317335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015417, 33.328621, 26.205101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248365, 33.310722, 26.529778>,  <31.388134, 33.299984, 26.724583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248365, 33.310722, 26.529778>,  <31.015417, 33.328621, 26.205101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248365, 33.310722, 26.529778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567226, 0.737611, -0.366312,
		-0.582320, 0.673742, 0.454946,
		0.582373, -0.044746, 0.811689,
		31.423077, 33.297298, 26.773285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200226, 34.052536, 26.418983>,  <31.015417, 33.328621, 26.205101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200226, 34.052536, 26.418983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487894, 33.834538, 26.591389>,  <31.660496, 33.703739, 26.694832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487894, 33.834538, 26.591389>,  <31.200226, 34.052536, 26.418983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487894, 33.834538, 26.591389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663421, 0.722990, -0.192766,
		-0.206560, 0.424574, 0.881516,
		0.719171, -0.544998, 0.431012,
		31.703646, 33.671040, 26.720692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.564457, 29.545984, 32.402508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.857187, 29.274517, 32.427307>,  <28.032825, 29.111637, 32.442188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.857187, 29.274517, 32.427307>,  <27.564457, 29.545984, 32.402508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857187, 29.274517, 32.427307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630709, 0.640022, -0.438838,
		0.258144, 0.360255, 0.896425,
		0.731825, -0.678667, 0.061998,
		28.076735, 29.070917, 32.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087755, 29.929323, 32.581760>,  <27.564457, 29.545984, 32.402508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087755, 29.929323, 32.581760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.253933, 29.590080, 32.450233>,  <28.353640, 29.386534, 32.371319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.253933, 29.590080, 32.450233>,  <28.087755, 29.929323, 32.581760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253933, 29.590080, 32.450233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583261, 0.525764, -0.619176,
		0.698007, 0.065448, 0.713094,
		0.415443, -0.848109, -0.328814,
		28.378565, 29.335648, 32.351589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776211, 30.070368, 32.566250>,  <28.087755, 29.929323, 32.581760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776211, 30.070368, 32.566250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.764326, 29.768169, 32.304459>,  <28.757195, 29.586851, 32.147385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.764326, 29.768169, 32.304459>,  <28.776211, 30.070368, 32.566250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764326, 29.768169, 32.304459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596548, 0.511971, -0.618075,
		0.802027, -0.408792, 0.435479,
		-0.029712, -0.755497, -0.654478,
		28.755413, 29.541521, 32.108116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531054, 29.994492, 32.204590>,  <28.776211, 30.070368, 32.566250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531054, 29.994492, 32.204590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.248270, 29.837925, 31.968960>,  <29.078600, 29.743984, 31.827583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.248270, 29.837925, 31.968960>,  <29.531054, 29.994492, 32.204590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248270, 29.837925, 31.968960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364092, 0.512637, -0.777586,
		0.606341, -0.764196, -0.219900,
		-0.706957, -0.391418, -0.589071,
		29.036182, 29.720501, 31.792238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915661, 29.720167, 31.654987>,  <29.531054, 29.994492, 32.204590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915661, 29.720167, 31.654987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.543093, 29.783863, 31.524086>,  <29.319551, 29.822081, 31.445545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.543093, 29.783863, 31.524086>,  <29.915661, 29.720167, 31.654987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543093, 29.783863, 31.524086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362201, 0.493363, -0.790824,
		0.035525, -0.855123, -0.517206,
		-0.931423, 0.159239, -0.327253,
		29.263666, 29.831635, 31.425909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964872, 29.608931, 30.898563>,  <29.915661, 29.720167, 31.654987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964872, 29.608931, 30.898563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.618151, 29.799091, 30.958755>,  <29.410118, 29.913187, 30.994871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.618151, 29.799091, 30.958755>,  <29.964872, 29.608931, 30.898563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618151, 29.799091, 30.958755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045797, 0.376400, -0.925325,
		-0.496541, -0.795184, -0.348037,
		-0.866804, 0.475400, 0.150481,
		29.358109, 29.941711, 31.003901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610367, 29.444391, 30.319599>,  <29.964872, 29.608931, 30.898563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610367, 29.444391, 30.319599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.449476, 29.781891, 30.461754>,  <29.352942, 29.984390, 30.547047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.449476, 29.781891, 30.461754>,  <29.610367, 29.444391, 30.319599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449476, 29.781891, 30.461754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128782, 0.436452, -0.890463,
		-0.906437, -0.312400, -0.284213,
		-0.402226, 0.843751, 0.355385,
		29.328808, 30.035017, 30.568369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082018, 29.595592, 29.906382>,  <29.610367, 29.444391, 30.319599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082018, 29.595592, 29.906382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.148464, 29.950336, 30.078838>,  <29.188332, 30.163183, 30.182312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.148464, 29.950336, 30.078838>,  <29.082018, 29.595592, 29.906382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148464, 29.950336, 30.078838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038903, 0.430984, -0.901521,
		-0.985339, 0.166530, 0.037092,
		0.166116, 0.886860, 0.431144,
		29.198299, 30.216394, 30.208181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637131, 30.107059, 29.531929>,  <29.082018, 29.595592, 29.906382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637131, 30.107059, 29.531929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.930685, 30.300293, 29.722942>,  <29.106817, 30.416233, 29.837551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.930685, 30.300293, 29.722942>,  <28.637131, 30.107059, 29.531929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930685, 30.300293, 29.722942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213189, 0.503682, -0.837171,
		-0.644950, 0.716194, 0.266657,
		0.733887, 0.483085, 0.477534,
		29.150850, 30.445219, 29.866203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829182, 30.320623, 29.490444>,  <28.637131, 30.107059, 29.531929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829182, 30.320623, 29.490444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.668987, 30.154442, 29.163761>,  <27.572870, 30.054733, 28.967752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.668987, 30.154442, 29.163761>,  <27.829182, 30.320623, 29.490444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668987, 30.154442, 29.163761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002904, -0.891878, 0.452268,
		-0.916298, 0.178755, 0.358392,
		-0.400487, -0.415453, -0.816707,
		27.548841, 30.029806, 28.918749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226330, 29.997536, 29.727306>,  <27.829182, 30.320623, 29.490444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226330, 29.997536, 29.727306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.302885, 29.811768, 29.381432>,  <27.348818, 29.700308, 29.173906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.302885, 29.811768, 29.381432>,  <27.226330, 29.997536, 29.727306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302885, 29.811768, 29.381432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080488, -0.870580, 0.485398,
		-0.978209, -0.162496, -0.129238,
		0.191387, -0.464419, -0.864689,
		27.360302, 29.672441, 29.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693369, 29.477617, 29.692768>,  <27.226330, 29.997536, 29.727306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693369, 29.477617, 29.692768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.990005, 29.372070, 29.446056>,  <27.167988, 29.308743, 29.298029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.990005, 29.372070, 29.446056>,  <26.693369, 29.477617, 29.692768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990005, 29.372070, 29.446056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034599, -0.933217, 0.357644,
		-0.669961, -0.243885, -0.701194,
		0.741590, -0.263868, -0.616780,
		27.212482, 29.292910, 29.261023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475063, 28.751528, 29.299171>,  <26.693369, 29.477617, 29.692768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475063, 28.751528, 29.299171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.873480, 28.786156, 29.307232>,  <27.112530, 28.806932, 29.312067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.873480, 28.786156, 29.307232>,  <26.475063, 28.751528, 29.299171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873480, 28.786156, 29.307232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077129, -0.954466, 0.288176,
		0.044180, -0.285481, -0.957366,
		0.996042, 0.086572, 0.020150,
		27.172293, 28.812128, 29.313276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703796, 28.094069, 29.011860>,  <26.475063, 28.751528, 29.299171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703796, 28.094069, 29.011860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.996689, 28.259682, 29.228161>,  <27.172424, 28.359049, 29.357941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.996689, 28.259682, 29.228161>,  <26.703796, 28.094069, 29.011860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996689, 28.259682, 29.228161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184093, -0.884759, 0.428148,
		0.655702, -0.213956, -0.724071,
		0.732233, 0.414033, 0.540750,
		27.216358, 28.383892, 29.390387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248596, 27.671879, 28.819725>,  <26.703796, 28.094069, 29.011860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248596, 27.671879, 28.819725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.354498, 27.860100, 29.156410>,  <27.418039, 27.973032, 29.358421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.354498, 27.860100, 29.156410>,  <27.248596, 27.671879, 28.819725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354498, 27.860100, 29.156410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336392, -0.863098, 0.376698,
		0.903740, 0.183414, -0.386799,
		0.264754, 0.470554, 0.841715,
		27.433924, 28.001266, 29.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995964, 27.563841, 28.825626>,  <27.248596, 27.671879, 28.819725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995964, 27.563841, 28.825626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.836027, 27.638096, 29.184662>,  <27.740065, 27.682650, 29.400084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.836027, 27.638096, 29.184662>,  <27.995964, 27.563841, 28.825626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836027, 27.638096, 29.184662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237631, -0.924798, 0.297121,
		0.885245, 0.332096, 0.325660,
		-0.399842, 0.185638, 0.897588,
		27.716074, 27.693787, 29.453938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437641, 27.232225, 29.283590>,  <27.995964, 27.563841, 28.825626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437641, 27.232225, 29.283590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.098703, 27.272659, 29.492123>,  <27.895340, 27.296921, 29.617243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.098703, 27.272659, 29.492123>,  <28.437641, 27.232225, 29.283590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098703, 27.272659, 29.492123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120149, -0.919765, 0.373627,
		0.517272, 0.379229, 0.767213,
		-0.847345, 0.101087, 0.521333,
		27.844500, 27.302986, 29.648523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579132, 27.018099, 29.963959>,  <28.437641, 27.232225, 29.283590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579132, 27.018099, 29.963959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.179817, 27.014511, 29.987083>,  <27.940228, 27.012360, 30.000957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.179817, 27.014511, 29.987083>,  <28.579132, 27.018099, 29.963959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179817, 27.014511, 29.987083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038372, -0.846309, 0.531308,
		0.044162, 0.532616, 0.845204,
		-0.998287, -0.008968, 0.057812,
		27.880331, 27.011820, 30.004427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487514, 26.767511, 30.649775>,  <28.579132, 27.018099, 29.963959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487514, 26.767511, 30.649775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.154217, 26.706184, 30.437286>,  <27.954239, 26.669388, 30.309793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.154217, 26.706184, 30.437286>,  <28.487514, 26.767511, 30.649775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154217, 26.706184, 30.437286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184968, -0.828130, 0.529138,
		-0.521048, 0.539160, 0.661676,
		-0.833244, -0.153318, -0.531223,
		27.904243, 26.660189, 30.277920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062000, 26.536066, 31.128321>,  <28.487514, 26.767511, 30.649775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062000, 26.536066, 31.128321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.875532, 26.428604, 30.791153>,  <27.763651, 26.364128, 30.588852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.875532, 26.428604, 30.791153>,  <28.062000, 26.536066, 31.128321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875532, 26.428604, 30.791153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374472, -0.803298, 0.463124,
		-0.801534, 0.531543, 0.273869,
		-0.466169, -0.268654, -0.842918,
		27.735682, 26.348007, 30.538277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388521, 26.305725, 31.327864>,  <28.062000, 26.536066, 31.128321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388521, 26.305725, 31.327864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.420805, 26.145966, 30.962578>,  <27.440176, 26.050110, 30.743406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.420805, 26.145966, 30.962578>,  <27.388521, 26.305725, 31.327864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420805, 26.145966, 30.962578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348944, -0.869548, 0.349462,
		-0.933661, 0.290457, -0.209550,
		0.080710, -0.399400, -0.913217,
		27.445019, 26.026146, 30.688612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725662, 26.056835, 31.079336>,  <27.388521, 26.305725, 31.327864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725662, 26.056835, 31.079336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.002623, 25.843060, 30.885448>,  <27.168798, 25.714794, 30.769115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.002623, 25.843060, 30.885448>,  <26.725662, 26.056835, 31.079336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002623, 25.843060, 30.885448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522563, -0.834688, 0.173849,
		-0.497501, 0.132923, -0.857219,
		0.692402, -0.534441, -0.484719,
		27.210342, 25.682728, 30.740032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279842, 25.716419, 30.643349>,  <26.725662, 26.056835, 31.079336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279842, 25.716419, 30.643349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.638290, 25.539318, 30.631092>,  <26.853359, 25.433058, 30.623739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.638290, 25.539318, 30.631092>,  <26.279842, 25.716419, 30.643349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638290, 25.539318, 30.631092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410029, -0.852354, 0.324606,
		-0.169836, -0.278323, -0.945353,
		0.896120, -0.442752, -0.030640,
		26.907127, 25.406492, 30.621901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.303585, 22.853018, 30.529058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063602, 23.101528, 30.730679>,  <31.919613, 23.250635, 30.851650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063602, 23.101528, 30.730679>,  <32.303585, 22.853018, 30.529058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063602, 23.101528, 30.730679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016288, 0.620423, -0.784098,
		-0.799867, -0.478635, -0.362108,
		-0.599957, 0.621276, 0.504051,
		31.883615, 23.287910, 30.881893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782755, 23.164469, 29.959734>,  <32.303585, 22.853018, 30.529058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782755, 23.164469, 29.959734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.797495, 23.423698, 30.264008>,  <31.806339, 23.579237, 30.446571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.797495, 23.423698, 30.264008>,  <31.782755, 23.164469, 29.959734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797495, 23.423698, 30.264008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102702, 0.759627, -0.642199,
		-0.994029, -0.054457, 0.094553,
		0.036853, 0.648075, 0.760685,
		31.808550, 23.618120, 30.492212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222967, 23.733620, 29.747221>,  <31.782755, 23.164469, 29.959734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222967, 23.733620, 29.747221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472624, 23.862946, 30.031731>,  <31.622417, 23.940540, 30.202436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472624, 23.862946, 30.031731>,  <31.222967, 23.733620, 29.747221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472624, 23.862946, 30.031731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077540, 0.880237, -0.468157,
		-0.777452, 0.347349, 0.524324,
		0.624144, 0.323314, 0.711275,
		31.659866, 23.959940, 30.245113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966211, 24.286404, 30.115725>,  <31.222967, 23.733620, 29.747221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966211, 24.286404, 30.115725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.359621, 24.317799, 30.180862>,  <31.595667, 24.336636, 30.219946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.359621, 24.317799, 30.180862>,  <30.966211, 24.286404, 30.115725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359621, 24.317799, 30.180862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034237, 0.965403, -0.258504,
		-0.177502, 0.248670, 0.952185,
		0.983525, 0.078485, 0.162847,
		31.654678, 24.341345, 30.229717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026859, 24.979897, 30.400238>,  <30.966211, 24.286404, 30.115725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026859, 24.979897, 30.400238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378939, 24.871410, 30.244446>,  <31.590185, 24.806318, 30.150970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378939, 24.871410, 30.244446>,  <31.026859, 24.979897, 30.400238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378939, 24.871410, 30.244446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174786, 0.948199, -0.265271,
		0.441252, 0.165415, 0.882006,
		0.880197, -0.271214, -0.389483,
		31.642998, 24.790047, 30.127602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448469, 25.555386, 30.481476>,  <31.026859, 24.979897, 30.400238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448469, 25.555386, 30.481476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647688, 25.342392, 30.207714>,  <31.767220, 25.214596, 30.043457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.647688, 25.342392, 30.207714>,  <31.448469, 25.555386, 30.481476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647688, 25.342392, 30.207714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230171, 0.842123, -0.487699,
		0.836046, 0.085367, 0.541978,
		0.498045, -0.532486, -0.684405,
		31.797102, 25.182646, 30.002392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920668, 26.034483, 30.406527>,  <31.448469, 25.555386, 30.481476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920668, 26.034483, 30.406527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980024, 25.790932, 30.094822>,  <32.015640, 25.644800, 29.907799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980024, 25.790932, 30.094822>,  <31.920668, 26.034483, 30.406527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980024, 25.790932, 30.094822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228605, 0.787761, -0.571990,
		0.962143, -0.093264, 0.256092,
		0.148393, -0.608880, -0.779259,
		32.024544, 25.608269, 29.861044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544037, 26.150785, 30.069820>,  <31.920668, 26.034483, 30.406527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544037, 26.150785, 30.069820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329605, 25.988018, 29.773972>,  <32.200947, 25.890358, 29.596462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329605, 25.988018, 29.773972>,  <32.544037, 26.150785, 30.069820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329605, 25.988018, 29.773972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301153, 0.726318, -0.617875,
		0.788623, -0.553968, -0.266819,
		-0.536078, -0.406917, -0.739621,
		32.168781, 25.865944, 29.552086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005085, 26.126247, 29.568741>,  <32.544037, 26.150785, 30.069820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005085, 26.126247, 29.568741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659306, 26.089870, 29.370972>,  <32.451839, 26.068045, 29.252310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659306, 26.089870, 29.370972>,  <33.005085, 26.126247, 29.568741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659306, 26.089870, 29.370972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349860, 0.597428, -0.721580,
		0.361005, -0.796750, -0.484630,
		-0.864450, -0.090941, -0.494425,
		32.399971, 26.062588, 29.222645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151691, 26.176149, 28.851662>,  <33.005085, 26.126247, 29.568741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151691, 26.176149, 28.851662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764576, 26.240589, 28.774273>,  <32.532307, 26.279253, 28.727840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764576, 26.240589, 28.774273>,  <33.151691, 26.176149, 28.851662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764576, 26.240589, 28.774273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249860, 0.520341, -0.816588,
		-0.030880, -0.838626, -0.543832,
		-0.967789, 0.161099, -0.193471,
		32.474239, 26.288919, 28.716232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020645, 26.019073, 28.085388>,  <33.151691, 26.176149, 28.851662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020645, 26.019073, 28.085388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728485, 26.266930, 28.200321>,  <32.553188, 26.415644, 28.269281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728485, 26.266930, 28.200321>,  <33.020645, 26.019073, 28.085388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728485, 26.266930, 28.200321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201523, 0.597460, -0.776164,
		-0.652613, -0.509006, -0.561257,
		-0.730400, 0.619641, 0.287334,
		32.509365, 26.452822, 28.286522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675510, 26.191957, 27.495665>,  <33.020645, 26.019073, 28.085388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675510, 26.191957, 27.495665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572952, 26.470692, 27.763599>,  <32.511417, 26.637932, 27.924360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572952, 26.470692, 27.763599>,  <32.675510, 26.191957, 27.495665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572952, 26.470692, 27.763599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277606, 0.716893, -0.639530,
		-0.925850, 0.021980, -0.377252,
		-0.256393, 0.696836, 0.669837,
		32.496033, 26.679743, 27.964550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125137, 26.661079, 27.098143>,  <32.675510, 26.191957, 27.495665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125137, 26.661079, 27.098143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295254, 26.858845, 27.401375>,  <32.397324, 26.977505, 27.583313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295254, 26.858845, 27.401375>,  <32.125137, 26.661079, 27.098143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295254, 26.858845, 27.401375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210211, 0.760736, -0.614078,
		-0.880307, 0.420517, 0.219601,
		0.425289, 0.494415, 0.758078,
		32.422840, 27.007170, 27.628798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784502, 27.243706, 27.069983>,  <32.125137, 26.661079, 27.098143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784502, 27.243706, 27.069983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122250, 27.298145, 27.277256>,  <32.324898, 27.330809, 27.401621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122250, 27.298145, 27.277256>,  <31.784502, 27.243706, 27.069983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122250, 27.298145, 27.277256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356336, 0.579588, -0.732872,
		-0.400077, 0.803464, 0.440890,
		0.844371, 0.136100, 0.518183,
		32.375561, 27.338976, 27.432711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124258, 27.375496, 27.076941>,  <31.784502, 27.243706, 27.069983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124258, 27.375496, 27.076941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937485, 27.203575, 26.767815>,  <30.825420, 27.100422, 26.582338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937485, 27.203575, 26.767815>,  <31.124258, 27.375496, 27.076941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937485, 27.203575, 26.767815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040313, -0.883374, 0.466932,
		-0.883374, 0.186871, 0.429803,
		-0.466932, -0.429803, -0.772816,
		30.797405, 27.074635, 26.535971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842415, 26.895706, 27.427338>,  <31.124258, 27.375496, 27.076941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842415, 26.895706, 27.427338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758001, 26.768494, 27.057621>,  <30.707354, 26.692165, 26.835791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758001, 26.768494, 27.057621>,  <30.842415, 26.895706, 27.427338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758001, 26.768494, 27.057621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252888, -0.895632, 0.365911,
		-0.944200, 0.310962, 0.108582,
		-0.211033, -0.318034, -0.924294,
		30.694691, 26.673084, 26.780333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084530, 26.621454, 27.317884>,  <30.842415, 26.895706, 27.427338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084530, 26.621454, 27.317884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308189, 26.438801, 27.041092>,  <30.442385, 26.329208, 26.875015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308189, 26.438801, 27.041092>,  <30.084530, 26.621454, 27.317884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308189, 26.438801, 27.041092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279789, -0.889618, 0.360969,
		-0.780429, -0.008226, -0.625190,
		0.559150, -0.456632, -0.691982,
		30.475933, 26.301811, 26.833498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648979, 26.061293, 27.020279>,  <30.084530, 26.621454, 27.317884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648979, 26.061293, 27.020279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.031307, 25.962879, 26.955933>,  <30.260704, 25.903831, 26.917324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.031307, 25.962879, 26.955933>,  <29.648979, 26.061293, 27.020279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031307, 25.962879, 26.955933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125629, -0.836645, 0.533145,
		-0.265762, -0.489379, -0.830589,
		0.955818, -0.246036, -0.160868,
		30.318052, 25.889069, 26.907673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649624, 25.244091, 26.862545>,  <29.648979, 26.061293, 27.020279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649624, 25.244091, 26.862545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.030912, 25.321716, 26.955242>,  <30.259686, 25.368292, 27.010860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.030912, 25.321716, 26.955242>,  <29.649624, 25.244091, 26.862545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030912, 25.321716, 26.955242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061923, -0.875796, 0.478693,
		0.295857, -0.441951, -0.846846,
		0.953223, 0.194064, 0.231743,
		30.316879, 25.379936, 27.024765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891512, 24.598326, 26.631516>,  <29.649624, 25.244091, 26.862545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891512, 24.598326, 26.631516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.159679, 24.780651, 26.865704>,  <30.320580, 24.890047, 27.006216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.159679, 24.780651, 26.865704>,  <29.891512, 24.598326, 26.631516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159679, 24.780651, 26.865704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034748, -0.807479, 0.588872,
		0.741171, -0.374445, -0.557186,
		0.670417, 0.455816, 0.585469,
		30.360804, 24.917397, 27.041344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493471, 24.101925, 26.771542>,  <29.891512, 24.598326, 26.631516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493471, 24.101925, 26.771542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590809, 24.363094, 27.058449>,  <30.649212, 24.519796, 27.230593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590809, 24.363094, 27.058449>,  <30.493471, 24.101925, 26.771542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590809, 24.363094, 27.058449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056516, -0.728697, 0.682500,
		0.968292, -0.206621, -0.140425,
		0.243346, 0.652923, 0.717269,
		30.663813, 24.558971, 27.273630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999517, 23.778580, 27.128706>,  <30.493471, 24.101925, 26.771542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999517, 23.778580, 27.128706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816006, 24.041843, 27.367485>,  <30.705898, 24.199802, 27.510752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816006, 24.041843, 27.367485>,  <30.999517, 23.778580, 27.128706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816006, 24.041843, 27.367485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155126, -0.720832, 0.675528,
		0.874905, 0.217315, 0.432800,
		-0.458778, 0.658161, 0.596948,
		30.678371, 24.239292, 27.546570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315676, 23.821173, 27.737560>,  <30.999517, 23.778580, 27.128706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315676, 23.821173, 27.737560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938288, 23.929150, 27.814495>,  <30.711855, 23.993937, 27.860655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938288, 23.929150, 27.814495>,  <31.315676, 23.821173, 27.737560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938288, 23.929150, 27.814495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124126, -0.825801, 0.550132,
		0.307334, 0.495160, 0.812627,
		-0.943471, 0.269943, 0.192335,
		30.655247, 24.010132, 27.872196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280212, 23.749878, 28.527321>,  <31.315676, 23.821173, 27.737560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280212, 23.749878, 28.527321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902395, 23.802639, 28.407024>,  <30.675705, 23.834295, 28.334846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902395, 23.802639, 28.407024>,  <31.280212, 23.749878, 28.527321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902395, 23.802639, 28.407024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306314, -0.684000, 0.662055,
		-0.118379, 0.717458, 0.686469,
		-0.944541, 0.131902, -0.300739,
		30.619034, 23.842209, 28.316803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808565, 23.976978, 29.132807>,  <31.280212, 23.749878, 28.527321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808565, 23.976978, 29.132807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.570890, 23.816383, 28.854023>,  <30.428286, 23.720026, 28.686752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.570890, 23.816383, 28.854023>,  <30.808565, 23.976978, 29.132807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570890, 23.816383, 28.854023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335862, -0.663504, 0.668550,
		-0.730848, 0.631325, 0.259402,
		-0.594187, -0.401485, -0.696959,
		30.392633, 23.695938, 28.644936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151651, 23.965874, 29.388691>,  <30.808565, 23.976978, 29.132807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151651, 23.965874, 29.388691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087168, 23.688274, 29.108013>,  <30.048477, 23.521715, 28.939606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087168, 23.688274, 29.108013>,  <30.151651, 23.965874, 29.388691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087168, 23.688274, 29.108013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355496, -0.622433, 0.697281,
		-0.920670, 0.361858, -0.146372,
		-0.161209, -0.694000, -0.701694,
		30.038805, 23.480074, 28.897505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535213, 23.657686, 29.616184>,  <30.151651, 23.965874, 29.388691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535213, 23.657686, 29.616184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.698130, 23.377934, 29.381245>,  <29.795879, 23.210081, 29.240282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.698130, 23.377934, 29.381245>,  <29.535213, 23.657686, 29.616184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698130, 23.377934, 29.381245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320831, -0.711684, 0.624959,
		-0.855092, -0.066100, -0.514245,
		0.407290, -0.699384, -0.587348,
		29.820316, 23.168118, 29.205040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929668, 23.350792, 29.295984>,  <29.535213, 23.657686, 29.616184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929668, 23.350792, 29.295984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.222689, 23.079052, 29.278755>,  <29.398500, 22.916008, 29.268417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.222689, 23.079052, 29.278755>,  <28.929668, 23.350792, 29.295984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222689, 23.079052, 29.278755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584280, -0.659978, 0.472278,
		-0.349270, -0.320799, -0.880397,
		0.732549, -0.679350, -0.043074,
		29.442453, 22.875246, 29.265833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290293, 23.098536, 28.880779>,  <28.929668, 23.350792, 29.295984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290293, 23.098536, 28.880779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.897572, 23.086674, 28.805752>,  <27.661940, 23.079556, 28.760735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.897572, 23.086674, 28.805752>,  <28.290293, 23.098536, 28.880779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897572, 23.086674, 28.805752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107897, 0.725693, -0.679506,
		0.156269, -0.687379, -0.709288,
		-0.981803, -0.029655, -0.187569,
		27.603031, 23.077778, 28.749481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196850, 23.082512, 28.124273>,  <28.290293, 23.098536, 28.880779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196850, 23.082512, 28.124273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.855503, 23.210472, 28.288918>,  <27.650694, 23.287249, 28.387705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.855503, 23.210472, 28.288918>,  <28.196850, 23.082512, 28.124273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855503, 23.210472, 28.288918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019424, 0.808539, -0.588122,
		-0.520947, -0.493889, -0.696195,
		-0.853368, 0.319903, 0.411613,
		27.599493, 23.306442, 28.412401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893736, 23.218323, 27.567244>,  <28.196850, 23.082512, 28.124273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893736, 23.218323, 27.567244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.715981, 23.423355, 27.861122>,  <27.609327, 23.546375, 28.037449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.715981, 23.423355, 27.861122>,  <27.893736, 23.218323, 27.567244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715981, 23.423355, 27.861122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195883, 0.744680, -0.638029,
		-0.874155, -0.427449, -0.230523,
		-0.444390, 0.512581, 0.734696,
		27.582663, 23.577129, 28.081532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245623, 23.522816, 27.274538>,  <27.893736, 23.218323, 27.567244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245623, 23.522816, 27.274538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.289803, 23.739944, 27.607559>,  <27.316311, 23.870222, 27.807371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.289803, 23.739944, 27.607559>,  <27.245623, 23.522816, 27.274538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289803, 23.739944, 27.607559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195812, 0.833145, -0.517231,
		-0.974402, -0.105896, 0.198312,
		0.110450, 0.542822, 0.832553,
		27.322937, 23.902792, 27.857325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632154, 23.927799, 27.262220>,  <27.245623, 23.522816, 27.274538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632154, 23.927799, 27.262220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.900131, 24.122898, 27.486107>,  <27.060917, 24.239958, 27.620440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.900131, 24.122898, 27.486107>,  <26.632154, 23.927799, 27.262220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900131, 24.122898, 27.486107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279746, 0.864190, -0.418232,
		-0.687692, 0.123613, 0.715402,
		0.669942, 0.487746, 0.559716,
		27.101114, 24.269222, 27.654022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359205, 24.613098, 27.373869>,  <26.632154, 23.927799, 27.262220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359205, 24.613098, 27.373869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.743280, 24.667946, 27.471222>,  <26.973726, 24.700855, 27.529634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.743280, 24.667946, 27.471222>,  <26.359205, 24.613098, 27.373869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743280, 24.667946, 27.471222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073791, 0.964795, -0.252441,
		-0.269430, 0.224432, 0.936503,
		0.960189, 0.137121, 0.243383,
		27.031338, 24.709082, 27.544237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371387, 25.195377, 27.986645>,  <26.359205, 24.613098, 27.373869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371387, 25.195377, 27.986645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.729856, 25.191929, 27.809196>,  <26.944939, 25.189859, 27.702728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.729856, 25.191929, 27.809196>,  <26.371387, 25.195377, 27.986645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729856, 25.191929, 27.809196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115050, 0.961100, -0.251097,
		0.428527, 0.276065, 0.860321,
		0.896174, -0.008622, -0.443619,
		26.998709, 25.189342, 27.676111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668987, 25.751244, 28.212742>,  <26.371387, 25.195377, 27.986645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668987, 25.751244, 28.212742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.873898, 25.671326, 27.878639>,  <26.996843, 25.623375, 27.678177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.873898, 25.671326, 27.878639>,  <26.668987, 25.751244, 28.212742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873898, 25.671326, 27.878639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007082, 0.973513, -0.228520,
		0.858791, 0.111150, 0.500123,
		0.512276, -0.199793, -0.835258,
		27.027580, 25.611387, 27.628061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365252, 26.140680, 28.167389>,  <26.668987, 25.751244, 28.212742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365252, 26.140680, 28.167389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.248045, 26.039581, 27.798550>,  <27.177721, 25.978922, 27.577246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.248045, 26.039581, 27.798550>,  <27.365252, 26.140680, 28.167389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248045, 26.039581, 27.798550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144792, 0.941573, -0.304097,
		0.945081, -0.222618, -0.239300,
		-0.293016, -0.252748, -0.922096,
		27.160141, 25.963757, 27.521921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731367, 26.545139, 27.671875>,  <27.365252, 26.140680, 28.167389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731367, 26.545139, 27.671875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.427301, 26.436184, 27.435925>,  <27.244862, 26.370811, 27.294355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.427301, 26.436184, 27.435925>,  <27.731367, 26.545139, 27.671875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427301, 26.436184, 27.435925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035800, 0.924059, -0.380570,
		0.648741, -0.268180, -0.712190,
		-0.760167, -0.272388, -0.589874,
		27.199251, 26.354467, 27.258963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941484, 26.587515, 27.066280>,  <27.731367, 26.545139, 27.671875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941484, 26.587515, 27.066280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.546314, 26.619637, 27.013279>,  <27.309212, 26.638908, 26.981478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.546314, 26.619637, 27.013279>,  <27.941484, 26.587515, 27.066280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546314, 26.619637, 27.013279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133462, 0.875457, -0.464504,
		0.078700, -0.476579, -0.875602,
		-0.987924, 0.080303, -0.132504,
		27.249937, 26.643728, 26.973528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889236, 27.066210, 26.454683>,  <27.941484, 26.587515, 27.066280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889236, 27.066210, 26.454683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.526014, 27.067326, 26.622219>,  <27.308081, 27.067995, 26.722740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.526014, 27.067326, 26.622219>,  <27.889236, 27.066210, 26.454683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526014, 27.067326, 26.622219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079101, 0.980842, -0.178024,
		-0.411310, -0.194786, -0.890440,
		-0.908057, 0.002789, 0.418837,
		27.253597, 27.068163, 26.747869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410286, 27.213297, 25.932482>,  <27.889236, 27.066210, 26.454683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410286, 27.213297, 25.932482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.239420, 27.313244, 26.280067>,  <27.136900, 27.373213, 26.488619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.239420, 27.313244, 26.280067>,  <27.410286, 27.213297, 25.932482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239420, 27.313244, 26.280067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213282, 0.906092, -0.365388,
		-0.878659, -0.341415, -0.333758,
		-0.427165, 0.249867, 0.868963,
		27.111271, 27.388205, 26.540756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774132, 27.475489, 25.683022>,  <27.410286, 27.213297, 25.932482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774132, 27.475489, 25.683022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.852488, 27.588093, 26.058762>,  <26.899500, 27.655655, 26.284206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.852488, 27.588093, 26.058762>,  <26.774132, 27.475489, 25.683022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852488, 27.588093, 26.058762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085941, 0.959152, -0.269522,
		-0.976853, -0.027933, 0.212079,
		0.195887, 0.281509, 0.939351,
		26.911253, 27.672546, 26.340567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.108543, 26.216356, 27.645140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.479820, 26.067760, 27.653645>,  <39.702587, 25.978603, 27.658749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.479820, 26.067760, 27.653645>,  <39.108543, 26.216356, 27.645140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479820, 26.067760, 27.653645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371801, 0.928220, -0.013117,
		-0.014865, 0.020082, 0.999688,
		0.928193, -0.371490, 0.021265,
		39.758278, 25.956314, 27.660025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514996, 26.482473, 28.258148>,  <39.108543, 26.216356, 27.645140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514996, 26.482473, 28.258148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.773159, 26.363033, 27.976929>,  <39.928059, 26.291368, 27.808197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.773159, 26.363033, 27.976929>,  <39.514996, 26.482473, 28.258148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773159, 26.363033, 27.976929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318201, 0.941861, -0.107915,
		0.694400, -0.154062, 0.702904,
		0.645412, -0.298601, -0.703051,
		39.966782, 26.273453, 27.766014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157852, 26.680742, 28.538677>,  <39.514996, 26.482473, 28.258148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157852, 26.680742, 28.538677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.209702, 26.616173, 28.147343>,  <40.240810, 26.577431, 27.912542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.209702, 26.616173, 28.147343>,  <40.157852, 26.680742, 28.538677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209702, 26.616173, 28.147343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575794, 0.815516, -0.058269,
		0.807254, -0.555766, 0.198657,
		0.129624, -0.161424, -0.978335,
		40.248589, 26.567745, 27.853842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898003, 26.889391, 28.494675>,  <40.157852, 26.680742, 28.538677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898003, 26.889391, 28.494675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.731842, 26.892487, 28.130833>,  <40.632145, 26.894344, 27.912527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.731842, 26.892487, 28.130833>,  <40.898003, 26.889391, 28.494675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731842, 26.892487, 28.130833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436356, 0.879094, -0.191799,
		0.798144, -0.476586, -0.368555,
		-0.415403, 0.007738, -0.909605,
		40.607220, 26.894808, 27.857952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539284, 26.909216, 27.935127>,  <40.898003, 26.889391, 28.494675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539284, 26.909216, 27.935127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.186493, 27.046268, 27.805691>,  <40.974819, 27.128500, 27.728029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.186493, 27.046268, 27.805691>,  <41.539284, 26.909216, 27.935127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186493, 27.046268, 27.805691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432950, 0.860307, -0.269122,
		0.186178, -0.377459, -0.907118,
		-0.881982, 0.342632, -0.323591,
		40.921898, 27.149057, 27.708614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617336, 27.094357, 27.178328>,  <41.539284, 26.909216, 27.935127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617336, 27.094357, 27.178328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.310867, 27.326019, 27.289719>,  <41.126984, 27.465017, 27.356554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.310867, 27.326019, 27.289719>,  <41.617336, 27.094357, 27.178328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310867, 27.326019, 27.289719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421653, 0.780080, -0.462259,
		-0.484956, -0.236751, -0.841882,
		-0.766176, 0.579158, 0.278478,
		41.081013, 27.499767, 27.373262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478809, 27.578394, 26.559692>,  <41.617336, 27.094357, 27.178328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478809, 27.578394, 26.559692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.333179, 27.730194, 26.899910>,  <41.245800, 27.821274, 27.104040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.333179, 27.730194, 26.899910>,  <41.478809, 27.578394, 26.559692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333179, 27.730194, 26.899910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311433, 0.910259, -0.272833,
		-0.877757, 0.165555, -0.449594,
		-0.364078, 0.379499, 0.850545,
		41.223957, 27.844044, 27.155073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022911, 28.133825, 26.392311>,  <41.478809, 27.578394, 26.559692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022911, 28.133825, 26.392311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150581, 28.207890, 26.764084>,  <41.227184, 28.252329, 26.987148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150581, 28.207890, 26.764084>,  <41.022911, 28.133825, 26.392311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150581, 28.207890, 26.764084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259397, 0.926206, -0.273597,
		-0.911505, 0.328417, 0.247591,
		0.319174, 0.185161, 0.929432,
		41.246334, 28.263437, 27.042913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763149, 28.706018, 26.597172>,  <41.022911, 28.133825, 26.392311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763149, 28.706018, 26.597172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.029339, 28.686859, 26.895126>,  <41.189053, 28.675364, 27.073898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.029339, 28.686859, 26.895126>,  <40.763149, 28.706018, 26.597172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029339, 28.686859, 26.895126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107282, 0.993715, -0.031948,
		-0.738672, 0.101173, 0.666429,
		0.665472, -0.047897, 0.744884,
		41.228981, 28.672491, 27.118591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679768, 29.322651, 26.732222>,  <40.763149, 28.706018, 26.597172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679768, 29.322651, 26.732222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947113, 29.231358, 27.015404>,  <41.107521, 29.176582, 27.185312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947113, 29.231358, 27.015404>,  <40.679768, 29.322651, 26.732222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947113, 29.231358, 27.015404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225533, 0.969140, 0.099516,
		-0.708820, 0.093154, 0.699212,
		0.668363, -0.228234, 0.707955,
		41.147621, 29.162888, 27.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594910, 29.690361, 27.363203>,  <40.679768, 29.322651, 26.732222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594910, 29.690361, 27.363203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.977131, 29.586864, 27.306679>,  <41.206463, 29.524767, 27.272764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.977131, 29.586864, 27.306679>,  <40.594910, 29.690361, 27.363203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977131, 29.586864, 27.306679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268321, 0.961859, 0.053215,
		0.122153, -0.088767, 0.988534,
		0.955554, -0.258744, -0.141312,
		41.263798, 29.509241, 27.264286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074368, 30.041126, 27.911947>,  <40.594910, 29.690361, 27.363203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074368, 30.041126, 27.911947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289349, 29.940769, 27.589905>,  <41.418339, 29.880554, 27.396679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289349, 29.940769, 27.589905>,  <41.074368, 30.041126, 27.911947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289349, 29.940769, 27.589905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261428, 0.957252, -0.123788,
		0.801748, -0.143948, 0.580068,
		0.537453, -0.250893, -0.805107,
		41.450584, 29.865501, 27.348373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679409, 30.552879, 27.971788>,  <41.074368, 30.041126, 27.911947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679409, 30.552879, 27.971788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.677059, 30.397686, 27.603130>,  <41.675648, 30.304569, 27.381935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.677059, 30.397686, 27.603130>,  <41.679409, 30.552879, 27.971788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677059, 30.397686, 27.603130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129167, 0.913648, -0.385440,
		0.991606, -0.121311, 0.044747,
		-0.005875, -0.387984, -0.921647,
		41.675297, 30.281290, 27.326635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254776, 30.837202, 27.545984>,  <41.679409, 30.552879, 27.971788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254776, 30.837202, 27.545984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.018532, 30.725361, 27.243195>,  <41.876785, 30.658257, 27.061522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.018532, 30.725361, 27.243195>,  <42.254776, 30.837202, 27.545984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018532, 30.725361, 27.243195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194633, 0.861003, -0.469886,
		0.783136, -0.424850, -0.454094,
		-0.590606, -0.279603, -0.756972,
		41.841351, 30.641479, 27.016104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571194, 31.217072, 26.948059>,  <42.254776, 30.837202, 27.545984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571194, 31.217072, 26.948059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200039, 31.130089, 26.826908>,  <41.977345, 31.077898, 26.754217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200039, 31.130089, 26.826908>,  <42.571194, 31.217072, 26.948059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200039, 31.130089, 26.826908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008188, 0.824003, -0.566526,
		0.372769, -0.523192, -0.766363,
		-0.927888, -0.217459, -0.302879,
		41.921673, 31.064852, 26.736044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531425, 31.375616, 26.278158>,  <42.571194, 31.217072, 26.948059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531425, 31.375616, 26.278158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.142300, 31.384449, 26.370369>,  <41.908825, 31.389748, 26.425695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.142300, 31.384449, 26.370369>,  <42.531425, 31.375616, 26.278158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142300, 31.384449, 26.370369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164449, 0.635005, -0.754801,
		-0.163051, -0.772192, -0.614112,
		-0.972816, 0.022081, 0.230525,
		41.850456, 31.391073, 26.439526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211388, 31.318460, 25.665588>,  <42.531425, 31.375616, 26.278158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211388, 31.318460, 25.665588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905933, 31.463352, 25.879375>,  <41.722660, 31.550287, 26.007647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905933, 31.463352, 25.879375>,  <42.211388, 31.318460, 25.665588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905933, 31.463352, 25.879375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241223, 0.607786, -0.756576,
		-0.598895, -0.706673, -0.376748,
		-0.763634, 0.362229, 0.534466,
		41.676842, 31.572021, 26.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609173, 31.260406, 25.239250>,  <42.211388, 31.318460, 25.665588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609173, 31.260406, 25.239250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.541153, 31.551319, 25.505226>,  <41.500340, 31.725866, 25.664812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.541153, 31.551319, 25.505226>,  <41.609173, 31.260406, 25.239250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541153, 31.551319, 25.505226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223278, 0.628782, -0.744836,
		-0.959807, -0.275126, 0.055461,
		-0.170051, 0.727282, 0.664939,
		41.490139, 31.769505, 25.704708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216484, 31.662949, 24.818003>,  <41.609173, 31.260406, 25.239250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216484, 31.662949, 24.818003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309135, 31.900383, 25.126289>,  <41.364727, 32.042843, 25.311262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309135, 31.900383, 25.126289>,  <41.216484, 31.662949, 24.818003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309135, 31.900383, 25.126289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375259, 0.785465, -0.492164,
		-0.897513, -0.175220, 0.404683,
		0.231627, 0.593585, 0.770718,
		41.378624, 32.078457, 25.357504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586754, 31.898443, 25.102402>,  <41.216484, 31.662949, 24.818003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586754, 31.898443, 25.102402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.883327, 32.151642, 25.191483>,  <41.061272, 32.303562, 25.244930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.883327, 32.151642, 25.191483>,  <40.586754, 31.898443, 25.102402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883327, 32.151642, 25.191483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421135, 0.697328, -0.579982,
		-0.522423, 0.336228, 0.783597,
		0.741430, 0.632996, 0.222703,
		41.105755, 32.341541, 25.258293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315174, 32.597507, 25.133144>,  <40.586754, 31.898443, 25.102402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315174, 32.597507, 25.133144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697124, 32.679211, 25.046898>,  <40.926296, 32.728233, 24.995150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697124, 32.679211, 25.046898>,  <40.315174, 32.597507, 25.133144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697124, 32.679211, 25.046898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296979, 0.666548, -0.683752,
		0.004053, 0.716931, 0.697132,
		0.954875, 0.204262, -0.215616,
		40.983585, 32.740490, 24.982214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960999, 32.973354, 25.656347>,  <40.315174, 32.597507, 25.133144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960999, 32.973354, 25.656347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657429, 32.980427, 25.395969>,  <39.475288, 32.984669, 25.239742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.657429, 32.980427, 25.395969>,  <39.960999, 32.973354, 25.656347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657429, 32.980427, 25.395969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322850, -0.878339, 0.352546,
		-0.565515, 0.477712, 0.672298,
		-0.758920, 0.017681, -0.650943,
		39.429752, 32.985733, 25.200686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307720, 32.602303, 26.016518>,  <39.960999, 32.973354, 25.656347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307720, 32.602303, 26.016518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223370, 32.582558, 25.626011>,  <39.172760, 32.570709, 25.391706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223370, 32.582558, 25.626011>,  <39.307720, 32.602303, 26.016518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223370, 32.582558, 25.626011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559223, -0.813054, 0.161903,
		-0.801749, 0.580092, 0.143850,
		-0.210876, -0.049361, -0.976266,
		39.160107, 32.567749, 25.333132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652267, 32.612732, 26.043236>,  <39.307720, 32.602303, 26.016518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652267, 32.612732, 26.043236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754086, 32.458836, 25.688343>,  <38.815178, 32.366497, 25.475409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754086, 32.458836, 25.688343>,  <38.652267, 32.612732, 26.043236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754086, 32.458836, 25.688343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656634, -0.742299, 0.133506,
		-0.709956, 0.548601, -0.441588,
		0.254548, -0.384745, -0.887230,
		38.830448, 32.343410, 25.422174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084576, 32.444992, 25.827465>,  <38.652267, 32.612732, 26.043236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084576, 32.444992, 25.827465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351891, 32.216740, 25.636562>,  <38.512280, 32.079788, 25.522020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351891, 32.216740, 25.636562>,  <38.084576, 32.444992, 25.827465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351891, 32.216740, 25.636562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482095, -0.820813, 0.306350,
		-0.566553, 0.025355, -0.823635,
		0.668283, -0.570634, -0.477257,
		38.552376, 32.045551, 25.493385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679932, 31.915611, 25.419559>,  <38.084576, 32.444992, 25.827465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679932, 31.915611, 25.419559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041027, 31.744564, 25.438377>,  <38.257683, 31.641935, 25.449667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041027, 31.744564, 25.438377>,  <37.679932, 31.915611, 25.419559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041027, 31.744564, 25.438377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428550, -0.903447, 0.011367,
		0.037640, -0.030421, -0.998828,
		0.902734, -0.427620, 0.047043,
		38.311848, 31.616278, 25.452490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742496, 31.341686, 24.900190>,  <37.679932, 31.915611, 25.419559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742496, 31.341686, 24.900190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018509, 31.253029, 25.175793>,  <38.184116, 31.199833, 25.341154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018509, 31.253029, 25.175793>,  <37.742496, 31.341686, 24.900190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018509, 31.253029, 25.175793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362186, -0.929935, 0.063574,
		0.626641, -0.293416, -0.721961,
		0.690031, -0.221646, 0.689007,
		38.225517, 31.186535, 25.382494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984074, 30.628832, 24.709204>,  <37.742496, 31.341686, 24.900190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984074, 30.628832, 24.709204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.087383, 30.708015, 25.087433>,  <38.149368, 30.755526, 25.314371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.087383, 30.708015, 25.087433>,  <37.984074, 30.628832, 24.709204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087383, 30.708015, 25.087433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159905, -0.956519, 0.243928,
		0.952747, -0.214201, -0.215385,
		0.258270, 0.197961, 0.945573,
		38.164864, 30.767405, 25.371105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431179, 30.133501, 24.853487>,  <37.984074, 30.628832, 24.709204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431179, 30.133501, 24.853487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333794, 30.254501, 25.222099>,  <38.275360, 30.327103, 25.443266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333794, 30.254501, 25.222099>,  <38.431179, 30.133501, 24.853487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333794, 30.254501, 25.222099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000604, -0.950166, 0.311743,
		0.969909, 0.075343, 0.231516,
		-0.243466, 0.302502, 0.921529,
		38.260754, 30.345253, 25.498558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876381, 29.784458, 25.355160>,  <38.431179, 30.133501, 24.853487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876381, 29.784458, 25.355160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560326, 29.893688, 25.574654>,  <38.370693, 29.959227, 25.706350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560326, 29.893688, 25.574654>,  <38.876381, 29.784458, 25.355160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560326, 29.893688, 25.574654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094614, -0.938879, 0.330990,
		0.605579, 0.209611, 0.767683,
		-0.790140, 0.273075, 0.548733,
		38.323284, 29.975611, 25.739273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892349, 29.447626, 25.947079>,  <38.876381, 29.784458, 25.355160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892349, 29.447626, 25.947079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511189, 29.568901, 25.950104>,  <38.282494, 29.641666, 25.951918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511189, 29.568901, 25.950104>,  <38.892349, 29.447626, 25.947079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511189, 29.568901, 25.950104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272355, -0.866437, 0.418461,
		0.133422, 0.396693, 0.908203,
		-0.952901, 0.303186, 0.007561,
		38.225319, 29.659857, 25.952372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602535, 29.246641, 26.670326>,  <38.892349, 29.447626, 25.947079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602535, 29.246641, 26.670326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300411, 29.289589, 26.411724>,  <38.119137, 29.315357, 26.256563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300411, 29.289589, 26.411724>,  <38.602535, 29.246641, 26.670326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300411, 29.289589, 26.411724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513677, -0.709608, 0.482279,
		-0.406985, 0.696368, 0.591130,
		-0.755314, 0.107370, -0.646508,
		38.073818, 29.321800, 26.217772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041695, 29.228355, 27.057274>,  <38.602535, 29.246641, 26.670326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041695, 29.228355, 27.057274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897163, 29.124218, 26.699131>,  <37.810444, 29.061735, 26.484245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897163, 29.124218, 26.699131>,  <38.041695, 29.228355, 27.057274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897163, 29.124218, 26.699131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369563, -0.841606, 0.393854,
		-0.856077, 0.473200, 0.207879,
		-0.361324, -0.260345, -0.895357,
		37.788765, 29.046114, 26.430523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447578, 28.954733, 27.189981>,  <38.041695, 29.228355, 27.057274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447578, 28.954733, 27.189981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.466316, 28.812393, 26.816635>,  <37.477558, 28.726990, 26.592627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.466316, 28.812393, 26.816635>,  <37.447578, 28.954733, 27.189981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466316, 28.812393, 26.816635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229480, -0.913236, 0.336658,
		-0.972185, 0.198418, -0.124442,
		0.046846, -0.355851, -0.933368,
		37.480370, 28.705637, 26.536625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810146, 28.427113, 27.099222>,  <37.447578, 28.954733, 27.189981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810146, 28.427113, 27.099222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098850, 28.359016, 26.830868>,  <37.272072, 28.318159, 26.669855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098850, 28.359016, 26.830868>,  <36.810146, 28.427113, 27.099222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098850, 28.359016, 26.830868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058739, -0.980849, 0.185700,
		-0.689650, -0.094623, -0.717935,
		0.721757, -0.170239, -0.670884,
		37.315376, 28.307945, 26.629602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491905, 27.973711, 26.733986>,  <36.810146, 28.427113, 27.099222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491905, 27.973711, 26.733986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.879765, 27.928532, 26.647243>,  <37.112480, 27.901424, 26.595198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.879765, 27.928532, 26.647243>,  <36.491905, 27.973711, 26.733986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879765, 27.928532, 26.647243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129247, -0.989643, -0.062458,
		-0.207555, 0.088590, -0.974204,
		0.969648, -0.112950, -0.216855,
		37.170658, 27.894648, 26.582188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624020, 27.435993, 26.194647>,  <36.491905, 27.973711, 26.733986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624020, 27.435993, 26.194647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973324, 27.421993, 26.389046>,  <37.182907, 27.413593, 26.505684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.973324, 27.421993, 26.389046>,  <36.624020, 27.435993, 26.194647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973324, 27.421993, 26.389046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055289, -0.998092, 0.027467,
		0.484107, -0.050856, -0.873530,
		0.873260, -0.035000, 0.485995,
		37.235302, 27.411493, 26.534843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028183, 26.974638, 25.800533>,  <36.624020, 27.435993, 26.194647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028183, 26.974638, 25.800533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194523, 26.982151, 26.164230>,  <37.294327, 26.986658, 26.382448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194523, 26.982151, 26.164230>,  <37.028183, 26.974638, 25.800533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194523, 26.982151, 26.164230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078723, -0.996777, -0.015415,
		0.906022, 0.077988, -0.415984,
		0.415845, 0.018781, 0.909241,
		37.319275, 26.987785, 26.437002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661602, 26.497709, 25.743092>,  <37.028183, 26.974638, 25.800533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661602, 26.497709, 25.743092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560280, 26.551285, 26.126320>,  <37.499489, 26.583431, 26.356256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560280, 26.551285, 26.126320>,  <37.661602, 26.497709, 25.743092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560280, 26.551285, 26.126320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215549, -0.957657, 0.190872,
		0.943067, 0.254860, 0.213707,
		-0.253303, 0.133941, 0.958070,
		37.484287, 26.591467, 26.413740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197399, 26.233456, 26.103800>,  <37.661602, 26.497709, 25.743092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197399, 26.233456, 26.103800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913090, 26.234703, 26.385166>,  <37.742504, 26.235451, 26.553986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913090, 26.234703, 26.385166>,  <38.197399, 26.233456, 26.103800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913090, 26.234703, 26.385166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166744, -0.970742, 0.172788,
		0.683376, 0.240103, 0.689454,
		-0.710769, 0.003117, 0.703418,
		37.699860, 26.235638, 26.596191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554501, 25.963074, 26.719505>,  <38.197399, 26.233456, 26.103800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554501, 25.963074, 26.719505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.163105, 25.884415, 26.744438>,  <37.928268, 25.837219, 26.759398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.163105, 25.884415, 26.744438>,  <38.554501, 25.963074, 26.719505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163105, 25.884415, 26.744438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199620, -0.978808, 0.045673,
		0.052027, 0.057133, 0.997010,
		-0.978491, -0.196647, 0.062330,
		37.869556, 25.825420, 26.763138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448246, 25.520102, 27.334553>,  <38.554501, 25.963074, 26.719505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448246, 25.520102, 27.334553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140942, 25.471710, 27.083115>,  <37.956558, 25.442675, 26.932251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140942, 25.471710, 27.083115>,  <38.448246, 25.520102, 27.334553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140942, 25.471710, 27.083115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070587, -0.992001, 0.104650,
		-0.636228, 0.036029, 0.770660,
		-0.768265, -0.120979, -0.628595,
		37.910461, 25.435417, 26.894537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.010897, 25.111273, 30.375048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.372730, 25.006981, 30.509953>,  <26.589830, 24.944407, 30.590895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.372730, 25.006981, 30.509953>,  <26.010897, 25.111273, 30.375048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372730, 25.006981, 30.509953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355484, -0.898015, 0.259230,
		0.235277, -0.354387, -0.905016,
		0.904586, -0.260728, 0.337262,
		26.644106, 24.928762, 30.611132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125612, 24.450377, 30.214756>,  <26.010897, 25.111273, 30.375048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125612, 24.450377, 30.214756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.398474, 24.486019, 30.505058>,  <26.562191, 24.507404, 30.679239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.398474, 24.486019, 30.505058>,  <26.125612, 24.450377, 30.214756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398474, 24.486019, 30.505058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303530, -0.868485, 0.391924,
		0.665232, -0.487642, -0.565395,
		0.682155, 0.089106, 0.725758,
		26.603121, 24.512751, 30.722786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474619, 23.785299, 30.298470>,  <26.125612, 24.450377, 30.214756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474619, 23.785299, 30.298470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.552097, 23.981514, 30.638317>,  <26.598585, 24.099243, 30.842226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.552097, 23.981514, 30.638317>,  <26.474619, 23.785299, 30.298470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552097, 23.981514, 30.638317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395357, -0.753559, 0.525207,
		0.897873, -0.437634, 0.047976,
		0.193695, 0.490537, 0.849621,
		26.610207, 24.128675, 30.893204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619806, 23.212561, 30.731741>,  <26.474619, 23.785299, 30.298470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619806, 23.212561, 30.731741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.541862, 23.537071, 30.952236>,  <26.495096, 23.731777, 31.084534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.541862, 23.537071, 30.952236>,  <26.619806, 23.212561, 30.731741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541862, 23.537071, 30.952236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293407, -0.584489, 0.756495,
		0.935918, -0.014325, 0.351928,
		-0.194861, 0.811275, 0.551236,
		26.483404, 23.780455, 31.117607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792866, 22.905107, 31.390205>,  <26.619806, 23.212561, 30.731741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792866, 22.905107, 31.390205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.620659, 23.248093, 31.502926>,  <26.517334, 23.453884, 31.570559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.620659, 23.248093, 31.502926>,  <26.792866, 22.905107, 31.390205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620659, 23.248093, 31.502926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308564, -0.433230, 0.846818,
		0.848199, 0.277617, 0.451095,
		-0.430519, 0.857462, 0.281803,
		26.491503, 23.505331, 31.587467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007416, 23.014206, 32.132374>,  <26.792866, 22.905107, 31.390205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007416, 23.014206, 32.132374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.657251, 23.162334, 32.008102>,  <26.447153, 23.251211, 31.933540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.657251, 23.162334, 32.008102>,  <27.007416, 23.014206, 32.132374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657251, 23.162334, 32.008102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470381, -0.504572, 0.723981,
		0.111349, 0.779915, 0.615901,
		-0.875410, 0.370323, -0.310674,
		26.394629, 23.273432, 31.914900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608898, 23.254057, 32.713558>,  <27.007416, 23.014206, 32.132374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608898, 23.254057, 32.713558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.307100, 23.211018, 32.454586>,  <26.126022, 23.185194, 32.299202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.307100, 23.211018, 32.454586>,  <26.608898, 23.254057, 32.713558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307100, 23.211018, 32.454586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537166, -0.465539, 0.703368,
		-0.377085, 0.878462, 0.293447,
		-0.754493, -0.107600, -0.647428,
		26.080753, 23.178738, 32.260357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057119, 23.222673, 33.115654>,  <26.608898, 23.254057, 32.713558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057119, 23.222673, 33.115654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.892065, 23.084671, 32.778442>,  <25.793032, 23.001869, 32.576115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.892065, 23.084671, 32.778442>,  <26.057119, 23.222673, 33.115654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892065, 23.084671, 32.778442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723510, -0.438143, 0.533445,
		-0.553410, 0.830061, -0.068822,
		-0.412638, -0.345007, -0.843030,
		25.768274, 22.981169, 32.525532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381752, 23.454784, 33.116295>,  <26.057119, 23.222673, 33.115654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381752, 23.454784, 33.116295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.394827, 23.124203, 32.891472>,  <25.402672, 22.925854, 32.756580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.394827, 23.124203, 32.891472>,  <25.381752, 23.454784, 33.116295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394827, 23.124203, 32.891472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866011, -0.304160, 0.396878,
		-0.498956, 0.473773, -0.725660,
		0.032687, -0.826454, -0.562055,
		25.404633, 22.876266, 32.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696016, 23.340860, 33.103065>,  <25.381752, 23.454784, 33.116295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696016, 23.340860, 33.103065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.842537, 22.999256, 32.955292>,  <24.930450, 22.794292, 32.866627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.842537, 22.999256, 32.955292>,  <24.696016, 23.340860, 33.103065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842537, 22.999256, 32.955292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744234, -0.507210, 0.434573,
		-0.558513, 0.115764, -0.821378,
		0.366303, -0.854012, -0.369439,
		24.952429, 22.743052, 32.844460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068357, 22.980541, 32.725674>,  <24.696016, 23.340860, 33.103065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068357, 22.980541, 32.725674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.353760, 22.715702, 32.817352>,  <24.525002, 22.556799, 32.872360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.353760, 22.715702, 32.817352>,  <24.068357, 22.980541, 32.725674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353760, 22.715702, 32.817352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676771, -0.566599, 0.470049,
		-0.181355, -0.490499, -0.852362,
		0.713506, -0.662099, 0.229200,
		24.567812, 22.517073, 32.886112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.817429, 22.288366, 32.557404>,  <24.068357, 22.980541, 32.725674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.817429, 22.288366, 32.557404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.082739, 22.254463, 32.854828>,  <24.241926, 22.234121, 33.033283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.082739, 22.254463, 32.854828>,  <23.817429, 22.288366, 32.557404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082739, 22.254463, 32.854828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550896, -0.727788, 0.408458,
		0.506534, -0.680545, -0.529417,
		0.663278, -0.084756, 0.743558,
		24.281723, 22.229036, 33.077896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.976078, 21.639915, 32.514313>,  <23.817429, 22.288366, 32.557404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.976078, 21.639915, 32.514313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.011723, 21.719223, 32.904747>,  <24.033110, 21.766808, 33.139008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.011723, 21.719223, 32.904747>,  <23.976078, 21.639915, 32.514313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.011723, 21.719223, 32.904747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681708, -0.702346, 0.204900,
		0.726177, -0.683666, 0.072577,
		0.089109, 0.198270, 0.976088,
		24.038456, 21.778704, 33.197575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229940, 20.970791, 33.007072>,  <23.976078, 21.639915, 32.514313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229940, 20.970791, 33.007072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.982294, 21.220085, 33.198185>,  <23.833706, 21.369661, 33.312851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.982294, 21.220085, 33.198185>,  <24.229940, 20.970791, 33.007072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.982294, 21.220085, 33.198185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555647, -0.777589, 0.294299,
		0.554934, -0.083272, 0.827716,
		-0.619116, 0.623235, 0.477780,
		23.796558, 21.407055, 33.341518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692602, 20.333488, 32.747227>,  <24.229940, 20.970791, 33.007072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692602, 20.333488, 32.747227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.968264, 20.049763, 32.687977>,  <25.133659, 19.879526, 32.652428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.968264, 20.049763, 32.687977>,  <24.692602, 20.333488, 32.747227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968264, 20.049763, 32.687977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341869, 0.498510, -0.796626,
		0.638902, 0.498356, 0.586042,
		0.689152, -0.709315, -0.148127,
		25.175009, 19.836967, 32.643539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421326, 20.572834, 32.779900>,  <24.692602, 20.333488, 32.747227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421326, 20.572834, 32.779900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.371273, 20.261127, 32.534271>,  <25.341242, 20.074102, 32.386894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.371273, 20.261127, 32.534271>,  <25.421326, 20.572834, 32.779900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371273, 20.261127, 32.534271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357060, 0.542095, -0.760685,
		0.925662, -0.314445, 0.210413,
		-0.125130, -0.779267, -0.614072,
		25.333735, 20.027348, 32.350048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000807, 20.502895, 32.512196>,  <25.421326, 20.572834, 32.779900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000807, 20.502895, 32.512196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.804367, 20.281834, 32.242859>,  <25.686502, 20.149197, 32.081257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.804367, 20.281834, 32.242859>,  <26.000807, 20.502895, 32.512196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804367, 20.281834, 32.242859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571969, 0.378432, -0.727764,
		0.657017, -0.742538, 0.130252,
		-0.491101, -0.552653, -0.673345,
		25.657036, 20.116037, 32.040855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470755, 20.209152, 32.071270>,  <26.000807, 20.502895, 32.512196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470755, 20.209152, 32.071270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.144312, 20.227966, 31.840874>,  <25.948446, 20.239254, 31.702637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.144312, 20.227966, 31.840874>,  <26.470755, 20.209152, 32.071270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144312, 20.227966, 31.840874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530338, 0.456931, -0.714112,
		0.229597, -0.888258, -0.397849,
		-0.816105, 0.047037, -0.575986,
		25.899481, 20.242077, 31.668077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699671, 19.950813, 31.452919>,  <26.470755, 20.209152, 32.071270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699671, 19.950813, 31.452919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.365814, 20.150452, 31.359726>,  <26.165501, 20.270235, 31.303810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.365814, 20.150452, 31.359726>,  <26.699671, 19.950813, 31.452919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365814, 20.150452, 31.359726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464989, 0.411749, -0.783740,
		-0.295231, -0.762474, -0.575736,
		-0.834640, 0.499096, -0.232981,
		26.115421, 20.300180, 31.289831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784636, 19.989420, 30.765842>,  <26.699671, 19.950813, 31.452919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784636, 19.989420, 30.765842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.492697, 20.253857, 30.835445>,  <26.317533, 20.412519, 30.877207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.492697, 20.253857, 30.835445>,  <26.784636, 19.989420, 30.765842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492697, 20.253857, 30.835445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400124, 0.619501, -0.675366,
		-0.554275, -0.423292, -0.716661,
		-0.729849, 0.661092, 0.174005,
		26.273743, 20.452185, 30.887648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484755, 20.077152, 30.097609>,  <26.784636, 19.989420, 30.765842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484755, 20.077152, 30.097609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.392759, 20.384750, 30.336189>,  <26.337563, 20.569309, 30.479338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.392759, 20.384750, 30.336189>,  <26.484755, 20.077152, 30.097609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392759, 20.384750, 30.336189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216640, 0.637956, -0.738971,
		-0.948774, -0.040739, -0.313318,
		-0.229988, 0.768994, 0.596451,
		26.323763, 20.615448, 30.515125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995529, 20.542654, 29.813568>,  <26.484755, 20.077152, 30.097609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995529, 20.542654, 29.813568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.181601, 20.782375, 30.074165>,  <26.293243, 20.926208, 30.230524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.181601, 20.782375, 30.074165>,  <25.995529, 20.542654, 29.813568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181601, 20.782375, 30.074165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065545, 0.710633, -0.700503,
		-0.882786, 0.368562, 0.291292,
		0.465181, 0.599302, 0.651494,
		26.321156, 20.962166, 30.269613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871742, 21.164274, 29.520308>,  <25.995529, 20.542654, 29.813568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871742, 21.164274, 29.520308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.139708, 21.280079, 29.793774>,  <26.300488, 21.349562, 29.957853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.139708, 21.280079, 29.793774>,  <25.871742, 21.164274, 29.520308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139708, 21.280079, 29.793774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211904, 0.807975, -0.549793,
		-0.711555, 0.513186, 0.479927,
		0.669915, 0.289509, 0.683665,
		26.340683, 21.366932, 29.998873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809914, 21.897306, 29.583063>,  <25.871742, 21.164274, 29.520308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809914, 21.897306, 29.583063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.171024, 21.845562, 29.747143>,  <26.387690, 21.814516, 29.845591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.171024, 21.845562, 29.747143>,  <25.809914, 21.897306, 29.583063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171024, 21.845562, 29.747143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355244, 0.761921, -0.541551,
		-0.242485, 0.634619, 0.733798,
		0.902775, -0.129360, 0.410199,
		26.441856, 21.806753, 29.870203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023581, 22.568213, 29.701656>,  <25.809914, 21.897306, 29.583063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023581, 22.568213, 29.701656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.357111, 22.350060, 29.735813>,  <26.557230, 22.219168, 29.756308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.357111, 22.350060, 29.735813>,  <26.023581, 22.568213, 29.701656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357111, 22.350060, 29.735813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521511, 0.727532, -0.445784,
		0.180996, 0.416240, 0.891058,
		0.833827, -0.545382, 0.085393,
		26.607260, 22.186445, 29.761431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590227, 23.000404, 30.035572>,  <26.023581, 22.568213, 29.701656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590227, 23.000404, 30.035572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.763559, 22.710861, 29.820816>,  <26.867559, 22.537136, 29.691961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.763559, 22.710861, 29.820816>,  <26.590227, 23.000404, 30.035572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763559, 22.710861, 29.820816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412794, 0.688981, -0.595740,
		0.801139, 0.036528, 0.597362,
		0.433333, -0.723858, -0.536891,
		26.893559, 22.493704, 29.659748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382042, 23.109592, 30.057003>,  <26.590227, 23.000404, 30.035572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382042, 23.109592, 30.057003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.307035, 22.889156, 29.731762>,  <27.262032, 22.756895, 29.536617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.307035, 22.889156, 29.731762>,  <27.382042, 23.109592, 30.057003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307035, 22.889156, 29.731762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453612, 0.685648, -0.569319,
		0.871248, -0.475590, 0.121413,
		-0.187516, -0.551092, -0.813102,
		27.250780, 22.723829, 29.487831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012470, 23.079142, 29.587677>,  <27.382042, 23.109592, 30.057003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012470, 23.079142, 29.587677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708817, 22.980774, 29.346600>,  <27.526625, 22.921753, 29.201954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708817, 22.980774, 29.346600>,  <28.012470, 23.079142, 29.587677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708817, 22.980774, 29.346600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331659, 0.650566, -0.683202,
		0.560103, -0.718532, -0.412307,
		-0.759136, -0.245918, -0.602692,
		27.481077, 22.906998, 29.165792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480648, 22.550674, 29.376944>,  <28.012470, 23.079142, 29.587677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480648, 22.550674, 29.376944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871229, 22.496822, 29.444370>,  <29.105577, 22.464510, 29.484827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871229, 22.496822, 29.444370>,  <28.480648, 22.550674, 29.376944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871229, 22.496822, 29.444370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210329, -0.767905, 0.605048,
		0.047986, -0.626256, -0.778140,
		0.976452, -0.134631, 0.168569,
		29.164165, 22.456432, 29.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502857, 21.870960, 29.468843>,  <28.480648, 22.550674, 29.376944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502857, 21.870960, 29.468843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843023, 21.986778, 29.644550>,  <29.047123, 22.056269, 29.749973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843023, 21.986778, 29.644550>,  <28.502857, 21.870960, 29.468843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843023, 21.986778, 29.644550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165540, -0.645258, 0.745814,
		0.499387, -0.706969, -0.500807,
		0.850417, 0.289546, 0.439265,
		29.098148, 22.073643, 29.776329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755077, 21.150702, 29.794830>,  <28.502857, 21.870960, 29.468843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755077, 21.150702, 29.794830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929272, 21.472725, 29.955944>,  <29.033789, 21.665939, 30.052612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929272, 21.472725, 29.955944>,  <28.755077, 21.150702, 29.794830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929272, 21.472725, 29.955944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018166, -0.439491, 0.898063,
		0.900012, -0.398411, -0.176767,
		0.435486, 0.805057, 0.402785,
		29.059917, 21.714241, 30.076780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234615, 20.796667, 30.120068>,  <28.755077, 21.150702, 29.794830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234615, 20.796667, 30.120068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.219091, 21.153591, 30.299969>,  <29.209778, 21.367746, 30.407909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.219091, 21.153591, 30.299969>,  <29.234615, 20.796667, 30.120068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219091, 21.153591, 30.299969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026372, -0.449020, 0.893132,
		0.998899, 0.046523, -0.006106,
		-0.038810, 0.892310, 0.449752,
		29.207449, 21.421284, 30.434895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902739, 20.827835, 30.596914>,  <29.234615, 20.796667, 30.120068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902739, 20.827835, 30.596914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605124, 21.073502, 30.702141>,  <29.426554, 21.220901, 30.765278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605124, 21.073502, 30.702141>,  <29.902739, 20.827835, 30.596914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605124, 21.073502, 30.702141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004179, -0.389449, 0.921039,
		0.668122, 0.686389, 0.287198,
		-0.744040, 0.614166, 0.263068,
		29.381912, 21.257751, 30.781061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066439, 20.978889, 31.314058>,  <29.902739, 20.827835, 30.596914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066439, 20.978889, 31.314058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684893, 21.098984, 31.314449>,  <29.455965, 21.171040, 31.314684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.684893, 21.098984, 31.314449>,  <30.066439, 20.978889, 31.314058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684893, 21.098984, 31.314449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150984, -0.482498, 0.862786,
		0.259511, 0.822833, 0.505568,
		-0.953865, 0.300235, 0.000979,
		29.398733, 21.189054, 31.314743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833982, 21.214464, 32.052952>,  <30.066439, 20.978889, 31.314058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833982, 21.214464, 32.052952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501316, 21.118130, 31.852818>,  <29.301716, 21.060329, 31.732737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501316, 21.118130, 31.852818>,  <29.833982, 21.214464, 32.052952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501316, 21.118130, 31.852818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304846, -0.555091, 0.773914,
		-0.464117, 0.796161, 0.388231,
		-0.831664, -0.240836, -0.500333,
		29.251818, 21.045879, 31.702717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792032, 21.786474, 32.529243>,  <29.833982, 21.214464, 32.052952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792032, 21.786474, 32.529243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.140717, 21.784454, 32.725239>,  <30.349928, 21.783243, 32.842838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.140717, 21.784454, 32.725239>,  <29.792032, 21.786474, 32.529243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140717, 21.784454, 32.725239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385862, 0.623427, -0.680036,
		-0.302041, 0.781865, 0.545398,
		0.871712, -0.005049, 0.489993,
		30.402229, 21.782940, 32.872238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020582, 22.501131, 32.487724>,  <29.792032, 21.786474, 32.529243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020582, 22.501131, 32.487724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345636, 22.300606, 32.606590>,  <30.540668, 22.180290, 32.677910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345636, 22.300606, 32.606590>,  <30.020582, 22.501131, 32.487724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345636, 22.300606, 32.606590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569640, 0.575646, -0.586636,
		0.123027, 0.645999, 0.753359,
		0.812635, -0.501315, 0.297166,
		30.589426, 22.150211, 32.695740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569689, 22.992857, 32.838303>,  <30.020582, 22.501131, 32.487724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569689, 22.992857, 32.838303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.747866, 22.674179, 32.674908>,  <30.854771, 22.482973, 32.576870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.747866, 22.674179, 32.674908>,  <30.569689, 22.992857, 32.838303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747866, 22.674179, 32.674908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584611, 0.604381, -0.541253,
		0.678095, 0.002289, 0.734971,
		0.445441, -0.796692, -0.408490,
		30.881498, 22.435171, 32.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194752, 23.213518, 32.887192>,  <30.569689, 22.992857, 32.838303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194752, 23.213518, 32.887192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232893, 22.895615, 32.647438>,  <31.255777, 22.704872, 32.503586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.232893, 22.895615, 32.647438>,  <31.194752, 23.213518, 32.887192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232893, 22.895615, 32.647438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670184, 0.496477, -0.551691,
		0.736044, -0.349095, 0.579976,
		0.095352, -0.794760, -0.599387,
		31.261499, 22.657187, 32.467621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943855, 23.234833, 32.680435>,  <31.194752, 23.213518, 32.887192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943855, 23.234833, 32.680435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760096, 23.022358, 32.395676>,  <31.649839, 22.894875, 32.224819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760096, 23.022358, 32.395676>,  <31.943855, 23.234833, 32.680435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760096, 23.022358, 32.395676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365714, 0.617271, -0.696585,
		0.809446, -0.580362, -0.089314,
		-0.459402, -0.531184, -0.711894,
		31.622274, 22.863003, 32.182106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493755, 23.172083, 32.189613>,  <31.943855, 23.234833, 32.680435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493755, 23.172083, 32.189613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152767, 23.095215, 31.995140>,  <31.948175, 23.049093, 31.878456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152767, 23.095215, 31.995140>,  <32.493755, 23.172083, 32.189613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152767, 23.095215, 31.995140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314431, 0.554502, -0.770494,
		0.417653, -0.809691, -0.412271,
		-0.852466, -0.192169, -0.486181,
		31.897028, 23.037563, 31.849285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643337, 22.778709, 31.517269>,  <32.493755, 23.172083, 32.189613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643337, 22.778709, 31.517269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289562, 22.950748, 31.444843>,  <32.077297, 23.053972, 31.401388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289562, 22.950748, 31.444843>,  <32.643337, 22.778709, 31.517269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289562, 22.950748, 31.444843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427831, 0.592377, -0.682678,
		-0.186361, -0.681252, -0.707931,
		-0.884438, 0.430099, -0.181064,
		32.024231, 23.079779, 31.390524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.020176, 23.055403, 35.266033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.704428, 22.955727, 35.041607>,  <26.514978, 22.895920, 34.906952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.704428, 22.955727, 35.041607>,  <27.020176, 23.055403, 35.266033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704428, 22.955727, 35.041607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029982, 0.897176, -0.440654,
		0.613182, -0.364662, -0.700734,
		-0.789372, -0.249192, -0.561066,
		26.467617, 22.880968, 34.873287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151934, 23.305931, 34.551056>,  <27.020176, 23.055403, 35.266033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151934, 23.305931, 34.551056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.757072, 23.290604, 34.613106>,  <26.520157, 23.281406, 34.650333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.757072, 23.290604, 34.613106>,  <27.151934, 23.305931, 34.551056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757072, 23.290604, 34.613106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083749, 0.950863, -0.298071,
		-0.136078, -0.307233, -0.941855,
		-0.987152, -0.038318, 0.155122,
		26.460926, 23.279108, 34.659641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927916, 23.569040, 33.967514>,  <27.151934, 23.305931, 34.551056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927916, 23.569040, 33.967514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.609982, 23.639820, 34.199696>,  <26.419220, 23.682287, 34.339005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.609982, 23.639820, 34.199696>,  <26.927916, 23.569040, 33.967514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609982, 23.639820, 34.199696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141734, 0.875949, -0.461113,
		-0.590039, -0.448779, -0.671157,
		-0.794837, 0.176949, 0.580451,
		26.371531, 23.692905, 34.373833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551262, 23.801361, 33.452068>,  <26.927916, 23.569040, 33.967514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551262, 23.801361, 33.452068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.350889, 23.913879, 33.779469>,  <26.230665, 23.981390, 33.975910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.350889, 23.913879, 33.779469>,  <26.551262, 23.801361, 33.452068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350889, 23.913879, 33.779469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051763, 0.934280, -0.352764,
		-0.863939, -0.219078, -0.453448,
		-0.500930, 0.281294, 0.818500,
		26.200611, 23.998268, 34.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896780, 24.168724, 33.252052>,  <26.551262, 23.801361, 33.452068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896780, 24.168724, 33.252052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.015551, 24.305832, 33.608555>,  <26.086813, 24.388098, 33.822456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.015551, 24.305832, 33.608555>,  <25.896780, 24.168724, 33.252052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015551, 24.305832, 33.608555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077863, 0.921553, -0.380363,
		-0.951721, 0.182336, 0.246943,
		0.296925, 0.342772, 0.891259,
		26.104628, 24.408663, 33.875931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574995, 24.853577, 33.245213>,  <25.896780, 24.168724, 33.252052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574995, 24.853577, 33.245213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.841391, 24.861588, 33.543491>,  <26.001228, 24.866394, 33.722458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.841391, 24.861588, 33.543491>,  <25.574995, 24.853577, 33.245213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841391, 24.861588, 33.543491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214984, 0.952074, -0.217573,
		-0.714312, 0.305213, 0.629764,
		0.665988, 0.020026, 0.745694,
		26.041187, 24.867596, 33.767200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553810, 25.559307, 33.534492>,  <25.574995, 24.853577, 33.245213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553810, 25.559307, 33.534492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.899771, 25.424576, 33.683350>,  <26.107347, 25.343737, 33.772663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.899771, 25.424576, 33.683350>,  <25.553810, 25.559307, 33.534492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899771, 25.424576, 33.683350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384585, 0.921131, -0.060106,
		-0.322547, 0.195107, 0.926227,
		0.864903, -0.336826, 0.372143,
		26.159243, 25.323528, 33.794994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743790, 26.080355, 33.933353>,  <25.553810, 25.559307, 33.534492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743790, 26.080355, 33.933353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.071260, 25.869392, 33.842480>,  <26.267742, 25.742815, 33.787956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.071260, 25.869392, 33.842480>,  <25.743790, 26.080355, 33.933353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071260, 25.869392, 33.842480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493957, 0.848515, -0.189815,
		0.292879, 0.043178, 0.955174,
		0.818675, -0.527407, -0.227184,
		26.316862, 25.711170, 33.774326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263485, 26.322954, 34.383087>,  <25.743790, 26.080355, 33.933353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263485, 26.322954, 34.383087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.423546, 26.184521, 34.043652>,  <26.519583, 26.101460, 33.839989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.423546, 26.184521, 34.043652>,  <26.263485, 26.322954, 34.383087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423546, 26.184521, 34.043652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467694, 0.873416, -0.135669,
		0.788124, -0.342592, 0.511363,
		0.400153, -0.346085, -0.848588,
		26.543592, 26.080694, 33.789074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938259, 26.542881, 34.443241>,  <26.263485, 26.322954, 34.383087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938259, 26.542881, 34.443241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.912111, 26.448978, 34.055298>,  <26.896421, 26.392637, 33.822533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.912111, 26.448978, 34.055298>,  <26.938259, 26.542881, 34.443241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912111, 26.448978, 34.055298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753680, 0.625373, -0.202175,
		0.653983, -0.744176, 0.136049,
		-0.065372, -0.234756, -0.969854,
		26.892500, 26.378551, 33.764343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594614, 26.656780, 34.250938>,  <26.938259, 26.542881, 34.443241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594614, 26.656780, 34.250938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.376244, 26.658051, 33.915806>,  <27.245222, 26.658812, 33.714725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.376244, 26.658051, 33.915806>,  <27.594614, 26.656780, 34.250938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376244, 26.658051, 33.915806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553726, 0.751834, -0.357958,
		0.628771, -0.659345, -0.412202,
		-0.545925, 0.003174, -0.837828,
		27.212465, 26.659002, 33.664459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128168, 26.602606, 33.730202>,  <27.594614, 26.656780, 34.250938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128168, 26.602606, 33.730202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.779352, 26.753464, 33.605423>,  <27.570063, 26.843979, 33.530556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.779352, 26.753464, 33.605423>,  <28.128168, 26.602606, 33.730202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779352, 26.753464, 33.605423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462724, 0.842976, -0.274368,
		0.159487, -0.383605, -0.909621,
		-0.872038, 0.377146, -0.311947,
		27.517740, 26.866608, 33.511837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594248, 26.159090, 33.669926>,  <28.128168, 26.602606, 33.730202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594248, 26.159090, 33.669926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.979330, 26.111835, 33.767281>,  <29.210381, 26.083483, 33.825695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.979330, 26.111835, 33.767281>,  <28.594248, 26.159090, 33.669926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979330, 26.111835, 33.767281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264951, -0.593690, 0.759824,
		0.054738, -0.795975, -0.602849,
		0.962707, -0.118134, 0.243392,
		29.268143, 26.076395, 33.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659008, 25.507692, 33.749683>,  <28.594248, 26.159090, 33.669926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659008, 25.507692, 33.749683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.949806, 25.692844, 33.952549>,  <29.124285, 25.803936, 34.074268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.949806, 25.692844, 33.952549>,  <28.659008, 25.507692, 33.749683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949806, 25.692844, 33.952549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034280, -0.713232, 0.700089,
		0.685784, -0.526348, -0.502650,
		0.726997, 0.462879, 0.507167,
		29.167906, 25.831709, 34.104698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092169, 24.964998, 33.943916>,  <28.659008, 25.507692, 33.749683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092169, 24.964998, 33.943916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.162016, 25.267372, 34.196289>,  <29.203924, 25.448797, 34.347710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.162016, 25.267372, 34.196289>,  <29.092169, 24.964998, 33.943916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162016, 25.267372, 34.196289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010946, -0.642222, 0.766440,
		0.984576, -0.126928, -0.120417,
		0.174617, 0.755936, 0.630927,
		29.214401, 25.494154, 34.385567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643435, 24.706453, 34.295002>,  <29.092169, 24.964998, 33.943916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643435, 24.706453, 34.295002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.466793, 25.000011, 34.501453>,  <29.360809, 25.176146, 34.625324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.466793, 25.000011, 34.501453>,  <29.643435, 24.706453, 34.295002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466793, 25.000011, 34.501453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176505, -0.635075, 0.752015,
		0.879678, 0.240992, 0.409986,
		-0.441602, 0.733896, 0.516125,
		29.334312, 25.220181, 34.656292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915884, 24.653887, 34.925995>,  <29.643435, 24.706453, 34.295002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915884, 24.653887, 34.925995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.589605, 24.871971, 35.003338>,  <29.393839, 25.002821, 35.049744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.589605, 24.871971, 35.003338>,  <29.915884, 24.653887, 34.925995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589605, 24.871971, 35.003338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176799, -0.553220, 0.814057,
		0.550803, 0.629836, 0.547652,
		-0.815695, 0.545209, 0.193361,
		29.344896, 25.035534, 35.061348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844332, 24.879902, 35.630512>,  <29.915884, 24.653887, 34.925995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844332, 24.879902, 35.630512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.474976, 24.884579, 35.477039>,  <29.253361, 24.887384, 35.384956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.474976, 24.884579, 35.477039>,  <29.844332, 24.879902, 35.630512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474976, 24.884579, 35.477039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308915, -0.615962, 0.724681,
		-0.227858, 0.787689, 0.572387,
		-0.923392, 0.011694, -0.383681,
		29.197958, 24.888086, 35.361935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443394, 24.797052, 36.179539>,  <29.844332, 24.879902, 35.630512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443394, 24.797052, 36.179539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.195644, 24.690720, 35.884048>,  <29.046995, 24.626921, 35.706757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.195644, 24.690720, 35.884048>,  <29.443394, 24.797052, 36.179539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195644, 24.690720, 35.884048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461140, -0.638334, 0.616343,
		-0.635396, 0.722401, 0.272781,
		-0.619372, -0.265832, -0.738723,
		29.009832, 24.610970, 35.662430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781797, 24.820889, 36.439507>,  <29.443394, 24.797052, 36.179539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781797, 24.820889, 36.439507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.772362, 24.572086, 36.126442>,  <28.766701, 24.422806, 35.938602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.772362, 24.572086, 36.126442>,  <28.781797, 24.820889, 36.439507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772362, 24.572086, 36.126442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214218, -0.761548, 0.611683,
		-0.976501, 0.182089, -0.115280,
		-0.023590, -0.622004, -0.782659,
		28.765285, 24.385485, 35.891644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291138, 24.323772, 36.737465>,  <28.781797, 24.820889, 36.439507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291138, 24.323772, 36.737465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.401125, 24.136879, 36.401348>,  <28.467117, 24.024744, 36.199677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.401125, 24.136879, 36.401348>,  <28.291138, 24.323772, 36.737465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401125, 24.136879, 36.401348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038335, -0.867956, 0.495159,
		-0.960689, -0.168365, -0.220748,
		0.274967, -0.467232, -0.840291,
		28.483614, 23.996710, 36.149261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898905, 23.684452, 36.658527>,  <28.291138, 24.323772, 36.737465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898905, 23.684452, 36.658527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.222231, 23.608932, 36.435463>,  <28.416225, 23.563622, 36.301624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.222231, 23.608932, 36.435463>,  <27.898905, 23.684452, 36.658527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222231, 23.608932, 36.435463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063159, -0.913917, 0.400956,
		-0.585353, -0.359320, -0.726809,
		0.808315, -0.188797, -0.557659,
		28.464725, 23.552294, 36.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833815, 23.030523, 36.316204>,  <27.898905, 23.684452, 36.658527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833815, 23.030523, 36.316204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.230410, 23.079277, 36.297909>,  <28.468367, 23.108530, 36.286930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.230410, 23.079277, 36.297909>,  <27.833815, 23.030523, 36.316204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230410, 23.079277, 36.297909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130093, -0.914259, 0.383674,
		0.004945, -0.386360, -0.922335,
		0.991489, 0.121887, -0.045742,
		28.527857, 23.115843, 36.284187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223848, 22.494102, 35.941074>,  <27.833815, 23.030523, 36.316204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223848, 22.494102, 35.941074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.506023, 22.655323, 36.174282>,  <28.675327, 22.752056, 36.314205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.506023, 22.655323, 36.174282>,  <28.223848, 22.494102, 35.941074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506023, 22.655323, 36.174282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181739, -0.897932, 0.400860,
		0.685077, -0.176824, -0.706684,
		0.705436, 0.403052, 0.583017,
		28.717655, 22.776239, 36.349186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782394, 22.099644, 35.893768>,  <28.223848, 22.494102, 35.941074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782394, 22.099644, 35.893768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.866739, 22.277374, 36.242046>,  <28.917347, 22.384012, 36.451015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.866739, 22.277374, 36.242046>,  <28.782394, 22.099644, 35.893768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866739, 22.277374, 36.242046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318799, -0.873282, 0.368438,
		0.924070, 0.199888, -0.325792,
		0.210861, 0.444324, 0.870697,
		28.929998, 22.410671, 36.503254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308920, 21.634905, 36.152878>,  <28.782394, 22.099644, 35.893768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308920, 21.634905, 36.152878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.150488, 21.847450, 36.452415>,  <29.055428, 21.974977, 36.632137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.150488, 21.847450, 36.452415>,  <29.308920, 21.634905, 36.152878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150488, 21.847450, 36.452415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153412, -0.765786, 0.624530,
		0.905309, 0.362247, 0.221796,
		-0.396082, 0.531366, 0.748845,
		29.031664, 22.006861, 36.677071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408594, 21.897814, 35.493980>,  <29.308920, 21.634905, 36.152878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408594, 21.897814, 35.493980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.350840, 21.508930, 35.420269>,  <29.316187, 21.275600, 35.376041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.350840, 21.508930, 35.420269>,  <29.408594, 21.897814, 35.493980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350840, 21.508930, 35.420269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655911, 0.045405, -0.753471,
		0.740900, -0.229661, 0.631128,
		-0.144387, -0.972211, -0.184278,
		29.307524, 21.217266, 35.364986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057013, 21.684038, 35.433361>,  <29.408594, 21.897814, 35.493980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057013, 21.684038, 35.433361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.826382, 21.405548, 35.262325>,  <29.688004, 21.238455, 35.159702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.826382, 21.405548, 35.262325>,  <30.057013, 21.684038, 35.433361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826382, 21.405548, 35.262325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490711, 0.123355, -0.862546,
		0.653271, -0.707145, 0.270522,
		-0.576575, -0.696225, -0.427588,
		29.653410, 21.196680, 35.134048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574289, 21.254854, 34.986061>,  <30.057013, 21.684038, 35.433361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574289, 21.254854, 34.986061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205839, 21.177914, 34.850693>,  <29.984768, 21.131750, 34.769474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205839, 21.177914, 34.850693>,  <30.574289, 21.254854, 34.986061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205839, 21.177914, 34.850693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363495, -0.113992, -0.924596,
		0.139271, -0.974683, 0.174920,
		-0.921127, -0.192352, -0.338416,
		29.929501, 21.120209, 34.749168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656530, 20.690203, 34.634033>,  <30.574289, 21.254854, 34.986061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656530, 20.690203, 34.634033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.345377, 20.908134, 34.508774>,  <30.158686, 21.038893, 34.433620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.345377, 20.908134, 34.508774>,  <30.656530, 20.690203, 34.634033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345377, 20.908134, 34.508774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410429, 0.063133, -0.909704,
		-0.475863, -0.836168, -0.272724,
		-0.777883, 0.544828, -0.313145,
		30.112013, 21.071583, 34.414829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414057, 20.436243, 33.965355>,  <30.656530, 20.690203, 34.634033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414057, 20.436243, 33.965355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.283880, 20.813725, 33.989059>,  <30.205774, 21.040213, 34.003284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.283880, 20.813725, 33.989059>,  <30.414057, 20.436243, 33.965355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283880, 20.813725, 33.989059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518416, 0.230494, -0.823479,
		-0.790780, -0.237269, -0.564243,
		-0.325441, 0.943703, 0.059266,
		30.186249, 21.096836, 34.006840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301847, 20.513775, 33.258450>,  <30.414057, 20.436243, 33.965355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301847, 20.513775, 33.258450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.264488, 20.892365, 33.382042>,  <30.242073, 21.119518, 33.456196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.264488, 20.892365, 33.382042>,  <30.301847, 20.513775, 33.258450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264488, 20.892365, 33.382042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338683, 0.322029, -0.884076,
		-0.936253, 0.022074, -0.350631,
		-0.093398, 0.946472, 0.308977,
		30.236469, 21.176306, 33.474735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995047, 20.908079, 32.709869>,  <30.301847, 20.513775, 33.258450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995047, 20.908079, 32.709869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173239, 21.177010, 32.946350>,  <30.280155, 21.338367, 33.088238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173239, 21.177010, 32.946350>,  <29.995047, 20.908079, 32.709869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173239, 21.177010, 32.946350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491194, 0.368549, -0.789240,
		-0.748514, 0.641989, -0.166061,
		0.445482, 0.672326, 0.591206,
		30.306883, 21.378708, 33.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367458, 21.182743, 32.588875>,  <29.995047, 20.908079, 32.709869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367458, 21.182743, 32.588875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.180561, 20.996700, 32.288113>,  <29.068422, 20.885075, 32.107655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.180561, 20.996700, 32.288113>,  <29.367458, 21.182743, 32.588875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180561, 20.996700, 32.288113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292893, -0.720998, 0.627993,
		-0.834206, 0.513653, 0.200654,
		-0.467241, -0.465105, -0.751906,
		29.040388, 20.857168, 32.062542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633438, 21.083704, 32.843586>,  <29.367458, 21.182743, 32.588875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633438, 21.083704, 32.843586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.681011, 20.851795, 32.521164>,  <28.709555, 20.712650, 32.327713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.681011, 20.851795, 32.521164>,  <28.633438, 21.083704, 32.843586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681011, 20.851795, 32.521164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344496, -0.785481, 0.514142,
		-0.931224, 0.216533, -0.293149,
		0.118934, -0.579770, -0.806053,
		28.716692, 20.677864, 32.279346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952820, 20.820202, 32.641445>,  <28.633438, 21.083704, 32.843586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952820, 20.820202, 32.641445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.249916, 20.584148, 32.514904>,  <28.428175, 20.442516, 32.438980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.249916, 20.584148, 32.514904>,  <27.952820, 20.820202, 32.641445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249916, 20.584148, 32.514904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436091, -0.784865, 0.440240,
		-0.508092, -0.189027, -0.840304,
		0.742743, -0.590132, -0.316350,
		28.472738, 20.407108, 32.419998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566679, 20.280115, 32.354961>,  <27.952820, 20.820202, 32.641445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566679, 20.280115, 32.354961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.932961, 20.146576, 32.444431>,  <28.152729, 20.066452, 32.498112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.932961, 20.146576, 32.444431>,  <27.566679, 20.280115, 32.354961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932961, 20.146576, 32.444431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396951, -0.838120, 0.374144,
		0.062558, -0.431393, -0.899993,
		0.915705, -0.333847, 0.223674,
		28.207672, 20.046421, 32.511532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582306, 19.679754, 31.987837>,  <27.566679, 20.280115, 32.354961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582306, 19.679754, 31.987837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.853014, 19.664227, 32.281906>,  <28.015438, 19.654909, 32.458347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.853014, 19.664227, 32.281906>,  <27.582306, 19.679754, 31.987837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853014, 19.664227, 32.281906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340842, -0.901658, 0.266155,
		0.652542, -0.430703, -0.623445,
		0.676769, -0.038819, 0.735171,
		28.056046, 19.652580, 32.502457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801647, 18.975130, 31.987955>,  <27.582306, 19.679754, 31.987837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801647, 18.975130, 31.987955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.896921, 19.116302, 32.349884>,  <27.954086, 19.201006, 32.567043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.896921, 19.116302, 32.349884>,  <27.801647, 18.975130, 31.987955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896921, 19.116302, 32.349884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273032, -0.869734, 0.411116,
		0.932052, -0.344968, -0.110798,
		0.238186, 0.352930, 0.904824,
		27.968378, 19.222181, 32.621330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751997, 18.378929, 32.376518>,  <27.801647, 18.975130, 31.987955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751997, 18.378929, 32.376518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.817406, 18.661076, 32.652409>,  <27.856651, 18.830364, 32.817944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.817406, 18.661076, 32.652409>,  <27.751997, 18.378929, 32.376518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817406, 18.661076, 32.652409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144599, -0.674445, 0.724027,
		0.975885, -0.218128, -0.008292,
		0.163523, 0.705368, 0.689722,
		27.866463, 18.872686, 32.859325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299477, 18.188471, 32.712433>,  <27.751997, 18.378929, 32.376518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299477, 18.188471, 32.712433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071255, 18.405582, 32.958965>,  <27.934322, 18.535849, 33.106884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071255, 18.405582, 32.958965>,  <28.299477, 18.188471, 32.712433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071255, 18.405582, 32.958965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038015, -0.732206, 0.680021,
		0.820380, 0.411418, 0.397129,
		-0.570553, 0.542779, 0.616327,
		27.900089, 18.568417, 33.143864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582909, 18.136856, 33.475826>,  <28.299477, 18.188471, 32.712433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582909, 18.136856, 33.475826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.207403, 18.264484, 33.527847>,  <27.982100, 18.341063, 33.559059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.207403, 18.264484, 33.527847>,  <28.582909, 18.136856, 33.475826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207403, 18.264484, 33.527847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169633, -0.756522, 0.631585,
		0.299910, 0.570848, 0.764321,
		-0.938764, 0.319073, 0.130054,
		27.925774, 18.360207, 33.566864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.438753, 31.324341, 25.197147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043503, 31.372082, 25.158451>,  <30.806353, 31.400726, 25.135233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043503, 31.372082, 25.158451>,  <31.438753, 31.324341, 25.197147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043503, 31.372082, 25.158451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117104, -0.992707, -0.028625,
		-0.099449, -0.016956, 0.994898,
		-0.988128, 0.119354, -0.096738,
		30.747065, 31.407888, 25.129429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170986, 30.966459, 25.745026>,  <31.438753, 31.324341, 25.197147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170986, 30.966459, 25.745026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881006, 30.994911, 25.470978>,  <30.707018, 31.011982, 25.306549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881006, 30.994911, 25.470978>,  <31.170986, 30.966459, 25.745026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881006, 30.994911, 25.470978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136965, -0.989678, 0.042179,
		-0.675046, 0.124415, 0.727210,
		-0.724951, 0.071130, -0.685118,
		30.663521, 31.016251, 25.265442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508682, 30.843191, 26.062380>,  <31.170986, 30.966459, 25.745026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508682, 30.843191, 26.062380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467989, 30.756504, 25.674011>,  <30.443573, 30.704493, 25.440990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467989, 30.756504, 25.674011>,  <30.508682, 30.843191, 26.062380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467989, 30.756504, 25.674011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211497, -0.948960, 0.233975,
		-0.972070, 0.229150, 0.050707,
		-0.101734, -0.216716, -0.970919,
		30.437469, 30.691490, 25.382736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170258, 30.242891, 26.113241>,  <30.508682, 30.843191, 26.062380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170258, 30.242891, 26.113241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264771, 30.237141, 25.724609>,  <30.321478, 30.233690, 25.491430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264771, 30.237141, 25.724609>,  <30.170258, 30.242891, 26.113241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264771, 30.237141, 25.724609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108024, -0.994081, -0.011560,
		-0.965661, 0.107685, -0.236435,
		0.236281, -0.014377, -0.971579,
		30.335655, 30.232828, 25.433136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733534, 29.725292, 25.897932>,  <30.170258, 30.242891, 26.113241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733534, 29.725292, 25.897932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037226, 29.763378, 25.640404>,  <30.219440, 29.786230, 25.485888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037226, 29.763378, 25.640404>,  <29.733534, 29.725292, 25.897932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037226, 29.763378, 25.640404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138013, -0.990296, 0.016299,
		-0.636022, -0.101231, -0.765002,
		0.759229, 0.095213, -0.643821,
		30.264994, 29.791943, 25.447258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595865, 29.271370, 25.369404>,  <29.733534, 29.725292, 25.897932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595865, 29.271370, 25.369404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980385, 29.351593, 25.293842>,  <30.211096, 29.399727, 25.248507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980385, 29.351593, 25.293842>,  <29.595865, 29.271370, 25.369404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980385, 29.351593, 25.293842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193477, -0.979540, -0.055389,
		-0.196146, 0.016697, -0.980433,
		0.961298, 0.200556, -0.188902,
		30.268774, 29.411760, 25.237171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705496, 28.852207, 24.891993>,  <29.595865, 29.271370, 25.369404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705496, 28.852207, 24.891993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059526, 28.956345, 25.046322>,  <30.271946, 29.018827, 25.138920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059526, 28.956345, 25.046322>,  <29.705496, 28.852207, 24.891993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059526, 28.956345, 25.046322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260479, -0.964026, 0.052960,
		0.385730, 0.053624, -0.921052,
		0.885078, 0.260343, 0.385822,
		30.325050, 29.034447, 25.162067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225754, 28.436031, 24.549225>,  <29.705496, 28.852207, 24.891993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225754, 28.436031, 24.549225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393507, 28.549641, 24.894119>,  <30.494160, 28.617807, 25.101055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393507, 28.549641, 24.894119>,  <30.225754, 28.436031, 24.549225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393507, 28.549641, 24.894119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275031, -0.944911, 0.177486,
		0.865145, 0.162706, -0.474395,
		0.419383, 0.284025, 0.862234,
		30.519321, 28.634848, 25.152790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724585, 27.917969, 24.669210>,  <30.225754, 28.436031, 24.549225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724585, 27.917969, 24.669210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655945, 28.078754, 25.028984>,  <30.614761, 28.175226, 25.244848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655945, 28.078754, 25.028984>,  <30.724585, 27.917969, 24.669210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655945, 28.078754, 25.028984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196059, -0.880780, 0.431031,
		0.965461, 0.250306, 0.072332,
		-0.171599, 0.401963, 0.899433,
		30.604465, 28.199343, 25.298815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219849, 27.676517, 25.124113>,  <30.724585, 27.917969, 24.669210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219849, 27.676517, 25.124113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906698, 27.774147, 25.353035>,  <30.718807, 27.832726, 25.490389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906698, 27.774147, 25.353035>,  <31.219849, 27.676517, 25.124113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906698, 27.774147, 25.353035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174609, -0.796687, 0.578620,
		0.597174, 0.552917, 0.581090,
		-0.782876, 0.244074, 0.572305,
		30.671835, 27.847370, 25.524727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548555, 27.691130, 25.847366>,  <31.219849, 27.676517, 25.124113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548555, 27.691130, 25.847366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149864, 27.683571, 25.878803>,  <30.910650, 27.679035, 25.897665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149864, 27.683571, 25.878803>,  <31.548555, 27.691130, 25.847366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149864, 27.683571, 25.878803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061407, -0.809290, 0.584190,
		0.052567, 0.587105, 0.807802,
		-0.996728, -0.018896, 0.078595,
		30.850845, 27.677902, 25.902382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454506, 27.673916, 26.521935>,  <31.548555, 27.691130, 25.847366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454506, 27.673916, 26.521935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121256, 27.525288, 26.358063>,  <30.921307, 27.436111, 26.259739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121256, 27.525288, 26.358063>,  <31.454506, 27.673916, 26.521935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121256, 27.525288, 26.358063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073086, -0.808184, 0.584378,
		-0.548235, 0.456918, 0.700475,
		-0.833125, -0.371571, -0.409680,
		30.871319, 27.413816, 26.235159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892633, 28.040878, 27.010416>,  <31.454506, 27.673916, 26.521935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892633, 28.040878, 27.010416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231953, 27.902885, 27.171101>,  <32.435543, 27.820089, 27.267511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231953, 27.902885, 27.171101>,  <31.892633, 28.040878, 27.010416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231953, 27.902885, 27.171101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509020, 0.740308, -0.439139,
		-0.145896, 0.577002, 0.803607,
		0.848300, -0.344983, 0.401713,
		32.486443, 27.799391, 27.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170395, 28.587017, 27.355032>,  <31.892633, 28.040878, 27.010416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170395, 28.587017, 27.355032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454704, 28.326675, 27.248310>,  <32.625290, 28.170469, 27.184277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454704, 28.326675, 27.248310>,  <32.170395, 28.587017, 27.355032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454704, 28.326675, 27.248310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532611, 0.745728, -0.400269,
		0.459483, 0.142397, 0.876698,
		0.710775, -0.650856, -0.266807,
		32.667938, 28.131418, 27.168268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772015, 28.915840, 27.534130>,  <32.170395, 28.587017, 27.355032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772015, 28.915840, 27.534130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860443, 28.643394, 27.254929>,  <32.913502, 28.479927, 27.087408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860443, 28.643394, 27.254929>,  <32.772015, 28.915840, 27.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860443, 28.643394, 27.254929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560326, 0.674503, -0.480709,
		0.798223, -0.284838, 0.530761,
		0.221076, -0.681112, -0.698006,
		32.926765, 28.439060, 27.045527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467747, 29.101860, 27.497450>,  <32.772015, 28.915840, 27.534130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467747, 29.101860, 27.497450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387009, 28.882610, 27.172779>,  <33.338566, 28.751060, 26.977978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387009, 28.882610, 27.172779>,  <33.467747, 29.101860, 27.497450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387009, 28.882610, 27.172779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617814, 0.571798, -0.539771,
		0.759977, -0.610413, 0.223227,
		-0.201843, -0.548127, -0.811675,
		33.326454, 28.718172, 26.929277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078545, 28.959406, 27.242306>,  <33.467747, 29.101860, 27.497450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078545, 28.959406, 27.242306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841465, 28.890316, 26.927631>,  <33.699219, 28.848862, 26.738827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841465, 28.890316, 26.927631>,  <34.078545, 28.959406, 27.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841465, 28.890316, 26.927631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642944, 0.486827, -0.591289,
		0.485071, -0.856262, -0.177541,
		-0.592730, -0.172668, -0.786674,
		33.663654, 28.838499, 26.691626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520508, 28.762484, 26.710190>,  <34.078545, 28.959406, 27.242306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520508, 28.762484, 26.710190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200214, 28.924541, 26.533699>,  <34.008038, 29.021776, 26.427805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200214, 28.924541, 26.533699>,  <34.520508, 28.762484, 26.710190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200214, 28.924541, 26.533699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598486, 0.572121, -0.560795,
		0.025231, -0.713116, -0.700592,
		-0.800736, 0.405145, -0.441226,
		33.959995, 29.046085, 26.401331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720940, 28.851849, 26.094801>,  <34.520508, 28.762484, 26.710190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720940, 28.851849, 26.094801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405239, 29.097443, 26.090782>,  <34.215816, 29.244799, 26.088371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405239, 29.097443, 26.090782>,  <34.720940, 28.851849, 26.094801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405239, 29.097443, 26.090782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548045, 0.696922, -0.462545,
		-0.276995, -0.370570, -0.886539,
		-0.789253, 0.613986, -0.010045,
		34.168465, 29.281639, 26.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692413, 29.113457, 25.411839>,  <34.720940, 28.851849, 26.094801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692413, 29.113457, 25.411839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479557, 29.343899, 25.660011>,  <34.351845, 29.482164, 25.808914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479557, 29.343899, 25.660011>,  <34.692413, 29.113457, 25.411839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479557, 29.343899, 25.660011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449081, 0.813281, -0.370001,
		-0.717745, 0.081734, -0.691493,
		-0.532136, 0.576103, 0.620433,
		34.319916, 29.516729, 25.846142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656021, 29.670828, 25.052996>,  <34.692413, 29.113457, 25.411839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656021, 29.670828, 25.052996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502342, 29.802326, 25.398090>,  <34.410133, 29.881226, 25.605148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502342, 29.802326, 25.398090>,  <34.656021, 29.670828, 25.052996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502342, 29.802326, 25.398090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412632, 0.897078, -0.158072,
		-0.825909, 0.295262, -0.480308,
		-0.384201, 0.328744, 0.862738,
		34.387081, 29.900949, 25.656912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314156, 30.308075, 24.805988>,  <34.656021, 29.670828, 25.052996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314156, 30.308075, 24.805988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430618, 30.290421, 25.188251>,  <34.500496, 30.279827, 25.417610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430618, 30.290421, 25.188251>,  <34.314156, 30.308075, 24.805988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430618, 30.290421, 25.188251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407097, 0.909696, -0.082013,
		-0.865738, 0.412924, 0.282828,
		0.291153, -0.044137, 0.955658,
		34.517963, 30.277180, 25.474949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176685, 30.966015, 25.087275>,  <34.314156, 30.308075, 24.805988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176685, 30.966015, 25.087275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448601, 30.802620, 25.330921>,  <34.611752, 30.704582, 25.477110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448601, 30.802620, 25.330921>,  <34.176685, 30.966015, 25.087275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448601, 30.802620, 25.330921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552894, 0.831111, -0.059682,
		-0.481866, 0.377349, 0.790830,
		0.679789, -0.408487, 0.609118,
		34.652538, 30.680075, 25.513657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261372, 31.443922, 25.564970>,  <34.176685, 30.966015, 25.087275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261372, 31.443922, 25.564970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580147, 31.202854, 25.581333>,  <34.771412, 31.058214, 25.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580147, 31.202854, 25.581333>,  <34.261372, 31.443922, 25.564970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580147, 31.202854, 25.581333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601727, 0.786103, -0.141303,
		0.053000, 0.137227, 0.989121,
		0.796941, -0.602670, 0.040910,
		34.819229, 31.022053, 25.593607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756790, 31.802866, 25.852692>,  <34.261372, 31.443922, 25.564970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756790, 31.802866, 25.852692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989861, 31.512917, 25.705700>,  <35.129704, 31.338947, 25.617504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989861, 31.512917, 25.705700>,  <34.756790, 31.802866, 25.852692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989861, 31.512917, 25.705700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763258, 0.643403, -0.058915,
		0.279144, -0.246154, 0.928163,
		0.582681, -0.724873, -0.367481,
		35.164665, 31.295454, 25.595455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355949, 31.731245, 26.246466>,  <34.756790, 31.802866, 25.852692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355949, 31.731245, 26.246466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443577, 31.591885, 25.881912>,  <35.496155, 31.508268, 25.663179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443577, 31.591885, 25.881912>,  <35.355949, 31.731245, 26.246466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443577, 31.591885, 25.881912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765683, 0.640344, -0.060740,
		0.604763, -0.684526, 0.407046,
		0.219071, -0.348401, -0.911386,
		35.509296, 31.487364, 25.608496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295948, 32.450123, 26.311682>,  <35.355949, 31.731245, 26.246466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295948, 32.450123, 26.311682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131996, 32.688698, 26.587730>,  <35.033627, 32.831844, 26.753359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131996, 32.688698, 26.587730>,  <35.295948, 32.450123, 26.311682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131996, 32.688698, 26.587730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546335, -0.766393, 0.337875,
		0.730424, -0.238549, 0.639981,
		-0.409877, 0.596436, 0.690120,
		35.009033, 32.867630, 26.794765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093662, 32.035606, 26.924805>,  <35.295948, 32.450123, 26.311682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093662, 32.035606, 26.924805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886677, 32.372189, 26.987011>,  <34.762486, 32.574139, 27.024336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886677, 32.372189, 26.987011>,  <35.093662, 32.035606, 26.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886677, 32.372189, 26.987011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699363, -0.520597, 0.489766,
		0.493079, 0.144672, 0.857872,
		-0.517461, 0.841457, 0.155517,
		34.731438, 32.624626, 27.033667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177006, 32.250099, 27.557400>,  <35.093662, 32.035606, 26.924805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177006, 32.250099, 27.557400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804108, 32.352802, 27.455425>,  <34.580368, 32.414425, 27.394241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804108, 32.352802, 27.455425>,  <35.177006, 32.250099, 27.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804108, 32.352802, 27.455425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357433, -0.762935, 0.538677,
		-0.056192, 0.593302, 0.803016,
		-0.932247, 0.256755, -0.254937,
		34.524433, 32.429829, 27.378944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771416, 32.220291, 28.224396>,  <35.177006, 32.250099, 27.557400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771416, 32.220291, 28.224396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477882, 32.249237, 27.954208>,  <34.301762, 32.266605, 27.792097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477882, 32.249237, 27.954208>,  <34.771416, 32.220291, 28.224396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477882, 32.249237, 27.954208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549280, -0.648274, 0.527288,
		-0.399729, 0.757960, 0.515474,
		-0.733831, 0.072368, -0.675466,
		34.257732, 32.270947, 27.751568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124962, 32.179298, 28.640255>,  <34.771416, 32.220291, 28.224396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124962, 32.179298, 28.640255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989204, 32.096180, 28.273293>,  <33.907749, 32.046307, 28.053116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989204, 32.096180, 28.273293>,  <34.124962, 32.179298, 28.640255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989204, 32.096180, 28.273293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629843, -0.674182, 0.385716,
		-0.698649, 0.708730, 0.097933,
		-0.339393, -0.207798, -0.917405,
		33.887386, 32.033840, 27.998072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391315, 32.158752, 28.646790>,  <34.124962, 32.179298, 28.640255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391315, 32.158752, 28.646790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487343, 31.935070, 28.329388>,  <33.544960, 31.800859, 28.138947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487343, 31.935070, 28.329388>,  <33.391315, 32.158752, 28.646790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487343, 31.935070, 28.329388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703529, -0.663452, 0.254710,
		-0.668892, 0.497111, -0.552689,
		0.240063, -0.559206, -0.793510,
		33.559364, 31.767307, 28.091335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737919, 31.982117, 28.275097>,  <33.391315, 32.158752, 28.646790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737919, 31.982117, 28.275097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025242, 31.713764, 28.201389>,  <33.197636, 31.552752, 28.157166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025242, 31.713764, 28.201389>,  <32.737919, 31.982117, 28.275097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025242, 31.713764, 28.201389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593022, -0.728901, 0.342094,
		-0.363818, -0.136452, -0.921421,
		0.718304, -0.670883, -0.184269,
		33.240734, 31.512499, 28.146109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344517, 31.471693, 28.208794>,  <32.737919, 31.982117, 28.275097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344517, 31.471693, 28.208794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709991, 31.313980, 28.248219>,  <32.929276, 31.219353, 28.271873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709991, 31.313980, 28.248219>,  <32.344517, 31.471693, 28.208794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709991, 31.313980, 28.248219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393659, -0.798304, 0.455789,
		-0.101029, -0.455248, -0.884614,
		0.913688, -0.394284, 0.098561,
		32.984097, 31.195694, 28.277786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239780, 30.767902, 28.013681>,  <32.344517, 31.471693, 28.208794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239780, 30.767902, 28.013681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578068, 30.774551, 28.227028>,  <32.781040, 30.778542, 28.355036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578068, 30.774551, 28.227028>,  <32.239780, 30.767902, 28.013681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578068, 30.774551, 28.227028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278313, -0.839065, 0.467453,
		0.455298, -0.543778, -0.704989,
		0.845722, 0.016623, 0.533365,
		32.831783, 30.779539, 28.387037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518597, 30.156704, 27.960033>,  <32.239780, 30.767902, 28.013681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518597, 30.156704, 27.960033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688946, 30.295139, 28.294422>,  <32.791157, 30.378201, 28.495056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688946, 30.295139, 28.294422>,  <32.518597, 30.156704, 27.960033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688946, 30.295139, 28.294422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345554, -0.791696, 0.503795,
		0.836196, -0.503428, -0.217571,
		0.425875, 0.346089, 0.835974,
		32.816708, 30.398966, 28.545214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666889, 29.561020, 28.319946>,  <32.518597, 30.156704, 27.960033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666889, 29.561020, 28.319946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720390, 29.830856, 28.610336>,  <32.752491, 29.992758, 28.784571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720390, 29.830856, 28.610336>,  <32.666889, 29.561020, 28.319946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720390, 29.830856, 28.610336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293852, -0.672615, 0.679147,
		0.946446, -0.304168, 0.108264,
		0.133754, 0.674589, 0.725974,
		32.760517, 30.033234, 28.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138615, 29.241285, 28.849541>,  <32.666889, 29.561020, 28.319946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138615, 29.241285, 28.849541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930664, 29.530327, 29.031780>,  <32.805893, 29.703753, 29.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930664, 29.530327, 29.031780>,  <33.138615, 29.241285, 28.849541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930664, 29.530327, 29.031780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279013, -0.647725, 0.708946,
		0.807391, 0.241445, 0.538352,
		-0.519876, 0.722604, 0.455601,
		32.774700, 29.747108, 29.168461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141041, 29.008295, 29.592770>,  <33.138615, 29.241285, 28.849541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141041, 29.008295, 29.592770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849144, 29.275188, 29.533066>,  <32.674007, 29.435324, 29.497244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849144, 29.275188, 29.533066>,  <33.141041, 29.008295, 29.592770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849144, 29.275188, 29.533066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605744, -0.529672, 0.593735,
		0.317101, 0.523685, 0.790696,
		-0.729740, 0.667233, -0.149260,
		32.630222, 29.475359, 29.488287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862041, 29.128365, 30.288620>,  <33.141041, 29.008295, 29.592770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862041, 29.128365, 30.288620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569618, 29.249912, 30.044254>,  <32.394165, 29.322842, 29.897635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569618, 29.249912, 30.044254>,  <32.862041, 29.128365, 30.288620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569618, 29.249912, 30.044254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671854, -0.476762, 0.566842,
		-0.119013, 0.824840, 0.552698,
		-0.731060, 0.303871, -0.610913,
		32.350300, 29.341074, 29.860981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309818, 29.408463, 30.723867>,  <32.862041, 29.128365, 30.288620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309818, 29.408463, 30.723867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133381, 29.286293, 30.386311>,  <32.027519, 29.212992, 30.183777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133381, 29.286293, 30.386311>,  <32.309818, 29.408463, 30.723867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133381, 29.286293, 30.386311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739267, -0.409482, 0.534611,
		-0.508840, 0.859675, -0.045167,
		-0.441096, -0.305422, -0.843891,
		32.001053, 29.194666, 30.133142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621704, 29.513159, 30.813286>,  <32.309818, 29.408463, 30.723867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621704, 29.513159, 30.813286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628923, 29.240227, 30.520958>,  <31.633255, 29.076468, 30.345562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628923, 29.240227, 30.520958>,  <31.621704, 29.513159, 30.813286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628923, 29.240227, 30.520958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720206, -0.515879, 0.463866,
		-0.693525, 0.517970, -0.500730,
		0.018048, -0.682331, -0.730820,
		31.634338, 29.035528, 30.301712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927353, 29.461349, 30.542250>,  <31.621704, 29.513159, 30.813286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927353, 29.461349, 30.542250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120514, 29.123695, 30.449089>,  <31.236410, 28.921103, 30.393192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120514, 29.123695, 30.449089>,  <30.927353, 29.461349, 30.542250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120514, 29.123695, 30.449089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719440, -0.534079, 0.444033,
		-0.499210, -0.046868, -0.865213,
		0.482903, -0.844134, -0.232899,
		31.265385, 28.870455, 30.379219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397842, 29.010693, 30.349674>,  <30.927353, 29.461349, 30.542250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397842, 29.010693, 30.349674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711319, 28.778820, 30.438938>,  <30.899405, 28.639696, 30.492496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711319, 28.778820, 30.438938>,  <30.397842, 29.010693, 30.349674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711319, 28.778820, 30.438938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615454, -0.676115, 0.405073,
		-0.083931, -0.454797, -0.886631,
		0.783691, -0.579679, 0.223160,
		30.946426, 28.604916, 30.505886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117464, 28.340956, 30.306856>,  <30.397842, 29.010693, 30.349674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117464, 28.340956, 30.306856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451941, 28.275486, 30.516235>,  <30.652626, 28.236204, 30.641863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451941, 28.275486, 30.516235>,  <30.117464, 28.340956, 30.306856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451941, 28.275486, 30.516235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466815, -0.713379, 0.522661,
		0.287869, -0.681397, -0.672926,
		0.836191, -0.163674, 0.523446,
		30.702797, 28.226383, 30.673269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226336, 27.618494, 30.240858>,  <30.117464, 28.340956, 30.306856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226336, 27.618494, 30.240858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439264, 27.754951, 30.550762>,  <30.567022, 27.836826, 30.736704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439264, 27.754951, 30.550762>,  <30.226336, 27.618494, 30.240858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439264, 27.754951, 30.550762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345156, -0.748214, 0.566607,
		0.772981, -0.569031, -0.280543,
		0.532323, 0.341145, 0.774760,
		30.598961, 27.857294, 30.783190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639002, 27.027241, 30.563429>,  <30.226336, 27.618494, 30.240858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639002, 27.027241, 30.563429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621040, 27.299191, 30.856209>,  <30.610264, 27.462360, 31.031878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621040, 27.299191, 30.856209>,  <30.639002, 27.027241, 30.563429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621040, 27.299191, 30.856209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343091, -0.698620, 0.627868,
		0.938228, -0.222931, 0.264630,
		-0.044905, 0.679876, 0.731951,
		30.607569, 27.503153, 31.075794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938866, 26.745598, 31.125816>,  <30.639002, 27.027241, 30.563429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938866, 26.745598, 31.125816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720104, 27.034996, 31.294315>,  <30.588848, 27.208635, 31.395414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720104, 27.034996, 31.294315>,  <30.938866, 26.745598, 31.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720104, 27.034996, 31.294315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263817, -0.626464, 0.733446,
		0.794543, 0.289990, 0.533485,
		-0.546902, 0.723497, 0.421248,
		30.556034, 27.252045, 31.420691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045528, 26.692932, 31.891171>,  <30.938866, 26.745598, 31.125816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045528, 26.692932, 31.891171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716589, 26.920444, 31.885033>,  <30.519226, 27.056952, 31.881350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716589, 26.920444, 31.885033>,  <31.045528, 26.692932, 31.891171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716589, 26.920444, 31.885033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316041, -0.434175, 0.843570,
		0.473142, 0.698557, 0.536800,
		-0.822347, 0.568779, -0.015346,
		30.469885, 27.091078, 31.880428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052183, 26.995758, 32.465370>,  <31.045528, 26.692932, 31.891171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052183, 26.995758, 32.465370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670980, 26.982430, 32.344925>,  <30.442259, 26.974432, 32.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670980, 26.982430, 32.344925>,  <31.052183, 26.995758, 32.465370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670980, 26.982430, 32.344925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253669, -0.455615, 0.853268,
		-0.165626, 0.889553, 0.425751,
		-0.953006, -0.033323, -0.301114,
		30.385078, 26.972433, 32.254589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689871, 27.307125, 33.116768>,  <31.052183, 26.995758, 32.465370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689871, 27.307125, 33.116768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433973, 27.104523, 32.885536>,  <30.280434, 26.982962, 32.746796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433973, 27.104523, 32.885536>,  <30.689871, 27.307125, 33.116768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433973, 27.104523, 32.885536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421075, -0.398243, 0.814922,
		-0.642979, 0.764759, 0.041497,
		-0.639745, -0.506505, -0.578083,
		30.242050, 26.952572, 32.712112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106024, 27.368683, 33.499249>,  <30.689871, 27.307125, 33.116768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106024, 27.368683, 33.499249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041342, 27.049858, 33.266510>,  <30.002533, 26.858562, 33.126869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041342, 27.049858, 33.266510>,  <30.106024, 27.368683, 33.499249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041342, 27.049858, 33.266510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445582, -0.467107, 0.763720,
		-0.880516, 0.382756, -0.279624,
		-0.161704, -0.797063, -0.581845,
		29.992830, 26.810740, 33.091957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435480, 27.271547, 33.542553>,  <30.106024, 27.368683, 33.499249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435480, 27.271547, 33.542553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563894, 26.913197, 33.419693>,  <29.640942, 26.698185, 33.345978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563894, 26.913197, 33.419693>,  <29.435480, 27.271547, 33.542553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563894, 26.913197, 33.419693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496346, -0.435363, 0.751066,
		-0.806584, -0.088667, -0.584431,
		0.321034, -0.895878, -0.307147,
		29.660204, 26.644434, 33.327549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841766, 26.842300, 33.553825>,  <29.435480, 27.271547, 33.542553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841766, 26.842300, 33.553825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169933, 26.614586, 33.575081>,  <29.366835, 26.477957, 33.587833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169933, 26.614586, 33.575081>,  <28.841766, 26.842300, 33.553825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169933, 26.614586, 33.575081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413951, -0.527291, 0.742030,
		-0.394407, -0.630774, -0.668257,
		0.820419, -0.569287, 0.053143,
		29.416059, 26.443800, 33.591022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279079, 26.852161, 33.060246>,  <28.841766, 26.842300, 33.553825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279079, 26.852161, 33.060246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946617, 27.045616, 33.169991>,  <27.747139, 27.161690, 33.235836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946617, 27.045616, 33.169991>,  <28.279079, 26.852161, 33.060246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946617, 27.045616, 33.169991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351194, 0.839149, -0.415321,
		-0.431096, -0.248843, -0.867314,
		-0.831155, 0.483639, 0.274362,
		27.697271, 27.190708, 33.252300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120403, 27.253386, 32.526543>,  <28.279079, 26.852161, 33.060246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120403, 27.253386, 32.526543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877014, 27.419273, 32.797176>,  <27.730980, 27.518806, 32.959557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877014, 27.419273, 32.797176>,  <28.120403, 27.253386, 32.526543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877014, 27.419273, 32.797176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049134, 0.870632, -0.489475,
		-0.792051, -0.264590, -0.550134,
		-0.608474, 0.414720, 0.676585,
		27.694471, 27.543690, 33.000153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456079, 27.621431, 32.193199>,  <28.120403, 27.253386, 32.526543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456079, 27.621431, 32.193199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561058, 27.788975, 32.540920>,  <27.624044, 27.889500, 32.749554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561058, 27.788975, 32.540920>,  <27.456079, 27.621431, 32.193199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561058, 27.788975, 32.540920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170493, 0.866576, -0.469018,
		-0.949766, 0.271300, 0.156016,
		0.262444, 0.418858, 0.869299,
		27.639791, 27.914633, 32.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116383, 28.186825, 32.175758>,  <27.456079, 27.621431, 32.193199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116383, 28.186825, 32.175758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408278, 28.237175, 32.444576>,  <27.583414, 28.267385, 32.605865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408278, 28.237175, 32.444576>,  <27.116383, 28.186825, 32.175758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408278, 28.237175, 32.444576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375928, 0.747140, -0.548142,
		-0.571107, 0.652639, 0.497895,
		0.729736, 0.125875, 0.672043,
		27.627199, 28.274937, 32.646191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154430, 28.895405, 32.387203>,  <27.116383, 28.186825, 32.175758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154430, 28.895405, 32.387203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522614, 28.766819, 32.476128>,  <27.743523, 28.689667, 32.529480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522614, 28.766819, 32.476128>,  <27.154430, 28.895405, 32.387203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522614, 28.766819, 32.476128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388777, 0.811500, -0.436257,
		-0.040160, 0.487983, 0.871929,
		0.920456, -0.321465, 0.222307,
		27.798750, 28.670380, 32.542820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
