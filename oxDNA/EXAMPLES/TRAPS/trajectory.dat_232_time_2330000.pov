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
	<36.471077, 52.299030, 50.268082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277008, 52.648655, 50.278111>,  <36.160568, 52.858429, 50.284126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277008, 52.648655, 50.278111>,  <36.471077, 52.299030, 50.268082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277008, 52.648655, 50.278111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198459, -0.137994, 0.970346,
		0.851602, 0.465806, 0.240416,
		-0.485169, 0.874061, 0.025073,
		36.131458, 52.910873, 50.285633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815331, 52.687714, 50.783386>,  <36.471077, 52.299030, 50.268082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815331, 52.687714, 50.783386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430172, 52.724972, 50.682068>,  <36.199078, 52.747326, 50.621277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430172, 52.724972, 50.682068>,  <36.815331, 52.687714, 50.783386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430172, 52.724972, 50.682068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269434, -0.385618, 0.882442,
		-0.015478, 0.917945, 0.396406,
		-0.962894, 0.093147, -0.253294,
		36.141304, 52.752914, 50.606079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518333, 52.923836, 50.720676>,  <36.815331, 52.687714, 50.783386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518333, 52.923836, 50.720676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804153, 53.042366, 50.467186>,  <37.975647, 53.113483, 50.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804153, 53.042366, 50.467186>,  <37.518333, 52.923836, 50.720676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804153, 53.042366, 50.467186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596130, 0.216171, 0.773239,
		0.366123, -0.930302, -0.022183,
		0.714551, 0.296324, -0.633727,
		38.018520, 53.131264, 50.277069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254902, 52.532501, 50.718681>,  <37.518333, 52.923836, 50.720676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254902, 52.532501, 50.718681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296406, 52.907528, 50.585896>,  <38.321308, 53.132545, 50.506222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296406, 52.907528, 50.585896>,  <38.254902, 52.532501, 50.718681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296406, 52.907528, 50.585896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760214, 0.140463, 0.634307,
		0.641334, -0.318180, -0.698178,
		0.103756, 0.937567, -0.331969,
		38.327534, 53.188797, 50.486305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932163, 52.611481, 50.420208>,  <38.254902, 52.532501, 50.718681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932163, 52.611481, 50.420208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767811, 52.942490, 50.573250>,  <38.669197, 53.141094, 50.665077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767811, 52.942490, 50.573250>,  <38.932163, 52.611481, 50.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767811, 52.942490, 50.573250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810317, 0.139160, 0.569227,
		0.417802, 0.543920, -0.727731,
		-0.410886, 0.827518, 0.382607,
		38.644547, 53.190746, 50.688030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347466, 53.175228, 50.280739>,  <38.932163, 52.611481, 50.420208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347466, 53.175228, 50.280739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133911, 53.200138, 50.618042>,  <39.005779, 53.215084, 50.820423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133911, 53.200138, 50.618042>,  <39.347466, 53.175228, 50.280739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133911, 53.200138, 50.618042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845001, 0.075354, 0.529429,
		-0.030573, 0.995210, -0.092852,
		-0.533890, 0.062274, 0.843257,
		38.973743, 53.218819, 50.871017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046265, 53.318272, 50.375290>,  <39.347466, 53.175228, 50.280739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046265, 53.318272, 50.375290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152912, 53.703793, 50.375736>,  <40.216900, 53.935104, 50.376003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152912, 53.703793, 50.375736>,  <40.046265, 53.318272, 50.375290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152912, 53.703793, 50.375736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753074, -0.209047, 0.623842,
		0.601493, -0.165487, -0.781550,
		0.266618, 0.963802, 0.001116,
		40.232899, 53.992931, 50.376072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695744, 53.438385, 50.104408>,  <40.046265, 53.318272, 50.375290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695744, 53.438385, 50.104408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610950, 53.712845, 50.382763>,  <40.560074, 53.877522, 50.549778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610950, 53.712845, 50.382763>,  <40.695744, 53.438385, 50.104408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610950, 53.712845, 50.382763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717948, -0.373765, 0.587239,
		0.663032, 0.624100, -0.413386,
		-0.211987, 0.686148, 0.695890,
		40.547356, 53.918690, 50.591530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222919, 53.819843, 50.336014>,  <40.695744, 53.438385, 50.104408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222919, 53.819843, 50.336014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975494, 53.820663, 50.650307>,  <40.827038, 53.821156, 50.838882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975494, 53.820663, 50.650307>,  <41.222919, 53.819843, 50.336014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975494, 53.820663, 50.650307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763971, -0.232150, 0.602042,
		0.183643, 0.972678, 0.142031,
		-0.618566, 0.002053, 0.785731,
		40.789925, 53.821278, 50.886024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532711, 54.191296, 50.899963>,  <41.222919, 53.819843, 50.336014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532711, 54.191296, 50.899963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285023, 53.929832, 51.073997>,  <41.136410, 53.772953, 51.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285023, 53.929832, 51.073997>,  <41.532711, 54.191296, 50.899963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285023, 53.929832, 51.073997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700168, -0.208826, 0.682756,
		-0.355433, 0.727407, 0.586980,
		-0.619218, -0.653659, 0.435084,
		41.099258, 53.733734, 51.204521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605251, 54.214516, 51.615597>,  <41.532711, 54.191296, 50.899963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605251, 54.214516, 51.615597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509789, 53.829014, 51.567894>,  <41.452511, 53.597713, 51.539272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509789, 53.829014, 51.567894>,  <41.605251, 54.214516, 51.615597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509789, 53.829014, 51.567894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846501, -0.266639, 0.460803,
		-0.475898, 0.009026, 0.879454,
		-0.238656, -0.963754, -0.119253,
		41.438190, 53.539886, 51.532120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676941, 53.918133, 52.237457>,  <41.605251, 54.214516, 51.615597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676941, 53.918133, 52.237457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688625, 53.608044, 51.985054>,  <41.695637, 53.421989, 51.833611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688625, 53.608044, 51.985054>,  <41.676941, 53.918133, 52.237457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688625, 53.608044, 51.985054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803356, -0.357428, 0.476303,
		-0.594782, -0.520839, 0.612340,
		0.029210, -0.775224, -0.631011,
		41.697388, 53.375477, 51.795750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509468, 53.271553, 52.587593>,  <41.676941, 53.918133, 52.237457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509468, 53.271553, 52.587593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755268, 53.225510, 52.275402>,  <41.902748, 53.197884, 52.088089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755268, 53.225510, 52.275402>,  <41.509468, 53.271553, 52.587593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755268, 53.225510, 52.275402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676655, -0.431749, 0.596432,
		-0.405623, -0.894619, -0.187421,
		0.614499, -0.115107, -0.780475,
		41.939617, 53.190979, 52.041260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612328, 52.585339, 52.423489>,  <41.509468, 53.271553, 52.587593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612328, 52.585339, 52.423489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936127, 52.796158, 52.320004>,  <42.130405, 52.922649, 52.257912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936127, 52.796158, 52.320004>,  <41.612328, 52.585339, 52.423489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936127, 52.796158, 52.320004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577942, -0.637688, 0.509251,
		0.103422, -0.561759, -0.820811,
		0.809498, 0.527049, -0.258713,
		42.178978, 52.954273, 52.242390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052311, 52.169182, 52.339806>,  <41.612328, 52.585339, 52.423489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052311, 52.169182, 52.339806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249020, 52.510452, 52.409378>,  <42.367046, 52.715214, 52.451122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249020, 52.510452, 52.409378>,  <42.052311, 52.169182, 52.339806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249020, 52.510452, 52.409378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582642, -0.470880, 0.662420,
		0.647059, -0.224424, -0.728662,
		0.491776, 0.853174, 0.173929,
		42.396553, 52.766403, 52.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781841, 52.186123, 52.078121>,  <42.052311, 52.169182, 52.339806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781841, 52.186123, 52.078121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678558, 52.373207, 52.416252>,  <42.616589, 52.485458, 52.619129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678558, 52.373207, 52.416252>,  <42.781841, 52.186123, 52.078121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678558, 52.373207, 52.416252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617860, -0.592711, 0.516664,
		0.742683, 0.655701, -0.135935,
		-0.258208, 0.467706, 0.845328,
		42.601097, 52.513519, 52.669849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320290, 52.499657, 52.316792>,  <42.781841, 52.186123, 52.078121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320290, 52.499657, 52.316792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068768, 52.393852, 52.609268>,  <42.917854, 52.330368, 52.784752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068768, 52.393852, 52.609268>,  <43.320290, 52.499657, 52.316792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068768, 52.393852, 52.609268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738149, -0.498656, 0.454400,
		0.244417, 0.825455, 0.508807,
		-0.628806, -0.264512, 0.731189,
		42.880127, 52.314499, 52.828625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458797, 52.815525, 53.050358>,  <43.320290, 52.499657, 52.316792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458797, 52.815525, 53.050358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274391, 52.461853, 53.080521>,  <43.163746, 52.249649, 53.098618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274391, 52.461853, 53.080521>,  <43.458797, 52.815525, 53.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274391, 52.461853, 53.080521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684891, -0.300497, 0.663797,
		-0.564256, 0.357669, 0.744102,
		-0.461020, -0.884180, 0.075407,
		43.136086, 52.196598, 53.103142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038162, 52.706127, 53.617992>,  <43.458797, 52.815525, 53.050358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038162, 52.706127, 53.617992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240833, 52.371872, 53.533150>,  <43.362438, 52.171318, 53.482243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240833, 52.371872, 53.533150>,  <43.038162, 52.706127, 53.617992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240833, 52.371872, 53.533150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430475, 0.032055, 0.902033,
		-0.746971, -0.548350, 0.375961,
		0.506681, -0.835635, -0.212106,
		43.392838, 52.121181, 53.469517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114532, 52.392109, 54.264565>,  <43.038162, 52.706127, 53.617992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114532, 52.392109, 54.264565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401188, 52.250626, 54.024124>,  <43.573181, 52.165737, 53.879860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401188, 52.250626, 54.024124>,  <43.114532, 52.392109, 54.264565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401188, 52.250626, 54.024124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683539, 0.184976, 0.706087,
		-0.138559, -0.916884, 0.374332,
		0.716642, -0.353705, -0.601096,
		43.616180, 52.144516, 53.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406227, 51.739147, 54.780334>,  <43.114532, 52.392109, 54.264565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406227, 51.739147, 54.780334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467342, 51.349457, 54.846714>,  <43.504013, 51.115643, 54.886539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467342, 51.349457, 54.846714>,  <43.406227, 51.739147, 54.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467342, 51.349457, 54.846714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968209, 0.113915, -0.222700,
		0.198057, 0.194697, 0.960659,
		0.152792, -0.974226, 0.165946,
		43.513180, 51.057190, 54.896500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123524, 51.990189, 54.920807>,  <43.406227, 51.739147, 54.780334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123524, 51.990189, 54.920807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306335, 51.944679, 54.567947>,  <44.416023, 51.917374, 54.356232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306335, 51.944679, 54.567947>,  <44.123524, 51.990189, 54.920807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306335, 51.944679, 54.567947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558163, 0.808879, 0.184849,
		0.692517, -0.576862, 0.433187,
		0.457028, -0.113778, -0.882145,
		44.443443, 51.910545, 54.303303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898712, 52.019047, 55.038509>,  <44.123524, 51.990189, 54.920807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898712, 52.019047, 55.038509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795307, 52.104713, 54.661720>,  <44.733265, 52.156113, 54.435646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795307, 52.104713, 54.661720>,  <44.898712, 52.019047, 55.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795307, 52.104713, 54.661720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549703, 0.834456, 0.038860,
		0.794354, -0.507758, -0.333443,
		-0.258512, 0.214163, -0.941969,
		44.717754, 52.168961, 54.379131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481754, 52.377655, 54.823997>,  <44.898712, 52.019047, 55.038509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481754, 52.377655, 54.823997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190235, 52.486835, 54.572807>,  <45.015324, 52.552345, 54.422092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190235, 52.486835, 54.572807>,  <45.481754, 52.377655, 54.823997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190235, 52.486835, 54.572807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418170, 0.903643, -0.092532,
		0.542205, -0.330036, -0.772716,
		-0.728798, 0.272956, -0.627972,
		44.971596, 52.568722, 54.384415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773415, 52.584904, 54.155483>,  <45.481754, 52.377655, 54.823997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773415, 52.584904, 54.155483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440811, 52.763268, 54.288002>,  <45.241249, 52.870285, 54.367512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440811, 52.763268, 54.288002>,  <45.773415, 52.584904, 54.155483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440811, 52.763268, 54.288002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317165, 0.870697, -0.375890,
		-0.456073, -0.207480, -0.865419,
		-0.831507, 0.445913, 0.331296,
		45.191360, 52.897041, 54.387390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602390, 53.241104, 54.508430>,  <45.773415, 52.584904, 54.155483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602390, 53.241104, 54.508430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678379, 53.498783, 54.804787>,  <45.723972, 53.653389, 54.982601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678379, 53.498783, 54.804787>,  <45.602390, 53.241104, 54.508430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678379, 53.498783, 54.804787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972011, -0.229649, -0.049555,
		0.138222, 0.729571, -0.669791,
		0.189971, 0.644195, 0.740894,
		45.735371, 53.692043, 55.027054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976444, 53.813175, 54.212608>,  <45.602390, 53.241104, 54.508430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976444, 53.813175, 54.212608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076729, 53.719666, 54.588371>,  <46.136898, 53.663559, 54.813831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076729, 53.719666, 54.588371>,  <45.976444, 53.813175, 54.212608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076729, 53.719666, 54.588371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951030, -0.121748, -0.284111,
		0.180790, 0.964638, 0.191804,
		0.250712, -0.233776, 0.939411,
		46.151943, 53.649532, 54.870193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518101, 54.167999, 54.444607>,  <45.976444, 53.813175, 54.212608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518101, 54.167999, 54.444607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535347, 53.863430, 54.703335>,  <46.545696, 53.680691, 54.858574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535347, 53.863430, 54.703335>,  <46.518101, 54.167999, 54.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535347, 53.863430, 54.703335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998472, 0.010449, -0.054254,
		0.034551, 0.648175, 0.760707,
		0.043115, -0.761420, 0.646824,
		46.548283, 53.635006, 54.897381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443905, 54.898460, 54.512936>,  <46.518101, 54.167999, 54.444607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443905, 54.898460, 54.512936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101128, 54.790527, 54.688587>,  <45.895462, 54.725769, 54.793980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101128, 54.790527, 54.688587>,  <46.443905, 54.898460, 54.512936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101128, 54.790527, 54.688587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514039, 0.385409, -0.766306,
		0.037527, -0.882413, -0.468977,
		-0.856945, -0.269830, 0.439131,
		45.844044, 54.709579, 54.820328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817215, 55.423214, 54.968750>,  <46.443905, 54.898460, 54.512936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817215, 55.423214, 54.968750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433472, 55.327332, 55.028320>,  <46.203228, 55.269802, 55.064064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433472, 55.327332, 55.028320>,  <46.817215, 55.423214, 54.968750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433472, 55.327332, 55.028320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277279, -0.898787, 0.339556,
		0.052460, 0.367049, 0.928721,
		-0.959356, -0.239702, 0.148926,
		46.145664, 55.255421, 55.072998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533348, 55.437927, 55.119507>,  <46.817215, 55.423214, 54.968750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533348, 55.437927, 55.119507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917358, 55.453140, 55.230431>,  <48.147766, 55.462269, 55.296986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917358, 55.453140, 55.230431>,  <47.533348, 55.437927, 55.119507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.917358, 55.453140, 55.230431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136137, 0.802200, -0.581327,
		-0.244564, 0.595842, 0.764957,
		0.960029, 0.038032, 0.277306,
		48.205368, 55.464550, 55.313622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.768440, 56.079826, 55.507484>,  <47.533348, 55.437927, 55.119507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.768440, 56.079826, 55.507484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.058350, 55.936478, 55.272102>,  <48.232296, 55.850468, 55.130875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.058350, 55.936478, 55.272102>,  <47.768440, 56.079826, 55.507484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.058350, 55.936478, 55.272102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066768, 0.886594, -0.457703,
		0.685745, 0.292441, 0.666507,
		0.724773, -0.358369, -0.588452,
		48.275780, 55.828968, 55.095566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.126858, 56.694851, 55.296551>,  <47.768440, 56.079826, 55.507484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.126858, 56.694851, 55.296551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.248932, 56.395741, 55.060692>,  <48.322178, 56.216274, 54.919174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.248932, 56.395741, 55.060692>,  <48.126858, 56.694851, 55.296551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.248932, 56.395741, 55.060692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351990, 0.663920, -0.659783,
		0.884852, -0.006194, 0.465831,
		0.305188, -0.747778, -0.589651,
		48.340488, 56.171406, 54.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.088181, 57.101154, 54.667347>,  <48.126858, 56.694851, 55.296551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.088181, 57.101154, 54.667347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.410637, 57.187828, 54.887596>,  <48.604111, 57.239830, 55.019745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.410637, 57.187828, 54.887596>,  <48.088181, 57.101154, 54.667347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.410637, 57.187828, 54.887596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505658, -0.735551, -0.450861,
		0.307316, 0.641883, -0.702526,
		0.806143, 0.216681, 0.550620,
		48.652481, 57.252831, 55.052784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.725113, 57.101231, 54.223492>,  <48.088181, 57.101154, 54.667347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.725113, 57.101231, 54.223492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.878956, 57.080585, 54.592148>,  <48.971260, 57.068199, 54.813339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.878956, 57.080585, 54.592148>,  <48.725113, 57.101231, 54.223492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.878956, 57.080585, 54.592148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694471, -0.641567, -0.325732,
		0.608103, 0.765329, -0.210909,
		0.384605, -0.051608, 0.921637,
		48.994339, 57.065102, 54.868641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.471859, 57.027283, 54.190479>,  <48.725113, 57.101231, 54.223492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.471859, 57.027283, 54.190479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.366951, 56.887428, 54.550251>,  <49.304005, 56.803516, 54.766113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.366951, 56.887428, 54.550251>,  <49.471859, 57.027283, 54.190479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.366951, 56.887428, 54.550251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688680, -0.720712, -0.079341,
		0.675968, 0.598608, 0.429808,
		-0.262274, -0.349632, 0.899428,
		49.288269, 56.782539, 54.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.094742, 56.987450, 54.010246>,  <49.471859, 57.027283, 54.190479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.094742, 56.987450, 54.010246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.082764, 57.379490, 54.088730>,  <50.075577, 57.614716, 54.135822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.082764, 57.379490, 54.088730>,  <50.094742, 56.987450, 54.010246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.082764, 57.379490, 54.088730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216354, -0.185292, 0.958571,
		0.975856, 0.071157, -0.206501,
		-0.029946, 0.980104, 0.196213,
		50.073780, 57.673523, 54.147594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.677708, 57.363857, 54.303337>,  <50.094742, 56.987450, 54.010246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.677708, 57.363857, 54.303337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.350224, 57.554188, 54.431900>,  <50.153732, 57.668388, 54.509037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.350224, 57.554188, 54.431900>,  <50.677708, 57.363857, 54.303337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.350224, 57.554188, 54.431900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263875, -0.185370, 0.946577,
		0.509989, 0.859782, 0.026204,
		-0.818707, 0.475829, 0.321412,
		50.104610, 57.696938, 54.528324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.820362, 57.975880, 54.673714>,  <50.677708, 57.363857, 54.303337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.820362, 57.975880, 54.673714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.472294, 57.828720, 54.804836>,  <50.263454, 57.740425, 54.883511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.472294, 57.828720, 54.804836>,  <50.820362, 57.975880, 54.673714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.472294, 57.828720, 54.804836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383334, -0.087405, 0.919465,
		-0.309619, 0.925748, 0.217085,
		-0.870167, -0.367900, 0.327809,
		50.211243, 57.718349, 54.903179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.476727, 58.286945, 55.235310>,  <50.820362, 57.975880, 54.673714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.476727, 58.286945, 55.235310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.372494, 57.906517, 55.301712>,  <50.309952, 57.678261, 55.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.372494, 57.906517, 55.301712>,  <50.476727, 58.286945, 55.235310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.372494, 57.906517, 55.301712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476334, 0.022905, 0.878966,
		-0.839763, 0.308117, 0.447060,
		-0.260585, -0.951073, 0.166001,
		50.294319, 57.621197, 55.351513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.139877, 58.142506, 55.895847>,  <50.476727, 58.286945, 55.235310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.139877, 58.142506, 55.895847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.334446, 57.808891, 55.791710>,  <50.451187, 57.608723, 55.729229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.334446, 57.808891, 55.791710>,  <50.139877, 58.142506, 55.895847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.334446, 57.808891, 55.791710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469677, -0.001654, 0.882837,
		-0.736749, -0.551706, 0.390924,
		0.486419, -0.834037, -0.260343,
		50.480373, 57.558681, 55.713608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.071651, 57.525002, 56.428364>,  <50.139877, 58.142506, 55.895847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.071651, 57.525002, 56.428364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.399590, 57.524452, 56.199333>,  <50.596352, 57.524124, 56.061913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.399590, 57.524452, 56.199333>,  <50.071651, 57.525002, 56.428364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.399590, 57.524452, 56.199333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568805, -0.112707, 0.814713,
		-0.065649, -0.993627, -0.091624,
		0.819848, -0.001369, -0.572580,
		50.645542, 57.524040, 56.027557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.561588, 57.044537, 56.615845>,  <50.071651, 57.525002, 56.428364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.561588, 57.044537, 56.615845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.812801, 57.325111, 56.481049>,  <50.963528, 57.493458, 56.400169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.812801, 57.325111, 56.481049>,  <50.561588, 57.044537, 56.615845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.812801, 57.325111, 56.481049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528419, -0.066500, 0.846375,
		0.571269, -0.709623, -0.412416,
		0.628033, 0.701436, -0.336989,
		51.001213, 57.535542, 56.379951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.195171, 56.719646, 56.625656>,  <50.561588, 57.044537, 56.615845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.195171, 56.719646, 56.625656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.221828, 57.114616, 56.682999>,  <51.237823, 57.351597, 56.717403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.221828, 57.114616, 56.682999>,  <51.195171, 56.719646, 56.625656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.221828, 57.114616, 56.682999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530574, -0.156748, 0.833019,
		0.845014, 0.020541, -0.534349,
		0.066647, 0.987425, 0.143353,
		51.241821, 57.410843, 56.726006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.952908, 57.017296, 56.880329>,  <51.195171, 56.719646, 56.625656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.952908, 57.017296, 56.880329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.639465, 57.235809, 56.998672>,  <51.451401, 57.366917, 57.069679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.639465, 57.235809, 56.998672>,  <51.952908, 57.017296, 56.880329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.639465, 57.235809, 56.998672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289443, -0.100360, 0.951920,
		0.549715, 0.831563, -0.079477,
		-0.783605, 0.546288, 0.295859,
		51.404385, 57.399696, 57.087429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.331360, 57.431965, 56.418140>,  <51.952908, 57.017296, 56.880329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.331360, 57.431965, 56.418140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.676216, 57.622734, 56.486565>,  <52.883129, 57.737198, 56.527618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.676216, 57.622734, 56.486565>,  <52.331360, 57.431965, 56.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.676216, 57.622734, 56.486565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407287, -0.451512, -0.793885,
		-0.301390, 0.754108, -0.583511,
		0.862138, 0.476926, 0.171057,
		52.934856, 57.765812, 56.537880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.540154, 57.886742, 55.835957>,  <52.331360, 57.431965, 56.418140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.540154, 57.886742, 55.835957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.846973, 57.729942, 56.039124>,  <53.031063, 57.635864, 56.161022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.846973, 57.729942, 56.039124>,  <52.540154, 57.886742, 55.835957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.846973, 57.729942, 56.039124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290330, -0.493891, -0.819622,
		0.572144, 0.776151, -0.265029,
		0.767046, -0.391996, 0.507917,
		53.077087, 57.612343, 56.191498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.282082, 58.076191, 55.606899>,  <52.540154, 57.886742, 55.835957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.282082, 58.076191, 55.606899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.262554, 57.706150, 55.757523>,  <53.250839, 57.484123, 55.847897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.262554, 57.706150, 55.757523>,  <53.282082, 58.076191, 55.606899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.262554, 57.706150, 55.757523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387173, -0.365057, -0.846658,
		0.920714, 0.104461, 0.375998,
		-0.048818, -0.925106, 0.376558,
		53.247910, 57.428619, 55.870491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.919514, 57.798706, 55.537987>,  <53.282082, 58.076191, 55.606899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.919514, 57.798706, 55.537987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.646717, 57.507114, 55.561562>,  <53.483040, 57.332157, 55.575706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.646717, 57.507114, 55.561562>,  <53.919514, 57.798706, 55.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.646717, 57.507114, 55.561562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191715, -0.255965, -0.947485,
		0.705785, -0.634877, 0.314323,
		-0.681992, -0.728981, 0.058941,
		53.442120, 57.288422, 55.579243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.201817, 57.072414, 55.325928>,  <53.919514, 57.798706, 55.537987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.201817, 57.072414, 55.325928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.809067, 57.118038, 55.265381>,  <53.573418, 57.145412, 55.229053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.809067, 57.118038, 55.265381>,  <54.201817, 57.072414, 55.325928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.809067, 57.118038, 55.265381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147639, -0.040515, -0.988211,
		-0.118852, -0.992647, 0.022941,
		-0.981874, 0.114064, -0.151369,
		53.514503, 57.152256, 55.219971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.843884, 56.959343, 55.252789>,  <54.201817, 57.072414, 55.325928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.843884, 56.959343, 55.252789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.787079, 57.240349, 54.973846>,  <54.752995, 57.408951, 54.806480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.787079, 57.240349, 54.973846>,  <54.843884, 56.959343, 55.252789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.787079, 57.240349, 54.973846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821772, -0.309076, -0.478709,
		-0.551836, -0.641053, -0.533412,
		-0.142013, 0.702511, -0.697359,
		54.744476, 57.451103, 54.764637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.949326, 56.612450, 54.480343>,  <54.843884, 56.959343, 55.252789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.949326, 56.612450, 54.480343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.013306, 57.007168, 54.470104>,  <55.051693, 57.243999, 54.463963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.013306, 57.007168, 54.470104>,  <54.949326, 56.612450, 54.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.013306, 57.007168, 54.470104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847048, -0.150521, -0.509758,
		-0.506879, 0.059853, -0.859937,
		0.159949, 0.986793, -0.025597,
		55.061291, 57.303207, 54.462425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.321407, 56.730522, 53.934395>,  <54.949326, 56.612450, 54.480343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.321407, 56.730522, 53.934395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.371742, 57.070381, 54.139244>,  <55.401943, 57.274296, 54.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.371742, 57.070381, 54.139244>,  <55.321407, 56.730522, 53.934395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.371742, 57.070381, 54.139244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905318, 0.112744, -0.409498,
		-0.405667, 0.515164, -0.755010,
		0.125836, 0.849644, 0.512124,
		55.409492, 57.325275, 54.292881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.879341, 57.050606, 53.635921>,  <55.321407, 56.730522, 53.934395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.879341, 57.050606, 53.635921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.862175, 57.241920, 53.986782>,  <55.851875, 57.356709, 54.197300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.862175, 57.241920, 53.986782>,  <55.879341, 57.050606, 53.635921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.862175, 57.241920, 53.986782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911643, 0.377936, -0.161469,
		-0.408736, 0.792723, -0.452244,
		-0.042919, 0.478283, 0.877156,
		55.849300, 57.385406, 54.249928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.953823, 57.708515, 53.563541>,  <55.879341, 57.050606, 53.635921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.953823, 57.708515, 53.563541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.095940, 57.613430, 53.925152>,  <56.181210, 57.556381, 54.142117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.095940, 57.613430, 53.925152>,  <55.953823, 57.708515, 53.563541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.095940, 57.613430, 53.925152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902641, 0.338574, -0.265720,
		-0.242915, 0.910419, 0.334858,
		0.355291, -0.237709, 0.904026,
		56.202526, 57.542118, 54.196358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.336697, 58.325191, 53.911026>,  <55.953823, 57.708515, 53.563541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.336697, 58.325191, 53.911026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.456696, 57.951752, 53.989410>,  <56.528694, 57.727688, 54.036442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.456696, 57.951752, 53.989410>,  <56.336697, 58.325191, 53.911026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.456696, 57.951752, 53.989410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934753, 0.246703, -0.255684,
		0.190362, 0.259879, 0.946692,
		0.299998, -0.933595, 0.195960,
		56.546696, 57.671673, 54.048199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.025806, 58.511707, 54.069321>,  <56.336697, 58.325191, 53.911026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.025806, 58.511707, 54.069321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.027115, 58.113655, 54.108727>,  <57.027901, 57.874825, 54.132370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.027115, 58.113655, 54.108727>,  <57.025806, 58.511707, 54.069321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.027115, 58.113655, 54.108727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998499, 0.008634, 0.054078,
		-0.054665, 0.098190, 0.993665,
		0.003269, -0.995130, 0.098515,
		57.028095, 57.815117, 54.138283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.693096, 58.466980, 54.355629>,  <57.025806, 58.511707, 54.069321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.693096, 58.466980, 54.355629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.544151, 58.117908, 54.229279>,  <57.454784, 57.908466, 54.153469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.544151, 58.117908, 54.229279>,  <57.693096, 58.466980, 54.355629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.544151, 58.117908, 54.229279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914689, -0.287453, -0.284103,
		0.157130, -0.394722, 0.905265,
		-0.372363, -0.872677, -0.315881,
		57.432442, 57.856106, 54.134514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.172657, 57.906647, 54.620838>,  <57.693096, 58.466980, 54.355629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.172657, 57.906647, 54.620838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.960213, 57.816849, 54.294029>,  <57.832745, 57.762970, 54.097946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.960213, 57.816849, 54.294029>,  <58.172657, 57.906647, 54.620838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.960213, 57.816849, 54.294029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828656, -0.338802, -0.445581,
		-0.176776, -0.913682, 0.365972,
		-0.531111, -0.224497, -0.817020,
		57.800880, 57.749500, 54.048923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.512882, 57.243790, 54.579533>,  <58.172657, 57.906647, 54.620838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.512882, 57.243790, 54.579533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.364120, 57.439251, 54.263836>,  <58.274864, 57.556526, 54.074417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.364120, 57.439251, 54.263836>,  <58.512882, 57.243790, 54.579533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.364120, 57.439251, 54.263836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878681, -0.088861, -0.469066,
		-0.299342, -0.867943, -0.396319,
		-0.371905, 0.488649, -0.789245,
		58.252548, 57.585846, 54.027061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.984699, 57.647514, 54.994118>,  <58.512882, 57.243790, 54.579533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.984699, 57.647514, 54.994118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.073883, 57.740395, 55.372826>,  <59.127396, 57.796124, 55.600052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.073883, 57.740395, 55.372826>,  <58.984699, 57.647514, 54.994118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.073883, 57.740395, 55.372826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971599, -0.131908, -0.196458,
		0.079270, 0.963683, -0.255012,
		0.222962, 0.232196, 0.946770,
		59.140770, 57.810055, 55.656857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.432301, 58.196648, 54.983517>,  <58.984699, 57.647514, 54.994118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.432301, 58.196648, 54.983517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.518723, 58.026867, 55.335236>,  <59.570576, 57.924999, 55.546268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.518723, 58.026867, 55.335236>,  <59.432301, 58.196648, 54.983517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.518723, 58.026867, 55.335236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974431, 0.150638, -0.166710,
		-0.061695, 0.892832, 0.446143,
		0.216051, -0.424451, 0.879297,
		59.583538, 57.899532, 55.599026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.570858, 58.729542, 55.445137>,  <59.432301, 58.196648, 54.983517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.570858, 58.729542, 55.445137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.750031, 58.373714, 55.480965>,  <59.857533, 58.160217, 55.502460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.750031, 58.373714, 55.480965>,  <59.570858, 58.729542, 55.445137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.750031, 58.373714, 55.480965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885550, 0.427639, -0.181455,
		0.123115, 0.160596, 0.979312,
		0.447933, -0.889570, 0.089567,
		59.884411, 58.106842, 55.507835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.220818, 58.956501, 55.415936>,  <59.570858, 58.729542, 55.445137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.220818, 58.956501, 55.415936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.315758, 58.569027, 55.445076>,  <60.372723, 58.336540, 55.462563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.315758, 58.569027, 55.445076>,  <60.220818, 58.956501, 55.415936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.315758, 58.569027, 55.445076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962214, 0.224134, -0.154625,
		0.133455, 0.106800, 0.985283,
		0.237349, -0.968689, 0.072853,
		60.386963, 58.278419, 55.466930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.687016, 58.812084, 56.056831>,  <60.220818, 58.956501, 55.415936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.687016, 58.812084, 56.056831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.724785, 58.587437, 55.728035>,  <60.747448, 58.452648, 55.530758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.724785, 58.587437, 55.728035>,  <60.687016, 58.812084, 56.056831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.724785, 58.587437, 55.728035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937724, 0.327440, -0.116003,
		0.334302, -0.759846, 0.557563,
		0.094424, -0.561620, -0.821989,
		60.753113, 58.418949, 55.481438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.409267, 58.775440, 56.029369>,  <60.687016, 58.812084, 56.056831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.409267, 58.775440, 56.029369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.302010, 58.646294, 55.666306>,  <61.237656, 58.568806, 55.448467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.302010, 58.646294, 55.666306>,  <61.409267, 58.775440, 56.029369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.302010, 58.646294, 55.666306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850641, 0.362917, -0.380397,
		0.452224, -0.874098, 0.177328,
		-0.268149, -0.322867, -0.907663,
		61.221565, 58.549435, 55.394005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.974846, 58.518112, 55.775272>,  <61.409267, 58.775440, 56.029369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.974846, 58.518112, 55.775272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.764931, 58.601128, 55.445053>,  <61.638981, 58.650936, 55.246922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.764931, 58.601128, 55.445053>,  <61.974846, 58.518112, 55.775272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.764931, 58.601128, 55.445053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831574, 0.332227, -0.445096,
		0.181892, -0.920082, -0.346935,
		-0.524786, 0.207543, -0.825545,
		61.607494, 58.663391, 55.197388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.579552, 58.069313, 55.944183>,  <61.974846, 58.518112, 55.775272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.579552, 58.069313, 55.944183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.485367, 58.344414, 55.669502>,  <62.428856, 58.509472, 55.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.485367, 58.344414, 55.669502>,  <62.579552, 58.069313, 55.944183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.485367, 58.344414, 55.669502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235089, -0.725891, -0.646386,
		-0.943022, 0.009235, 0.332603,
		-0.235464, 0.687748, -0.686702,
		62.414726, 58.550739, 55.463493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.881935, 57.422031, 55.643932>,  <62.579552, 58.069313, 55.944183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.881935, 57.422031, 55.643932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.163979, 57.159470, 55.536636>,  <63.333206, 57.001934, 55.472260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.163979, 57.159470, 55.536636>,  <62.881935, 57.422031, 55.643932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.163979, 57.159470, 55.536636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422016, 0.084467, 0.902645,
		-0.569841, -0.749668, 0.336571,
		0.705113, -0.656402, -0.268239,
		63.375511, 56.962547, 55.456165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.900497, 56.675430, 56.057053>,  <62.881935, 57.422031, 55.643932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.900497, 56.675430, 56.057053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.269882, 56.792850, 55.958221>,  <63.491512, 56.863304, 55.898922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.269882, 56.792850, 55.958221>,  <62.900497, 56.675430, 56.057053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.269882, 56.792850, 55.958221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224678, 0.108280, 0.968398,
		0.311030, -0.949790, 0.034038,
		0.923461, 0.293553, -0.247076,
		63.546921, 56.880917, 55.884098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.507286, 56.396057, 56.536148>,  <62.900497, 56.675430, 56.057053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.507286, 56.396057, 56.536148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.666489, 56.029320, 56.523613>,  <63.762009, 55.809277, 56.516090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.666489, 56.029320, 56.523613>,  <63.507286, 56.396057, 56.536148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.666489, 56.029320, 56.523613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858575, 0.360243, 0.364794,
		-0.323172, -0.172095, 0.930561,
		0.398007, -0.916847, -0.031336,
		63.785892, 55.754265, 56.514214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.638958, 56.251865, 57.153831>,  <63.507286, 56.396057, 56.536148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.638958, 56.251865, 57.153831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.893753, 56.010307, 56.962181>,  <64.046631, 55.865372, 56.847191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.893753, 56.010307, 56.962181>,  <63.638958, 56.251865, 57.153831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.893753, 56.010307, 56.962181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762088, 0.399730, 0.509350,
		-0.116070, -0.689587, 0.714840,
		0.636985, -0.603892, -0.479130,
		64.084846, 55.829140, 56.818443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.168243, 56.180492, 57.601234>,  <63.638958, 56.251865, 57.153831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.168243, 56.180492, 57.601234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.320114, 56.103668, 57.239250>,  <64.411240, 56.057575, 57.022060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.320114, 56.103668, 57.239250>,  <64.168243, 56.180492, 57.601234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.320114, 56.103668, 57.239250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896842, 0.316418, 0.309117,
		0.226977, -0.928974, 0.292383,
		0.379677, -0.192059, -0.904963,
		64.434021, 56.046051, 56.967762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.861641, 56.442612, 57.411976>,  <64.168243, 56.180492, 57.601234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.861641, 56.442612, 57.411976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.128059, 56.194489, 57.246277>,  <65.287910, 56.045616, 57.146858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.128059, 56.194489, 57.246277>,  <64.861641, 56.442612, 57.411976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.128059, 56.194489, 57.246277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694268, -0.312511, -0.648328,
		0.272704, 0.719417, -0.638805,
		0.666052, -0.620304, -0.414245,
		65.327873, 56.008396, 57.122002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.901451, 56.503017, 56.693829>,  <64.861641, 56.442612, 57.411976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.901451, 56.503017, 56.693829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.965378, 56.145542, 56.861534>,  <65.003731, 55.931057, 56.962158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.965378, 56.145542, 56.861534>,  <64.901451, 56.503017, 56.693829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.965378, 56.145542, 56.861534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826138, -0.353562, -0.438737,
		0.540330, -0.276260, -0.794811,
		0.159809, -0.893686, 0.419269,
		65.013321, 55.877438, 56.987316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.949066, 55.937786, 56.247860>,  <64.901451, 56.503017, 56.693829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.949066, 55.937786, 56.247860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.791527, 55.769646, 56.574829>,  <64.696999, 55.668762, 56.771011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.791527, 55.769646, 56.574829>,  <64.949066, 55.937786, 56.247860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.791527, 55.769646, 56.574829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753401, -0.361821, -0.549065,
		0.526562, -0.832100, -0.174189,
		-0.393852, -0.420351, 0.817426,
		64.673370, 55.643539, 56.820057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.985519, 55.099072, 56.198109>,  <64.949066, 55.937786, 56.247860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.985519, 55.099072, 56.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.708496, 55.302601, 56.402641>,  <64.542282, 55.424717, 56.525360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.708496, 55.302601, 56.402641>,  <64.985519, 55.099072, 56.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.708496, 55.302601, 56.402641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715578, -0.395052, -0.576092,
		-0.091129, -0.764874, 0.637702,
		-0.692563, 0.508824, 0.511326,
		64.500725, 55.455250, 56.556038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.437485, 54.614006, 56.441074>,  <64.985519, 55.099072, 56.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.437485, 54.614006, 56.441074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.324936, 54.995663, 56.400200>,  <64.257408, 55.224659, 56.375675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.324936, 54.995663, 56.400200>,  <64.437485, 54.614006, 56.441074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.324936, 54.995663, 56.400200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868611, -0.298498, -0.395490,
		-0.407858, -0.022513, 0.912767,
		-0.281363, 0.954144, -0.102190,
		64.240524, 55.281906, 56.369541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.582474, 53.809902, 56.487991>,  <64.437485, 54.614006, 56.441074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.582474, 53.809902, 56.487991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.747940, 53.627686, 56.803299>,  <64.847221, 53.518356, 56.992485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.747940, 53.627686, 56.803299>,  <64.582474, 53.809902, 56.487991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.747940, 53.627686, 56.803299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768167, 0.290095, 0.570757,
		-0.488678, -0.841620, -0.229934,
		0.413658, -0.455544, 0.788268,
		64.872040, 53.491024, 57.039780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.236183, 53.533989, 56.671082>,  <64.582474, 53.809902, 56.487991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.236183, 53.533989, 56.671082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.246300, 53.465118, 57.064980>,  <65.252365, 53.423798, 57.301319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.246300, 53.465118, 57.064980>,  <65.236183, 53.533989, 56.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.246300, 53.465118, 57.064980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930411, 0.364349, 0.039810,
		-0.365644, 0.915208, 0.169406,
		0.025288, -0.172174, 0.984742,
		65.253883, 53.413467, 57.360401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.369186, 54.120865, 57.148533>,  <65.236183, 53.533989, 56.671082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.369186, 54.120865, 57.148533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.521629, 53.777699, 57.286362>,  <65.613098, 53.571796, 57.369061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.521629, 53.777699, 57.286362>,  <65.369186, 54.120865, 57.148533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.521629, 53.777699, 57.286362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888002, 0.443406, 0.121835,
		-0.257312, 0.259553, 0.930818,
		0.381108, -0.857918, 0.344577,
		65.635963, 53.520325, 57.389736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.814972, 54.365055, 57.640987>,  <65.369186, 54.120865, 57.148533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.814972, 54.365055, 57.640987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.911354, 54.000229, 57.508278>,  <65.969185, 53.781334, 57.428650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.911354, 54.000229, 57.508278>,  <65.814972, 54.365055, 57.640987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.911354, 54.000229, 57.508278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966600, 0.256278, -0.002494,
		0.087302, -0.320094, 0.943355,
		0.240962, -0.912065, -0.331776,
		65.983643, 53.726608, 57.408745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.359138, 53.998291, 58.116730>,  <65.814972, 54.365055, 57.640987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.359138, 53.998291, 58.116730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.359924, 53.934189, 57.721901>,  <66.360397, 53.895729, 57.485004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.359924, 53.934189, 57.721901>,  <66.359138, 53.998291, 58.116730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.359924, 53.934189, 57.721901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928088, 0.367837, -0.057870,
		0.372356, -0.915977, 0.149455,
		0.001968, -0.160255, -0.987074,
		66.360512, 53.886112, 57.425777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.964897, 53.855106, 58.091919>,  <66.359138, 53.998291, 58.116730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.964897, 53.855106, 58.091919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.890266, 53.986687, 57.721626>,  <66.845490, 54.065636, 57.499451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.890266, 53.986687, 57.721626>,  <66.964897, 53.855106, 58.091919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.890266, 53.986687, 57.721626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936140, 0.345389, -0.065943,
		0.298046, -0.878919, -0.372383,
		-0.186575, 0.328948, -0.925734,
		66.834297, 54.085373, 57.443905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.475754, 53.514061, 57.635063>,  <66.964897, 53.855106, 58.091919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.475754, 53.514061, 57.635063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.366577, 53.891499, 57.560074>,  <67.301071, 54.117962, 57.515079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.366577, 53.891499, 57.560074>,  <67.475754, 53.514061, 57.635063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.366577, 53.891499, 57.560074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959489, 0.281157, 0.018228,
		0.069907, -0.174899, -0.982101,
		-0.272937, 0.943589, -0.187468,
		67.284698, 54.174576, 57.503834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.124359, 53.775047, 57.558617>,  <67.475754, 53.514061, 57.635063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.124359, 53.775047, 57.558617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.866287, 54.078194, 57.519852>,  <67.711449, 54.260082, 57.496593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.866287, 54.078194, 57.519852>,  <68.124359, 53.775047, 57.558617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.866287, 54.078194, 57.519852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761460, 0.648212, -0.000179,
		0.062685, -0.073912, -0.995293,
		-0.645174, 0.757864, -0.096914,
		67.672737, 54.305553, 57.490776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.371834, 54.244801, 57.034290>,  <68.124359, 53.775047, 57.558617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.371834, 54.244801, 57.034290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.172325, 54.406654, 57.340881>,  <68.052620, 54.503765, 57.524837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.172325, 54.406654, 57.340881>,  <68.371834, 54.244801, 57.034290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.172325, 54.406654, 57.340881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713851, 0.693334, 0.098514,
		-0.491566, 0.596290, -0.634667,
		-0.498779, 0.404631, 0.766481,
		68.022690, 54.528046, 57.570827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.224792, 55.001480, 56.993649>,  <68.371834, 54.244801, 57.034290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.224792, 55.001480, 56.993649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.252457, 54.914391, 57.383072>,  <68.269058, 54.862137, 57.616726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.252457, 54.914391, 57.383072>,  <68.224792, 55.001480, 56.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.252457, 54.914391, 57.383072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699488, 0.706394, 0.108279,
		-0.711289, 0.673502, 0.201155,
		0.069168, -0.217723, 0.973557,
		68.273209, 54.849075, 57.675140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.315620, 55.676628, 57.352818>,  <68.224792, 55.001480, 56.993649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.315620, 55.676628, 57.352818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.487114, 55.404243, 57.590302>,  <68.590012, 55.240814, 57.732792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.487114, 55.404243, 57.590302>,  <68.315620, 55.676628, 57.352818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.487114, 55.404243, 57.590302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754655, 0.631222, 0.179039,
		-0.496679, 0.371284, 0.784512,
		0.428727, -0.680960, 0.593706,
		68.615730, 55.199955, 57.768414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.433807, 55.926666, 57.973221>,  <68.315620, 55.676628, 57.352818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.433807, 55.926666, 57.973221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.709076, 55.643684, 57.908813>,  <68.874237, 55.473896, 57.870171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.709076, 55.643684, 57.908813>,  <68.433807, 55.926666, 57.973221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.709076, 55.643684, 57.908813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706351, 0.602539, 0.371504,
		-0.165804, -0.369392, 0.914362,
		0.688169, -0.707458, -0.161017,
		68.915527, 55.431446, 57.860508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.993774, 55.615562, 58.599625>,  <68.433807, 55.926666, 57.973221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.993774, 55.615562, 58.599625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.185829, 55.662300, 58.251877>,  <69.301064, 55.690342, 58.043228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.185829, 55.662300, 58.251877>,  <68.993774, 55.615562, 58.599625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.185829, 55.662300, 58.251877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762156, 0.435079, 0.479399,
		0.434214, -0.892790, 0.119934,
		0.480184, 0.116754, -0.869363,
		69.329872, 55.697353, 57.991066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.710922, 55.133614, 58.493458>,  <68.993774, 55.615562, 58.599625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.710922, 55.133614, 58.493458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.662567, 55.501728, 58.344620>,  <69.633553, 55.722599, 58.255318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.662567, 55.501728, 58.344620>,  <69.710922, 55.133614, 58.493458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.662567, 55.501728, 58.344620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759444, 0.327132, 0.562342,
		0.639241, -0.214602, -0.738456,
		-0.120893, 0.920288, -0.372094,
		69.626297, 55.777813, 58.232990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.368248, 55.389751, 58.163380>,  <69.710922, 55.133614, 58.493458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.368248, 55.389751, 58.163380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.156258, 55.693645, 58.314072>,  <70.029060, 55.875984, 58.404488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.156258, 55.693645, 58.314072>,  <70.368248, 55.389751, 58.163380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.156258, 55.693645, 58.314072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793480, 0.287532, 0.536391,
		0.299194, 0.583202, -0.755221,
		-0.529974, 0.759738, 0.376731,
		69.997269, 55.921566, 58.427090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.683098, 56.105106, 58.104218>,  <70.368248, 55.389751, 58.163380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.683098, 56.105106, 58.104218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.458443, 56.100014, 58.435135>,  <70.323654, 56.096958, 58.633686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.458443, 56.100014, 58.435135>,  <70.683098, 56.105106, 58.104218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.458443, 56.100014, 58.435135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782042, 0.318294, 0.535816,
		-0.270145, 0.947906, -0.168804,
		-0.561633, -0.012736, 0.827289,
		70.289955, 56.096191, 58.683323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.309433, 56.646404, 58.260441>,  <70.683098, 56.105106, 58.104218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.309433, 56.646404, 58.260441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.220718, 57.029442, 58.186882>,  <71.167488, 57.259266, 58.142746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.220718, 57.029442, 58.186882>,  <71.309433, 56.646404, 58.260441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.220718, 57.029442, 58.186882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379493, 0.088961, 0.920908,
		0.898218, 0.274036, 0.343670,
		-0.221788, 0.957596, -0.183901,
		71.154182, 57.316719, 58.131710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.158623, 56.459930, 58.195484>,  <71.309433, 56.646404, 58.260441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.158623, 56.459930, 58.195484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.098396, 56.105499, 58.020126>,  <72.062256, 55.892841, 57.914913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.098396, 56.105499, 58.020126>,  <72.158623, 56.459930, 58.195484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.098396, 56.105499, 58.020126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451884, -0.456102, 0.766663,
		-0.879277, -0.082663, 0.469082,
		-0.150574, -0.886080, -0.438394,
		72.053223, 55.839676, 57.888607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.913307, 57.070496, 58.713371>,  <72.158623, 56.459930, 58.195484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.913307, 57.070496, 58.713371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.956566, 56.726135, 58.912231>,  <71.982521, 56.519520, 59.031548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.956566, 56.726135, 58.912231>,  <71.913307, 57.070496, 58.713371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.956566, 56.726135, 58.912231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993036, 0.070033, -0.094733,
		0.046738, 0.503938, 0.862475,
		0.108142, -0.860896, 0.497155,
		71.989006, 56.467865, 59.061378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.196831, 57.066521, 59.385769>,  <71.913307, 57.070496, 58.713371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.196831, 57.066521, 59.385769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108109, 56.976662, 59.765312>,  <72.054878, 56.922749, 59.993038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108109, 56.976662, 59.765312>,  <72.196831, 57.066521, 59.385769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.108109, 56.976662, 59.765312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973859, -0.002147, 0.227143,
		-0.048989, 0.974438, 0.219249,
		-0.221807, -0.224645, 0.948860,
		72.041565, 56.909267, 60.049969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.627831, 57.492340, 59.849411>,  <72.196831, 57.066521, 59.385769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.627831, 57.492340, 59.849411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.525719, 57.165970, 60.056915>,  <72.464455, 56.970150, 60.181416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.525719, 57.165970, 60.056915>,  <72.627831, 57.492340, 59.849411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.525719, 57.165970, 60.056915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946493, -0.101310, 0.306410,
		-0.197451, 0.569217, 0.798126,
		-0.255272, -0.815922, 0.518757,
		72.449135, 56.921192, 60.212543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.883904, 57.564507, 60.523933>,  <72.627831, 57.492340, 59.849411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.883904, 57.564507, 60.523933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.844269, 57.169033, 60.478889>,  <72.820488, 56.931747, 60.451862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.844269, 57.169033, 60.478889>,  <72.883904, 57.564507, 60.523933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.844269, 57.169033, 60.478889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935539, -0.131114, 0.327987,
		-0.339042, -0.072856, 0.937946,
		-0.099082, -0.988687, -0.112613,
		72.814545, 56.872429, 60.445107>
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
