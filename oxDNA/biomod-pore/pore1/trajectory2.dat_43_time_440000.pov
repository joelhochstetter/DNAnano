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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<38.494228, 42.894547, 39.753025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729065, 42.707603, 40.017418>,  <38.869965, 42.595436, 40.176056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729065, 42.707603, 40.017418>,  <38.494228, 42.894547, 39.753025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729065, 42.707603, 40.017418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790320, -0.507686, 0.343000,
		0.175269, -0.723762, -0.667419,
		0.587090, -0.467358, 0.660986,
		38.905193, 42.567394, 40.215714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314102, 42.231869, 39.760033>,  <38.494228, 42.894547, 39.753025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314102, 42.231869, 39.760033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509598, 42.281502, 40.105457>,  <38.626896, 42.311279, 40.312710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509598, 42.281502, 40.105457>,  <38.314102, 42.231869, 39.760033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509598, 42.281502, 40.105457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772463, -0.398526, 0.494448,
		0.405501, -0.908725, -0.098931,
		0.488744, 0.124078, 0.863559,
		38.656219, 42.318726, 40.364525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220814, 41.691074, 40.063160>,  <38.314102, 42.231869, 39.760033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220814, 41.691074, 40.063160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331314, 41.928574, 40.365456>,  <38.397614, 42.071072, 40.546833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331314, 41.928574, 40.365456>,  <38.220814, 41.691074, 40.063160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331314, 41.928574, 40.365456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650868, -0.462997, 0.601669,
		0.707147, -0.658101, 0.258548,
		0.276252, 0.593749, 0.755743,
		38.414188, 42.106697, 40.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310802, 41.190422, 40.510197>,  <38.220814, 41.691074, 40.063160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310802, 41.190422, 40.510197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272022, 41.536957, 40.706181>,  <38.248753, 41.744877, 40.823769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272022, 41.536957, 40.706181>,  <38.310802, 41.190422, 40.510197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272022, 41.536957, 40.706181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353280, -0.490176, 0.796819,
		0.930480, -0.095837, 0.353584,
		-0.096953, 0.866339, 0.489956,
		38.242935, 41.796860, 40.853168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608246, 41.070724, 41.290302>,  <38.310802, 41.190422, 40.510197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608246, 41.070724, 41.290302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371147, 41.392342, 41.308872>,  <38.228886, 41.585312, 41.320015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371147, 41.392342, 41.308872>,  <38.608246, 41.070724, 41.290302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371147, 41.392342, 41.308872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469877, -0.392060, 0.790888,
		0.654112, 0.446987, 0.610197,
		-0.592750, 0.804047, 0.046422,
		38.193321, 41.633556, 41.322800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490913, 41.208229, 41.988670>,  <38.608246, 41.070724, 41.290302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490913, 41.208229, 41.988670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180641, 41.416557, 41.846088>,  <37.994476, 41.541553, 41.760540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180641, 41.416557, 41.846088>,  <38.490913, 41.208229, 41.988670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180641, 41.416557, 41.846088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562435, -0.314210, 0.764813,
		0.286327, 0.793737, 0.536655,
		-0.775683, 0.520821, -0.356458,
		37.947937, 41.572803, 41.739151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269009, 41.496536, 42.537800>,  <38.490913, 41.208229, 41.988670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269009, 41.496536, 42.537800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967232, 41.473679, 42.276253>,  <37.786163, 41.459965, 42.119324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967232, 41.473679, 42.276253>,  <38.269009, 41.496536, 42.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967232, 41.473679, 42.276253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620479, -0.262792, 0.738882,
		-0.214054, 0.963159, 0.162805,
		-0.754444, -0.057143, -0.653872,
		37.740898, 41.456535, 42.080090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715851, 41.837666, 42.895992>,  <38.269009, 41.496536, 42.537800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715851, 41.837666, 42.895992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541786, 41.614349, 42.613449>,  <37.437347, 41.480358, 42.443924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541786, 41.614349, 42.613449>,  <37.715851, 41.837666, 42.895992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541786, 41.614349, 42.613449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722930, -0.250966, 0.643730,
		-0.536662, 0.790775, -0.294396,
		-0.435163, -0.558293, -0.706359,
		37.411236, 41.446861, 42.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033813, 42.017502, 43.028744>,  <37.715851, 41.837666, 42.895992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033813, 42.017502, 43.028744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005096, 41.693810, 42.795506>,  <36.987865, 41.499596, 42.655563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005096, 41.693810, 42.795506>,  <37.033813, 42.017502, 43.028744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005096, 41.693810, 42.795506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749299, -0.342099, 0.567026,
		-0.658329, 0.477618, -0.581794,
		-0.071791, -0.809228, -0.583093,
		36.983559, 41.451042, 42.620579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327023, 41.897800, 42.999027>,  <37.033813, 42.017502, 43.028744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327023, 41.897800, 42.999027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483059, 41.547852, 42.884186>,  <36.576679, 41.337883, 42.815281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483059, 41.547852, 42.884186>,  <36.327023, 41.897800, 42.999027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483059, 41.547852, 42.884186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682431, -0.484029, 0.547726,
		-0.618156, -0.017735, -0.785855,
		0.390091, -0.874872, -0.287102,
		36.600086, 41.285389, 42.798054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806412, 41.501232, 42.678688>,  <36.327023, 41.897800, 42.999027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806412, 41.501232, 42.678688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083912, 41.276802, 42.859314>,  <36.250412, 41.142143, 42.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083912, 41.276802, 42.859314>,  <35.806412, 41.501232, 42.678688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083912, 41.276802, 42.859314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709275, -0.423350, 0.563652,
		-0.125079, -0.711317, -0.691653,
		0.693746, -0.561073, 0.451568,
		36.292034, 41.108479, 42.994785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601467, 40.746975, 42.719429>,  <35.806412, 41.501232, 42.678688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601467, 40.746975, 42.719429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883736, 40.727081, 43.002144>,  <36.053097, 40.715145, 43.171772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883736, 40.727081, 43.002144>,  <35.601467, 40.746975, 42.719429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883736, 40.727081, 43.002144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629648, -0.501451, 0.593372,
		0.324911, -0.863756, -0.385174,
		0.705674, -0.049731, 0.706789,
		36.095436, 40.712162, 43.214180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564369, 40.018620, 43.118191>,  <35.601467, 40.746975, 42.719429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564369, 40.018620, 43.118191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785091, 40.250679, 43.357838>,  <35.917526, 40.389915, 43.501625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785091, 40.250679, 43.357838>,  <35.564369, 40.018620, 43.118191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785091, 40.250679, 43.357838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613378, -0.204405, 0.762880,
		0.565044, -0.788447, 0.243057,
		0.551809, 0.580146, 0.599114,
		35.950634, 40.424725, 43.537571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596405, 39.684830, 43.669868>,  <35.564369, 40.018620, 43.118191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596405, 39.684830, 43.669868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707184, 40.036392, 43.825214>,  <35.773651, 40.247330, 43.918423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707184, 40.036392, 43.825214>,  <35.596405, 39.684830, 43.669868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707184, 40.036392, 43.825214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457105, -0.235002, 0.857805,
		0.845195, -0.415091, 0.336668,
		0.276950, 0.878905, 0.388362,
		35.790268, 40.300064, 43.941723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808628, 39.460350, 44.303867>,  <35.596405, 39.684830, 43.669868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808628, 39.460350, 44.303867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705437, 39.846756, 44.310211>,  <35.643520, 40.078602, 44.314018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705437, 39.846756, 44.310211>,  <35.808628, 39.460350, 44.303867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705437, 39.846756, 44.310211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493710, -0.145926, 0.857296,
		0.830479, 0.213337, 0.514579,
		-0.257983, 0.966019, 0.015862,
		35.628040, 40.136562, 44.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878536, 39.727272, 45.012501>,  <35.808628, 39.460350, 44.303867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878536, 39.727272, 45.012501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643562, 39.987289, 44.819683>,  <35.502579, 40.143299, 44.703991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643562, 39.987289, 44.819683>,  <35.878536, 39.727272, 45.012501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643562, 39.987289, 44.819683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647750, -0.020611, 0.761574,
		0.485121, 0.759618, 0.433173,
		-0.587433, 0.650043, -0.482043,
		35.467331, 40.182301, 44.675072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691723, 40.245182, 45.498100>,  <35.878536, 39.727272, 45.012501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691723, 40.245182, 45.498100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404045, 40.304588, 45.226601>,  <35.231438, 40.340233, 45.063702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404045, 40.304588, 45.226601>,  <35.691723, 40.245182, 45.498100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404045, 40.304588, 45.226601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684897, 0.012897, 0.728526,
		0.116950, 0.988826, 0.092441,
		-0.719193, 0.148513, -0.678753,
		35.188286, 40.349144, 45.022976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306492, 40.747166, 45.690571>,  <35.691723, 40.245182, 45.498100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306492, 40.747166, 45.690571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050392, 40.558090, 45.448364>,  <34.896732, 40.444645, 45.303040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050392, 40.558090, 45.448364>,  <35.306492, 40.747166, 45.690571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050392, 40.558090, 45.448364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705275, 0.049343, 0.707214,
		-0.304411, 0.879850, -0.364964,
		-0.640251, -0.472684, -0.605516,
		34.858318, 40.416286, 45.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692558, 41.152962, 45.770580>,  <35.306492, 40.747166, 45.690571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692558, 41.152962, 45.770580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587425, 40.802948, 45.607983>,  <34.524345, 40.592941, 45.510426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587425, 40.802948, 45.607983>,  <34.692558, 41.152962, 45.770580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587425, 40.802948, 45.607983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734852, -0.091467, 0.672032,
		-0.625231, 0.475343, -0.618980,
		-0.262829, -0.875033, -0.406494,
		34.508575, 40.540440, 45.486034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949589, 41.237240, 45.740265>,  <34.692558, 41.152962, 45.770580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949589, 41.237240, 45.740265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027351, 40.845879, 45.712162>,  <34.074009, 40.611061, 45.695301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027351, 40.845879, 45.712162>,  <33.949589, 41.237240, 45.740265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027351, 40.845879, 45.712162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832338, -0.202430, 0.515980,
		-0.519057, -0.041833, -0.853715,
		0.194402, -0.978403, -0.070254,
		34.085670, 40.552357, 45.691086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326511, 40.954929, 45.596260>,  <33.949589, 41.237240, 45.740265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326511, 40.954929, 45.596260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559540, 40.664536, 45.742439>,  <33.699356, 40.490299, 45.830147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559540, 40.664536, 45.742439>,  <33.326511, 40.954929, 45.596260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559540, 40.664536, 45.742439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712341, -0.239551, 0.659686,
		-0.391380, -0.644638, -0.656706,
		0.582573, -0.725987, 0.365447,
		33.734310, 40.446739, 45.852074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935371, 40.271130, 45.699871>,  <33.326511, 40.954929, 45.596260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935371, 40.271130, 45.699871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238953, 40.220932, 45.955444>,  <33.421101, 40.190815, 46.108788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238953, 40.220932, 45.955444>,  <32.935371, 40.271130, 45.699871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238953, 40.220932, 45.955444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622529, -0.427522, 0.655502,
		0.190896, -0.895252, -0.402594,
		0.758958, -0.125493, 0.638932,
		33.466640, 40.183285, 46.147125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791996, 39.575954, 45.873947>,  <32.935371, 40.271130, 45.699871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791996, 39.575954, 45.873947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017807, 39.769577, 46.141380>,  <33.153294, 39.885750, 46.301838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017807, 39.769577, 46.141380>,  <32.791996, 39.575954, 45.873947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017807, 39.769577, 46.141380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640039, -0.254762, 0.724877,
		0.521210, -0.837129, 0.165995,
		0.564527, 0.484056, 0.668580,
		33.187164, 39.914795, 46.341953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227409, 38.986092, 46.260361>,  <32.791996, 39.575954, 45.873947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227409, 38.986092, 46.260361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189480, 39.314041, 46.486214>,  <33.166721, 39.510811, 46.621727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189480, 39.314041, 46.486214>,  <33.227409, 38.986092, 46.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189480, 39.314041, 46.486214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471718, -0.536476, 0.699768,
		0.876636, -0.199993, 0.437621,
		-0.094824, 0.819876, 0.564635,
		33.161034, 39.560005, 46.655605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198074, 38.704632, 46.954350>,  <33.227409, 38.986092, 46.260361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198074, 38.704632, 46.954350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103966, 39.089691, 47.007935>,  <33.047501, 39.320728, 47.040085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103966, 39.089691, 47.007935>,  <33.198074, 38.704632, 46.954350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103966, 39.089691, 47.007935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756355, -0.267903, 0.596787,
		0.610389, 0.039079, 0.791137,
		-0.235270, 0.962653, 0.133967,
		33.033386, 39.378487, 47.048126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311550, 38.764824, 47.618427>,  <33.198074, 38.704632, 46.954350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311550, 38.764824, 47.618427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056892, 39.063560, 47.541588>,  <32.904099, 39.242802, 47.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056892, 39.063560, 47.541588>,  <33.311550, 38.764824, 47.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056892, 39.063560, 47.541588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568075, -0.285740, 0.771779,
		0.521508, 0.600480, 0.606179,
		-0.636648, 0.746844, -0.192102,
		32.865898, 39.287613, 47.483955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208065, 39.191303, 48.256294>,  <33.311550, 38.764824, 47.618427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208065, 39.191303, 48.256294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877235, 39.233887, 48.035526>,  <32.678738, 39.259438, 47.903065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877235, 39.233887, 48.035526>,  <33.208065, 39.191303, 48.256294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877235, 39.233887, 48.035526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560385, -0.232742, 0.794858,
		-0.043838, 0.966694, 0.252151,
		-0.827071, 0.106457, -0.551924,
		32.629112, 39.265823, 47.869949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688339, 39.299263, 48.776993>,  <33.208065, 39.191303, 48.256294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688339, 39.299263, 48.776993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477646, 39.218620, 48.446682>,  <32.351231, 39.170235, 48.248497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477646, 39.218620, 48.446682>,  <32.688339, 39.299263, 48.776993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477646, 39.218620, 48.446682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755963, -0.333105, 0.563525,
		-0.388679, 0.921085, 0.023052,
		-0.526733, -0.201604, -0.825777,
		32.319626, 39.158138, 48.198948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130707, 39.881252, 48.666481>,  <32.688339, 39.299263, 48.776993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130707, 39.881252, 48.666481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064110, 39.512833, 48.525658>,  <32.024151, 39.291782, 48.441162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064110, 39.512833, 48.525658>,  <32.130707, 39.881252, 48.666481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064110, 39.512833, 48.525658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697166, -0.142533, 0.702598,
		-0.697308, 0.362423, -0.618394,
		-0.166495, -0.921051, -0.352058,
		32.014160, 39.236519, 48.420040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440626, 39.798630, 48.439774>,  <32.130707, 39.881252, 48.666481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440626, 39.798630, 48.439774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580650, 39.435692, 48.532883>,  <31.664665, 39.217930, 48.588749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580650, 39.435692, 48.532883>,  <31.440626, 39.798630, 48.439774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580650, 39.435692, 48.532883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750243, -0.122780, 0.649662,
		-0.560887, -0.402059, -0.723709,
		0.350060, -0.907344, 0.232776,
		31.685669, 39.163490, 48.602715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880795, 39.438320, 48.441246>,  <31.440626, 39.798630, 48.439774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880795, 39.438320, 48.441246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140530, 39.214958, 48.647755>,  <31.296371, 39.080940, 48.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140530, 39.214958, 48.647755>,  <30.880795, 39.438320, 48.441246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140530, 39.214958, 48.647755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711085, -0.205093, 0.672529,
		-0.269662, -0.803813, -0.530252,
		0.649338, -0.558410, 0.516273,
		31.335331, 39.047436, 48.802639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434170, 38.929111, 48.755947>,  <30.880795, 39.438320, 48.441246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434170, 38.929111, 48.755947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771593, 38.911934, 48.970074>,  <30.974047, 38.901627, 49.098549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771593, 38.911934, 48.970074>,  <30.434170, 38.929111, 48.755947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771593, 38.911934, 48.970074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525220, -0.273934, 0.805670,
		0.112042, -0.960789, -0.253635,
		0.843559, -0.042945, 0.535318,
		31.024660, 38.899052, 49.130669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342365, 38.402805, 49.227364>,  <30.434170, 38.929111, 48.755947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342365, 38.402805, 49.227364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630474, 38.609009, 49.413036>,  <30.803339, 38.732731, 49.524441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630474, 38.609009, 49.413036>,  <30.342365, 38.402805, 49.227364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630474, 38.609009, 49.413036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470311, -0.128982, 0.873024,
		0.509919, -0.847124, 0.149545,
		0.720271, 0.515504, 0.464182,
		30.846556, 38.763660, 49.552292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652493, 38.019855, 49.817780>,  <30.342365, 38.402805, 49.227364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652493, 38.019855, 49.817780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693941, 38.414337, 49.869408>,  <30.718811, 38.651028, 49.900387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693941, 38.414337, 49.869408>,  <30.652493, 38.019855, 49.817780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693941, 38.414337, 49.869408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497685, -0.060947, 0.865214,
		0.861146, -0.153894, 0.484505,
		0.103622, 0.986206, 0.129075,
		30.725027, 38.710197, 49.908131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692278, 38.020302, 50.499493>,  <30.652493, 38.019855, 49.817780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692278, 38.020302, 50.499493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623909, 38.404358, 50.411022>,  <30.582888, 38.634792, 50.357941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623909, 38.404358, 50.411022>,  <30.692278, 38.020302, 50.499493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623909, 38.404358, 50.411022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639152, 0.062790, 0.766513,
		0.749847, 0.272380, 0.602942,
		-0.170924, 0.960139, -0.221175,
		30.572632, 38.692398, 50.344669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896202, 38.288631, 51.093975>,  <30.692278, 38.020302, 50.499493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896202, 38.288631, 51.093975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650917, 38.519981, 50.878773>,  <30.503746, 38.658791, 50.749649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650917, 38.519981, 50.878773>,  <30.896202, 38.288631, 51.093975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650917, 38.519981, 50.878773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495066, 0.249337, 0.832311,
		0.615532, 0.776733, 0.133437,
		-0.613212, 0.578374, -0.538009,
		30.466953, 38.693493, 50.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875891, 38.902222, 51.436241>,  <30.896202, 38.288631, 51.093975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875891, 38.902222, 51.436241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543652, 38.874947, 51.215168>,  <30.344309, 38.858582, 51.082523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543652, 38.874947, 51.215168>,  <30.875891, 38.902222, 51.436241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543652, 38.874947, 51.215168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555945, 0.158768, 0.815915,
		0.032110, 0.984958, -0.169783,
		-0.830598, -0.068191, -0.552681,
		30.294472, 38.854488, 51.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433218, 39.381058, 51.754944>,  <30.875891, 38.902222, 51.436241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433218, 39.381058, 51.754944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177547, 39.153099, 51.548382>,  <30.024145, 39.016323, 51.424442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177547, 39.153099, 51.548382>,  <30.433218, 39.381058, 51.754944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177547, 39.153099, 51.548382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641592, 0.024898, 0.766642,
		-0.424047, 0.821341, -0.381554,
		-0.639174, -0.569894, -0.516408,
		29.985796, 38.982132, 51.393459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794943, 39.689499, 51.771759>,  <30.433218, 39.381058, 51.754944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794943, 39.689499, 51.771759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723434, 39.301491, 51.705921>,  <29.680529, 39.068684, 51.666420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723434, 39.301491, 51.705921>,  <29.794943, 39.689499, 51.771759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723434, 39.301491, 51.705921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652623, -0.008281, 0.757637,
		-0.736290, 0.242864, -0.631580,
		-0.178773, -0.970025, -0.164596,
		29.669804, 39.010483, 51.656544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145252, 39.688652, 51.891911>,  <29.794943, 39.689499, 51.771759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145252, 39.688652, 51.891911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252438, 39.305801, 51.935909>,  <29.316750, 39.076092, 51.962311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252438, 39.305801, 51.935909>,  <29.145252, 39.688652, 51.891911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252438, 39.305801, 51.935909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668652, -0.102561, 0.736468,
		-0.693613, -0.270900, -0.667468,
		0.267965, -0.957128, 0.110000,
		29.332827, 39.018661, 51.968910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547012, 39.373455, 52.032673>,  <29.145252, 39.688652, 51.891911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547012, 39.373455, 52.032673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810516, 39.098358, 52.154686>,  <28.968618, 38.933300, 52.227894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810516, 39.098358, 52.154686>,  <28.547012, 39.373455, 52.032673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810516, 39.098358, 52.154686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518769, -0.121577, 0.846226,
		-0.544900, -0.715701, -0.436870,
		0.658758, -0.687743, 0.305036,
		29.008144, 38.892036, 52.246197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175325, 38.721474, 52.057037>,  <28.547012, 39.373455, 52.032673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175325, 38.721474, 52.057037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487045, 38.656685, 52.299179>,  <28.674078, 38.617809, 52.444466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487045, 38.656685, 52.299179>,  <28.175325, 38.721474, 52.057037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487045, 38.656685, 52.299179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619342, -0.346189, 0.704677,
		0.095428, -0.924077, -0.370102,
		0.779300, -0.161974, 0.605356,
		28.720835, 38.608093, 52.480785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093327, 38.051487, 52.291893>,  <28.175325, 38.721474, 52.057037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093327, 38.051487, 52.291893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325653, 38.252167, 52.548313>,  <28.465048, 38.372574, 52.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325653, 38.252167, 52.548313>,  <28.093327, 38.051487, 52.291893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325653, 38.252167, 52.548313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604169, -0.262096, 0.752520,
		0.545558, -0.824379, 0.150884,
		0.580815, 0.501703, 0.641052,
		28.499897, 38.402676, 52.740627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686958, 37.662613, 52.657879>,  <28.093327, 38.051487, 52.291893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686958, 37.662613, 52.657879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506178, 37.959137, 52.856350>,  <28.397709, 38.137051, 52.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506178, 37.959137, 52.856350>,  <28.686958, 37.662613, 52.657879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506178, 37.959137, 52.856350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349001, -0.658833, 0.666436,
		0.820938, 0.128030, 0.556479,
		-0.451951, 0.741315, 0.496178,
		28.370592, 38.181530, 53.005203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807272, 37.490093, 53.363800>,  <28.686958, 37.662613, 52.657879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807272, 37.490093, 53.363800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509224, 37.756790, 53.357471>,  <28.330395, 37.916809, 53.353676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509224, 37.756790, 53.357471>,  <28.807272, 37.490093, 53.363800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509224, 37.756790, 53.357471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543326, -0.593102, 0.594161,
		0.386769, 0.451317, 0.804191,
		-0.745122, 0.666741, -0.015818,
		28.285686, 37.956814, 53.352726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590292, 37.732513, 54.039989>,  <28.807272, 37.490093, 53.363800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590292, 37.732513, 54.039989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264713, 37.787697, 53.814262>,  <28.069366, 37.820805, 53.678825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264713, 37.787697, 53.814262>,  <28.590292, 37.732513, 54.039989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264713, 37.787697, 53.814262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548734, -0.501515, 0.668861,
		-0.190742, 0.854079, 0.483908,
		-0.813946, 0.137957, -0.564322,
		28.020529, 37.829082, 53.644966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066967, 38.168510, 54.479755>,  <28.590292, 37.732513, 54.039989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066967, 38.168510, 54.479755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930141, 37.874695, 54.245338>,  <27.848045, 37.698406, 54.104687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930141, 37.874695, 54.245338>,  <28.066967, 38.168510, 54.479755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930141, 37.874695, 54.245338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602130, -0.307461, 0.736822,
		-0.721408, 0.604916, -0.337115,
		-0.342066, -0.734537, -0.586043,
		27.827522, 37.654335, 54.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408493, 38.278610, 55.177849>,  <28.066967, 38.168510, 54.479755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408493, 38.278610, 55.177849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732809, 38.279877, 55.411980>,  <28.927399, 38.280636, 55.552460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732809, 38.279877, 55.411980>,  <28.408493, 38.278610, 55.177849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732809, 38.279877, 55.411980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481097, 0.565999, -0.669470,
		-0.333412, 0.824400, 0.457385,
		0.810791, 0.003163, 0.585328,
		28.976046, 38.280827, 55.587578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846771, 38.731503, 54.836624>,  <28.408493, 38.278610, 55.177849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846771, 38.731503, 54.836624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075384, 38.584831, 55.130264>,  <29.212551, 38.496830, 55.306446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075384, 38.584831, 55.130264>,  <28.846771, 38.731503, 54.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075384, 38.584831, 55.130264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818056, 0.324712, -0.474707,
		-0.064306, 0.871843, 0.485546,
		0.571533, -0.366677, 0.734097,
		29.246843, 38.474827, 55.350494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299908, 39.288120, 55.016563>,  <28.846771, 38.731503, 54.836624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299908, 39.288120, 55.016563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467226, 38.939758, 55.119747>,  <29.567617, 38.730740, 55.181660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467226, 38.939758, 55.119747>,  <29.299908, 39.288120, 55.016563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467226, 38.939758, 55.119747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890177, 0.336604, -0.307054,
		0.180585, 0.358072, 0.916064,
		0.418298, -0.870909, 0.257962,
		29.592716, 38.678486, 55.197136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853798, 39.376312, 55.488739>,  <29.299908, 39.288120, 55.016563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853798, 39.376312, 55.488739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856892, 39.076736, 55.223701>,  <29.858747, 38.896992, 55.064678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856892, 39.076736, 55.223701>,  <29.853798, 39.376312, 55.488739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856892, 39.076736, 55.223701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866277, 0.336009, -0.369680,
		0.499505, -0.571129, 0.651388,
		0.007737, -0.748939, -0.662594,
		29.859213, 38.852055, 55.024921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496723, 39.456566, 55.355770>,  <29.853798, 39.376312, 55.488739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496723, 39.456566, 55.355770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417435, 39.170181, 55.088009>,  <30.369862, 38.998348, 54.927353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417435, 39.170181, 55.088009>,  <30.496723, 39.456566, 55.355770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417435, 39.170181, 55.088009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762480, 0.316511, -0.564309,
		0.615900, -0.622265, 0.483170,
		-0.198221, -0.715966, -0.669404,
		30.357967, 38.955391, 54.887188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094025, 39.057121, 55.167213>,  <30.496723, 39.456566, 55.355770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094025, 39.057121, 55.167213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847147, 39.028450, 54.853798>,  <30.699020, 39.011250, 54.665749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847147, 39.028450, 54.853798>,  <31.094025, 39.057121, 55.167213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847147, 39.028450, 54.853798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762976, 0.188735, -0.618261,
		0.192208, -0.979408, -0.061784,
		-0.617190, -0.071695, -0.783541,
		30.661989, 39.006947, 54.618736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549389, 38.681381, 54.692223>,  <31.094025, 39.057121, 55.167213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549389, 38.681381, 54.692223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269709, 38.867363, 54.474991>,  <31.101900, 38.978951, 54.344650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269709, 38.867363, 54.474991>,  <31.549389, 38.681381, 54.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269709, 38.867363, 54.474991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651561, 0.101767, -0.751739,
		-0.294255, -0.879468, -0.374100,
		-0.699202, 0.464952, -0.543081,
		31.059948, 39.006847, 54.312065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657158, 38.374981, 54.018707>,  <31.549389, 38.681381, 54.692223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657158, 38.374981, 54.018707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479996, 38.733345, 54.004929>,  <31.373699, 38.948364, 53.996662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479996, 38.733345, 54.004929>,  <31.657158, 38.374981, 54.018707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479996, 38.733345, 54.004929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721823, 0.333528, -0.606408,
		-0.531798, -0.293443, -0.794407,
		-0.442903, 0.895907, -0.034445,
		31.347124, 39.002117, 53.994595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583593, 38.498508, 53.357296>,  <31.657158, 38.374981, 54.018707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583593, 38.498508, 53.357296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532503, 38.870171, 53.496063>,  <31.501850, 39.093170, 53.579323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532503, 38.870171, 53.496063>,  <31.583593, 38.498508, 53.357296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532503, 38.870171, 53.496063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579675, 0.353753, -0.734054,
		-0.804775, 0.107342, -0.583793,
		-0.127724, 0.929159, 0.346915,
		31.494186, 39.148918, 53.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518761, 38.887535, 52.833622>,  <31.583593, 38.498508, 53.357296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518761, 38.887535, 52.833622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596750, 39.174919, 53.100693>,  <31.643543, 39.347351, 53.260937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596750, 39.174919, 53.100693>,  <31.518761, 38.887535, 52.833622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596750, 39.174919, 53.100693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537911, 0.490905, -0.685320,
		-0.820145, 0.492771, -0.290756,
		0.194972, 0.718462, 0.667681,
		31.655241, 39.390457, 53.300999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298603, 39.577259, 52.489967>,  <31.518761, 38.887535, 52.833622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298603, 39.577259, 52.489967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579899, 39.615425, 52.771774>,  <31.748676, 39.638325, 52.940861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579899, 39.615425, 52.771774>,  <31.298603, 39.577259, 52.489967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579899, 39.615425, 52.771774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564945, 0.526600, -0.635239,
		-0.431612, 0.844741, 0.316423,
		0.703241, 0.095415, 0.704519,
		31.790871, 39.644051, 52.983131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615036, 40.278473, 52.416740>,  <31.298603, 39.577259, 52.489967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615036, 40.278473, 52.416740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911076, 40.126099, 52.638420>,  <32.088699, 40.034672, 52.771427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911076, 40.126099, 52.638420>,  <31.615036, 40.278473, 52.416740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911076, 40.126099, 52.638420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670693, 0.357757, -0.649754,
		0.049247, 0.852581, 0.520269,
		0.740098, -0.380940, 0.554202,
		32.133106, 40.011818, 52.804680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121193, 40.871109, 52.479305>,  <31.615036, 40.278473, 52.416740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121193, 40.871109, 52.479305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285034, 40.515381, 52.560638>,  <32.383339, 40.301945, 52.609440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285034, 40.515381, 52.560638>,  <32.121193, 40.871109, 52.479305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285034, 40.515381, 52.560638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822090, 0.263203, -0.504868,
		0.395469, 0.373953, 0.838906,
		0.409600, -0.889316, 0.203334,
		32.407913, 40.248585, 52.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689106, 41.070740, 52.752346>,  <32.121193, 40.871109, 52.479305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689106, 41.070740, 52.752346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714569, 40.695503, 52.616146>,  <32.729847, 40.470364, 52.534428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714569, 40.695503, 52.616146>,  <32.689106, 41.070740, 52.752346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714569, 40.695503, 52.616146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735666, 0.274658, -0.619160,
		0.674347, -0.211079, 0.707603,
		0.063657, -0.938088, -0.340498,
		32.733665, 40.414078, 52.513996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379292, 40.836788, 52.835220>,  <32.689106, 41.070740, 52.752346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379292, 40.836788, 52.835220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218414, 40.621895, 52.538673>,  <33.121887, 40.492958, 52.360744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218414, 40.621895, 52.538673>,  <33.379292, 40.836788, 52.835220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218414, 40.621895, 52.538673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821791, 0.145138, -0.550994,
		0.403613, -0.830853, 0.383119,
		-0.402190, -0.537232, -0.741367,
		33.097755, 40.460724, 52.316265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860367, 40.572689, 52.442326>,  <33.379292, 40.836788, 52.835220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860367, 40.572689, 52.442326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592773, 40.489716, 52.156830>,  <33.432217, 40.439930, 51.985531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592773, 40.489716, 52.156830>,  <33.860367, 40.572689, 52.442326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592773, 40.489716, 52.156830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673701, 0.236424, -0.700165,
		0.313985, -0.949249, -0.018414,
		-0.668984, -0.207435, -0.713744,
		33.392078, 40.427486, 51.942707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295605, 40.219166, 51.958950>,  <33.860367, 40.572689, 52.442326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295605, 40.219166, 51.958950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955093, 40.329987, 51.780708>,  <33.750786, 40.396481, 51.673763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955093, 40.329987, 51.780708>,  <34.295605, 40.219166, 51.958950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955093, 40.329987, 51.780708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470941, 0.028940, -0.881690,
		-0.231383, -0.960418, -0.155114,
		-0.851279, 0.277057, -0.445604,
		33.699711, 40.413105, 51.647026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231148, 39.807693, 51.450520>,  <34.295605, 40.219166, 51.958950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231148, 39.807693, 51.450520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001877, 40.119339, 51.348969>,  <33.864315, 40.306328, 51.288040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001877, 40.119339, 51.348969>,  <34.231148, 39.807693, 51.450520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001877, 40.119339, 51.348969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421946, 0.015033, -0.906496,
		-0.702448, -0.626702, -0.337360,
		-0.573174, 0.779114, -0.253875,
		33.829926, 40.353073, 51.272804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150021, 39.690102, 50.757393>,  <34.231148, 39.807693, 51.450520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150021, 39.690102, 50.757393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059147, 40.076462, 50.807068>,  <34.004623, 40.308277, 50.836872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059147, 40.076462, 50.807068>,  <34.150021, 39.690102, 50.757393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059147, 40.076462, 50.807068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297291, 0.190218, -0.935647,
		-0.927365, -0.175645, -0.330368,
		-0.227184, 0.965901, 0.124184,
		33.990993, 40.366234, 50.844322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763229, 39.925121, 50.132484>,  <34.150021, 39.690102, 50.757393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763229, 39.925121, 50.132484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945038, 40.239952, 50.299297>,  <34.054123, 40.428852, 50.399384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945038, 40.239952, 50.299297>,  <33.763229, 39.925121, 50.132484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945038, 40.239952, 50.299297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346673, 0.274960, -0.896780,
		-0.820505, 0.552180, -0.147884,
		0.454522, 0.787080, 0.417032,
		34.081394, 40.476074, 50.424408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687107, 40.354931, 49.587830>,  <33.763229, 39.925121, 50.132484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687107, 40.354931, 49.587830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946152, 40.533852, 49.834572>,  <34.101578, 40.641205, 49.982616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946152, 40.533852, 49.834572>,  <33.687107, 40.354931, 49.587830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946152, 40.533852, 49.834572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514323, 0.340699, -0.787017,
		-0.562197, 0.826950, -0.009416,
		0.647616, 0.447301, 0.616859,
		34.140438, 40.668041, 50.019630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831028, 41.067963, 49.339581>,  <33.687107, 40.354931, 49.587830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831028, 41.067963, 49.339581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144825, 40.976555, 49.570179>,  <34.333103, 40.921711, 49.708538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144825, 40.976555, 49.570179>,  <33.831028, 41.067963, 49.339581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144825, 40.976555, 49.570179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619944, 0.312178, -0.719871,
		-0.015468, 0.922131, 0.386569,
		0.784494, -0.228516, 0.576498,
		34.380173, 40.908001, 49.743130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295967, 41.625595, 49.197472>,  <33.831028, 41.067963, 49.339581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295967, 41.625595, 49.197472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516441, 41.340111, 49.370354>,  <34.648727, 41.168819, 49.474083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516441, 41.340111, 49.370354>,  <34.295967, 41.625595, 49.197472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516441, 41.340111, 49.370354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724846, 0.153019, -0.671702,
		0.413267, 0.683518, 0.601676,
		0.551188, -0.713714, 0.432208,
		34.681797, 41.125996, 49.500015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011398, 41.941818, 49.313606>,  <34.295967, 41.625595, 49.197472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011398, 41.941818, 49.313606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036922, 41.542686, 49.307056>,  <35.052238, 41.303207, 49.303127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036922, 41.542686, 49.307056>,  <35.011398, 41.941818, 49.313606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036922, 41.542686, 49.307056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799698, 0.060943, -0.597302,
		0.597003, 0.025017, 0.801849,
		0.063810, -0.997828, -0.016377,
		35.056065, 41.243340, 49.302143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754704, 41.743481, 49.354424>,  <35.011398, 41.941818, 49.313606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754704, 41.743481, 49.354424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593552, 41.403275, 49.219181>,  <35.496861, 41.199150, 49.138035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593552, 41.403275, 49.219181>,  <35.754704, 41.743481, 49.354424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593552, 41.403275, 49.219181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712574, -0.059638, -0.699057,
		0.574392, -0.522565, 0.630080,
		-0.402879, -0.850511, -0.338111,
		35.472687, 41.148121, 49.117748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256569, 41.220795, 49.316753>,  <35.754704, 41.743481, 49.354424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256569, 41.220795, 49.316753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998077, 41.025093, 49.082481>,  <35.842983, 40.907673, 48.941917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998077, 41.025093, 49.082481>,  <36.256569, 41.220795, 49.316753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998077, 41.025093, 49.082481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751571, -0.274854, -0.599664,
		0.132410, -0.827700, 0.545326,
		-0.646226, -0.489253, -0.585681,
		35.804211, 40.878319, 48.906776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559582, 40.548637, 49.116341>,  <36.256569, 41.220795, 49.316753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559582, 40.548637, 49.116341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279812, 40.630875, 48.842541>,  <36.111950, 40.680218, 48.678261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279812, 40.630875, 48.842541>,  <36.559582, 40.548637, 49.116341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279812, 40.630875, 48.842541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608194, -0.331806, -0.721114,
		-0.375378, -0.920672, 0.107031,
		-0.699422, 0.205594, -0.684499,
		36.069984, 40.692554, 48.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562325, 39.995144, 48.625648>,  <36.559582, 40.548637, 49.116341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562325, 39.995144, 48.625648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397743, 40.297234, 48.421551>,  <36.298996, 40.478489, 48.299091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397743, 40.297234, 48.421551>,  <36.562325, 39.995144, 48.625648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397743, 40.297234, 48.421551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574174, -0.219991, -0.788624,
		-0.707835, -0.617449, -0.343113,
		-0.411453, 0.755222, -0.510240,
		36.274307, 40.523800, 48.268478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382393, 39.763954, 47.926182>,  <36.562325, 39.995144, 48.625648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382393, 39.763954, 47.926182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398731, 40.160721, 47.878120>,  <36.408535, 40.398781, 47.849281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398731, 40.160721, 47.878120>,  <36.382393, 39.763954, 47.926182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398731, 40.160721, 47.878120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452691, -0.125577, -0.882781,
		-0.890732, -0.018338, -0.454159,
		0.040843, 0.991914, -0.120157,
		36.410984, 40.458294, 47.842072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222958, 39.889034, 47.190704>,  <36.382393, 39.763954, 47.926182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222958, 39.889034, 47.190704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421120, 40.210503, 47.322575>,  <36.540016, 40.403385, 47.401699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421120, 40.210503, 47.322575>,  <36.222958, 39.889034, 47.190704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421120, 40.210503, 47.322575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588032, -0.030927, -0.808246,
		-0.639367, 0.594272, -0.487905,
		0.495407, 0.803670, 0.329677,
		36.569740, 40.451603, 47.421478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280800, 40.282757, 46.603485>,  <36.222958, 39.889034, 47.190704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280800, 40.282757, 46.603485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552799, 40.452957, 46.842331>,  <36.716000, 40.555077, 46.985638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552799, 40.452957, 46.842331>,  <36.280800, 40.282757, 46.603485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552799, 40.452957, 46.842331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562281, 0.220051, -0.797131,
		-0.470577, 0.877796, -0.089617,
		0.679999, 0.425501, 0.597119,
		36.756798, 40.580608, 47.021465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410553, 40.940754, 46.331413>,  <36.280800, 40.282757, 46.603485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410553, 40.940754, 46.331413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729744, 40.854195, 46.556412>,  <36.921261, 40.802261, 46.691410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729744, 40.854195, 46.556412>,  <36.410553, 40.940754, 46.331413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729744, 40.854195, 46.556412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601117, 0.218494, -0.768713,
		0.043443, 0.951543, 0.304432,
		0.797979, -0.216394, 0.562497,
		36.969139, 40.789276, 46.725163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860130, 41.491989, 46.238213>,  <36.410553, 40.940754, 46.331413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860130, 41.491989, 46.238213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056206, 41.155724, 46.330303>,  <37.173851, 40.953964, 46.385559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056206, 41.155724, 46.330303>,  <36.860130, 41.491989, 46.238213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056206, 41.155724, 46.330303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555284, 0.097595, -0.825914,
		0.671845, 0.532694, 0.514646,
		0.490187, -0.840662, 0.230228,
		37.203262, 40.903526, 46.399372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604687, 41.635971, 46.265762>,  <36.860130, 41.491989, 46.238213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604687, 41.635971, 46.265762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569035, 41.240242, 46.219624>,  <37.547642, 41.002804, 46.191940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569035, 41.240242, 46.219624>,  <37.604687, 41.635971, 46.265762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569035, 41.240242, 46.219624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777192, 0.003344, -0.629255,
		0.622919, -0.145735, 0.768592,
		-0.089134, -0.989318, -0.115347,
		37.542294, 40.943447, 46.185020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294189, 41.412853, 46.176479>,  <37.604687, 41.635971, 46.265762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294189, 41.412853, 46.176479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110737, 41.083145, 46.043671>,  <38.000664, 40.885323, 45.963985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110737, 41.083145, 46.043671>,  <38.294189, 41.412853, 46.176479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110737, 41.083145, 46.043671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768950, -0.180860, -0.613194,
		0.445387, -0.536537, 0.716769,
		-0.458636, -0.824268, -0.332017,
		37.973145, 40.835865, 45.944065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847355, 40.941887, 45.984238>,  <38.294189, 41.412853, 46.176479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847355, 40.941887, 45.984238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524971, 40.770332, 45.821030>,  <38.331539, 40.667400, 45.723103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524971, 40.770332, 45.821030>,  <38.847355, 40.941887, 45.984238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524971, 40.770332, 45.821030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564279, -0.348270, -0.748530,
		0.178933, -0.833525, 0.522704,
		-0.805961, -0.428887, -0.408023,
		38.283184, 40.641666, 45.698624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046970, 40.255650, 45.815067>,  <38.847355, 40.941887, 45.984238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046970, 40.255650, 45.815067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757954, 40.351547, 45.555695>,  <38.584545, 40.409084, 45.400070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757954, 40.351547, 45.555695>,  <39.046970, 40.255650, 45.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757954, 40.351547, 45.555695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619023, -0.193252, -0.761226,
		-0.307808, -0.951408, -0.008774,
		-0.722541, 0.239743, -0.648427,
		38.541191, 40.423470, 45.361168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140213, 39.764103, 45.298069>,  <39.046970, 40.255650, 45.815067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140213, 39.764103, 45.298069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933365, 40.079376, 45.164589>,  <38.809258, 40.268539, 45.084499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933365, 40.079376, 45.164589>,  <39.140213, 39.764103, 45.298069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933365, 40.079376, 45.164589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463089, -0.070241, -0.883524,
		-0.719817, -0.611421, -0.328676,
		-0.517119, 0.788182, -0.333704,
		38.778229, 40.315830, 45.064476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019371, 39.537128, 44.642738>,  <39.140213, 39.764103, 45.298069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019371, 39.537128, 44.642738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915577, 39.922729, 44.619556>,  <38.853302, 40.154091, 44.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915577, 39.922729, 44.619556>,  <39.019371, 39.537128, 44.642738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915577, 39.922729, 44.619556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471266, 0.074016, -0.878880,
		-0.842957, -0.255366, -0.473510,
		-0.259483, 0.964007, -0.057953,
		38.837730, 40.211933, 44.602169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825588, 39.614895, 43.961346>,  <39.019371, 39.537128, 44.642738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825588, 39.614895, 43.961346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913010, 39.985771, 44.083038>,  <38.965462, 40.208298, 44.156052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913010, 39.985771, 44.083038>,  <38.825588, 39.614895, 43.961346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913010, 39.985771, 44.083038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482533, 0.168295, -0.859558,
		-0.848171, 0.334663, -0.410616,
		0.218558, 0.927188, 0.304229,
		38.978577, 40.263927, 44.174309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583603, 40.103374, 43.377678>,  <38.825588, 39.614895, 43.961346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583603, 40.103374, 43.377678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883789, 40.256393, 43.593254>,  <39.063900, 40.348206, 43.722599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883789, 40.256393, 43.593254>,  <38.583603, 40.103374, 43.377678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883789, 40.256393, 43.593254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482603, 0.239949, -0.842329,
		-0.451552, 0.892233, -0.004547,
		0.750463, 0.382550, 0.538944,
		39.108929, 40.371159, 43.754936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720276, 40.662605, 42.960648>,  <38.583603, 40.103374, 43.377678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720276, 40.662605, 42.960648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047192, 40.627693, 43.188480>,  <39.243340, 40.606747, 43.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047192, 40.627693, 43.188480>,  <38.720276, 40.662605, 42.960648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047192, 40.627693, 43.188480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561735, 0.340990, -0.753777,
		-0.128436, 0.936007, 0.327713,
		0.817287, -0.087276, 0.569583,
		39.292377, 40.601509, 43.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989609, 41.380898, 42.976723>,  <38.720276, 40.662605, 42.960648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989609, 41.380898, 42.976723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282307, 41.123398, 43.066284>,  <39.457928, 40.968899, 43.120022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282307, 41.123398, 43.066284>,  <38.989609, 41.380898, 42.976723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282307, 41.123398, 43.066284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587317, 0.428867, -0.686391,
		0.345838, 0.633767, 0.691907,
		0.731748, -0.643749, 0.223903,
		39.501831, 40.930275, 43.133453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497395, 41.850021, 42.956772>,  <38.989609, 41.380898, 42.976723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497395, 41.850021, 42.956772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664871, 41.487595, 42.932308>,  <39.765358, 41.270138, 42.917629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664871, 41.487595, 42.932308>,  <39.497395, 41.850021, 42.956772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664871, 41.487595, 42.932308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669979, 0.353657, -0.652729,
		0.613046, 0.232316, 0.755119,
		0.418692, -0.906066, -0.061161,
		39.790478, 41.215775, 42.913960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281590, 41.995163, 42.968361>,  <39.497395, 41.850021, 42.956772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281590, 41.995163, 42.968361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235497, 41.628777, 42.814617>,  <40.207840, 41.408947, 42.722370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235497, 41.628777, 42.814617>,  <40.281590, 41.995163, 42.968361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235497, 41.628777, 42.814617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736175, 0.181037, -0.652129,
		0.666910, -0.358101, 0.653448,
		-0.115229, -0.915964, -0.384360,
		40.200928, 41.353989, 42.699310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086090, 42.140930, 43.773186>,  <40.281590, 41.995163, 42.968361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086090, 42.140930, 43.773186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267517, 42.496758, 43.751484>,  <40.376373, 42.710255, 43.738461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267517, 42.496758, 43.751484>,  <40.086090, 42.140930, 43.773186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267517, 42.496758, 43.751484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079879, 0.020058, 0.996603,
		0.887636, -0.456359, -0.061960,
		0.453566, 0.889570, -0.054258,
		40.403587, 42.763630, 43.735207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708599, 42.149399, 44.262573>,  <40.086090, 42.140930, 43.773186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708599, 42.149399, 44.262573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545605, 42.513313, 44.230984>,  <40.447807, 42.731663, 44.212032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545605, 42.513313, 44.230984>,  <40.708599, 42.149399, 44.262573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545605, 42.513313, 44.230984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004015, 0.084692, 0.996399,
		0.913203, 0.406336, -0.030858,
		-0.407486, 0.909790, -0.078972,
		40.423359, 42.786251, 44.207291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000782, 42.510120, 44.739365>,  <40.708599, 42.149399, 44.262573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000782, 42.510120, 44.739365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684486, 42.744423, 44.668232>,  <40.494709, 42.885006, 44.625553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684486, 42.744423, 44.668232>,  <41.000782, 42.510120, 44.739365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684486, 42.744423, 44.668232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154582, 0.090019, 0.983871,
		0.592317, 0.805473, 0.019366,
		-0.790737, 0.585756, -0.177831,
		40.447266, 42.920151, 44.614883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039646, 43.049011, 45.161423>,  <41.000782, 42.510120, 44.739365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039646, 43.049011, 45.161423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656624, 43.039635, 45.046505>,  <40.426811, 43.034008, 44.977554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656624, 43.039635, 45.046505>,  <41.039646, 43.049011, 45.161423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656624, 43.039635, 45.046505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288198, 0.058937, 0.955755,
		-0.005473, 0.997986, -0.063191,
		-0.957555, -0.023442, -0.287295,
		40.369358, 43.032600, 44.960316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698681, 43.606514, 45.507988>,  <41.039646, 43.049011, 45.161423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698681, 43.606514, 45.507988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414230, 43.337463, 45.426140>,  <40.243561, 43.176033, 45.377033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414230, 43.337463, 45.426140>,  <40.698681, 43.606514, 45.507988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414230, 43.337463, 45.426140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400839, 0.148787, 0.903986,
		-0.577601, 0.724870, -0.375422,
		-0.711130, -0.672626, -0.204616,
		40.200890, 43.135674, 45.364754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169910, 43.806767, 46.001110>,  <40.698681, 43.606514, 45.507988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169910, 43.806767, 46.001110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005344, 43.463570, 45.878086>,  <39.906605, 43.257652, 45.804272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005344, 43.463570, 45.878086>,  <40.169910, 43.806767, 46.001110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005344, 43.463570, 45.878086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392541, -0.137744, 0.909361,
		-0.822586, 0.494855, -0.280125,
		-0.411417, -0.857989, -0.307557,
		39.881920, 43.206173, 45.785820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456379, 43.839767, 46.063232>,  <40.169910, 43.806767, 46.001110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456379, 43.839767, 46.063232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598862, 43.466820, 46.087921>,  <39.684353, 43.243053, 46.102734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598862, 43.466820, 46.087921>,  <39.456379, 43.839767, 46.063232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598862, 43.466820, 46.087921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440114, -0.109140, 0.891284,
		-0.824267, -0.344647, -0.449224,
		0.356207, -0.932367, 0.061723,
		39.705723, 43.187111, 46.106438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914661, 43.444084, 46.287209>,  <39.456379, 43.839767, 46.063232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914661, 43.444084, 46.287209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212074, 43.191841, 46.376194>,  <39.390522, 43.040497, 46.429585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212074, 43.191841, 46.376194>,  <38.914661, 43.444084, 46.287209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212074, 43.191841, 46.376194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471793, -0.258957, 0.842824,
		-0.473886, -0.731623, -0.490061,
		0.743534, -0.630610, 0.222458,
		39.435135, 43.002659, 46.442932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611778, 42.808197, 46.418171>,  <38.914661, 43.444084, 46.287209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611778, 42.808197, 46.418171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967949, 42.838989, 46.597595>,  <39.181652, 42.857464, 46.705250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967949, 42.838989, 46.597595>,  <38.611778, 42.808197, 46.418171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967949, 42.838989, 46.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440876, -0.098765, 0.892118,
		0.112976, -0.992129, -0.054005,
		0.890429, 0.076978, 0.448564,
		39.235077, 42.862083, 46.732162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650032, 42.239002, 46.776024>,  <38.611778, 42.808197, 46.418171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650032, 42.239002, 46.776024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894302, 42.499146, 46.956741>,  <39.040863, 42.655231, 47.065170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894302, 42.499146, 46.956741>,  <38.650032, 42.239002, 46.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894302, 42.499146, 46.956741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398400, -0.240744, 0.885054,
		0.684365, -0.720473, 0.112085,
		0.610674, 0.650355, 0.451793,
		39.077503, 42.694252, 47.092278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953217, 41.859108, 47.394642>,  <38.650032, 42.239002, 46.776024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953217, 41.859108, 47.394642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014969, 42.250412, 47.450020>,  <39.052021, 42.485195, 47.483246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014969, 42.250412, 47.450020>,  <38.953217, 41.859108, 47.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014969, 42.250412, 47.450020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304910, -0.086113, 0.948480,
		0.939786, -0.188638, 0.284989,
		0.154378, 0.978264, 0.138446,
		39.061283, 42.543892, 47.491554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257259, 41.847229, 48.012566>,  <38.953217, 41.859108, 47.394642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257259, 41.847229, 48.012566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151123, 42.229301, 47.960087>,  <39.087440, 42.458546, 47.928600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151123, 42.229301, 47.960087>,  <39.257259, 41.847229, 48.012566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151123, 42.229301, 47.960087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263187, 0.059147, 0.962930,
		0.927537, 0.290037, 0.235698,
		-0.265344, 0.955186, -0.131195,
		39.071518, 42.515858, 47.920727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350864, 42.089203, 48.629673>,  <39.257259, 41.847229, 48.012566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350864, 42.089203, 48.629673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112747, 42.371666, 48.476330>,  <38.969875, 42.541145, 48.384323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112747, 42.371666, 48.476330>,  <39.350864, 42.089203, 48.629673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112747, 42.371666, 48.476330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363135, 0.189159, 0.912333,
		0.716766, 0.682320, 0.143825,
		-0.595297, 0.706158, -0.383357,
		38.934158, 42.583511, 48.361324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430485, 42.649807, 49.042213>,  <39.350864, 42.089203, 48.629673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430485, 42.649807, 49.042213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074524, 42.694191, 48.865231>,  <38.860947, 42.720821, 48.759041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074524, 42.694191, 48.865231>,  <39.430485, 42.649807, 49.042213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074524, 42.694191, 48.865231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409409, 0.233454, 0.881977,
		0.201157, 0.966016, -0.162323,
		-0.889899, 0.110960, -0.442457,
		38.807552, 42.727478, 48.732494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228508, 43.259777, 49.449780>,  <39.430485, 42.649807, 49.042213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228508, 43.259777, 49.449780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887268, 43.130638, 49.285835>,  <38.682522, 43.053154, 49.187469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887268, 43.130638, 49.285835>,  <39.228508, 43.259777, 49.449780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887268, 43.130638, 49.285835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457283, 0.084437, 0.885303,
		-0.251209, 0.942678, -0.219666,
		-0.853104, -0.322846, -0.409859,
		38.631336, 43.033783, 49.162876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809593, 43.762196, 49.663933>,  <39.228508, 43.259777, 49.449780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809593, 43.762196, 49.663933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592941, 43.439079, 49.570892>,  <38.462948, 43.245209, 49.515068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592941, 43.439079, 49.570892>,  <38.809593, 43.762196, 49.663933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592941, 43.439079, 49.570892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471292, 0.062683, 0.879747,
		-0.696074, 0.586123, -0.414657,
		-0.541632, -0.807794, -0.232603,
		38.430450, 43.196743, 49.501110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082741, 43.961620, 49.663849>,  <38.809593, 43.762196, 49.663933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082741, 43.961620, 49.663849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056816, 43.566002, 49.716896>,  <38.041264, 43.328632, 49.748726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056816, 43.566002, 49.716896>,  <38.082741, 43.961620, 49.663849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056816, 43.566002, 49.716896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753084, 0.135670, 0.643784,
		-0.654725, -0.058148, -0.753627,
		-0.064810, -0.989046, 0.132617,
		38.037373, 43.269287, 49.756680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337940, 43.727951, 49.532585>,  <38.082741, 43.961620, 49.663849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337940, 43.727951, 49.532585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476650, 43.427094, 49.756737>,  <37.559875, 43.246578, 49.891228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476650, 43.427094, 49.756737>,  <37.337940, 43.727951, 49.532585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476650, 43.427094, 49.756737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835723, 0.023460, 0.548650,
		-0.425812, -0.658577, -0.620452,
		0.346772, -0.752148, 0.560377,
		37.580681, 43.201450, 49.924850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774960, 43.266209, 49.488354>,  <37.337940, 43.727951, 49.532585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774960, 43.266209, 49.488354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001740, 43.189224, 49.808735>,  <37.137806, 43.143032, 50.000965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001740, 43.189224, 49.808735>,  <36.774960, 43.266209, 49.488354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001740, 43.189224, 49.808735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818267, -0.019529, 0.574507,
		-0.094931, -0.981109, -0.168559,
		0.566946, -0.192465, 0.800955,
		37.171822, 43.131485, 50.049023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440548, 42.698421, 49.790501>,  <36.774960, 43.266209, 49.488354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440548, 42.698421, 49.790501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681534, 42.810982, 50.089260>,  <36.826126, 42.878517, 50.268517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681534, 42.810982, 50.089260>,  <36.440548, 42.698421, 49.790501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681534, 42.810982, 50.089260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756511, -0.096975, 0.646751,
		0.254424, -0.954679, 0.154456,
		0.602461, 0.281397, 0.746898,
		36.862270, 42.895401, 50.313328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462242, 42.181732, 50.275784>,  <36.440548, 42.698421, 49.790501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462242, 42.181732, 50.275784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537216, 42.521439, 50.473209>,  <36.582199, 42.725262, 50.591667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537216, 42.521439, 50.473209>,  <36.462242, 42.181732, 50.275784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537216, 42.521439, 50.473209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807205, -0.153151, 0.570057,
		0.559723, -0.505257, 0.656830,
		0.187431, 0.849270, 0.493568,
		36.593445, 42.776218, 50.621281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476505, 42.049217, 50.987377>,  <36.462242, 42.181732, 50.275784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476505, 42.049217, 50.987377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407532, 42.440834, 50.944027>,  <36.366146, 42.675804, 50.918015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407532, 42.440834, 50.944027>,  <36.476505, 42.049217, 50.987377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407532, 42.440834, 50.944027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819519, -0.081551, 0.567220,
		0.546493, 0.186627, 0.816405,
		-0.172437, 0.979040, -0.108377,
		36.355801, 42.734547, 50.911514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203228, 42.225040, 51.579430>,  <36.476505, 42.049217, 50.987377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203228, 42.225040, 51.579430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083355, 42.518440, 51.335403>,  <36.011433, 42.694481, 51.188988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083355, 42.518440, 51.335403>,  <36.203228, 42.225040, 51.579430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083355, 42.518440, 51.335403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879800, 0.034836, 0.474066,
		0.368977, 0.678802, 0.634889,
		-0.299680, 0.733495, -0.610064,
		35.993450, 42.738487, 51.152386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669823, 42.575203, 51.999908>,  <36.203228, 42.225040, 51.579430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669823, 42.575203, 51.999908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602306, 42.742470, 51.642887>,  <35.561798, 42.842831, 51.428677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602306, 42.742470, 51.642887>,  <35.669823, 42.575203, 51.999908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602306, 42.742470, 51.642887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955273, 0.153687, 0.252652,
		0.242825, 0.895275, 0.373523,
		-0.168788, 0.418167, -0.892551,
		35.551670, 42.867920, 51.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297813, 43.216541, 52.191330>,  <35.669823, 42.575203, 51.999908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297813, 43.216541, 52.191330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195683, 43.146019, 51.811073>,  <35.134403, 43.103706, 51.582920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195683, 43.146019, 51.811073>,  <35.297813, 43.216541, 52.191330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195683, 43.146019, 51.811073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962347, 0.141182, 0.232286,
		0.093260, 0.974157, -0.205719,
		-0.255327, -0.176310, -0.950643,
		35.119083, 43.093124, 51.525879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821697, 43.740677, 51.825386>,  <35.297813, 43.216541, 52.191330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821697, 43.740677, 51.825386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758781, 43.397758, 51.629299>,  <34.721031, 43.192009, 51.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758781, 43.397758, 51.629299>,  <34.821697, 43.740677, 51.825386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758781, 43.397758, 51.629299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941788, -0.019149, 0.335662,
		-0.297148, 0.514474, -0.804375,
		-0.157286, -0.857292, -0.490216,
		34.711594, 43.140572, 51.482235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281612, 43.909607, 51.369370>,  <34.821697, 43.740677, 51.825386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281612, 43.909607, 51.369370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274750, 43.513367, 51.423660>,  <34.270634, 43.275623, 51.456234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274750, 43.513367, 51.423660>,  <34.281612, 43.909607, 51.369370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274750, 43.513367, 51.423660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975176, 0.046546, 0.216482,
		-0.220764, -0.128641, -0.966806,
		-0.017153, -0.990598, 0.135724,
		34.269604, 43.216187, 51.464378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669888, 43.652534, 51.057251>,  <34.281612, 43.909607, 51.369370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669888, 43.652534, 51.057251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776138, 43.341797, 51.285622>,  <33.839890, 43.155354, 51.422646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776138, 43.341797, 51.285622>,  <33.669888, 43.652534, 51.057251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776138, 43.341797, 51.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959791, -0.157326, 0.232487,
		-0.090783, -0.609730, -0.787393,
		0.265631, -0.776839, 0.570930,
		33.855827, 43.108746, 51.456902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190575, 43.172905, 50.826416>,  <33.669888, 43.652534, 51.057251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190575, 43.172905, 50.826416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328682, 43.007675, 51.163502>,  <33.411545, 42.908539, 51.365753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328682, 43.007675, 51.163502>,  <33.190575, 43.172905, 50.826416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328682, 43.007675, 51.163502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909020, -0.370497, 0.190826,
		0.233397, -0.831927, -0.503412,
		0.345266, -0.413074, 0.842710,
		33.432262, 42.883755, 51.416313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080227, 42.532379, 50.833900>,  <33.190575, 43.172905, 50.826416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080227, 42.532379, 50.833900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088928, 42.617935, 51.224548>,  <33.094151, 42.669270, 51.458935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088928, 42.617935, 51.224548>,  <33.080227, 42.532379, 50.833900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088928, 42.617935, 51.224548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926874, -0.361837, 0.099895,
		0.374742, -0.907372, 0.190378,
		0.021756, 0.213891, 0.976615,
		33.095455, 42.682102, 51.517532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652973, 41.967442, 51.175777>,  <33.080227, 42.532379, 50.833900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652973, 41.967442, 51.175777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683853, 42.287704, 51.413429>,  <32.702381, 42.479862, 51.556019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683853, 42.287704, 51.413429>,  <32.652973, 41.967442, 51.175777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683853, 42.287704, 51.413429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874490, -0.231833, 0.426053,
		0.478861, -0.552452, 0.682268,
		0.077201, 0.800656, 0.594129,
		32.707012, 42.527901, 51.591667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369370, 41.775803, 51.795383>,  <32.652973, 41.967442, 51.175777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369370, 41.775803, 51.795383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370018, 42.171066, 51.856743>,  <32.370407, 42.408226, 51.893559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370018, 42.171066, 51.856743>,  <32.369370, 41.775803, 51.795383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370018, 42.171066, 51.856743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901349, -0.064990, 0.428190,
		0.433091, -0.138959, 0.890574,
		0.001623, 0.988163, 0.153397,
		32.370506, 42.467514, 51.902763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097420, 41.871586, 52.475143>,  <32.369370, 41.775803, 51.795383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097420, 41.871586, 52.475143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037842, 42.229843, 52.307507>,  <32.002094, 42.444798, 52.206924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037842, 42.229843, 52.307507>,  <32.097420, 41.871586, 52.475143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037842, 42.229843, 52.307507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858166, 0.093495, 0.504788,
		0.491293, 0.434836, 0.754685,
		-0.148940, 0.895643, -0.419095,
		31.993160, 42.498535, 52.181778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929375, 42.306988, 53.032806>,  <32.097420, 41.871586, 52.475143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929375, 42.306988, 53.032806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789253, 42.451126, 52.686989>,  <31.705181, 42.537609, 52.479500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789253, 42.451126, 52.686989>,  <31.929375, 42.306988, 53.032806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789253, 42.451126, 52.686989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918137, 0.050432, 0.393040,
		0.185232, 0.931453, 0.313184,
		-0.350304, 0.360350, -0.864543,
		31.684162, 42.559231, 52.427628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570816, 42.854626, 53.222179>,  <31.929375, 42.306988, 53.032806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570816, 42.854626, 53.222179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417850, 42.757652, 52.865532>,  <31.326071, 42.699467, 52.651543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417850, 42.757652, 52.865532>,  <31.570816, 42.854626, 53.222179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417850, 42.757652, 52.865532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922987, 0.055244, 0.380845,
		-0.043073, 0.968594, -0.244890,
		-0.382413, -0.242434, -0.891620,
		31.303127, 42.684921, 52.598045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996176, 43.259045, 53.168362>,  <31.570816, 42.854626, 53.222179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996176, 43.259045, 53.168362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929514, 42.976730, 52.892944>,  <30.889517, 42.807343, 52.727695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929514, 42.976730, 52.892944>,  <30.996176, 43.259045, 53.168362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929514, 42.976730, 52.892944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971881, -0.000229, 0.235472,
		-0.166351, 0.708423, -0.685904,
		-0.166657, -0.705788, -0.688541,
		30.879517, 42.764996, 52.686382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410641, 43.507954, 52.824684>,  <30.996176, 43.259045, 53.168362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410641, 43.507954, 52.824684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427504, 43.112396, 52.767670>,  <30.437620, 42.875061, 52.733459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427504, 43.112396, 52.767670>,  <30.410641, 43.507954, 52.824684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427504, 43.112396, 52.767670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965786, -0.076872, 0.247684,
		-0.255890, 0.127220, -0.958298,
		0.042155, -0.988891, -0.142538,
		30.440149, 42.815727, 52.724907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734346, 43.422878, 52.467140>,  <30.410641, 43.507954, 52.824684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734346, 43.422878, 52.467140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842245, 43.056114, 52.584793>,  <29.906984, 42.836056, 52.655384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842245, 43.056114, 52.584793>,  <29.734346, 43.422878, 52.467140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842245, 43.056114, 52.584793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962925, -0.255774, 0.085760,
		-0.003403, -0.306359, -0.951910,
		0.269747, -0.916910, 0.294130,
		29.923170, 42.781040, 52.673031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157438, 43.871719, 52.542007>,  <29.734346, 43.422878, 52.467140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157438, 43.871719, 52.542007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154881, 44.271141, 52.563374>,  <29.153347, 44.510792, 52.576195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154881, 44.271141, 52.563374>,  <29.157438, 43.871719, 52.542007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154881, 44.271141, 52.563374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778386, 0.038503, -0.626604,
		-0.627753, 0.037572, -0.777505,
		-0.006393, 0.998552, 0.053416,
		29.152962, 44.570705, 52.579399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279716, 44.062679, 51.867199>,  <29.157438, 43.871719, 52.542007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279716, 44.062679, 51.867199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404467, 44.376503, 52.081562>,  <29.479317, 44.564796, 52.210178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404467, 44.376503, 52.081562>,  <29.279716, 44.062679, 51.867199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404467, 44.376503, 52.081562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612710, 0.265013, -0.744550,
		-0.726167, 0.560563, -0.398057,
		0.311876, 0.784561, 0.535907,
		29.498030, 44.611870, 52.242332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345785, 44.561523, 51.371059>,  <29.279716, 44.062679, 51.867199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345785, 44.561523, 51.371059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542849, 44.713234, 51.684349>,  <29.661087, 44.804260, 51.872322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542849, 44.713234, 51.684349>,  <29.345785, 44.561523, 51.371059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542849, 44.713234, 51.684349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759644, 0.251640, -0.599682,
		-0.424535, 0.890409, -0.164142,
		0.492658, 0.379276, 0.783223,
		29.690645, 44.827015, 51.919315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514091, 45.240707, 51.155735>,  <29.345785, 44.561523, 51.371059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514091, 45.240707, 51.155735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782999, 45.122650, 51.427307>,  <29.944344, 45.051815, 51.590252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782999, 45.122650, 51.427307>,  <29.514091, 45.240707, 51.155735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782999, 45.122650, 51.427307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735507, 0.162007, -0.657863,
		0.084169, 0.941619, 0.325989,
		0.672269, -0.295139, 0.678931,
		29.984680, 45.034107, 51.630985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947985, 45.742970, 51.129498>,  <29.514091, 45.240707, 51.155735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947985, 45.742970, 51.129498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116871, 45.414948, 51.284027>,  <30.218203, 45.218136, 51.376743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116871, 45.414948, 51.284027>,  <29.947985, 45.742970, 51.129498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116871, 45.414948, 51.284027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799645, 0.136201, -0.584822,
		0.426969, 0.555841, 0.713259,
		0.422214, -0.820055, 0.386322,
		30.243536, 45.168930, 51.399925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718451, 45.915253, 51.266193>,  <29.947985, 45.742970, 51.129498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718451, 45.915253, 51.266193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686224, 45.516663, 51.256767>,  <30.666889, 45.277508, 51.251110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686224, 45.516663, 51.256767>,  <30.718451, 45.915253, 51.266193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686224, 45.516663, 51.256767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741561, -0.044120, -0.669434,
		0.666031, -0.071411, 0.742498,
		-0.080564, -0.996471, -0.023570,
		30.662054, 45.217720, 51.249695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455883, 45.760971, 51.466232>,  <30.718451, 45.915253, 51.266193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455883, 45.760971, 51.466232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254217, 45.481712, 51.262897>,  <31.133217, 45.314156, 51.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254217, 45.481712, 51.262897>,  <31.455883, 45.760971, 51.466232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254217, 45.481712, 51.262897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772652, -0.101707, -0.626630,
		0.385780, -0.708691, 0.590703,
		-0.504166, -0.698149, -0.508335,
		31.102968, 45.272266, 51.110397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945215, 45.209431, 51.337276>,  <31.455883, 45.760971, 51.466232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945215, 45.209431, 51.337276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663910, 45.157928, 51.057610>,  <31.495127, 45.127026, 50.889809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663910, 45.157928, 51.057610>,  <31.945215, 45.209431, 51.337276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663910, 45.157928, 51.057610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710304, -0.168474, -0.683436,
		-0.029793, -0.977260, 0.209941,
		-0.703264, -0.128761, -0.699171,
		31.452930, 45.119301, 50.847858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159733, 44.604908, 51.010281>,  <31.945215, 45.209431, 51.337276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159733, 44.604908, 51.010281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896715, 44.773895, 50.760750>,  <31.738905, 44.875286, 50.611031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896715, 44.773895, 50.760750>,  <32.159733, 44.604908, 51.010281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896715, 44.773895, 50.760750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631486, -0.142570, -0.762168,
		-0.410931, -0.895094, -0.173037,
		-0.657542, 0.422469, -0.623826,
		31.699453, 44.900635, 50.573601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126312, 44.251797, 50.471752>,  <32.159733, 44.604908, 51.010281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126312, 44.251797, 50.471752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996130, 44.593575, 50.309757>,  <31.918022, 44.798641, 50.212563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996130, 44.593575, 50.309757>,  <32.126312, 44.251797, 50.471752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996130, 44.593575, 50.309757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634828, -0.119976, -0.763282,
		-0.700767, -0.505507, -0.503377,
		-0.325451, 0.854441, -0.404985,
		31.898495, 44.849907, 50.188263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894987, 44.061817, 49.784210>,  <32.126312, 44.251797, 50.471752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894987, 44.061817, 49.784210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979111, 44.452675, 49.796638>,  <32.029583, 44.687187, 49.804096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979111, 44.452675, 49.796638>,  <31.894987, 44.061817, 49.784210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979111, 44.452675, 49.796638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539167, -0.089414, -0.837439,
		-0.815518, 0.192872, -0.545647,
		0.210307, 0.977142, 0.031071,
		32.042202, 44.745819, 49.805962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008236, 44.319168, 49.041927>,  <31.894987, 44.061817, 49.784210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008236, 44.319168, 49.041927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179543, 44.612732, 49.252815>,  <32.282326, 44.788872, 49.379349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179543, 44.612732, 49.252815>,  <32.008236, 44.319168, 49.041927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179543, 44.612732, 49.252815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764278, 0.017113, -0.644660,
		-0.482145, 0.679030, -0.553582,
		0.428270, 0.733911, 0.527219,
		32.308025, 44.832905, 49.410980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140759, 44.809372, 48.619862>,  <32.008236, 44.319168, 49.041927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140759, 44.809372, 48.619862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407730, 44.861610, 48.913116>,  <32.567913, 44.892952, 49.089069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407730, 44.861610, 48.913116>,  <32.140759, 44.809372, 48.619862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407730, 44.861610, 48.913116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737319, 0.022152, -0.675181,
		-0.104414, 0.991188, -0.081504,
		0.667426, 0.130593, 0.733135,
		32.607960, 44.900787, 49.133057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658016, 45.181988, 48.253143>,  <32.140759, 44.809372, 48.619862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658016, 45.181988, 48.253143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838589, 45.058716, 48.588100>,  <32.946934, 44.984753, 48.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838589, 45.058716, 48.588100>,  <32.658016, 45.181988, 48.253143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838589, 45.058716, 48.588100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878151, -0.013048, -0.478205,
		0.158302, 0.951237, 0.264742,
		0.451432, -0.308184, 0.837396,
		32.974018, 44.966259, 48.839317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225914, 45.638767, 48.317009>,  <32.658016, 45.181988, 48.253143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225914, 45.638767, 48.317009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343548, 45.344063, 48.560547>,  <33.414127, 45.167240, 48.706669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343548, 45.344063, 48.560547>,  <33.225914, 45.638767, 48.317009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343548, 45.344063, 48.560547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943923, 0.123849, -0.306056,
		0.150086, 0.664709, 0.731872,
		0.294080, -0.736765, 0.608846,
		33.431770, 45.123032, 48.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682800, 45.971542, 48.755260>,  <33.225914, 45.638767, 48.317009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682800, 45.971542, 48.755260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754696, 45.579170, 48.725700>,  <33.797832, 45.343746, 48.707966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754696, 45.579170, 48.725700>,  <33.682800, 45.971542, 48.755260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754696, 45.579170, 48.725700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938758, 0.193493, -0.285120,
		0.293982, -0.018124, 0.955639,
		0.179742, -0.980934, -0.073897,
		33.808617, 45.284889, 48.703529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371944, 45.871548, 48.899345>,  <33.682800, 45.971542, 48.755260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371944, 45.871548, 48.899345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278038, 45.536621, 48.701851>,  <34.221695, 45.335663, 48.583355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278038, 45.536621, 48.701851>,  <34.371944, 45.871548, 48.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278038, 45.536621, 48.701851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964810, -0.138839, -0.223306,
		0.118428, -0.528791, 0.840449,
		-0.234770, -0.837319, -0.493741,
		34.207607, 45.285427, 48.553730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927071, 45.553570, 48.941502>,  <34.371944, 45.871548, 48.899345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927071, 45.553570, 48.941502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767197, 45.314278, 48.663689>,  <34.671272, 45.170700, 48.497002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767197, 45.314278, 48.663689>,  <34.927071, 45.553570, 48.941502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767197, 45.314278, 48.663689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916365, -0.241764, -0.319102,
		0.022986, -0.763981, 0.644829,
		-0.399684, -0.598233, -0.694528,
		34.647293, 45.134808, 48.455330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253132, 44.942856, 48.936905>,  <34.927071, 45.553570, 48.941502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253132, 44.942856, 48.936905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075405, 44.934303, 48.578659>,  <34.968769, 44.929173, 48.363712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075405, 44.934303, 48.578659>,  <35.253132, 44.942856, 48.936905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075405, 44.934303, 48.578659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845448, -0.340669, -0.411294,
		-0.296316, -0.939940, 0.169438,
		-0.444314, -0.021378, -0.895616,
		34.942112, 44.927891, 48.309975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409100, 44.354195, 48.670490>,  <35.253132, 44.942856, 48.936905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409100, 44.354195, 48.670490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312691, 44.599838, 48.369884>,  <35.254845, 44.747223, 48.189522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312691, 44.599838, 48.369884>,  <35.409100, 44.354195, 48.670490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312691, 44.599838, 48.369884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901102, -0.145984, -0.408294,
		-0.360446, -0.775603, -0.518188,
		-0.241026, 0.614108, -0.751517,
		35.240383, 44.784069, 48.144428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638252, 43.954819, 48.173733>,  <35.409100, 44.354195, 48.670490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638252, 43.954819, 48.173733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619812, 44.323997, 48.020870>,  <35.608746, 44.545506, 47.929153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619812, 44.323997, 48.020870>,  <35.638252, 43.954819, 48.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619812, 44.323997, 48.020870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960028, -0.064792, -0.272301,
		-0.276080, -0.379431, -0.883070,
		-0.046104, 0.922949, -0.382152,
		35.605980, 44.600883, 47.906223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878391, 43.923691, 47.463779>,  <35.638252, 43.954819, 48.173733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878391, 43.923691, 47.463779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910980, 44.313469, 47.547504>,  <35.930534, 44.547337, 47.597740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910980, 44.313469, 47.547504>,  <35.878391, 43.923691, 47.463779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910980, 44.313469, 47.547504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930829, 0.000672, -0.365456,
		-0.356258, 0.224608, -0.906990,
		0.081475, 0.974449, 0.209311,
		35.935421, 44.605804, 47.610298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354115, 44.169575, 46.980515>,  <35.878391, 43.923691, 47.463779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354115, 44.169575, 46.980515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359669, 44.486137, 47.224968>,  <36.363003, 44.676075, 47.371639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359669, 44.486137, 47.224968>,  <36.354115, 44.169575, 46.980515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359669, 44.486137, 47.224968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954995, 0.170611, -0.242643,
		-0.296295, 0.586997, -0.753421,
		0.013889, 0.791408, 0.611131,
		36.363834, 44.723560, 47.408306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746822, 44.603031, 46.580593>,  <36.354115, 44.169575, 46.980515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746822, 44.603031, 46.580593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741997, 44.724358, 46.961720>,  <36.739101, 44.797153, 47.190395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741997, 44.724358, 46.961720>,  <36.746822, 44.603031, 46.580593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741997, 44.724358, 46.961720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899887, 0.418738, -0.121909,
		-0.435956, 0.855953, -0.278005,
		-0.012063, 0.303320, 0.952812,
		36.738377, 44.815353, 47.247562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016197, 45.262478, 46.584530>,  <36.746822, 44.603031, 46.580593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016197, 45.262478, 46.584530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078171, 45.143692, 46.961426>,  <37.115356, 45.072422, 47.187561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078171, 45.143692, 46.961426>,  <37.016197, 45.262478, 46.584530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078171, 45.143692, 46.961426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894721, 0.446579, -0.006374,
		-0.418890, 0.844027, 0.334887,
		0.154934, -0.296961, 0.942237,
		37.124653, 45.054604, 47.244099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223942, 45.882271, 46.945789>,  <37.016197, 45.262478, 46.584530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223942, 45.882271, 46.945789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360733, 45.572159, 47.158203>,  <37.442806, 45.386093, 47.285652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360733, 45.572159, 47.158203>,  <37.223942, 45.882271, 46.945789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360733, 45.572159, 47.158203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851707, 0.494485, 0.173436,
		-0.397048, 0.392971, 0.829414,
		0.341977, -0.775280, 0.531030,
		37.463326, 45.339577, 47.317513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588467, 46.120144, 47.468182>,  <37.223942, 45.882271, 46.945789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588467, 46.120144, 47.468182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729412, 45.747215, 47.435669>,  <37.813980, 45.523457, 47.416161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729412, 45.747215, 47.435669>,  <37.588467, 46.120144, 47.468182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729412, 45.747215, 47.435669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917903, 0.361232, -0.164216,
		0.182465, -0.016746, 0.983070,
		0.352366, -0.932326, -0.081283,
		37.835121, 45.467518, 47.411285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145863, 46.080940, 48.052433>,  <37.588467, 46.120144, 47.468182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145863, 46.080940, 48.052433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211998, 45.811752, 47.764050>,  <38.251678, 45.650242, 47.591019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211998, 45.811752, 47.764050>,  <38.145863, 46.080940, 48.052433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211998, 45.811752, 47.764050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975528, 0.219032, 0.019261,
		0.144951, -0.706499, 0.692711,
		0.165334, -0.672967, -0.720958,
		38.261597, 45.609863, 47.547764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746002, 45.848831, 48.333851>,  <38.145863, 46.080940, 48.052433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746002, 45.848831, 48.333851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740154, 45.710098, 47.958725>,  <38.736645, 45.626858, 47.733650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740154, 45.710098, 47.958725>,  <38.746002, 45.848831, 48.333851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740154, 45.710098, 47.958725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880397, 0.440165, -0.176514,
		0.474013, -0.828227, 0.298918,
		-0.014621, -0.346837, -0.937812,
		38.735767, 45.606049, 47.677383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344143, 45.418102, 48.191113>,  <38.746002, 45.848831, 48.333851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344143, 45.418102, 48.191113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225288, 45.556831, 47.835266>,  <39.153976, 45.640068, 47.621758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225288, 45.556831, 47.835266>,  <39.344143, 45.418102, 48.191113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225288, 45.556831, 47.835266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902040, 0.407475, -0.142432,
		0.313099, -0.844794, -0.433927,
		-0.297140, 0.346825, -0.889618,
		39.136147, 45.660877, 47.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918125, 45.272655, 47.794716>,  <39.344143, 45.418102, 48.191113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918125, 45.272655, 47.794716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704720, 45.506882, 47.550591>,  <39.576675, 45.647419, 47.404118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704720, 45.506882, 47.550591>,  <39.918125, 45.272655, 47.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704720, 45.506882, 47.550591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843953, 0.416136, -0.338487,
		0.055764, -0.695659, -0.716204,
		-0.533510, 0.585568, -0.610309,
		39.544666, 45.682552, 47.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395569, 45.293896, 47.259129>,  <39.918125, 45.272655, 47.794716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395569, 45.293896, 47.259129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130562, 45.586609, 47.195168>,  <39.971558, 45.762238, 47.156792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130562, 45.586609, 47.195168>,  <40.395569, 45.293896, 47.259129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130562, 45.586609, 47.195168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699577, 0.528207, -0.481237,
		-0.267699, -0.430692, -0.861883,
		-0.662517, 0.731780, -0.159902,
		39.931808, 45.806145, 47.147198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286804, 45.377571, 46.514172>,  <40.395569, 45.293896, 47.259129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286804, 45.377571, 46.514172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201378, 45.717461, 46.706989>,  <40.150124, 45.921394, 46.822681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201378, 45.717461, 46.706989>,  <40.286804, 45.377571, 46.514172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201378, 45.717461, 46.706989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309260, 0.526855, -0.791696,
		-0.926687, -0.020003, -0.375303,
		-0.213566, 0.849719, 0.482044,
		40.137306, 45.972378, 46.851601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058159, 45.762959, 45.968029>,  <40.286804, 45.377571, 46.514172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058159, 45.762959, 45.968029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124550, 46.022484, 46.265079>,  <40.164383, 46.178200, 46.443310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124550, 46.022484, 46.265079>,  <40.058159, 45.762959, 45.968029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124550, 46.022484, 46.265079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145104, 0.728806, -0.669169,
		-0.975396, 0.218825, 0.026820,
		0.165977, 0.648813, 0.742626,
		40.174343, 46.217129, 46.487869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791000, 46.482391, 45.778969>,  <40.058159, 45.762959, 45.968029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791000, 46.482391, 45.778969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056549, 46.534111, 46.073605>,  <40.215878, 46.565144, 46.250385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056549, 46.534111, 46.073605>,  <39.791000, 46.482391, 45.778969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056549, 46.534111, 46.073605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390300, 0.780257, -0.488738,
		-0.637922, 0.611948, 0.467521,
		0.663869, 0.129303, 0.736586,
		40.255711, 46.572903, 46.294582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725243, 47.234718, 45.992676>,  <39.791000, 46.482391, 45.778969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725243, 47.234718, 45.992676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079285, 47.060509, 46.058300>,  <40.291710, 46.955982, 46.097675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079285, 47.060509, 46.058300>,  <39.725243, 47.234718, 45.992676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079285, 47.060509, 46.058300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433453, 0.643079, -0.631323,
		0.169456, 0.629895, 0.757969,
		0.885101, -0.435526, 0.164056,
		40.344814, 46.929852, 46.107517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144001, 47.766190, 46.091373>,  <39.725243, 47.234718, 45.992676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144001, 47.766190, 46.091373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445259, 47.505600, 46.054825>,  <40.626015, 47.349247, 46.032894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445259, 47.505600, 46.054825>,  <40.144001, 47.766190, 46.091373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445259, 47.505600, 46.054825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502020, 0.658934, -0.560162,
		0.425143, 0.376011, 0.823328,
		0.753146, -0.651476, -0.091376,
		40.671204, 47.310158, 46.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743275, 48.165424, 46.286648>,  <40.144001, 47.766190, 46.091373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743275, 48.165424, 46.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849396, 47.857300, 46.054703>,  <40.913067, 47.672424, 45.915535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849396, 47.857300, 46.054703>,  <40.743275, 48.165424, 46.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849396, 47.857300, 46.054703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404706, 0.634837, -0.658176,
		0.875116, -0.060058, 0.480172,
		0.265302, -0.770309, -0.579861,
		40.928986, 47.626205, 45.880745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356602, 48.397381, 46.139145>,  <40.743275, 48.165424, 46.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356602, 48.397381, 46.139145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256908, 48.119118, 45.869644>,  <41.197090, 47.952160, 45.707943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256908, 48.119118, 45.869644>,  <41.356602, 48.397381, 46.139145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256908, 48.119118, 45.869644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395743, 0.561806, -0.726472,
		0.883894, -0.447696, 0.135280,
		-0.249237, -0.695660, -0.673749,
		41.182137, 47.910419, 45.667519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936211, 48.290394, 45.806530>,  <41.356602, 48.397381, 46.139145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936211, 48.290394, 45.806530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657684, 48.155846, 45.552917>,  <41.490570, 48.075115, 45.400749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657684, 48.155846, 45.552917>,  <41.936211, 48.290394, 45.806530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657684, 48.155846, 45.552917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369978, 0.588753, -0.718670,
		0.615027, -0.735000, -0.285510,
		-0.696318, -0.336369, -0.634033,
		41.448792, 48.054935, 45.362709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.738329, 43.354309, 46.296001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.786232, 42.974342, 46.180538>,  <31.814974, 42.746365, 46.111259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.786232, 42.974342, 46.180538>,  <31.738329, 43.354309, 46.296001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786232, 42.974342, 46.180538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828019, 0.255981, -0.498856,
		0.547760, -0.179268, 0.817204,
		0.119759, -0.949914, -0.288654,
		31.822161, 42.689369, 46.093941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421150, 43.366940, 46.358898>,  <31.738329, 43.354309, 46.296001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421150, 43.366940, 46.358898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.367874, 43.024277, 46.159542>,  <32.335911, 42.818680, 46.039928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.367874, 43.024277, 46.159542>,  <32.421150, 43.366940, 46.358898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367874, 43.024277, 46.159542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817573, 0.189281, -0.543828,
		0.560211, -0.479904, 0.675171,
		-0.133188, -0.856659, -0.498393,
		32.327919, 42.767281, 46.010025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036022, 42.955139, 46.397339>,  <32.421150, 43.366940, 46.358898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036022, 42.955139, 46.397339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.852345, 42.832451, 46.063858>,  <32.742138, 42.758839, 45.863770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.852345, 42.832451, 46.063858>,  <33.036022, 42.955139, 46.397339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852345, 42.832451, 46.063858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880358, -0.031611, -0.473256,
		0.118805, -0.951273, 0.284543,
		-0.459190, -0.306725, -0.833705,
		32.714588, 42.740433, 45.813747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531536, 42.463654, 46.152782>,  <33.036022, 42.955139, 46.397339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531536, 42.463654, 46.152782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277580, 42.507919, 45.846928>,  <33.125206, 42.534477, 45.663414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277580, 42.507919, 45.846928>,  <33.531536, 42.463654, 46.152782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277580, 42.507919, 45.846928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759329, -0.093285, -0.643986,
		-0.142596, -0.989470, -0.024806,
		-0.634890, 0.110666, -0.764635,
		33.087112, 42.541119, 45.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735077, 41.957245, 45.652340>,  <33.531536, 42.463654, 46.152782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735077, 41.957245, 45.652340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.545647, 42.249008, 45.454880>,  <33.431988, 42.424065, 45.336403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.545647, 42.249008, 45.454880>,  <33.735077, 41.957245, 45.652340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545647, 42.249008, 45.454880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744603, 0.032203, -0.666730,
		-0.470421, -0.683321, -0.558370,
		-0.473571, 0.729408, -0.493654,
		33.403576, 42.467831, 45.306782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678337, 41.692509, 45.000584>,  <33.735077, 41.957245, 45.652340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678337, 41.692509, 45.000584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.650528, 42.089737, 44.962673>,  <33.633842, 42.328072, 44.939926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.650528, 42.089737, 44.962673>,  <33.678337, 41.692509, 45.000584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650528, 42.089737, 44.962673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817383, 0.002242, -0.576090,
		-0.571885, -0.117514, -0.811873,
		-0.069519, 0.993069, -0.094772,
		33.629673, 42.387657, 44.934242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776752, 41.877678, 44.363533>,  <33.678337, 41.692509, 45.000584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776752, 41.877678, 44.363533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842926, 42.254677, 44.479687>,  <33.882629, 42.480877, 44.549381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.842926, 42.254677, 44.479687>,  <33.776752, 41.877678, 44.363533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842926, 42.254677, 44.479687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835570, 0.022462, -0.548925,
		-0.523885, 0.333450, -0.783809,
		0.165433, 0.942500, 0.290388,
		33.892555, 42.537426, 44.566803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882942, 42.404587, 43.736855>,  <33.776752, 41.877678, 44.363533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882942, 42.404587, 43.736855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061481, 42.565910, 44.056385>,  <34.168606, 42.662704, 44.248104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061481, 42.565910, 44.056385>,  <33.882942, 42.404587, 43.736855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061481, 42.565910, 44.056385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721211, 0.366328, -0.587926,
		-0.529746, 0.838539, -0.127360,
		0.446344, 0.403305, 0.798825,
		34.195385, 42.686901, 44.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237152, 42.945698, 43.475845>,  <33.882942, 42.404587, 43.736855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237152, 42.945698, 43.475845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409309, 42.894829, 43.833302>,  <34.512604, 42.864307, 44.047775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409309, 42.894829, 43.833302>,  <34.237152, 42.945698, 43.475845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409309, 42.894829, 43.833302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889780, 0.226304, -0.396331,
		-0.151830, 0.965719, 0.210559,
		0.430395, -0.127177, 0.893637,
		34.538429, 42.856674, 44.101391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592461, 43.561550, 43.671665>,  <34.237152, 42.945698, 43.475845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592461, 43.561550, 43.671665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770187, 43.280731, 43.894272>,  <34.876823, 43.112240, 44.027836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770187, 43.280731, 43.894272>,  <34.592461, 43.561550, 43.671665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770187, 43.280731, 43.894272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895622, 0.333456, -0.294396,
		0.021105, 0.629237, 0.776927,
		0.444316, -0.702046, 0.556521,
		34.903481, 43.070118, 44.061230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995514, 43.928211, 44.007633>,  <34.592461, 43.561550, 43.671665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995514, 43.928211, 44.007633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138321, 43.555725, 44.036957>,  <35.224003, 43.332233, 44.054550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138321, 43.555725, 44.036957>,  <34.995514, 43.928211, 44.007633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138321, 43.555725, 44.036957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934085, 0.355491, -0.033321,
		0.004970, 0.080369, 0.996753,
		0.357015, -0.931218, 0.073305,
		35.245426, 43.276360, 44.058949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399162, 43.835777, 44.658215>,  <34.995514, 43.928211, 44.007633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399162, 43.835777, 44.658215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514286, 43.565331, 44.386913>,  <35.583359, 43.403061, 44.224133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514286, 43.565331, 44.386913>,  <35.399162, 43.835777, 44.658215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514286, 43.565331, 44.386913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926869, 0.374870, 0.019618,
		0.240994, -0.634300, 0.734565,
		0.287810, -0.676118, -0.678255,
		35.600628, 43.362495, 44.183437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047596, 43.814842, 44.862808>,  <35.399162, 43.835777, 44.658215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047596, 43.814842, 44.862808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047905, 43.623062, 44.511780>,  <36.048092, 43.507996, 44.301163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047905, 43.623062, 44.511780>,  <36.047596, 43.814842, 44.862808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047905, 43.623062, 44.511780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954944, 0.260804, -0.141642,
		0.296784, -0.837921, 0.458048,
		0.000776, -0.479448, -0.877570,
		36.048138, 43.479229, 44.248508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717072, 43.502857, 44.865692>,  <36.047596, 43.814842, 44.862808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717072, 43.502857, 44.865692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618507, 43.511086, 44.478115>,  <36.559368, 43.516022, 44.245567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618507, 43.511086, 44.478115>,  <36.717072, 43.502857, 44.865692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618507, 43.511086, 44.478115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912985, 0.340371, -0.224956,
		0.325174, -0.940066, -0.102655,
		-0.246414, 0.020572, -0.968946,
		36.544582, 43.517258, 44.187431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300774, 43.276295, 44.523151>,  <36.717072, 43.502857, 44.865692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300774, 43.276295, 44.523151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083099, 43.465881, 44.246250>,  <36.952496, 43.579636, 44.080109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083099, 43.465881, 44.246250>,  <37.300774, 43.276295, 44.523151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083099, 43.465881, 44.246250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821119, 0.470169, -0.323581,
		0.172107, -0.744509, -0.645047,
		-0.544190, 0.473970, -0.692250,
		36.919842, 43.608070, 44.038574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595650, 43.154278, 43.867653>,  <37.300774, 43.276295, 44.523151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595650, 43.154278, 43.867653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394020, 43.496384, 43.819603>,  <37.273041, 43.701649, 43.790771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394020, 43.496384, 43.819603>,  <37.595650, 43.154278, 43.867653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394020, 43.496384, 43.819603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807602, 0.417479, -0.416523,
		-0.306086, -0.306975, -0.901154,
		-0.504075, 0.855265, -0.120129,
		37.242798, 43.752964, 43.783566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896454, 43.436008, 43.255421>,  <37.595650, 43.154278, 43.867653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896454, 43.436008, 43.255421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666199, 43.741203, 43.373058>,  <37.528046, 43.924320, 43.443642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666199, 43.741203, 43.373058>,  <37.896454, 43.436008, 43.255421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666199, 43.741203, 43.373058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703643, 0.645422, -0.297182,
		-0.416561, 0.035869, -0.908400,
		-0.575641, 0.762984, 0.294097,
		37.493507, 43.970097, 43.461288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999996, 43.962997, 42.720551>,  <37.896454, 43.436008, 43.255421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999996, 43.962997, 42.720551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894951, 44.137390, 43.064865>,  <37.831924, 44.242027, 43.271454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894951, 44.137390, 43.064865>,  <37.999996, 43.962997, 42.720551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894951, 44.137390, 43.064865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711488, 0.690100, -0.132462,
		-0.651780, 0.577653, -0.491427,
		-0.262617, 0.435981, 0.860786,
		37.816166, 44.268185, 43.323101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085373, 44.671799, 42.551353>,  <37.999996, 43.962997, 42.720551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085373, 44.671799, 42.551353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070789, 44.662514, 42.950981>,  <38.062038, 44.656940, 43.190758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070789, 44.662514, 42.950981>,  <38.085373, 44.671799, 42.551353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070789, 44.662514, 42.950981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628449, 0.776771, 0.040984,
		-0.776996, 0.629356, -0.013729,
		-0.036457, -0.023216, 0.999065,
		38.059853, 44.655548, 43.250702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984867, 45.384377, 42.803642>,  <38.085373, 44.671799, 42.551353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984867, 45.384377, 42.803642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.152939, 45.184082, 43.106354>,  <38.253780, 45.063904, 43.287979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.152939, 45.184082, 43.106354>,  <37.984867, 45.384377, 42.803642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152939, 45.184082, 43.106354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726766, 0.685079, 0.049778,
		-0.543379, 0.529085, 0.651773,
		0.420180, -0.500735, 0.756779,
		38.278992, 45.033863, 43.333385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139973, 45.877743, 43.215912>,  <37.984867, 45.384377, 42.803642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139973, 45.877743, 43.215912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359467, 45.565689, 43.336098>,  <38.491165, 45.378456, 43.408211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359467, 45.565689, 43.336098>,  <38.139973, 45.877743, 43.215912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359467, 45.565689, 43.336098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818971, 0.573805, -0.005848,
		-0.167847, 0.249283, 0.953774,
		0.548738, -0.780132, 0.300467,
		38.524090, 45.331650, 43.426239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405991, 46.051537, 43.863056>,  <38.139973, 45.877743, 43.215912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405991, 46.051537, 43.863056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636215, 45.775726, 43.687199>,  <38.774349, 45.610241, 43.581684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636215, 45.775726, 43.687199>,  <38.405991, 46.051537, 43.863056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636215, 45.775726, 43.687199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810059, 0.407140, 0.421950,
		-0.111947, -0.598996, 0.792888,
		0.575563, -0.689522, -0.439644,
		38.808884, 45.568871, 43.555305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863724, 46.375504, 43.418755>,  <38.405991, 46.051537, 43.863056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863724, 46.375504, 43.418755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904991, 46.744827, 43.566730>,  <38.929752, 46.966423, 43.655518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904991, 46.744827, 43.566730>,  <38.863724, 46.375504, 43.418755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904991, 46.744827, 43.566730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650322, -0.218808, 0.727464,
		0.752621, -0.315633, 0.577874,
		0.103168, 0.923309, 0.369943,
		38.935940, 47.021820, 43.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019875, 46.395817, 44.183472>,  <38.863724, 46.375504, 43.418755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019875, 46.395817, 44.183472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882713, 46.767349, 44.127338>,  <38.800415, 46.990269, 44.093658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882713, 46.767349, 44.127338>,  <39.019875, 46.395817, 44.183472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882713, 46.767349, 44.127338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667978, -0.136064, 0.731637,
		0.660471, 0.344623, 0.667094,
		-0.342906, 0.928828, -0.140334,
		38.779842, 47.045998, 44.085239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881084, 46.715611, 44.880440>,  <39.019875, 46.395817, 44.183472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881084, 46.715611, 44.880440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655579, 46.921059, 44.621716>,  <38.520275, 47.044327, 44.466480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655579, 46.921059, 44.621716>,  <38.881084, 46.715611, 44.880440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655579, 46.921059, 44.621716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748970, 0.012189, 0.662491,
		0.348156, 0.857929, 0.377818,
		-0.563765, 0.513625, -0.646806,
		38.486450, 47.075146, 44.427673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598881, 47.220566, 45.265617>,  <38.881084, 46.715611, 44.880440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598881, 47.220566, 45.265617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348785, 47.179993, 44.956093>,  <38.198730, 47.155647, 44.770378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348785, 47.179993, 44.956093>,  <38.598881, 47.220566, 45.265617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348785, 47.179993, 44.956093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758113, -0.156504, 0.633065,
		-0.185320, 0.982455, 0.020952,
		-0.625236, -0.101436, -0.773815,
		38.161213, 47.149563, 44.723949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097050, 47.692936, 45.385300>,  <38.598881, 47.220566, 45.265617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097050, 47.692936, 45.385300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922039, 47.433914, 45.135738>,  <37.817032, 47.278503, 44.986004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922039, 47.433914, 45.135738>,  <38.097050, 47.692936, 45.385300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922039, 47.433914, 45.135738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827448, 0.018331, 0.561243,
		-0.351997, 0.761802, -0.543834,
		-0.437525, -0.647550, -0.623899,
		37.790783, 47.239651, 44.948570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463673, 47.904072, 45.425156>,  <38.097050, 47.692936, 45.385300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463673, 47.904072, 45.425156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423073, 47.539223, 45.266293>,  <37.398712, 47.320312, 45.170975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423073, 47.539223, 45.266293>,  <37.463673, 47.904072, 45.425156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423073, 47.539223, 45.266293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858566, -0.121359, 0.498133,
		-0.502557, 0.391541, -0.770800,
		-0.101495, -0.912122, -0.397154,
		37.392624, 47.265587, 45.147148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771996, 47.964737, 45.095348>,  <37.463673, 47.904072, 45.425156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771996, 47.964737, 45.095348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859138, 47.577049, 45.141216>,  <36.911427, 47.344437, 45.168739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859138, 47.577049, 45.141216>,  <36.771996, 47.964737, 45.095348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859138, 47.577049, 45.141216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948277, -0.182414, 0.259801,
		-0.230887, -0.165339, -0.958830,
		0.217859, -0.969220, 0.114670,
		36.924496, 47.286282, 45.175617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201401, 47.555618, 44.674644>,  <36.771996, 47.964737, 45.095348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201401, 47.555618, 44.674644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384148, 47.292122, 44.913757>,  <36.493793, 47.134026, 45.057224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384148, 47.292122, 44.913757>,  <36.201401, 47.555618, 44.674644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384148, 47.292122, 44.913757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888349, -0.372593, 0.268347,
		0.045957, -0.653634, -0.755415,
		0.456863, -0.658739, 0.597778,
		36.521206, 47.094501, 45.093090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920174, 46.833714, 44.564148>,  <36.201401, 47.555618, 44.674644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920174, 46.833714, 44.564148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059975, 46.868988, 44.937260>,  <36.143856, 46.890152, 45.161125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059975, 46.868988, 44.937260>,  <35.920174, 46.833714, 44.564148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059975, 46.868988, 44.937260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893175, -0.269342, 0.360130,
		0.282996, -0.958998, -0.015366,
		0.349502, 0.088191, 0.932776,
		36.164825, 46.895443, 45.217091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671242, 46.266651, 44.940220>,  <35.920174, 46.833714, 44.564148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671242, 46.266651, 44.940220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801796, 46.484062, 45.249557>,  <35.880131, 46.614510, 45.435158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801796, 46.484062, 45.249557>,  <35.671242, 46.266651, 44.940220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801796, 46.484062, 45.249557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820687, -0.242977, 0.517141,
		0.468982, -0.803458, 0.366758,
		0.326387, 0.543523, 0.773339,
		35.899712, 46.647118, 45.481560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777870, 45.788536, 45.484505>,  <35.671242, 46.266651, 44.940220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777870, 45.788536, 45.484505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705368, 46.146324, 45.648003>,  <35.661865, 46.360996, 45.746101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705368, 46.146324, 45.648003>,  <35.777870, 45.788536, 45.484505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705368, 46.146324, 45.648003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772132, -0.386842, 0.504148,
		0.609064, -0.224225, 0.760765,
		-0.181254, 0.894470, 0.408743,
		35.650993, 46.414665, 45.770626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585625, 45.749374, 46.231548>,  <35.777870, 45.788536, 45.484505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585625, 45.749374, 46.231548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453442, 46.109840, 46.119335>,  <35.374130, 46.326118, 46.052006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453442, 46.109840, 46.119335>,  <35.585625, 45.749374, 46.231548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453442, 46.109840, 46.119335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887092, -0.195062, 0.418353,
		0.322283, 0.387108, 0.863875,
		-0.330457, 0.901165, -0.280536,
		35.354305, 46.380188, 46.035175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310692, 46.194645, 46.749908>,  <35.585625, 45.749374, 46.231548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310692, 46.194645, 46.749908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137215, 46.302155, 46.405891>,  <35.033127, 46.366661, 46.199482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137215, 46.302155, 46.405891>,  <35.310692, 46.194645, 46.749908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137215, 46.302155, 46.405891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899521, -0.184888, 0.395826,
		-0.052625, 0.945293, 0.321949,
		-0.433697, 0.268769, -0.860041,
		35.007107, 46.382786, 46.147881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652771, 46.604095, 46.945271>,  <35.310692, 46.194645, 46.749908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652771, 46.604095, 46.945271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585709, 46.515228, 46.561077>,  <34.545471, 46.461906, 46.330559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585709, 46.515228, 46.561077>,  <34.652771, 46.604095, 46.945271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585709, 46.515228, 46.561077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985791, 0.047925, 0.160992,
		0.010264, 0.973830, -0.227046,
		-0.167660, -0.222167, -0.960485,
		34.535412, 46.448578, 46.272930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049652, 47.103008, 46.638138>,  <34.652771, 46.604095, 46.945271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049652, 47.103008, 46.638138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076241, 46.773506, 46.412922>,  <34.092194, 46.575806, 46.277794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076241, 46.773506, 46.412922>,  <34.049652, 47.103008, 46.638138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076241, 46.773506, 46.412922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987698, -0.134372, 0.079986,
		-0.141545, 0.550794, -0.822552,
		0.066472, -0.823754, -0.563037,
		34.096184, 46.526379, 46.244011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339367, 47.108112, 46.320560>,  <34.049652, 47.103008, 46.638138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339367, 47.108112, 46.320560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486282, 46.746956, 46.231228>,  <33.574432, 46.530262, 46.177628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486282, 46.746956, 46.231228>,  <33.339367, 47.108112, 46.320560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486282, 46.746956, 46.231228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926038, -0.377419, 0.002880,
		-0.086890, 0.205756, -0.974738,
		0.367292, -0.902895, -0.223332,
		33.596470, 46.476086, 46.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946114, 46.807941, 45.680664>,  <33.339367, 47.108112, 46.320560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946114, 46.807941, 45.680664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096222, 46.504120, 45.893173>,  <33.186287, 46.321827, 46.020679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.096222, 46.504120, 45.893173>,  <32.946114, 46.807941, 45.680664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096222, 46.504120, 45.893173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880038, -0.471928, -0.053078,
		0.291036, -0.447619, -0.845539,
		0.375275, -0.759553, 0.531269,
		33.208805, 46.276253, 46.052555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695572, 46.160336, 45.411186>,  <32.946114, 46.807941, 45.680664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695572, 46.160336, 45.411186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817116, 46.010887, 45.761745>,  <32.890041, 45.921219, 45.972080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817116, 46.010887, 45.761745>,  <32.695572, 46.160336, 45.411186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817116, 46.010887, 45.761745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859716, -0.503944, 0.083241,
		0.410557, -0.778750, -0.474333,
		0.303861, -0.373617, 0.876402,
		32.908276, 45.898804, 46.024666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.431942, 45.185078, 45.580017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.535339, 45.328850, 45.938679>,  <32.597378, 45.415112, 46.153877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.535339, 45.328850, 45.938679>,  <32.431942, 45.185078, 45.580017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535339, 45.328850, 45.938679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614607, -0.654914, 0.439711,
		0.745278, -0.664753, 0.051616,
		0.258495, 0.359430, 0.896655,
		32.612888, 45.436680, 46.207676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707890, 44.625675, 46.019913>,  <32.431942, 45.185078, 45.580017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707890, 44.625675, 46.019913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597164, 44.924217, 46.262012>,  <32.530727, 45.103344, 46.407272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597164, 44.924217, 46.262012>,  <32.707890, 44.625675, 46.019913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597164, 44.924217, 46.262012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601670, -0.625733, 0.496438,
		0.749244, -0.226740, 0.622271,
		-0.276813, 0.746356, 0.605250,
		32.514122, 45.148125, 46.443588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704437, 44.282253, 46.625076>,  <32.707890, 44.625675, 46.019913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704437, 44.282253, 46.625076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484337, 44.613388, 46.668732>,  <32.352276, 44.812069, 46.694923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484337, 44.613388, 46.668732>,  <32.704437, 44.282253, 46.625076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484337, 44.613388, 46.668732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711116, -0.533103, 0.458383,
		0.437646, 0.174617, 0.882029,
		-0.550254, 0.827834, 0.109137,
		32.319260, 44.861740, 46.701473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510010, 44.319538, 47.288979>,  <32.704437, 44.282253, 46.625076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510010, 44.319538, 47.288979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234287, 44.563431, 47.132473>,  <32.068855, 44.709766, 47.038570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234287, 44.563431, 47.132473>,  <32.510010, 44.319538, 47.288979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234287, 44.563431, 47.132473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710765, -0.464594, 0.528172,
		0.140267, 0.642165, 0.753624,
		-0.689303, 0.609735, -0.391261,
		32.027496, 44.746349, 47.015095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152367, 44.607044, 47.878849>,  <32.510010, 44.319538, 47.288979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152367, 44.607044, 47.878849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918463, 44.648048, 47.556969>,  <31.778120, 44.672649, 47.363838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918463, 44.648048, 47.556969>,  <32.152367, 44.607044, 47.878849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918463, 44.648048, 47.556969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797763, -0.252521, 0.547547,
		-0.147077, 0.962146, 0.229441,
		-0.584759, 0.102508, -0.804704,
		31.743034, 44.678802, 47.315556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557613, 44.788277, 48.145344>,  <32.152367, 44.607044, 47.878849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557613, 44.788277, 48.145344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403515, 44.672211, 47.794941>,  <31.311056, 44.602573, 47.584698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403515, 44.672211, 47.794941>,  <31.557613, 44.788277, 48.145344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403515, 44.672211, 47.794941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874255, -0.189120, 0.447116,
		-0.295406, 0.938105, -0.180817,
		-0.385245, -0.290161, -0.876010,
		31.287941, 44.585163, 47.532139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807848, 45.013569, 48.134808>,  <31.557613, 44.788277, 48.145344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807848, 45.013569, 48.134808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812901, 44.734932, 47.847866>,  <30.815933, 44.567749, 47.675701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812901, 44.734932, 47.847866>,  <30.807848, 45.013569, 48.134808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812901, 44.734932, 47.847866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799187, -0.438197, 0.411441,
		-0.600950, 0.568102, -0.562245,
		0.012633, -0.696594, -0.717355,
		30.816690, 44.525955, 47.632660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142439, 44.986412, 48.018864>,  <30.807848, 45.013569, 48.134808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142439, 44.986412, 48.018864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311745, 44.645020, 47.897266>,  <30.413328, 44.440182, 47.824306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.311745, 44.645020, 47.897266>,  <30.142439, 44.986412, 48.018864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311745, 44.645020, 47.897266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790042, -0.511933, 0.337280,
		-0.443487, 0.097408, -0.890972,
		0.423264, -0.853485, -0.303992,
		30.438725, 44.388973, 47.806068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627394, 44.616611, 47.627533>,  <30.142439, 44.986412, 48.018864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627394, 44.616611, 47.627533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.915596, 44.368652, 47.751850>,  <30.088518, 44.219875, 47.826439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.915596, 44.368652, 47.751850>,  <29.627394, 44.616611, 47.627533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915596, 44.368652, 47.751850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681211, -0.548901, 0.484416,
		-0.129696, -0.560740, -0.817771,
		0.720507, -0.619902, 0.310792,
		30.131748, 44.182682, 47.845089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410303, 43.946407, 47.544945>,  <29.627394, 44.616611, 47.627533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410303, 43.946407, 47.544945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701855, 43.899139, 47.814693>,  <29.876785, 43.870777, 47.976543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701855, 43.899139, 47.814693>,  <29.410303, 43.946407, 47.544945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701855, 43.899139, 47.814693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615518, -0.544409, 0.569874,
		0.299792, -0.830455, -0.469542,
		0.728877, -0.118168, 0.674370,
		29.920517, 43.863689, 48.017006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133198, 43.401146, 47.890156>,  <29.410303, 43.946407, 47.544945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133198, 43.401146, 47.890156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428343, 43.523529, 48.130806>,  <29.605431, 43.596958, 48.275196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428343, 43.523529, 48.130806>,  <29.133198, 43.401146, 47.890156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428343, 43.523529, 48.130806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496330, -0.358096, 0.790837,
		0.457398, -0.882133, -0.112372,
		0.737864, 0.305954, 0.601622,
		29.649702, 43.615314, 48.311291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116722, 42.910030, 48.465584>,  <29.133198, 43.401146, 47.890156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116722, 42.910030, 48.465584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314802, 43.233727, 48.592018>,  <29.433649, 43.427944, 48.667877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314802, 43.233727, 48.592018>,  <29.116722, 42.910030, 48.465584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314802, 43.233727, 48.592018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441066, -0.079275, 0.893967,
		0.748492, -0.582104, 0.317671,
		0.495198, 0.809241, 0.316083,
		29.463362, 43.476498, 48.686844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324478, 42.748299, 49.133038>,  <29.116722, 42.910030, 48.465584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324478, 42.748299, 49.133038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358322, 43.146393, 49.113674>,  <29.378628, 43.385250, 49.102055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358322, 43.146393, 49.113674>,  <29.324478, 42.748299, 49.133038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358322, 43.146393, 49.113674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210015, 0.065302, 0.975515,
		0.974030, -0.072372, 0.214540,
		0.084610, 0.995238, -0.048407,
		29.383705, 43.444965, 49.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635939, 42.934574, 49.752617>,  <29.324478, 42.748299, 49.133038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635939, 42.934574, 49.752617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.457033, 43.272881, 49.636246>,  <29.349689, 43.475864, 49.566422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.457033, 43.272881, 49.636246>,  <29.635939, 42.934574, 49.752617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457033, 43.272881, 49.636246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348580, 0.134719, 0.927547,
		0.823678, 0.516271, 0.234560,
		-0.447266, 0.845763, -0.290927,
		29.322853, 43.526611, 49.548969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740042, 43.569248, 50.271160>,  <29.635939, 42.934574, 49.752617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740042, 43.569248, 50.271160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401917, 43.641037, 50.069870>,  <29.199041, 43.684113, 49.949097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401917, 43.641037, 50.069870>,  <29.740042, 43.569248, 50.271160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401917, 43.641037, 50.069870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477436, 0.169003, 0.862260,
		0.239800, 0.969137, -0.057172,
		-0.845311, 0.179474, -0.503228,
		29.148323, 43.694878, 49.918903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498217, 44.264786, 50.642162>,  <29.740042, 43.569248, 50.271160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498217, 44.264786, 50.642162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.181305, 44.112198, 50.451679>,  <28.991158, 44.020645, 50.337391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.181305, 44.112198, 50.451679>,  <29.498217, 44.264786, 50.642162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181305, 44.112198, 50.451679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588434, 0.271293, 0.761673,
		-0.161368, 0.883673, -0.439412,
		-0.792279, -0.381474, -0.476205,
		28.943621, 43.997757, 50.308819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952925, 44.756985, 50.626228>,  <29.498217, 44.264786, 50.642162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952925, 44.756985, 50.626228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777763, 44.400780, 50.576881>,  <28.672667, 44.187057, 50.547272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.777763, 44.400780, 50.576881>,  <28.952925, 44.756985, 50.626228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777763, 44.400780, 50.576881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612006, 0.194762, 0.766496,
		-0.658550, 0.411155, -0.630288,
		-0.437905, -0.890516, -0.123368,
		28.646393, 44.133625, 50.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343281, 44.887470, 50.863487>,  <28.952925, 44.756985, 50.626228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343281, 44.887470, 50.863487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.324955, 44.488663, 50.838669>,  <28.313959, 44.249378, 50.823780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.324955, 44.488663, 50.838669>,  <28.343281, 44.887470, 50.863487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324955, 44.488663, 50.838669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663321, -0.016076, 0.748162,
		-0.746931, 0.075430, -0.660609,
		-0.045814, -0.997022, -0.062042,
		28.311211, 44.189556, 50.820057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634769, 44.701008, 50.791714>,  <28.343281, 44.887470, 50.863487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634769, 44.701008, 50.791714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.834221, 44.388855, 50.942642>,  <27.953892, 44.201565, 51.033199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.834221, 44.388855, 50.942642>,  <27.634769, 44.701008, 50.791714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834221, 44.388855, 50.942642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648400, -0.046904, 0.759854,
		-0.575280, -0.623540, -0.529388,
		0.498629, -0.780383, 0.377320,
		27.983810, 44.154739, 51.055840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157925, 44.122490, 50.940525>,  <27.634769, 44.701008, 50.791714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157925, 44.122490, 50.940525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457113, 44.045784, 51.194695>,  <27.636627, 43.999760, 51.347195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457113, 44.045784, 51.194695>,  <27.157925, 44.122490, 50.940525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457113, 44.045784, 51.194695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648260, -0.005585, 0.761399,
		-0.142465, -0.981424, -0.128495,
		0.747973, -0.191770, 0.635422,
		27.681505, 43.988255, 51.385323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018164, 43.504360, 51.164379>,  <27.157925, 44.122490, 50.940525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018164, 43.504360, 51.164379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258453, 43.650963, 51.448578>,  <27.402628, 43.738926, 51.619095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258453, 43.650963, 51.448578>,  <27.018164, 43.504360, 51.164379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258453, 43.650963, 51.448578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684882, -0.222504, 0.693851,
		0.412390, -0.903418, 0.117352,
		0.600726, 0.366509, 0.710492,
		27.438671, 43.760914, 51.661724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113581, 42.957413, 51.608128>,  <27.018164, 43.504360, 51.164379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113581, 42.957413, 51.608128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.176504, 43.310249, 51.785744>,  <27.214258, 43.521950, 51.892315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.176504, 43.310249, 51.785744>,  <27.113581, 42.957413, 51.608128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176504, 43.310249, 51.785744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463383, -0.331135, 0.821965,
		0.872084, -0.335061, 0.356656,
		0.157307, 0.882091, 0.444039,
		27.223696, 43.574875, 51.918957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511665, 43.123531, 52.215572>,  <27.113581, 42.957413, 51.608128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511665, 43.123531, 52.215572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.614212, 43.283783, 51.863716>,  <27.675741, 43.379932, 51.652603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.614212, 43.283783, 51.863716>,  <27.511665, 43.123531, 52.215572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614212, 43.283783, 51.863716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586695, 0.658741, 0.471010,
		0.768157, -0.636834, -0.066167,
		0.256368, 0.400629, -0.879643,
		27.691122, 43.403973, 51.599823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494675, 42.326057, 52.449734>,  <27.511665, 43.123531, 52.215572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494675, 42.326057, 52.449734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.456764, 42.004005, 52.683926>,  <27.434017, 41.810776, 52.824440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.456764, 42.004005, 52.683926>,  <27.494675, 42.326057, 52.449734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456764, 42.004005, 52.683926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044853, 0.584072, 0.810462,
		-0.994488, 0.103074, -0.019244,
		-0.094778, -0.805131, 0.585475,
		27.428331, 41.762466, 52.859570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156614, 42.113964, 51.820477>,  <27.494675, 42.326057, 52.449734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156614, 42.113964, 51.820477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.053017, 41.731270, 51.873505>,  <26.990858, 41.501652, 51.905323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.053017, 41.731270, 51.873505>,  <27.156614, 42.113964, 51.820477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053017, 41.731270, 51.873505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761529, -0.286697, -0.581273,
		0.594134, -0.049588, 0.802836,
		-0.258995, -0.956737, 0.132574,
		26.975319, 41.444248, 51.913277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781054, 41.745007, 52.104496>,  <27.156614, 42.113964, 51.820477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781054, 41.745007, 52.104496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.542908, 41.474174, 51.931477>,  <27.400021, 41.311676, 51.827663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.542908, 41.474174, 51.931477>,  <27.781054, 41.745007, 52.104496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542908, 41.474174, 51.931477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766891, -0.318331, -0.557265,
		0.239618, -0.663497, 0.708770,
		-0.595367, -0.677080, -0.432551,
		27.364298, 41.271049, 51.801712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107611, 41.098206, 52.106251>,  <27.781054, 41.745007, 52.104496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107611, 41.098206, 52.106251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.839378, 41.083527, 51.809879>,  <27.678440, 41.074718, 51.632057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.839378, 41.083527, 51.809879>,  <28.107611, 41.098206, 52.106251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839378, 41.083527, 51.809879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717545, -0.285582, -0.635273,
		-0.188285, -0.957651, 0.217836,
		-0.670580, -0.036695, -0.740929,
		27.638205, 41.072517, 51.587601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281372, 40.451439, 51.736446>,  <28.107611, 41.098206, 52.106251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281372, 40.451439, 51.736446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.036842, 40.606224, 51.460316>,  <27.890125, 40.699097, 51.294640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.036842, 40.606224, 51.460316>,  <28.281372, 40.451439, 51.736446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036842, 40.606224, 51.460316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647851, -0.256273, -0.717366,
		-0.454504, -0.885768, -0.094028,
		-0.611323, 0.386961, -0.690322,
		27.853445, 40.722313, 51.253220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181778, 39.949047, 51.223732>,  <28.281372, 40.451439, 51.736446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181778, 39.949047, 51.223732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109556, 40.312241, 51.072483>,  <28.066223, 40.530155, 50.981735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109556, 40.312241, 51.072483>,  <28.181778, 39.949047, 51.223732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109556, 40.312241, 51.072483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580045, -0.212172, -0.786467,
		-0.794322, -0.361326, -0.488360,
		-0.180555, 0.907979, -0.378119,
		28.055389, 40.584633, 50.959049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046482, 39.783852, 50.515251>,  <28.181778, 39.949047, 51.223732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046482, 39.783852, 50.515251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154736, 40.165703, 50.564957>,  <28.219688, 40.394814, 50.594780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.154736, 40.165703, 50.564957>,  <28.046482, 39.783852, 50.515251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154736, 40.165703, 50.564957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659362, -0.089759, -0.746448,
		-0.701427, 0.283952, -0.653737,
		0.270634, 0.954628, 0.124268,
		28.235926, 40.452091, 50.602238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084377, 39.988087, 49.911083>,  <28.046482, 39.783852, 50.515251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084377, 39.988087, 49.911083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.263962, 40.304909, 50.076534>,  <28.371712, 40.495003, 50.175804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.263962, 40.304909, 50.076534>,  <28.084377, 39.988087, 49.911083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263962, 40.304909, 50.076534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579947, 0.093864, -0.809229,
		-0.679777, 0.603192, -0.417208,
		0.448959, 0.792054, 0.413625,
		28.398649, 40.542526, 50.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111710, 40.486828, 49.354847>,  <28.084377, 39.988087, 49.911083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111710, 40.486828, 49.354847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383625, 40.597908, 49.626366>,  <28.546774, 40.664555, 49.789276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383625, 40.597908, 49.626366>,  <28.111710, 40.486828, 49.354847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383625, 40.597908, 49.626366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669110, 0.144135, -0.729052,
		-0.300294, 0.949795, -0.087828,
		0.679791, 0.277696, 0.678800,
		28.587563, 40.681217, 49.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342634, 41.132000, 49.148048>,  <28.111710, 40.486828, 49.354847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342634, 41.132000, 49.148048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.634686, 40.992653, 49.383186>,  <28.809916, 40.909046, 49.524269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.634686, 40.992653, 49.383186>,  <28.342634, 41.132000, 49.148048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634686, 40.992653, 49.383186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673716, 0.510667, -0.534159,
		-0.114109, 0.786042, 0.607550,
		0.730127, -0.348364, 0.587840,
		28.853724, 40.888145, 49.559540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791134, 41.729782, 49.247498>,  <28.342634, 41.132000, 49.148048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791134, 41.729782, 49.247498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008570, 41.401016, 49.315578>,  <29.139030, 41.203758, 49.356426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008570, 41.401016, 49.315578>,  <28.791134, 41.729782, 49.247498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008570, 41.401016, 49.315578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794638, 0.438639, -0.419698,
		0.270298, 0.363392, 0.891563,
		0.543590, -0.821913, 0.170202,
		29.171646, 41.154442, 49.366638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584711, 41.945400, 49.391739>,  <28.791134, 41.729782, 49.247498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584711, 41.945400, 49.391739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.609774, 41.560097, 49.287266>,  <29.624811, 41.328915, 49.224583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.609774, 41.560097, 49.287266>,  <29.584711, 41.945400, 49.391739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609774, 41.560097, 49.287266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867042, 0.182140, -0.463748,
		0.494279, -0.197397, 0.846595,
		0.062656, -0.963255, -0.261180,
		29.628571, 41.271122, 49.208912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285769, 41.890938, 49.427853>,  <29.584711, 41.945400, 49.391739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285769, 41.890938, 49.427853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.128834, 41.592056, 49.213280>,  <30.034674, 41.412727, 49.084534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.128834, 41.592056, 49.213280>,  <30.285769, 41.890938, 49.427853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128834, 41.592056, 49.213280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684971, 0.151903, -0.712558,
		0.613912, -0.647003, 0.452216,
		-0.392335, -0.747203, -0.536434,
		30.011133, 41.367897, 49.052349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815754, 41.581692, 49.146069>,  <30.285769, 41.890938, 49.427853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815754, 41.581692, 49.146069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524019, 41.438759, 48.912697>,  <30.348978, 41.353001, 48.772675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524019, 41.438759, 48.912697>,  <30.815754, 41.581692, 49.146069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524019, 41.438759, 48.912697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558804, 0.180877, -0.809334,
		0.394728, -0.916296, 0.067757,
		-0.729334, -0.357329, -0.583427,
		30.305220, 41.331562, 48.737667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217522, 41.214130, 48.675320>,  <30.815754, 41.581692, 49.146069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217522, 41.214130, 48.675320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871603, 41.283646, 48.486885>,  <30.664051, 41.325356, 48.373825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871603, 41.283646, 48.486885>,  <31.217522, 41.214130, 48.675320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871603, 41.283646, 48.486885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493932, 0.125677, -0.860370,
		-0.090316, -0.976731, -0.194523,
		-0.864797, 0.173786, -0.471088,
		30.612164, 41.335781, 48.345558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153124, 40.771580, 48.106766>,  <31.217522, 41.214130, 48.675320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153124, 40.771580, 48.106766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945234, 41.101089, 48.016190>,  <30.820499, 41.298798, 47.961842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945234, 41.101089, 48.016190>,  <31.153124, 40.771580, 48.106766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945234, 41.101089, 48.016190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510859, 0.087215, -0.855229,
		-0.684768, -0.560165, -0.466162,
		-0.519726, 0.823777, -0.226444,
		30.789316, 41.348221, 47.948257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070051, 40.731213, 47.374821>,  <31.153124, 40.771580, 48.106766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070051, 40.731213, 47.374821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980247, 41.113663, 47.450096>,  <30.926365, 41.343132, 47.495262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980247, 41.113663, 47.450096>,  <31.070051, 40.731213, 47.374821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980247, 41.113663, 47.450096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481458, 0.276737, -0.831634,
		-0.847228, -0.096103, -0.522465,
		-0.224508, 0.956128, 0.188189,
		30.912895, 41.400501, 47.506554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818098, 41.080078, 46.750797>,  <31.070051, 40.731213, 47.374821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818098, 41.080078, 46.750797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935179, 41.384842, 46.981907>,  <31.005426, 41.567699, 47.120571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935179, 41.384842, 46.981907>,  <30.818098, 41.080078, 46.750797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935179, 41.384842, 46.981907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438899, 0.429776, -0.789088,
		-0.849526, 0.484552, -0.208603,
		0.292702, 0.761906, 0.577775,
		31.022989, 41.613415, 47.155239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689690, 41.768154, 46.341293>,  <30.818098, 41.080078, 46.750797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689690, 41.768154, 46.341293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963678, 41.870789, 46.614052>,  <31.128071, 41.932369, 46.777706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963678, 41.870789, 46.614052>,  <30.689690, 41.768154, 46.341293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963678, 41.870789, 46.614052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549313, 0.432954, -0.714707,
		-0.478614, 0.864126, 0.155613,
		0.684970, 0.256588, 0.681893,
		31.169168, 41.947765, 46.818619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667330, 42.426514, 46.253742>,  <30.689690, 41.768154, 46.341293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667330, 42.426514, 46.253742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011847, 42.332893, 46.434139>,  <31.218557, 42.276722, 46.542377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011847, 42.332893, 46.434139>,  <30.667330, 42.426514, 46.253742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011847, 42.332893, 46.434139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506962, 0.455440, -0.731822,
		-0.034118, 0.858950, 0.510922,
		0.861293, -0.234050, 0.450994,
		31.270235, 42.262680, 46.569439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115353, 43.024723, 46.254627>,  <30.667330, 42.426514, 46.253742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115353, 43.024723, 46.254627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364323, 42.714500, 46.296780>,  <31.513704, 42.528366, 46.322071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364323, 42.714500, 46.296780>,  <31.115353, 43.024723, 46.254627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364323, 42.714500, 46.296780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560580, 0.347776, -0.751533,
		0.546202, 0.526850, 0.651224,
		0.622425, -0.775552, 0.105385,
		31.551050, 42.481834, 46.328396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.097008, 47.384686, 45.923752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.249969, 47.084549, 46.139439>,  <35.341747, 46.904469, 46.268852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.249969, 47.084549, 46.139439>,  <35.097008, 47.384686, 45.923752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249969, 47.084549, 46.139439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915991, 0.231201, -0.327882,
		0.121356, 0.619301, 0.775718,
		0.382404, -0.750342, 0.539216,
		35.364689, 46.859447, 46.301205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682022, 47.593441, 46.326649>,  <35.097008, 47.384686, 45.923752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682022, 47.593441, 46.326649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.689476, 47.216660, 46.192562>,  <35.693947, 46.990589, 46.112110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.689476, 47.216660, 46.192562>,  <35.682022, 47.593441, 46.326649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689476, 47.216660, 46.192562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810836, 0.210395, -0.546148,
		0.584976, -0.261629, 0.767693,
		0.018631, -0.941957, -0.335215,
		35.695065, 46.934071, 46.091999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353218, 47.414890, 46.452713>,  <35.682022, 47.593441, 46.326649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353218, 47.414890, 46.452713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.194988, 47.184410, 46.166634>,  <36.100052, 47.046120, 45.994984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.194988, 47.184410, 46.166634>,  <36.353218, 47.414890, 46.452713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194988, 47.184410, 46.166634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842622, 0.082119, -0.532208,
		0.365391, -0.813171, 0.453037,
		-0.395573, -0.576203, -0.715201,
		36.076317, 47.011551, 45.952072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783169, 46.886196, 46.377602>,  <36.353218, 47.414890, 46.452713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783169, 46.886196, 46.377602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580429, 46.898994, 46.033024>,  <36.458786, 46.906673, 45.826279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.580429, 46.898994, 46.033024>,  <36.783169, 46.886196, 46.377602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580429, 46.898994, 46.033024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856738, -0.091910, -0.507496,
		-0.095419, -0.995253, 0.019161,
		-0.506848, 0.032009, -0.861441,
		36.428375, 46.908592, 45.774593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946362, 46.245693, 46.024864>,  <36.783169, 46.886196, 46.377602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946362, 46.245693, 46.024864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.828220, 46.501854, 45.741272>,  <36.757336, 46.655552, 45.571117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.828220, 46.501854, 45.741272>,  <36.946362, 46.245693, 46.024864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828220, 46.501854, 45.741272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881269, -0.103962, -0.461039,
		-0.368957, -0.760971, -0.533660,
		-0.295357, 0.640402, -0.708978,
		36.739613, 46.693974, 45.528580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238476, 46.043121, 45.438213>,  <36.946362, 46.245693, 46.024864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238476, 46.043121, 45.438213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118332, 46.406418, 45.321678>,  <37.046246, 46.624397, 45.251755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118332, 46.406418, 45.321678>,  <37.238476, 46.043121, 45.438213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118332, 46.406418, 45.321678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853827, 0.119875, -0.506567,
		-0.425160, -0.400909, -0.811487,
		-0.300364, 0.908241, -0.291341,
		37.028221, 46.678890, 45.234276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408726, 46.065468, 44.671764>,  <37.238476, 46.043121, 45.438213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408726, 46.065468, 44.671764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.395634, 46.440102, 44.811333>,  <37.387779, 46.664883, 44.895073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.395634, 46.440102, 44.811333>,  <37.408726, 46.065468, 44.671764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395634, 46.440102, 44.811333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720764, 0.263974, -0.640950,
		-0.692408, 0.230512, -0.683693,
		-0.032731, 0.936580, 0.348923,
		37.385815, 46.721077, 44.916008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364582, 46.429527, 44.041092>,  <37.408726, 46.065468, 44.671764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364582, 46.429527, 44.041092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477173, 46.697899, 44.315502>,  <37.544727, 46.858921, 44.480148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477173, 46.697899, 44.315502>,  <37.364582, 46.429527, 44.041092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477173, 46.697899, 44.315502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694695, 0.350700, -0.628020,
		-0.661943, 0.653352, -0.367374,
		0.281480, 0.670926, 0.686023,
		37.561615, 46.899178, 44.521309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276062, 47.175465, 43.811768>,  <37.364582, 46.429527, 44.041092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276062, 47.175465, 43.811768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.568909, 47.147057, 44.082756>,  <37.744617, 47.130013, 44.245350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.568909, 47.147057, 44.082756>,  <37.276062, 47.175465, 43.811768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568909, 47.147057, 44.082756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597752, 0.543911, -0.588943,
		-0.326657, 0.836132, 0.440656,
		0.732112, -0.071021, 0.677472,
		37.788544, 47.125751, 44.285999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701443, 47.784866, 43.677227>,  <37.276062, 47.175465, 43.811768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701443, 47.784866, 43.677227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948166, 47.563034, 43.900654>,  <38.096199, 47.429935, 44.034710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.948166, 47.563034, 43.900654>,  <37.701443, 47.784866, 43.677227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948166, 47.563034, 43.900654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781890, 0.350072, -0.515846,
		0.090540, 0.754912, 0.649546,
		0.616807, -0.554578, 0.558563,
		38.133209, 47.396660, 44.068222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375381, 48.230915, 43.829563>,  <37.701443, 47.784866, 43.677227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375381, 48.230915, 43.829563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476250, 47.848427, 43.888977>,  <38.536770, 47.618935, 43.924625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476250, 47.848427, 43.888977>,  <38.375381, 48.230915, 43.829563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476250, 47.848427, 43.888977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881331, 0.163565, -0.443287,
		0.399583, 0.242688, 0.883988,
		0.252170, -0.956216, 0.148531,
		38.551899, 47.561562, 43.933537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003757, 48.297276, 44.113308>,  <38.375381, 48.230915, 43.829563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003757, 48.297276, 44.113308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981949, 47.936287, 43.942394>,  <38.968864, 47.719692, 43.839848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981949, 47.936287, 43.942394>,  <39.003757, 48.297276, 44.113308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981949, 47.936287, 43.942394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878749, 0.159834, -0.449727,
		0.474160, -0.399993, 0.784333,
		-0.054525, -0.902474, -0.427280,
		38.965591, 47.665546, 43.814209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759140, 47.957592, 44.156479>,  <39.003757, 48.297276, 44.113308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759140, 47.957592, 44.156479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524651, 47.824104, 43.861191>,  <39.383957, 47.744011, 43.684017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524651, 47.824104, 43.861191>,  <39.759140, 47.957592, 44.156479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524651, 47.824104, 43.861191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728985, 0.180257, -0.660370,
		0.353451, -0.925276, 0.137609,
		-0.586219, -0.333724, -0.738225,
		39.348785, 47.723988, 43.639725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114243, 47.361794, 43.956291>,  <39.759140, 47.957592, 44.156479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114243, 47.361794, 43.956291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936722, 47.534737, 43.642323>,  <39.830208, 47.638504, 43.453941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936722, 47.534737, 43.642323>,  <40.114243, 47.361794, 43.956291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936722, 47.534737, 43.642323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869696, -0.003347, -0.493576,
		-0.216029, -0.901696, -0.374535,
		-0.443802, 0.432358, -0.784924,
		39.803581, 47.664444, 43.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546528, 47.589394, 44.542370>,  <40.114243, 47.361794, 43.956291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546528, 47.589394, 44.542370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837151, 47.713699, 44.787498>,  <41.011524, 47.788284, 44.934574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837151, 47.713699, 44.787498>,  <40.546528, 47.589394, 44.542370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837151, 47.713699, 44.787498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273987, -0.686871, 0.673156,
		0.630120, -0.656988, -0.413902,
		0.726553, 0.310766, 0.612817,
		41.055115, 47.806931, 44.971344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931133, 46.955860, 44.822823>,  <40.546528, 47.589394, 44.542370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931133, 46.955860, 44.822823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999001, 47.256653, 45.077610>,  <41.039722, 47.437130, 45.230484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999001, 47.256653, 45.077610>,  <40.931133, 46.955860, 44.822823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999001, 47.256653, 45.077610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177996, -0.612329, 0.770305,
		0.969294, -0.244074, 0.029958,
		0.169667, 0.751985, 0.636971,
		41.049900, 47.482246, 45.268700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345196, 46.599476, 45.219372>,  <40.931133, 46.955860, 44.822823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345196, 46.599476, 45.219372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211586, 46.918190, 45.420792>,  <41.131420, 47.109417, 45.541645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211586, 46.918190, 45.420792>,  <41.345196, 46.599476, 45.219372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211586, 46.918190, 45.420792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248077, -0.589718, 0.768564,
		0.909333, 0.131799, 0.394643,
		-0.334024, 0.796782, 0.503554,
		41.111378, 47.157223, 45.571857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575226, 46.405621, 45.906002>,  <41.345196, 46.599476, 45.219372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575226, 46.405621, 45.906002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.294720, 46.689476, 45.933254>,  <41.126415, 46.859791, 45.949604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.294720, 46.689476, 45.933254>,  <41.575226, 46.405621, 45.906002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294720, 46.689476, 45.933254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428296, -0.495772, 0.755495,
		0.569905, 0.500622, 0.651603,
		-0.701264, 0.709639, 0.068129,
		41.084339, 46.902367, 45.953693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509056, 46.461704, 46.635914>,  <41.575226, 46.405621, 45.906002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509056, 46.461704, 46.635914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170181, 46.609306, 46.483013>,  <40.966858, 46.697868, 46.391273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170181, 46.609306, 46.483013>,  <41.509056, 46.461704, 46.635914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170181, 46.609306, 46.483013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524477, -0.465883, 0.712655,
		0.084889, 0.804231, 0.588223,
		-0.847182, 0.369006, -0.382252,
		40.916027, 46.720009, 46.368336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162003, 46.747471, 47.163033>,  <41.509056, 46.461704, 46.635914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162003, 46.747471, 47.163033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876923, 46.685104, 46.889465>,  <40.705875, 46.647686, 46.725323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876923, 46.685104, 46.889465>,  <41.162003, 46.747471, 47.163033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876923, 46.685104, 46.889465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571381, -0.436552, 0.694943,
		-0.406917, 0.886066, 0.222046,
		-0.712700, -0.155912, -0.683922,
		40.663113, 46.638332, 46.684288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468307, 47.028194, 47.424137>,  <41.162003, 46.747471, 47.163033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468307, 47.028194, 47.424137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.362865, 46.790558, 47.120144>,  <40.299603, 46.647976, 46.937748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.362865, 46.790558, 47.120144>,  <40.468307, 47.028194, 47.424137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362865, 46.790558, 47.120144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708732, -0.415177, 0.570374,
		-0.654380, 0.688976, -0.311608,
		-0.263602, -0.594088, -0.759983,
		40.283787, 46.612331, 46.892151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793175, 47.182739, 47.267349>,  <40.468307, 47.028194, 47.424137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793175, 47.182739, 47.267349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881664, 46.808067, 47.158764>,  <39.934757, 46.583263, 47.093613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881664, 46.808067, 47.158764>,  <39.793175, 47.182739, 47.267349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881664, 46.808067, 47.158764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776427, -0.337602, 0.532153,
		-0.590103, 0.093046, -0.801948,
		0.221224, -0.936679, -0.271463,
		39.948032, 46.527065, 47.077324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213421, 46.956223, 47.167465>,  <39.793175, 47.182739, 47.267349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213421, 46.956223, 47.167465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414764, 46.611191, 47.147110>,  <39.535572, 46.404171, 47.134899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414764, 46.611191, 47.147110>,  <39.213421, 46.956223, 47.167465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414764, 46.611191, 47.147110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810053, -0.491569, 0.319647,
		-0.300734, -0.119678, -0.946169,
		0.503362, -0.862576, -0.050885,
		39.565773, 46.352417, 47.131844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790245, 46.532600, 46.771187>,  <39.213421, 46.956223, 47.167465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790245, 46.532600, 46.771187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035412, 46.276421, 46.956295>,  <39.182514, 46.122711, 47.067360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035412, 46.276421, 46.956295>,  <38.790245, 46.532600, 46.771187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035412, 46.276421, 46.956295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752441, -0.651852, 0.094454,
		0.241163, -0.406098, -0.881433,
		0.612922, -0.640448, 0.462768,
		39.219288, 46.084286, 47.095127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897263, 45.841972, 46.323555>,  <38.790245, 46.532600, 46.771187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897263, 45.841972, 46.323555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965416, 45.775520, 46.712063>,  <39.006306, 45.735649, 46.945168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.965416, 45.775520, 46.712063>,  <38.897263, 45.841972, 46.323555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965416, 45.775520, 46.712063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672073, -0.740433, -0.008750,
		0.720617, -0.651276, -0.237803,
		0.170378, -0.166126, 0.971274,
		39.016529, 45.725681, 47.003445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734131, 45.180901, 46.440781>,  <38.897263, 45.841972, 46.323555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734131, 45.180901, 46.440781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.727913, 45.297752, 46.823280>,  <38.724182, 45.367863, 47.052780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.727913, 45.297752, 46.823280>,  <38.734131, 45.180901, 46.440781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727913, 45.297752, 46.823280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794534, -0.584215, 0.165556,
		0.607021, -0.757201, 0.241189,
		-0.015547, 0.292129, 0.956252,
		38.723248, 45.385391, 47.110157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500553, 44.620995, 46.745060>,  <38.734131, 45.180901, 46.440781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500553, 44.620995, 46.745060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433060, 44.933037, 46.986046>,  <38.392563, 45.120262, 47.130638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.433060, 44.933037, 46.986046>,  <38.500553, 44.620995, 46.745060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433060, 44.933037, 46.986046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871441, -0.403675, 0.278634,
		0.460564, -0.478001, 0.747928,
		-0.168733, 0.780104, 0.602468,
		38.382439, 45.167068, 47.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335323, 44.283298, 47.290359>,  <38.500553, 44.620995, 46.745060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335323, 44.283298, 47.290359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.173443, 44.648071, 47.317459>,  <38.076313, 44.866936, 47.333717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.173443, 44.648071, 47.317459>,  <38.335323, 44.283298, 47.290359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173443, 44.648071, 47.317459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867499, -0.406301, 0.286991,
		0.289245, 0.057373, 0.955534,
		-0.404700, 0.911936, 0.067750,
		38.052032, 44.921654, 47.337784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780689, 43.826183, 47.713001>,  <38.335323, 44.283298, 47.290359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780689, 43.826183, 47.713001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.852413, 43.435875, 47.763149>,  <38.895447, 43.201691, 47.793236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.852413, 43.435875, 47.763149>,  <38.780689, 43.826183, 47.713001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852413, 43.435875, 47.763149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538530, -0.009288, -0.842555,
		0.823306, 0.218592, 0.523818,
		0.179310, -0.975772, 0.125366,
		38.906208, 43.143143, 47.800758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567722, 43.754349, 47.728920>,  <38.780689, 43.826183, 47.713001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567722, 43.754349, 47.728920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.378933, 43.410690, 47.649803>,  <39.265659, 43.204494, 47.602333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.378933, 43.410690, 47.649803>,  <39.567722, 43.754349, 47.728920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378933, 43.410690, 47.649803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530930, -0.097883, -0.841744,
		0.703818, -0.502289, 0.502342,
		-0.471969, -0.859142, -0.197788,
		39.237343, 43.152946, 47.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128883, 43.317375, 47.701248>,  <39.567722, 43.754349, 47.728920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128883, 43.317375, 47.701248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812401, 43.169487, 47.506393>,  <39.622513, 43.080753, 47.389481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812401, 43.169487, 47.506393>,  <40.128883, 43.317375, 47.701248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812401, 43.169487, 47.506393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569938, -0.156964, -0.806556,
		0.221739, -0.915788, 0.334909,
		-0.791203, -0.369723, -0.487138,
		39.575039, 43.058571, 47.360252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401493, 42.785107, 47.345337>,  <40.128883, 43.317375, 47.701248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401493, 42.785107, 47.345337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048828, 42.814857, 47.158943>,  <39.837231, 42.832706, 47.047108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048828, 42.814857, 47.158943>,  <40.401493, 42.785107, 47.345337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048828, 42.814857, 47.158943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451579, -0.153571, -0.878915,
		-0.136932, -0.985335, 0.101811,
		-0.881661, 0.074375, -0.465986,
		39.784328, 42.837170, 47.019146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480846, 42.328800, 46.671005>,  <40.401493, 42.785107, 47.345337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480846, 42.328800, 46.671005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.162865, 42.563591, 46.609676>,  <39.972076, 42.704464, 46.572880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.162865, 42.563591, 46.609676>,  <40.480846, 42.328800, 46.671005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162865, 42.563591, 46.609676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155907, -0.046575, -0.986673,
		-0.586291, -0.808266, -0.054488,
		-0.794956, 0.586973, -0.153321,
		39.924377, 42.739681, 46.563679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010693, 41.955593, 46.147827>,  <40.480846, 42.328800, 46.671005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010693, 41.955593, 46.147827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927578, 42.346855, 46.149963>,  <39.877708, 42.581612, 46.151245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927578, 42.346855, 46.149963>,  <40.010693, 41.955593, 46.147827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927578, 42.346855, 46.149963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006939, 0.003989, -0.999968,
		-0.978150, -0.207817, 0.005958,
		-0.207787, 0.978160, 0.005344,
		39.865242, 42.640305, 46.151566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769867, 41.957535, 45.504089>,  <40.010693, 41.955593, 46.147827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769867, 41.957535, 45.504089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.793816, 42.345940, 45.596657>,  <39.808186, 42.578983, 45.652199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.793816, 42.345940, 45.596657>,  <39.769867, 41.957535, 45.504089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793816, 42.345940, 45.596657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044703, 0.228995, -0.972401,
		-0.997204, 0.068569, -0.029695,
		0.059876, 0.971009, 0.231420,
		39.811779, 42.637241, 45.666084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269459, 42.344669, 45.081478>,  <39.769867, 41.957535, 45.504089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269459, 42.344669, 45.081478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545998, 42.622070, 45.162563>,  <39.711922, 42.788513, 45.211216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545998, 42.622070, 45.162563>,  <39.269459, 42.344669, 45.081478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545998, 42.622070, 45.162563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034491, 0.248565, -0.968001,
		-0.721702, 0.676214, 0.147924,
		0.691344, 0.693506, 0.202713,
		39.753403, 42.830124, 45.223377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112663, 42.996044, 44.703213>,  <39.269459, 42.344669, 45.081478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112663, 42.996044, 44.703213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503941, 43.023735, 44.781548>,  <39.738705, 43.040348, 44.828548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.503941, 43.023735, 44.781548>,  <39.112663, 42.996044, 44.703213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503941, 43.023735, 44.781548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177328, 0.212622, -0.960909,
		-0.108158, 0.974679, 0.195709,
		0.978191, 0.069225, 0.195835,
		39.797398, 43.044502, 44.840298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334473, 43.616165, 44.388321>,  <39.112663, 42.996044, 44.703213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334473, 43.616165, 44.388321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.662830, 43.397476, 44.454319>,  <39.859844, 43.266262, 44.493919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.662830, 43.397476, 44.454319>,  <39.334473, 43.616165, 44.388321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662830, 43.397476, 44.454319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272474, 0.121044, -0.954519,
		0.501884, 0.828519, 0.248332,
		0.820896, -0.546722, 0.165000,
		39.909100, 43.233459, 44.503819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963230, 43.977936, 44.051079>,  <39.334473, 43.616165, 44.388321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963230, 43.977936, 44.051079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.093086, 43.604782, 44.113480>,  <40.171001, 43.380890, 44.150921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.093086, 43.604782, 44.113480>,  <39.963230, 43.977936, 44.051079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093086, 43.604782, 44.113480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415597, -0.007464, -0.909518,
		0.849639, 0.360099, 0.385281,
		0.324641, -0.932884, 0.155998,
		40.190479, 43.324917, 44.160278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692547, 43.949459, 44.041126>,  <39.963230, 43.977936, 44.051079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692547, 43.949459, 44.041126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.538040, 43.605820, 43.906811>,  <40.445335, 43.399635, 43.826221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.538040, 43.605820, 43.906811>,  <40.692547, 43.949459, 44.041126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538040, 43.605820, 43.906811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498479, 0.111884, -0.859652,
		0.776091, -0.499439, 0.385023,
		-0.386266, -0.859094, -0.335792,
		40.422161, 43.348091, 43.806072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.036373, 43.832417, 51.236683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877380, 43.525124, 51.035950>,  <36.781986, 43.340748, 50.915508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877380, 43.525124, 51.035950>,  <37.036373, 43.832417, 51.236683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877380, 43.525124, 51.035950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894423, -0.202194, -0.398904,
		0.204982, -0.607406, 0.767490,
		-0.397479, -0.768229, -0.501832,
		36.758137, 43.294655, 50.885399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711216, 43.411831, 51.116207>,  <37.036373, 43.832417, 51.236683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711216, 43.411831, 51.116207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437466, 43.230797, 50.887539>,  <37.273216, 43.122177, 50.750340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437466, 43.230797, 50.887539>,  <37.711216, 43.411831, 51.116207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437466, 43.230797, 50.887539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718922, -0.288105, -0.632571,
		0.121591, -0.843899, 0.522543,
		-0.684373, -0.452582, -0.571666,
		37.232155, 43.095020, 50.716038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964649, 42.732697, 50.948818>,  <37.711216, 43.411831, 51.116207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964649, 42.732697, 50.948818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695000, 42.844009, 50.675140>,  <37.533211, 42.910797, 50.510933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695000, 42.844009, 50.675140>,  <37.964649, 42.732697, 50.948818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695000, 42.844009, 50.675140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599010, -0.335977, -0.726847,
		-0.432141, -0.899821, 0.059796,
		-0.674122, 0.278282, -0.684192,
		37.492764, 42.927494, 50.469883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951248, 42.179077, 50.523846>,  <37.964649, 42.732697, 50.948818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951248, 42.179077, 50.523846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842930, 42.504784, 50.318459>,  <37.777939, 42.700207, 50.195229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842930, 42.504784, 50.318459>,  <37.951248, 42.179077, 50.523846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842930, 42.504784, 50.318459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676201, -0.218734, -0.703497,
		-0.685143, -0.537709, -0.491373,
		-0.270797, 0.814263, -0.513463,
		37.761692, 42.749062, 50.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807613, 41.982277, 49.794205>,  <37.951248, 42.179077, 50.523846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807613, 41.982277, 49.794205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880527, 42.375572, 49.795982>,  <37.924274, 42.611549, 49.797047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880527, 42.375572, 49.795982>,  <37.807613, 41.982277, 49.794205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880527, 42.375572, 49.795982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384433, -0.067112, -0.920710,
		-0.904978, 0.169536, -0.390222,
		0.182282, 0.983236, 0.004441,
		37.935211, 42.670544, 49.797314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627602, 42.140430, 49.208981>,  <37.807613, 41.982277, 49.794205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627602, 42.140430, 49.208981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846306, 42.462631, 49.300377>,  <37.977528, 42.655952, 49.355217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846306, 42.462631, 49.300377>,  <37.627602, 42.140430, 49.208981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846306, 42.462631, 49.300377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449037, -0.051766, -0.892012,
		-0.706693, 0.590323, -0.390006,
		0.546764, 0.805505, 0.228494,
		38.010334, 42.704285, 49.368927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512333, 42.540535, 48.712353>,  <37.627602, 42.140430, 49.208981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512333, 42.540535, 48.712353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871498, 42.652061, 48.848591>,  <38.086998, 42.718979, 48.930336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871498, 42.652061, 48.848591>,  <37.512333, 42.540535, 48.712353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871498, 42.652061, 48.848591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351986, 0.009787, -0.935954,
		-0.264293, 0.960295, -0.089352,
		0.897917, 0.278816, 0.340597,
		38.140873, 42.735706, 48.950771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637138, 43.104755, 48.247063>,  <37.512333, 42.540535, 48.712353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637138, 43.104755, 48.247063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988712, 42.985916, 48.396301>,  <38.199657, 42.914612, 48.485844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988712, 42.985916, 48.396301>,  <37.637138, 43.104755, 48.247063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988712, 42.985916, 48.396301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401746, 0.039600, -0.914895,
		0.257043, 0.954024, 0.154165,
		0.878937, -0.297102, 0.373096,
		38.252392, 42.896786, 48.508228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152985, 43.564312, 47.995590>,  <37.637138, 43.104755, 48.247063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152985, 43.564312, 47.995590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377266, 43.245872, 48.086666>,  <38.511833, 43.054810, 48.141312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377266, 43.245872, 48.086666>,  <38.152985, 43.564312, 47.995590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377266, 43.245872, 48.086666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504703, 0.110597, -0.856179,
		0.656419, 0.594978, 0.463804,
		0.560704, -0.796096, 0.227689,
		38.545479, 43.007042, 48.154972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958183, 44.312107, 47.952030>,  <38.152985, 43.564312, 47.995590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958183, 44.312107, 47.952030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800896, 44.637207, 47.780067>,  <37.706524, 44.832268, 47.676891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800896, 44.637207, 47.780067>,  <37.958183, 44.312107, 47.952030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800896, 44.637207, 47.780067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884460, -0.206610, 0.418380,
		0.251216, 0.544748, 0.800088,
		-0.393218, 0.812750, -0.429904,
		37.682930, 44.881031, 47.651096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416103, 44.614281, 48.410034>,  <37.958183, 44.312107, 47.952030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416103, 44.614281, 48.410034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328293, 44.758095, 48.047260>,  <37.275604, 44.844383, 47.829594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328293, 44.758095, 48.047260>,  <37.416103, 44.614281, 48.410034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328293, 44.758095, 48.047260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974274, -0.129361, 0.184544,
		-0.050972, 0.924120, 0.378688,
		-0.219528, 0.359539, -0.906939,
		37.262436, 44.865955, 47.775177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935837, 45.085491, 48.530228>,  <37.416103, 44.614281, 48.410034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935837, 45.085491, 48.530228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884682, 44.990959, 48.144939>,  <36.853989, 44.934238, 47.913765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884682, 44.990959, 48.144939>,  <36.935837, 45.085491, 48.530228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884682, 44.990959, 48.144939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991731, 0.040919, 0.121633,
		0.010668, 0.970811, -0.239610,
		-0.127887, -0.236331, -0.963220,
		36.846317, 44.920059, 47.855972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358795, 45.538750, 48.370232>,  <36.935837, 45.085491, 48.530228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358795, 45.538750, 48.370232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358002, 45.266197, 48.077461>,  <36.357525, 45.102665, 47.901798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358002, 45.266197, 48.077461>,  <36.358795, 45.538750, 48.370232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358002, 45.266197, 48.077461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999887, -0.009547, 0.011592,
		-0.014886, 0.731868, -0.681284,
		-0.001980, -0.681379, -0.731928,
		36.357407, 45.061783, 47.857883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019920, 45.870510, 47.830769>,  <36.358795, 45.538750, 48.370232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019920, 45.870510, 47.830769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987194, 45.477013, 47.766830>,  <35.967560, 45.240913, 47.728466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987194, 45.477013, 47.766830>,  <36.019920, 45.870510, 47.830769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987194, 45.477013, 47.766830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996382, 0.084439, -0.009669,
		0.023010, 0.158479, -0.987094,
		-0.081817, -0.983745, -0.159848,
		35.962650, 45.181889, 47.718876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395866, 45.850246, 47.469254>,  <36.019920, 45.870510, 47.830769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395866, 45.850246, 47.469254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460213, 45.469559, 47.573826>,  <35.498821, 45.241146, 47.636570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460213, 45.469559, 47.573826>,  <35.395866, 45.850246, 47.469254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460213, 45.469559, 47.573826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986909, -0.152002, 0.053913,
		-0.011572, -0.266682, -0.963715,
		0.160865, -0.951723, 0.261431,
		35.508472, 45.184040, 47.652256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909267, 45.384068, 47.034679>,  <35.395866, 45.850246, 47.469254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909267, 45.384068, 47.034679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016792, 45.216103, 47.381416>,  <35.081306, 45.115322, 47.589458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016792, 45.216103, 47.381416>,  <34.909267, 45.384068, 47.034679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016792, 45.216103, 47.381416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962739, -0.089570, 0.255167,
		-0.029506, -0.903132, -0.428348,
		0.268816, -0.419917, 0.866838,
		35.097439, 45.090130, 47.641468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337437, 45.171543, 47.187458>,  <34.909267, 45.384068, 47.034679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337437, 45.171543, 47.187458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522987, 45.060349, 47.523922>,  <34.634319, 44.993633, 47.725800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522987, 45.060349, 47.523922>,  <34.337437, 45.171543, 47.187458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522987, 45.060349, 47.523922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885830, -0.133611, 0.444357,
		-0.011137, -0.951248, -0.308227,
		0.463876, -0.277986, 0.841156,
		34.662151, 44.976952, 47.776268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999805, 44.584900, 47.508205>,  <34.337437, 45.171543, 47.187458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999805, 44.584900, 47.508205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208515, 44.736961, 47.813683>,  <34.333740, 44.828197, 47.996971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208515, 44.736961, 47.813683>,  <33.999805, 44.584900, 47.508205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208515, 44.736961, 47.813683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781887, -0.144916, 0.606343,
		0.341177, -0.913499, 0.221626,
		0.521776, 0.380157, 0.763695,
		34.365047, 44.851009, 48.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964291, 44.087578, 48.021614>,  <33.999805, 44.584900, 47.508205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964291, 44.087578, 48.021614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055878, 44.438980, 48.189331>,  <34.110828, 44.649822, 48.289959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055878, 44.438980, 48.189331>,  <33.964291, 44.087578, 48.021614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055878, 44.438980, 48.189331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752919, -0.113187, 0.648306,
		0.616998, -0.464131, 0.635527,
		0.228966, 0.878505, 0.419290,
		34.124569, 44.702530, 48.315117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814342, 43.904453, 48.736103>,  <33.964291, 44.087578, 48.021614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814342, 43.904453, 48.736103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836655, 44.303764, 48.728817>,  <33.850044, 44.543350, 48.724445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836655, 44.303764, 48.728817>,  <33.814342, 43.904453, 48.736103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836655, 44.303764, 48.728817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789043, 0.055255, 0.611848,
		0.611800, -0.019761, 0.790766,
		0.055784, 0.998277, -0.018213,
		33.853390, 44.603249, 48.723354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880611, 44.144672, 49.390308>,  <33.814342, 43.904453, 48.736103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880611, 44.144672, 49.390308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721298, 44.452919, 49.191299>,  <33.625710, 44.637867, 49.071896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721298, 44.452919, 49.191299>,  <33.880611, 44.144672, 49.390308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721298, 44.452919, 49.191299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663997, 0.131992, 0.735994,
		0.632835, 0.623486, 0.459114,
		-0.398282, 0.770613, -0.497521,
		33.601814, 44.684101, 49.042042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777870, 44.660896, 49.860657>,  <33.880611, 44.144672, 49.390308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777870, 44.660896, 49.860657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536469, 44.772942, 49.562042>,  <33.391628, 44.840168, 49.382874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536469, 44.772942, 49.562042>,  <33.777870, 44.660896, 49.860657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536469, 44.772942, 49.562042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718958, 0.213696, 0.661387,
		0.344798, 0.935879, 0.072426,
		-0.603501, 0.280116, -0.746540,
		33.355419, 44.856976, 49.338081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570210, 45.324036, 49.964901>,  <33.777870, 44.660896, 49.860657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570210, 45.324036, 49.964901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282223, 45.178314, 49.728619>,  <33.109432, 45.090881, 49.586849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282223, 45.178314, 49.728619>,  <33.570210, 45.324036, 49.964901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282223, 45.178314, 49.728619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690235, 0.287248, 0.664126,
		-0.072263, 0.885875, -0.458262,
		-0.719968, -0.364300, -0.590704,
		33.066231, 45.069023, 49.551407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.590292, 38.751423, 47.196293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.786308, 38.922493, 47.500122>,  <31.903919, 39.025135, 47.682419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.786308, 38.922493, 47.500122>,  <31.590292, 38.751423, 47.196293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786308, 38.922493, 47.500122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640136, 0.414897, -0.646596,
		-0.591680, 0.803089, -0.070455,
		0.490043, 0.427679, 0.759572,
		31.933321, 39.050797, 47.727993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640846, 39.530170, 47.069458>,  <31.590292, 38.751423, 47.196293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640846, 39.530170, 47.069458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.935844, 39.423439, 47.317619>,  <32.112843, 39.359402, 47.466518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.935844, 39.423439, 47.317619>,  <31.640846, 39.530170, 47.069458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935844, 39.423439, 47.317619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669745, 0.407072, -0.621075,
		-0.086831, 0.873554, 0.478919,
		0.737497, -0.266825, 0.620405,
		32.157093, 39.343391, 47.503742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977081, 40.188427, 47.124458>,  <31.640846, 39.530170, 47.069458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977081, 40.188427, 47.124458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.243553, 39.909943, 47.231411>,  <32.403435, 39.742851, 47.295582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.243553, 39.909943, 47.231411>,  <31.977081, 40.188427, 47.124458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243553, 39.909943, 47.231411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684539, 0.428522, -0.589724,
		0.295994, 0.575897, 0.762057,
		0.666179, -0.696212, 0.267384,
		32.443405, 39.701080, 47.311626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593418, 40.571045, 47.337231>,  <31.977081, 40.188427, 47.124458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593418, 40.571045, 47.337231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745876, 40.207680, 47.268497>,  <32.837349, 39.989662, 47.227257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745876, 40.207680, 47.268497>,  <32.593418, 40.571045, 47.337231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745876, 40.207680, 47.268497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747861, 0.412211, -0.520371,
		0.543539, 0.069830, 0.836474,
		0.381141, -0.908408, -0.171830,
		32.860218, 39.935158, 47.216949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257389, 40.526005, 47.481377>,  <32.593418, 40.571045, 47.337231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257389, 40.526005, 47.481377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225334, 40.235596, 47.208183>,  <33.206100, 40.061348, 47.044266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225334, 40.235596, 47.208183>,  <33.257389, 40.526005, 47.481377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225334, 40.235596, 47.208183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905422, 0.233542, -0.354498,
		0.416880, -0.646795, 0.638645,
		-0.080137, -0.726026, -0.682982,
		33.201294, 40.017788, 47.003288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945564, 40.320171, 47.341007>,  <33.257389, 40.526005, 47.481377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945564, 40.320171, 47.341007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.735321, 40.158829, 47.041397>,  <33.609173, 40.062023, 46.861629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.735321, 40.158829, 47.041397>,  <33.945564, 40.320171, 47.341007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735321, 40.158829, 47.041397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778350, 0.127366, -0.614776,
		0.343374, -0.906136, 0.247007,
		-0.525610, -0.403356, -0.749025,
		33.577637, 40.037823, 46.816689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524609, 40.109703, 46.922939>,  <33.945564, 40.320171, 47.341007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524609, 40.109703, 46.922939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199501, 40.123703, 46.690327>,  <34.004436, 40.132103, 46.550758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199501, 40.123703, 46.690327>,  <34.524609, 40.109703, 46.922939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199501, 40.123703, 46.690327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580031, 0.142025, -0.802118,
		0.054519, -0.989244, -0.135734,
		-0.812768, 0.034999, -0.581535,
		33.955669, 40.134201, 46.515865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600910, 39.620228, 46.425335>,  <34.524609, 40.109703, 46.922939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600910, 39.620228, 46.425335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339493, 39.864815, 46.246899>,  <34.182644, 40.011566, 46.139835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339493, 39.864815, 46.246899>,  <34.600910, 39.620228, 46.425335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339493, 39.864815, 46.246899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593804, 0.048740, -0.803132,
		-0.469344, -0.789769, -0.394943,
		-0.653539, 0.611464, -0.446092,
		34.143433, 40.048256, 46.113071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292511, 39.281765, 45.773201>,  <34.600910, 39.620228, 46.425335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292511, 39.281765, 45.773201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245453, 39.678116, 45.746891>,  <34.217216, 39.915924, 45.731106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245453, 39.678116, 45.746891>,  <34.292511, 39.281765, 45.773201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245453, 39.678116, 45.746891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584944, 0.015624, -0.810923,
		-0.802496, -0.133877, -0.581444,
		-0.117648, 0.990875, -0.065772,
		34.210159, 39.975380, 45.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434795, 39.387718, 45.044773>,  <34.292511, 39.281765, 45.773201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434795, 39.387718, 45.044773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.381508, 39.768188, 45.156147>,  <34.349537, 39.996471, 45.222969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.381508, 39.768188, 45.156147>,  <34.434795, 39.387718, 45.044773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381508, 39.768188, 45.156147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548088, 0.304771, -0.778919,
		-0.825744, 0.048843, -0.561926,
		-0.133214, 0.951173, 0.278433,
		34.341545, 40.053539, 45.239677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112461, 39.768227, 44.475452>,  <34.434795, 39.387718, 45.044773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112461, 39.768227, 44.475452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341469, 39.996788, 44.710644>,  <34.478874, 40.133926, 44.851757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.341469, 39.996788, 44.710644>,  <34.112461, 39.768227, 44.475452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341469, 39.996788, 44.710644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665328, 0.095294, -0.740444,
		-0.479124, 0.815117, -0.325614,
		0.572519, 0.571405, 0.587978,
		34.513226, 40.168209, 44.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329247, 40.389915, 44.041866>,  <34.112461, 39.768227, 44.475452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329247, 40.389915, 44.041866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.583534, 40.376190, 44.350330>,  <34.736107, 40.367954, 44.535408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.583534, 40.376190, 44.350330>,  <34.329247, 40.389915, 44.041866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583534, 40.376190, 44.350330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771923, 0.027354, -0.635128,
		0.000699, 0.999037, 0.043876,
		0.635716, -0.034313, 0.771160,
		34.774250, 40.365898, 44.581676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687538, 41.034458, 44.149082>,  <34.329247, 40.389915, 44.041866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687538, 41.034458, 44.149082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920799, 40.752205, 44.310085>,  <35.060757, 40.582851, 44.406685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920799, 40.752205, 44.310085>,  <34.687538, 41.034458, 44.149082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920799, 40.752205, 44.310085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776181, 0.337766, -0.532407,
		0.239731, 0.622893, 0.744670,
		0.583157, -0.705633, 0.402505,
		35.095745, 40.540516, 44.430836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329529, 41.457260, 44.409451>,  <34.687538, 41.034458, 44.149082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329529, 41.457260, 44.409451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398811, 41.067429, 44.352596>,  <35.440380, 40.833530, 44.318481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398811, 41.067429, 44.352596>,  <35.329529, 41.457260, 44.409451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398811, 41.067429, 44.352596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763842, 0.224034, -0.605272,
		0.621727, -0.003732, 0.783225,
		0.173210, -0.974574, -0.142139,
		35.450775, 40.775055, 44.309956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451046, 42.130882, 44.728878>,  <35.329529, 41.457260, 44.409451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451046, 42.130882, 44.728878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287895, 42.421028, 44.507072>,  <35.190006, 42.595116, 44.373989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287895, 42.421028, 44.507072>,  <35.451046, 42.130882, 44.728878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287895, 42.421028, 44.507072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835431, -0.051472, 0.547180,
		0.368362, 0.686440, 0.626985,
		-0.407878, 0.725363, -0.554513,
		35.165531, 42.638638, 44.340717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142979, 42.609440, 45.224396>,  <35.451046, 42.130882, 44.728878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142979, 42.609440, 45.224396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952515, 42.691154, 44.882275>,  <34.838238, 42.740181, 44.677002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952515, 42.691154, 44.882275>,  <35.142979, 42.609440, 45.224396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952515, 42.691154, 44.882275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865081, 0.065734, 0.497306,
		0.157813, 0.976703, 0.145422,
		-0.476161, 0.204283, -0.855301,
		34.809666, 42.752438, 44.625683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701824, 43.214848, 45.365295>,  <35.142979, 42.609440, 45.224396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701824, 43.214848, 45.365295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555656, 43.053581, 45.029694>,  <34.467957, 42.956821, 44.828335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.555656, 43.053581, 45.029694>,  <34.701824, 43.214848, 45.365295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555656, 43.053581, 45.029694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902901, -0.065668, 0.424804,
		-0.226362, 0.912767, -0.340024,
		-0.365418, -0.403167, -0.839003,
		34.446030, 42.932632, 44.777992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142334, 43.695168, 45.173462>,  <34.701824, 43.214848, 45.365295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142334, 43.695168, 45.173462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077274, 43.333679, 45.015057>,  <34.038239, 43.116787, 44.920013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.077274, 43.333679, 45.015057>,  <34.142334, 43.695168, 45.173462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077274, 43.333679, 45.015057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970525, 0.074195, 0.229296,
		-0.177838, 0.421640, -0.889153,
		-0.162651, -0.903723, -0.396018,
		34.028481, 43.062561, 44.896252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418816, 43.732441, 44.893494>,  <34.142334, 43.695168, 45.173462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418816, 43.732441, 44.893494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502945, 43.341682, 44.908623>,  <33.553425, 43.107227, 44.917702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502945, 43.341682, 44.908623>,  <33.418816, 43.732441, 44.893494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502945, 43.341682, 44.908623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914842, -0.183028, 0.359950,
		-0.344712, -0.110312, -0.932204,
		0.210326, -0.976899, 0.037826,
		33.566044, 43.048615, 44.919971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850807, 43.447269, 44.621529>,  <33.418816, 43.732441, 44.893494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850807, 43.447269, 44.621529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.009224, 43.144096, 44.828869>,  <33.104275, 42.962193, 44.953274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.009224, 43.144096, 44.828869>,  <32.850807, 43.447269, 44.621529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009224, 43.144096, 44.828869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878395, -0.148253, 0.454359,
		-0.267525, -0.635267, -0.724477,
		0.396045, -0.757929, 0.518354,
		33.128036, 42.916718, 44.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436275, 42.956955, 44.539413>,  <32.850807, 43.447269, 44.621529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436275, 42.956955, 44.539413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.638435, 42.830086, 44.860405>,  <32.759731, 42.753963, 45.053001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.638435, 42.830086, 44.860405>,  <32.436275, 42.956955, 44.539413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638435, 42.830086, 44.860405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862831, -0.175447, 0.474069,
		-0.009567, -0.931999, -0.362335,
		0.505402, -0.317169, 0.802479,
		32.790054, 42.734936, 45.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267612, 42.182308, 44.743790>,  <32.436275, 42.956955, 44.539413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267612, 42.182308, 44.743790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.382393, 42.370506, 45.077568>,  <32.451260, 42.483425, 45.277836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.382393, 42.370506, 45.077568>,  <32.267612, 42.182308, 44.743790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382393, 42.370506, 45.077568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754601, -0.425584, 0.499454,
		0.590116, -0.772990, 0.232914,
		0.286949, 0.470494, 0.834444,
		32.468479, 42.511654, 45.327900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017445, 41.761703, 45.210007>,  <32.267612, 42.182308, 44.743790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017445, 41.761703, 45.210007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113987, 42.067268, 45.449402>,  <32.171913, 42.250607, 45.593040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113987, 42.067268, 45.449402>,  <32.017445, 41.761703, 45.210007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113987, 42.067268, 45.449402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568052, -0.388813, 0.725356,
		0.786807, -0.515043, 0.340097,
		0.241355, 0.763908, 0.598492,
		32.186394, 42.296440, 45.628948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016987, 41.437611, 45.889507>,  <32.017445, 41.761703, 45.210007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016987, 41.437611, 45.889507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.989513, 41.832565, 45.946568>,  <31.973030, 42.069538, 45.980804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.989513, 41.832565, 45.946568>,  <32.016987, 41.437611, 45.889507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989513, 41.832565, 45.946568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469352, -0.158155, 0.868732,
		0.880336, -0.007286, 0.474295,
		-0.068682, 0.987388, 0.142649,
		31.968908, 42.128780, 45.989361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371357, 41.534458, 46.465450>,  <32.016987, 41.437611, 45.889507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371357, 41.534458, 46.465450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.121929, 41.846207, 46.440979>,  <31.972273, 42.033257, 46.426296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.121929, 41.846207, 46.440979>,  <32.371357, 41.534458, 46.465450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121929, 41.846207, 46.440979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410609, -0.259917, 0.873982,
		0.665255, 0.570107, 0.482092,
		-0.623567, 0.779372, -0.061180,
		31.934858, 42.080017, 46.422626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457081, 41.991619, 47.107300>,  <32.371357, 41.534458, 46.465450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457081, 41.991619, 47.107300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096638, 42.039444, 46.940586>,  <31.880371, 42.068138, 46.840557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096638, 42.039444, 46.940586>,  <32.457081, 41.991619, 47.107300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096638, 42.039444, 46.940586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433591, -0.249042, 0.866012,
		-0.000255, 0.961085, 0.276254,
		-0.901110, 0.119560, -0.416781,
		31.826305, 42.075314, 46.815552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069851, 42.432446, 47.594215>,  <32.457081, 41.991619, 47.107300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069851, 42.432446, 47.594215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.789707, 42.246124, 47.377872>,  <31.621620, 42.134331, 47.248066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.789707, 42.246124, 47.377872>,  <32.069851, 42.432446, 47.594215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789707, 42.246124, 47.377872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586791, -0.055711, 0.807819,
		-0.406414, 0.883134, -0.234310,
		-0.700359, -0.465801, -0.540857,
		31.579599, 42.106384, 47.215614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371389, 42.715511, 47.715668>,  <32.069851, 42.432446, 47.594215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371389, 42.715511, 47.715668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.275265, 42.357559, 47.565231>,  <31.217590, 42.142788, 47.474968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.275265, 42.357559, 47.565231>,  <31.371389, 42.715511, 47.715668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275265, 42.357559, 47.565231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687881, -0.116375, 0.716433,
		-0.684887, 0.430876, -0.587602,
		-0.240312, -0.894876, -0.376095,
		31.203171, 42.089096, 47.452404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965015, 43.239986, 47.466820>,  <31.371389, 42.715511, 47.715668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965015, 43.239986, 47.466820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.799942, 43.594627, 47.550365>,  <30.700897, 43.807411, 47.600494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.799942, 43.594627, 47.550365>,  <30.965015, 43.239986, 47.466820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799942, 43.594627, 47.550365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483114, 0.407442, -0.774978,
		-0.772200, -0.218915, -0.596476,
		-0.412683, 0.886604, 0.208866,
		30.676136, 43.860607, 47.613026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801512, 43.592941, 46.788414>,  <30.965015, 43.239986, 47.466820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801512, 43.592941, 46.788414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828186, 43.872681, 47.073078>,  <30.844191, 44.040524, 47.243877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828186, 43.872681, 47.073078>,  <30.801512, 43.592941, 46.788414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828186, 43.872681, 47.073078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578773, 0.553881, -0.598529,
		-0.812757, 0.451807, -0.367827,
		0.066687, 0.699347, 0.711664,
		30.848192, 44.082485, 47.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906776, 44.175854, 46.389000>,  <30.801512, 43.592941, 46.788414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906776, 44.175854, 46.389000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.023794, 44.300026, 46.750786>,  <31.094004, 44.374527, 46.967857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.023794, 44.300026, 46.750786>,  <30.906776, 44.175854, 46.389000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023794, 44.300026, 46.750786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713663, 0.558674, -0.422575,
		-0.636478, 0.769103, -0.058104,
		0.292542, 0.310426, 0.904464,
		31.111557, 44.393154, 47.022125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124157, 44.785511, 46.160625>,  <30.906776, 44.175854, 46.389000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124157, 44.785511, 46.160625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.272337, 44.764282, 46.531559>,  <31.361246, 44.751545, 46.754120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.272337, 44.764282, 46.531559>,  <31.124157, 44.785511, 46.160625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272337, 44.764282, 46.531559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735997, 0.625811, -0.258201,
		-0.566633, 0.778167, 0.270894,
		0.370452, -0.053072, 0.927334,
		31.383472, 44.748360, 46.809761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206593, 45.480206, 46.400921>,  <31.124157, 44.785511, 46.160625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206593, 45.480206, 46.400921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.470554, 45.244865, 46.587841>,  <31.628931, 45.103661, 46.699993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.470554, 45.244865, 46.587841>,  <31.206593, 45.480206, 46.400921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470554, 45.244865, 46.587841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726301, 0.658773, -0.196227,
		-0.192394, 0.468892, 0.862047,
		0.659903, -0.588353, 0.467300,
		31.668526, 45.068359, 46.728031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607204, 45.914902, 46.926235>,  <31.206593, 45.480206, 46.400921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607204, 45.914902, 46.926235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.809847, 45.583336, 46.831367>,  <31.931433, 45.384396, 46.774448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.809847, 45.583336, 46.831367>,  <31.607204, 45.914902, 46.926235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809847, 45.583336, 46.831367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761517, 0.559180, -0.327733,
		0.404282, -0.014575, 0.914518,
		0.506604, -0.828918, -0.237165,
		31.961828, 45.334660, 46.760220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215618, 46.103355, 47.226982>,  <31.607204, 45.914902, 46.926235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215618, 46.103355, 47.226982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.304188, 45.788490, 46.996735>,  <32.357330, 45.599571, 46.858585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.304188, 45.788490, 46.996735>,  <32.215618, 46.103355, 47.226982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304188, 45.788490, 46.996735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861531, 0.434451, -0.262708,
		0.456874, -0.437744, 0.774368,
		0.221426, -0.787167, -0.575620,
		32.370617, 45.552341, 46.824047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850609, 45.985973, 47.413147>,  <32.215618, 46.103355, 47.226982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850609, 45.985973, 47.413147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793427, 45.826683, 47.050713>,  <32.759117, 45.731110, 46.833252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793427, 45.826683, 47.050713>,  <32.850609, 45.985973, 47.413147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793427, 45.826683, 47.050713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871278, 0.383655, -0.306077,
		0.469509, -0.833203, 0.292119,
		-0.142952, -0.398223, -0.906081,
		32.750542, 45.707214, 46.778889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395992, 45.591789, 47.173622>,  <32.850609, 45.985973, 47.413147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395992, 45.591789, 47.173622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.242279, 45.672554, 46.813274>,  <33.150051, 45.721012, 46.597065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.242279, 45.672554, 46.813274>,  <33.395992, 45.591789, 47.173622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242279, 45.672554, 46.813274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869682, 0.406619, -0.279847,
		0.309806, -0.891007, -0.331855,
		-0.384284, 0.201910, -0.900865,
		33.126995, 45.733128, 46.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755955, 45.259579, 46.680355>,  <33.395992, 45.591789, 47.173622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755955, 45.259579, 46.680355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.584000, 45.555237, 46.472950>,  <33.480827, 45.732632, 46.348507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.584000, 45.555237, 46.472950>,  <33.755955, 45.259579, 46.680355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584000, 45.555237, 46.472950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902759, 0.342344, -0.260436,
		-0.014990, -0.580052, -0.814441,
		-0.429886, 0.739148, -0.518515,
		33.455032, 45.776981, 46.317394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054665, 45.298149, 46.037945>,  <33.755955, 45.259579, 46.680355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054665, 45.298149, 46.037945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911278, 45.670433, 46.067013>,  <33.825245, 45.893803, 46.084454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911278, 45.670433, 46.067013>,  <34.054665, 45.298149, 46.037945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911278, 45.670433, 46.067013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899721, 0.365192, -0.239033,
		-0.249010, -0.020302, -0.968288,
		-0.358463, 0.930711, 0.072671,
		33.803738, 45.949646, 46.088814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189217, 45.543468, 45.430851>,  <34.054665, 45.298149, 46.037945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189217, 45.543468, 45.430851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164268, 45.859123, 45.675266>,  <34.149300, 46.048515, 45.821915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164268, 45.859123, 45.675266>,  <34.189217, 45.543468, 45.430851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164268, 45.859123, 45.675266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933565, 0.262630, -0.243889,
		-0.352940, 0.555235, -0.753092,
		-0.062369, 0.789139, 0.611040,
		34.145557, 46.095863, 45.858578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305737, 46.239967, 45.051018>,  <34.189217, 45.543468, 45.430851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305737, 46.239967, 45.051018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396545, 46.313042, 45.433659>,  <34.451031, 46.356888, 45.663242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396545, 46.313042, 45.433659>,  <34.305737, 46.239967, 45.051018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396545, 46.313042, 45.433659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878775, 0.384958, -0.282068,
		-0.419781, 0.904673, -0.073145,
		0.227021, 0.182685, 0.956602,
		34.464653, 46.367847, 45.720638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583485, 46.828224, 45.035500>,  <34.305737, 46.239967, 45.051018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583485, 46.828224, 45.035500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.720200, 46.698578, 45.388348>,  <34.802231, 46.620789, 45.600056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.720200, 46.698578, 45.388348>,  <34.583485, 46.828224, 45.035500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720200, 46.698578, 45.388348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911548, 0.342666, -0.227288,
		-0.228604, 0.881776, 0.412568,
		0.341790, -0.324117, 0.882116,
		34.822735, 46.601341, 45.652981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.948608, 45.790737, 50.062595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742680, 45.508224, 49.868225>,  <32.619122, 45.338715, 49.751602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742680, 45.508224, 49.868225>,  <32.948608, 45.790737, 50.062595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742680, 45.508224, 49.868225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815316, 0.228156, 0.532170,
		-0.264996, 0.670155, -0.693303,
		-0.514818, -0.706284, -0.485927,
		32.588234, 45.296341, 49.722446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306835, 46.045097, 49.817368>,  <32.948608, 45.790737, 50.062595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306835, 46.045097, 49.817368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236107, 45.651405, 49.815086>,  <32.193668, 45.415192, 49.813717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236107, 45.651405, 49.815086>,  <32.306835, 46.045097, 49.817368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236107, 45.651405, 49.815086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900964, 0.159524, 0.403504,
		-0.396229, 0.076491, -0.914960,
		-0.176823, -0.984226, -0.005708,
		32.183060, 45.356136, 49.813374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510551, 45.983082, 49.783348>,  <32.306835, 46.045097, 49.817368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510551, 45.983082, 49.783348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630257, 45.624092, 49.912956>,  <31.702080, 45.408699, 49.990719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630257, 45.624092, 49.912956>,  <31.510551, 45.983082, 49.783348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630257, 45.624092, 49.912956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765472, -0.023082, 0.643055,
		-0.569645, -0.440467, -0.693897,
		0.299261, -0.897472, 0.324016,
		31.720036, 45.354851, 50.010162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813259, 45.586754, 49.876282>,  <31.510551, 45.983082, 49.783348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813259, 45.586754, 49.876282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080799, 45.359901, 50.068531>,  <31.241323, 45.223789, 50.183880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.080799, 45.359901, 50.068531>,  <30.813259, 45.586754, 49.876282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080799, 45.359901, 50.068531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682002, -0.210849, 0.700297,
		-0.295826, -0.796178, -0.527814,
		0.668850, -0.567136, 0.480621,
		31.281454, 45.189762, 50.212719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542072, 44.870651, 49.997452>,  <30.813259, 45.586754, 49.876282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542072, 44.870651, 49.997452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.810043, 44.962852, 50.279747>,  <30.970825, 45.018173, 50.449123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.810043, 44.962852, 50.279747>,  <30.542072, 44.870651, 49.997452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810043, 44.962852, 50.279747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663355, -0.241043, 0.708420,
		0.333405, -0.942745, -0.008576,
		0.669926, 0.230502, 0.705740,
		31.011021, 45.032001, 50.491470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455627, 44.304691, 50.555950>,  <30.542072, 44.870651, 49.997452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455627, 44.304691, 50.555950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.644485, 44.616638, 50.720329>,  <30.757801, 44.803806, 50.818958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.644485, 44.616638, 50.720329>,  <30.455627, 44.304691, 50.555950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644485, 44.616638, 50.720329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413866, -0.215504, 0.884462,
		0.778328, -0.587673, 0.221013,
		0.472145, 0.779871, 0.410950,
		30.786129, 44.850601, 50.843613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638700, 43.952652, 51.212967>,  <30.455627, 44.304691, 50.555950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638700, 43.952652, 51.212967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658361, 44.351387, 51.237930>,  <30.670158, 44.590630, 51.252907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658361, 44.351387, 51.237930>,  <30.638700, 43.952652, 51.212967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658361, 44.351387, 51.237930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406018, -0.037144, 0.913110,
		0.912542, -0.070222, 0.402909,
		0.049155, 0.996840, 0.062407,
		30.673107, 44.650440, 51.256653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845158, 44.135414, 51.970047>,  <30.638700, 43.952652, 51.212967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845158, 44.135414, 51.970047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680460, 44.462204, 51.808544>,  <30.581642, 44.658276, 51.711643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680460, 44.462204, 51.808544>,  <30.845158, 44.135414, 51.970047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680460, 44.462204, 51.808544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576497, 0.109626, 0.809712,
		0.705775, 0.566161, 0.425844,
		-0.411744, 0.816972, -0.403761,
		30.556936, 44.707294, 51.687416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869390, 44.712231, 52.482193>,  <30.845158, 44.135414, 51.970047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869390, 44.712231, 52.482193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.577324, 44.783363, 52.218304>,  <30.402084, 44.826042, 52.059971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.577324, 44.783363, 52.218304>,  <30.869390, 44.712231, 52.482193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577324, 44.783363, 52.218304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612296, 0.258205, 0.747278,
		0.303232, 0.949582, -0.079648,
		-0.730167, 0.177830, -0.659721,
		30.358274, 44.836712, 52.020386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549192, 45.196136, 52.832394>,  <30.869390, 44.712231, 52.482193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549192, 45.196136, 52.832394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.262741, 45.075371, 52.580677>,  <30.090870, 45.002911, 52.429646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.262741, 45.075371, 52.580677>,  <30.549192, 45.196136, 52.832394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262741, 45.075371, 52.580677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697219, 0.351234, 0.624916,
		0.032357, 0.886273, -0.462031,
		-0.716127, -0.301917, -0.629292,
		30.047903, 44.984795, 52.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842976, 45.664791, 52.973885>,  <30.549192, 45.196136, 52.832394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842976, 45.664791, 52.973885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.733532, 45.352623, 52.749001>,  <29.667866, 45.165321, 52.614071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.733532, 45.352623, 52.749001>,  <29.842976, 45.664791, 52.973885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733532, 45.352623, 52.749001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886340, -0.022430, 0.462492,
		-0.373549, 0.624851, -0.685582,
		-0.273611, -0.780422, -0.562209,
		29.651449, 45.118496, 52.580338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181662, 45.854298, 52.819023>,  <29.842976, 45.664791, 52.973885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181662, 45.854298, 52.819023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.172956, 45.463928, 52.732216>,  <29.167732, 45.229706, 52.680130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.172956, 45.463928, 52.732216>,  <29.181662, 45.854298, 52.819023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172956, 45.463928, 52.732216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904985, -0.073022, 0.419131,
		-0.424887, 0.205522, -0.881607,
		-0.021764, -0.975924, -0.217021,
		29.166428, 45.171150, 52.667110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559488, 45.750229, 52.420376>,  <29.181662, 45.854298, 52.819023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559488, 45.750229, 52.420376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.672520, 45.449791, 52.659042>,  <28.740339, 45.269527, 52.802242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.672520, 45.449791, 52.659042>,  <28.559488, 45.750229, 52.420376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672520, 45.449791, 52.659042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910048, -0.013271, 0.414291,
		-0.303252, -0.660066, -0.687278,
		0.282580, -0.751090, 0.596667,
		28.757294, 45.224464, 52.838043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021797, 45.269924, 52.560505>,  <28.559488, 45.750229, 52.420376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021797, 45.269924, 52.560505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.242964, 45.243904, 52.892784>,  <28.375664, 45.228291, 53.092152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.242964, 45.243904, 52.892784>,  <28.021797, 45.269924, 52.560505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242964, 45.243904, 52.892784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815354, 0.163200, 0.555486,
		-0.171703, -0.984446, 0.037197,
		0.552916, -0.065050, 0.830694,
		28.408838, 45.224388, 53.141991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844788, 44.565475, 52.407608>,  <28.021797, 45.269924, 52.560505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844788, 44.565475, 52.407608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.632431, 44.231651, 52.348732>,  <27.505018, 44.031357, 52.313404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.632431, 44.231651, 52.348732>,  <27.844788, 44.565475, 52.407608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632431, 44.231651, 52.348732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606223, -0.252635, -0.754102,
		0.592157, -0.489576, 0.640051,
		-0.530890, -0.834560, -0.147192,
		27.473164, 43.981285, 52.304573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329796, 43.937469, 52.572235>,  <27.844788, 44.565475, 52.407608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329796, 43.937469, 52.572235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.048271, 43.907265, 52.289688>,  <27.879356, 43.889141, 52.120159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.048271, 43.907265, 52.289688>,  <28.329796, 43.937469, 52.572235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048271, 43.907265, 52.289688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710388, -0.075489, -0.699750,
		-0.000482, -0.994283, 0.106773,
		-0.703810, -0.075513, -0.706363,
		27.837128, 43.884613, 52.077778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688654, 43.544765, 52.049778>,  <28.329796, 43.937469, 52.572235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688654, 43.544765, 52.049778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385035, 43.725143, 51.861954>,  <28.202862, 43.833370, 51.749260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385035, 43.725143, 51.861954>,  <28.688654, 43.544765, 52.049778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385035, 43.725143, 51.861954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483144, -0.093250, -0.870561,
		-0.436365, -0.887665, -0.147092,
		-0.759050, 0.450949, -0.469562,
		28.157320, 43.860428, 51.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574501, 43.067726, 51.474030>,  <28.688654, 43.544765, 52.049778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574501, 43.067726, 51.474030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.420700, 43.419724, 51.362488>,  <28.328419, 43.630924, 51.295563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.420700, 43.419724, 51.362488>,  <28.574501, 43.067726, 51.474030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420700, 43.419724, 51.362488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386225, -0.121013, -0.914432,
		-0.838444, -0.459303, -0.293348,
		-0.384503, 0.879998, -0.278857,
		28.305349, 43.683723, 51.278831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205898, 42.897240, 50.874756>,  <28.574501, 43.067726, 51.474030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205898, 42.897240, 50.874756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.244205, 43.295082, 50.858788>,  <28.267189, 43.533787, 50.849205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.244205, 43.295082, 50.858788>,  <28.205898, 42.897240, 50.874756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244205, 43.295082, 50.858788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394516, -0.074750, -0.915844,
		-0.913885, 0.071956, -0.399545,
		0.095766, 0.994603, -0.039925,
		28.272936, 43.593464, 50.846809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988388, 43.061081, 50.170639>,  <28.205898, 42.897240, 50.874756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988388, 43.061081, 50.170639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.166857, 43.388100, 50.316265>,  <28.273939, 43.584312, 50.403641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.166857, 43.388100, 50.316265>,  <27.988388, 43.061081, 50.170639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166857, 43.388100, 50.316265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479419, 0.125163, -0.868615,
		-0.755703, 0.562092, -0.336104,
		0.446174, 0.817549, 0.364063,
		28.300709, 43.633366, 50.425484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929596, 43.476986, 49.649700>,  <27.988388, 43.061081, 50.170639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929596, 43.476986, 49.649700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.235479, 43.648544, 49.842064>,  <28.419010, 43.751480, 49.957481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.235479, 43.648544, 49.842064>,  <27.929596, 43.476986, 49.649700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235479, 43.648544, 49.842064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484281, 0.109803, -0.867995,
		-0.425081, 0.896658, -0.123736,
		0.764708, 0.428891, 0.480909,
		28.464891, 43.777210, 49.986336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111715, 44.123348, 49.313610>,  <27.929596, 43.476986, 49.649700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111715, 44.123348, 49.313610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.441216, 43.994347, 49.500126>,  <28.638916, 43.916946, 49.612034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.441216, 43.994347, 49.500126>,  <28.111715, 44.123348, 49.313610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441216, 43.994347, 49.500126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537224, 0.181182, -0.823750,
		0.181182, 0.929065, 0.322507,
		0.823750, -0.322507, 0.466289,
		28.688341, 43.897594, 49.640011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659552, 44.568890, 48.969898>,  <28.111715, 44.123348, 49.313610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659552, 44.568890, 48.969898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.851704, 44.266556, 49.147865>,  <28.966995, 44.085155, 49.254646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.851704, 44.266556, 49.147865>,  <28.659552, 44.568890, 48.969898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851704, 44.266556, 49.147865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660073, -0.022480, -0.750865,
		0.577529, 0.654381, 0.488105,
		0.480379, -0.755831, 0.444922,
		28.995817, 44.039806, 49.281342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399963, 44.705513, 49.066910>,  <28.659552, 44.568890, 48.969898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399963, 44.705513, 49.066910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353565, 44.308220, 49.069496>,  <29.325726, 44.069843, 49.071049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353565, 44.308220, 49.069496>,  <29.399963, 44.705513, 49.066910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353565, 44.308220, 49.069496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762156, -0.093179, -0.640653,
		0.636917, -0.069389, 0.767803,
		-0.115997, -0.993229, 0.006462,
		29.318766, 44.010250, 49.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028868, 44.463734, 49.290100>,  <29.399963, 44.705513, 49.066910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028868, 44.463734, 49.290100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.843285, 44.169449, 49.092731>,  <29.731936, 43.992878, 48.974308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.843285, 44.169449, 49.092731>,  <30.028868, 44.463734, 49.290100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843285, 44.169449, 49.092731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756297, -0.038941, -0.653069,
		0.461258, -0.676170, 0.574487,
		-0.463957, -0.735716, -0.493423,
		29.704098, 43.948734, 48.944706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563328, 44.084602, 49.049435>,  <30.028868, 44.463734, 49.290100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563328, 44.084602, 49.049435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263447, 43.954323, 48.819004>,  <30.083517, 43.876156, 48.680744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263447, 43.954323, 48.819004>,  <30.563328, 44.084602, 49.049435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263447, 43.954323, 48.819004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612226, -0.010864, -0.790608,
		0.251241, -0.945412, 0.207546,
		-0.749704, -0.325698, -0.576076,
		30.038536, 43.856613, 48.646183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876673, 43.571518, 48.836906>,  <30.563328, 44.084602, 49.049435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876673, 43.571518, 48.836906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588221, 43.678688, 48.581348>,  <30.415150, 43.742992, 48.428013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.588221, 43.678688, 48.581348>,  <30.876673, 43.571518, 48.836906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588221, 43.678688, 48.581348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666067, 0.014425, -0.745753,
		-0.190592, -0.963331, -0.188861,
		-0.721131, 0.267928, -0.638894,
		30.371881, 43.759068, 48.389679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929705, 43.300468, 48.263916>,  <30.876673, 43.571518, 48.836906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929705, 43.300468, 48.263916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.673677, 43.566841, 48.110634>,  <30.520061, 43.726665, 48.018665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.673677, 43.566841, 48.110634>,  <30.929705, 43.300468, 48.263916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673677, 43.566841, 48.110634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648124, 0.200139, -0.734765,
		-0.412608, -0.718666, -0.559708,
		-0.640070, 0.665930, -0.383206,
		30.481657, 43.766621, 47.995670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628426, 42.685699, 47.878941>,  <30.929705, 43.300468, 48.263916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628426, 42.685699, 47.878941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684433, 42.315231, 47.738876>,  <30.718037, 42.092953, 47.654839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684433, 42.315231, 47.738876>,  <30.628426, 42.685699, 47.878941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684433, 42.315231, 47.738876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672586, -0.348497, 0.652823,
		-0.726652, 0.144107, -0.671722,
		0.140017, -0.926166, -0.350161,
		30.726439, 42.037380, 47.633827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051241, 42.370308, 47.640656>,  <30.628426, 42.685699, 47.878941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051241, 42.370308, 47.640656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.275551, 42.049156, 47.721565>,  <30.410137, 41.856464, 47.770111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.275551, 42.049156, 47.721565>,  <30.051241, 42.370308, 47.640656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275551, 42.049156, 47.721565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712716, -0.343750, 0.611450,
		-0.421389, -0.487052, -0.764992,
		0.560774, -0.802881, 0.202278,
		30.443783, 41.808292, 47.782249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563232, 41.725060, 47.727554>,  <30.051241, 42.370308, 47.640656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563232, 41.725060, 47.727554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.878834, 41.569656, 47.917938>,  <30.068193, 41.476414, 48.032169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.878834, 41.569656, 47.917938>,  <29.563232, 41.725060, 47.727554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878834, 41.569656, 47.917938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604829, -0.355006, 0.712848,
		-0.107976, -0.850314, -0.515080,
		0.789001, -0.388506, 0.475962,
		30.115534, 41.453106, 48.060726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320330, 41.106838, 47.941143>,  <29.563232, 41.725060, 47.727554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320330, 41.106838, 47.941143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.628290, 41.185883, 48.183861>,  <29.813066, 41.233311, 48.329491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.628290, 41.185883, 48.183861>,  <29.320330, 41.106838, 47.941143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628290, 41.185883, 48.183861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572624, -0.205788, 0.793570,
		0.281692, -0.958436, -0.045277,
		0.769903, 0.197615, 0.606792,
		29.859261, 41.245167, 48.365898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358768, 40.484207, 48.347878>,  <29.320330, 41.106838, 47.941143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358768, 40.484207, 48.347878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.575001, 40.743576, 48.562286>,  <29.704741, 40.899197, 48.690929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.575001, 40.743576, 48.562286>,  <29.358768, 40.484207, 48.347878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575001, 40.743576, 48.562286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524750, -0.238122, 0.817273,
		0.657578, -0.723079, 0.211536,
		0.540582, 0.648425, 0.536020,
		29.737175, 40.938103, 48.723091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646008, 40.071148, 48.846809>,  <29.358768, 40.484207, 48.347878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646008, 40.071148, 48.846809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644789, 40.446289, 48.985619>,  <29.644056, 40.671371, 49.068905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644789, 40.446289, 48.985619>,  <29.646008, 40.071148, 48.846809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644789, 40.446289, 48.985619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611396, -0.276360, 0.741499,
		0.791319, -0.209910, 0.574241,
		-0.003049, 0.937850, 0.347027,
		29.643873, 40.727646, 49.089725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863983, 40.098183, 49.630836>,  <29.646008, 40.071148, 48.846809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863983, 40.098183, 49.630836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.639135, 40.412163, 49.526627>,  <29.504227, 40.600552, 49.464100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.639135, 40.412163, 49.526627>,  <29.863983, 40.098183, 49.630836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639135, 40.412163, 49.526627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698859, -0.282357, 0.657168,
		0.442285, 0.551476, 0.707289,
		-0.562121, 0.784951, -0.260522,
		29.470499, 40.647648, 49.448471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284937, 39.920330, 50.162529>,  <29.863983, 40.098183, 49.630836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284937, 39.920330, 50.162529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.379395, 39.534424, 50.208958>,  <30.436069, 39.302879, 50.236816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.379395, 39.534424, 50.208958>,  <30.284937, 39.920330, 50.162529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379395, 39.534424, 50.208958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811079, 0.129909, -0.570328,
		0.535151, 0.228823, 0.813175,
		0.236143, -0.964761, 0.116072,
		30.450237, 39.244995, 50.243778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996832, 39.865154, 50.335663>,  <30.284937, 39.920330, 50.162529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996832, 39.865154, 50.335663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922083, 39.500870, 50.188324>,  <30.877234, 39.282299, 50.099922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922083, 39.500870, 50.188324>,  <30.996832, 39.865154, 50.335663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922083, 39.500870, 50.188324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828611, 0.055295, -0.557088,
		0.527716, -0.409318, 0.744295,
		-0.186870, -0.910715, -0.368345,
		30.866022, 39.227654, 50.077820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683083, 39.590740, 50.143322>,  <30.996832, 39.865154, 50.335663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683083, 39.590740, 50.143322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444595, 39.324760, 49.963379>,  <31.301504, 39.165173, 49.855415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444595, 39.324760, 49.963379>,  <31.683083, 39.590740, 50.143322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444595, 39.324760, 49.963379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626384, -0.034804, -0.778737,
		0.502165, -0.746077, 0.437264,
		-0.596216, -0.664950, -0.449853,
		31.265730, 39.125275, 49.828423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071690, 38.934776, 49.915100>,  <31.683083, 39.590740, 50.143322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071690, 38.934776, 49.915100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.763844, 38.944588, 49.659885>,  <31.579136, 38.950474, 49.506756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.763844, 38.944588, 49.659885>,  <32.071690, 38.934776, 49.915100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763844, 38.944588, 49.659885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623859, -0.183922, -0.759587,
		-0.135983, -0.982634, 0.126245,
		-0.769616, 0.024532, -0.638036,
		31.532959, 38.951946, 49.468475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134228, 38.333603, 49.514336>,  <32.071690, 38.934776, 49.915100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134228, 38.333603, 49.514336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889984, 38.576736, 49.311279>,  <31.743439, 38.722614, 49.189445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889984, 38.576736, 49.311279>,  <32.134228, 38.333603, 49.514336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889984, 38.576736, 49.311279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573689, -0.102393, -0.812648,
		-0.545932, -0.787437, -0.286184,
		-0.610606, 0.607831, -0.507643,
		31.706802, 38.759087, 49.158985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128399, 37.939880, 48.911160>,  <32.134228, 38.333603, 49.514336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128399, 37.939880, 48.911160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.016739, 38.313354, 48.821445>,  <31.949741, 38.537437, 48.767616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.016739, 38.313354, 48.821445>,  <32.128399, 37.939880, 48.911160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016739, 38.313354, 48.821445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658784, 0.016284, -0.752155,
		-0.698625, -0.357723, -0.619643,
		-0.279154, 0.933686, -0.224285,
		31.932993, 38.593460, 48.754158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125629, 37.935535, 48.257000>,  <32.128399, 37.939880, 48.911160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125629, 37.935535, 48.257000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123096, 38.329361, 48.326973>,  <32.121574, 38.565655, 48.368958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123096, 38.329361, 48.326973>,  <32.125629, 37.935535, 48.257000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123096, 38.329361, 48.326973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679340, 0.132606, -0.721743,
		-0.733796, 0.114264, -0.669691,
		-0.006336, 0.984560, 0.174930,
		32.121197, 38.624729, 48.379452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.390169, 41.588272, 53.051697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238337, 41.940788, 52.939091>,  <30.147238, 42.152298, 52.871525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238337, 41.940788, 52.939091>,  <30.390169, 41.588272, 53.051697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238337, 41.940788, 52.939091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853091, 0.215668, -0.475103,
		-0.357988, -0.420500, -0.833681,
		-0.379579, 0.881287, -0.281518,
		30.124462, 42.205173, 52.854633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333616, 41.570984, 52.389282>,  <30.390169, 41.588272, 53.051697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333616, 41.570984, 52.389282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367403, 41.956047, 52.492165>,  <30.387674, 42.187084, 52.553894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367403, 41.956047, 52.492165>,  <30.333616, 41.570984, 52.389282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367403, 41.956047, 52.492165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912501, 0.028958, -0.408049,
		-0.400260, 0.269166, -0.875980,
		0.084467, 0.962658, 0.257205,
		30.392742, 42.244846, 52.569324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567192, 41.898205, 51.783279>,  <30.333616, 41.570984, 52.389282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567192, 41.898205, 51.783279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670193, 42.149437, 52.077003>,  <30.731993, 42.300175, 52.253239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670193, 42.149437, 52.077003>,  <30.567192, 41.898205, 51.783279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670193, 42.149437, 52.077003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907092, 0.104752, -0.407689,
		-0.332981, 0.771068, -0.542751,
		0.257502, 0.628078, 0.734310,
		30.747442, 42.337860, 52.297295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825876, 42.398251, 51.416035>,  <30.567192, 41.898205, 51.783279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825876, 42.398251, 51.416035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967577, 42.484779, 51.779949>,  <31.052597, 42.536697, 51.998299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967577, 42.484779, 51.779949>,  <30.825876, 42.398251, 51.416035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967577, 42.484779, 51.779949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815937, 0.403828, -0.413726,
		-0.456895, 0.888891, -0.033448,
		0.354250, 0.216321, 0.909787,
		31.073853, 42.549675, 52.052887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147793, 43.056141, 51.342133>,  <30.825876, 42.398251, 51.416035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147793, 43.056141, 51.342133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315756, 42.900856, 51.670269>,  <31.416534, 42.807686, 51.867153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315756, 42.900856, 51.670269>,  <31.147793, 43.056141, 51.342133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315756, 42.900856, 51.670269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907385, 0.197684, -0.370910,
		-0.018177, 0.900117, 0.435269,
		0.419908, -0.388214, 0.820346,
		31.441729, 42.784393, 51.916374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812778, 43.507271, 51.409950>,  <31.147793, 43.056141, 51.342133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812778, 43.507271, 51.409950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856808, 43.203392, 51.666309>,  <31.883226, 43.021065, 51.820126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856808, 43.203392, 51.666309>,  <31.812778, 43.507271, 51.409950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856808, 43.203392, 51.666309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993481, 0.064861, -0.093748,
		0.029651, 0.647036, 0.761883,
		0.110075, -0.759696, 0.640894,
		31.889830, 42.975483, 51.858578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333614, 43.803974, 51.892838>,  <31.812778, 43.507271, 51.409950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333614, 43.803974, 51.892838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.339355, 43.405113, 51.863205>,  <32.342800, 43.165798, 51.845425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.339355, 43.405113, 51.863205>,  <32.333614, 43.803974, 51.892838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339355, 43.405113, 51.863205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999777, 0.015462, -0.014357,
		0.015462, -0.073854, 0.997149,
		0.014357, -0.997149, -0.074077,
		32.343662, 43.105968, 51.840981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847691, 43.539768, 52.413330>,  <32.333614, 43.803974, 51.892838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847691, 43.539768, 52.413330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.809937, 43.222649, 52.172478>,  <32.787285, 43.032375, 52.027966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.809937, 43.222649, 52.172478>,  <32.847691, 43.539768, 52.413330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809937, 43.222649, 52.172478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976338, -0.191920, 0.099649,
		-0.194563, -0.578477, 0.792155,
		-0.094386, -0.792799, -0.602130,
		32.781620, 42.984810, 51.991840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201328, 42.992233, 52.794804>,  <32.847691, 43.539768, 52.413330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201328, 42.992233, 52.794804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.166145, 42.901596, 52.406799>,  <33.145035, 42.847214, 52.173996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.166145, 42.901596, 52.406799>,  <33.201328, 42.992233, 52.794804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166145, 42.901596, 52.406799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970296, -0.239797, -0.031971,
		-0.225361, -0.944009, 0.240955,
		-0.087961, -0.226593, -0.970009,
		33.139755, 42.833618, 52.115795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733955, 42.484947, 52.638634>,  <33.201328, 42.992233, 52.794804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733955, 42.484947, 52.638634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.647495, 42.618004, 52.271454>,  <33.595619, 42.697838, 52.051147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.647495, 42.618004, 52.271454>,  <33.733955, 42.484947, 52.638634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647495, 42.618004, 52.271454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975288, 0.029531, -0.218955,
		-0.045726, -0.942591, -0.330804,
		-0.216154, 0.332641, -0.917947,
		33.582649, 42.717796, 51.996071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269489, 42.226826, 52.282368>,  <33.733955, 42.484947, 52.638634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269489, 42.226826, 52.282368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099678, 42.487282, 52.030724>,  <33.997791, 42.643555, 51.879738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.099678, 42.487282, 52.030724>,  <34.269489, 42.226826, 52.282368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099678, 42.487282, 52.030724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819243, -0.019595, -0.573111,
		-0.385505, -0.758701, -0.525127,
		-0.424531, 0.651144, -0.629115,
		33.972321, 42.682625, 51.841988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266865, 41.909679, 51.609547>,  <34.269489, 42.226826, 52.282368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266865, 41.909679, 51.609547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.267612, 42.308807, 51.583179>,  <34.268063, 42.548286, 51.567360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.267612, 42.308807, 51.583179>,  <34.266865, 41.909679, 51.609547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267612, 42.308807, 51.583179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823711, -0.038912, -0.565673,
		-0.567007, -0.053237, -0.821991,
		0.001870, 0.997823, -0.065915,
		34.268173, 42.608154, 51.563404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787064, 41.617680, 51.122284>,  <34.266865, 41.909679, 51.609547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787064, 41.617680, 51.122284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.848885, 41.237724, 51.013603>,  <33.885979, 41.009750, 50.948395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.848885, 41.237724, 51.013603>,  <33.787064, 41.617680, 51.122284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848885, 41.237724, 51.013603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612127, -0.307925, 0.728342,
		-0.775509, 0.053748, -0.629045,
		0.154552, -0.949891, -0.271699,
		33.895248, 40.952759, 50.932095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108334, 41.406769, 51.001747>,  <33.787064, 41.617680, 51.122284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108334, 41.406769, 51.001747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342449, 41.095200, 51.091827>,  <33.482918, 40.908257, 51.145874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342449, 41.095200, 51.091827>,  <33.108334, 41.406769, 51.001747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342449, 41.095200, 51.091827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706293, -0.353363, 0.613421,
		-0.398233, -0.518082, -0.756968,
		0.585287, -0.778926, 0.225197,
		33.518036, 40.861523, 51.159386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605957, 40.859890, 51.073265>,  <33.108334, 41.406769, 51.001747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605957, 40.859890, 51.073265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.948868, 40.729958, 51.233047>,  <33.154613, 40.652000, 51.328918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.948868, 40.729958, 51.233047>,  <32.605957, 40.859890, 51.073265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948868, 40.729958, 51.233047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504547, -0.375510, 0.777448,
		-0.102534, -0.868032, -0.485805,
		0.857274, -0.324827, 0.399461,
		33.206051, 40.632507, 51.352886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512707, 40.170792, 51.106106>,  <32.605957, 40.859890, 51.073265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512707, 40.170792, 51.106106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765602, 40.298508, 51.388474>,  <32.917339, 40.375137, 51.557896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765602, 40.298508, 51.388474>,  <32.512707, 40.170792, 51.106106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765602, 40.298508, 51.388474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416030, -0.628720, 0.656986,
		0.653597, -0.709057, -0.264667,
		0.632242, 0.319295, 0.705918,
		32.955276, 40.394295, 51.600250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685112, 39.576389, 51.448067>,  <32.512707, 40.170792, 51.106106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685112, 39.576389, 51.448067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.789219, 39.863014, 51.706924>,  <32.851685, 40.034988, 51.862240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.789219, 39.863014, 51.706924>,  <32.685112, 39.576389, 51.448067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789219, 39.863014, 51.706924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442451, -0.507222, 0.739570,
		0.858194, -0.478818, 0.185029,
		0.260269, 0.716561, 0.647148,
		32.867298, 40.077984, 51.901070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849445, 39.195457, 52.089981>,  <32.685112, 39.576389, 51.448067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849445, 39.195457, 52.089981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807762, 39.572929, 52.215591>,  <32.782753, 39.799412, 52.290958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807762, 39.572929, 52.215591>,  <32.849445, 39.195457, 52.089981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807762, 39.572929, 52.215591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513191, -0.321485, 0.795791,
		0.851925, -0.078228, 0.517788,
		-0.104208, 0.943678, 0.314027,
		32.776501, 39.856033, 52.309799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964924, 39.141163, 52.832233>,  <32.849445, 39.195457, 52.089981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964924, 39.141163, 52.832233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.778397, 39.487190, 52.758255>,  <32.666481, 39.694809, 52.713867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.778397, 39.487190, 52.758255>,  <32.964924, 39.141163, 52.832233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778397, 39.487190, 52.758255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506910, -0.089972, 0.857291,
		0.724977, 0.493516, 0.480468,
		-0.466315, 0.865070, -0.184941,
		32.638500, 39.746712, 52.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035839, 39.476234, 53.553158>,  <32.964924, 39.141163, 52.832233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035839, 39.476234, 53.553158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756359, 39.640396, 53.318764>,  <32.588669, 39.738895, 53.178127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756359, 39.640396, 53.318764>,  <33.035839, 39.476234, 53.553158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756359, 39.640396, 53.318764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648021, -0.016016, 0.761454,
		0.303123, 0.911761, 0.277144,
		-0.698703, 0.410409, -0.585985,
		32.546749, 39.763519, 53.142967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632927, 39.829838, 54.014137>,  <33.035839, 39.476234, 53.553158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632927, 39.829838, 54.014137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.392342, 39.820358, 53.694717>,  <32.247990, 39.814671, 53.503067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.392342, 39.820358, 53.694717>,  <32.632927, 39.829838, 54.014137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392342, 39.820358, 53.694717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795762, -0.070761, 0.601461,
		-0.070761, 0.997212, 0.023700,
		-0.601461, -0.023700, -0.798551,
		32.211903, 39.813248, 53.455151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051086, 40.193676, 54.232491>,  <32.632927, 39.829838, 54.014137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051086, 40.193676, 54.232491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902077, 39.975044, 53.932495>,  <31.812672, 39.843864, 53.752499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902077, 39.975044, 53.932495>,  <32.051086, 40.193676, 54.232491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902077, 39.975044, 53.932495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775964, -0.259824, 0.574780,
		-0.509028, 0.796079, -0.327338,
		-0.372520, -0.546581, -0.749985,
		31.790321, 39.811069, 53.707500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264641, 40.240799, 54.219151>,  <32.051086, 40.193676, 54.232491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264641, 40.240799, 54.219151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.334885, 39.911491, 54.003231>,  <31.377031, 39.713905, 53.873680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.334885, 39.911491, 54.003231>,  <31.264641, 40.240799, 54.219151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334885, 39.911491, 54.003231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817384, -0.427531, 0.386134,
		-0.548675, 0.373415, -0.748008,
		0.175609, -0.823273, -0.539800,
		31.387568, 39.664509, 53.841290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643785, 40.103535, 54.003635>,  <31.264641, 40.240799, 54.219151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643785, 40.103535, 54.003635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850611, 39.761330, 53.992764>,  <30.974705, 39.556007, 53.986240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850611, 39.761330, 53.992764>,  <30.643785, 40.103535, 54.003635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850611, 39.761330, 53.992764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793280, -0.490891, 0.360184,
		-0.321488, -0.164673, -0.932485,
		0.517062, -0.855516, -0.027184,
		31.005730, 39.504673, 53.984608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156025, 39.715321, 53.686909>,  <30.643785, 40.103535, 54.003635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156025, 39.715321, 53.686909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.429422, 39.467110, 53.840683>,  <30.593460, 39.318184, 53.932945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.429422, 39.467110, 53.840683>,  <30.156025, 39.715321, 53.686909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429422, 39.467110, 53.840683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713751, -0.457762, 0.530108,
		-0.152967, -0.636712, -0.755777,
		0.683491, -0.620525, 0.384431,
		30.634470, 39.280952, 53.956013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980742, 38.947247, 53.526627>,  <30.156025, 39.715321, 53.686909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980742, 38.947247, 53.526627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179863, 38.972008, 53.872658>,  <30.299335, 38.986866, 54.080276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179863, 38.972008, 53.872658>,  <29.980742, 38.947247, 53.526627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179863, 38.972008, 53.872658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763520, -0.441831, 0.470980,
		0.411375, -0.894960, -0.172677,
		0.497803, 0.061907, 0.865078,
		30.329205, 38.990582, 54.132179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742468, 38.410492, 53.192749>,  <29.980742, 38.947247, 53.526627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742468, 38.410492, 53.192749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425070, 38.486618, 52.961525>,  <29.234631, 38.532291, 52.822792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425070, 38.486618, 52.961525>,  <29.742468, 38.410492, 53.192749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425070, 38.486618, 52.961525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588841, 0.000146, -0.808249,
		-0.153735, -0.981724, -0.112180,
		-0.793493, 0.190313, -0.578057,
		29.187021, 38.543713, 52.788109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801462, 37.927471, 52.590832>,  <29.742468, 38.410492, 53.192749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801462, 37.927471, 52.590832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555693, 38.218933, 52.469810>,  <29.408232, 38.393810, 52.397198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555693, 38.218933, 52.469810>,  <29.801462, 37.927471, 52.590832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555693, 38.218933, 52.469810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509326, 0.073450, -0.857434,
		-0.602553, -0.680928, -0.416254,
		-0.614424, 0.728658, -0.302557,
		29.371365, 38.437531, 52.379044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657249, 37.714195, 51.964447>,  <29.801462, 37.927471, 52.590832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657249, 37.714195, 51.964447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551600, 38.099937, 51.958073>,  <29.488211, 38.331383, 51.954247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551600, 38.099937, 51.958073>,  <29.657249, 37.714195, 51.964447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551600, 38.099937, 51.958073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500514, 0.122919, -0.856958,
		-0.824454, -0.234320, -0.515140,
		-0.264123, 0.964357, -0.015939,
		29.472363, 38.389244, 51.953289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311077, 37.792061, 51.269978>,  <29.657249, 37.714195, 51.964447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311077, 37.792061, 51.269978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409178, 38.154427, 51.408058>,  <29.468039, 38.371845, 51.490906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409178, 38.154427, 51.408058>,  <29.311077, 37.792061, 51.269978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409178, 38.154427, 51.408058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523074, 0.176148, -0.833886,
		-0.816239, 0.385078, -0.430661,
		0.245251, 0.905918, 0.345203,
		29.482754, 38.426201, 51.511620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158691, 38.272728, 50.733135>,  <29.311077, 37.792061, 51.269978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158691, 38.272728, 50.733135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427147, 38.496361, 50.927864>,  <29.588221, 38.630539, 51.044701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427147, 38.496361, 50.927864>,  <29.158691, 38.272728, 50.733135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427147, 38.496361, 50.927864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525196, 0.104888, -0.844493,
		-0.523202, 0.822452, -0.223233,
		0.671140, 0.559082, 0.486825,
		29.628489, 38.664085, 51.073914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256727, 38.778839, 50.272728>,  <29.158691, 38.272728, 50.733135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256727, 38.778839, 50.272728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568571, 38.813599, 50.520809>,  <29.755678, 38.834454, 50.669659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568571, 38.813599, 50.520809>,  <29.256727, 38.778839, 50.272728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568571, 38.813599, 50.520809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582113, 0.264692, -0.768819,
		-0.230976, 0.960409, 0.155769,
		0.779612, 0.086904, 0.620204,
		29.802454, 38.839668, 50.706871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627150, 39.512280, 50.158943>,  <29.256727, 38.778839, 50.272728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627150, 39.512280, 50.158943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904709, 39.273788, 50.320442>,  <30.071245, 39.130692, 50.417343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904709, 39.273788, 50.320442>,  <29.627150, 39.512280, 50.158943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904709, 39.273788, 50.320442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636864, 0.246522, -0.730500,
		0.336015, 0.764026, 0.550780,
		0.693900, -0.596231, 0.403746,
		30.112879, 39.094917, 50.441566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643745, 40.332893, 50.427883>,  <29.627150, 39.512280, 50.158943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643745, 40.332893, 50.427883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422071, 40.533119, 50.161858>,  <29.289066, 40.653255, 50.002243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422071, 40.533119, 50.161858>,  <29.643745, 40.332893, 50.427883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422071, 40.533119, 50.161858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749181, 0.048270, 0.660605,
		0.362778, 0.864353, 0.348262,
		-0.554185, 0.500564, -0.665068,
		29.255816, 40.683289, 49.962337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434149, 40.883686, 50.768082>,  <29.643745, 40.332893, 50.427883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434149, 40.883686, 50.768082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186340, 40.873558, 50.454254>,  <29.037655, 40.867481, 50.265957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186340, 40.873558, 50.454254>,  <29.434149, 40.883686, 50.768082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186340, 40.873558, 50.454254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780094, 0.131216, 0.611748,
		0.087457, 0.991030, -0.101047,
		-0.619519, -0.025325, -0.784573,
		29.000484, 40.865959, 50.218884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095074, 41.460674, 50.798721>,  <29.434149, 40.883686, 50.768082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095074, 41.460674, 50.798721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872086, 41.183510, 50.615814>,  <28.738293, 41.017212, 50.506069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872086, 41.183510, 50.615814>,  <29.095074, 41.460674, 50.798721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872086, 41.183510, 50.615814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687482, 0.076533, 0.722157,
		-0.465396, 0.716948, -0.519030,
		-0.557472, -0.692913, -0.457270,
		28.704844, 40.975636, 50.478634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491779, 41.753403, 50.675716>,  <29.095074, 41.460674, 50.798721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491779, 41.753403, 50.675716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413149, 41.362259, 50.647003>,  <28.365971, 41.127575, 50.629776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413149, 41.362259, 50.647003>,  <28.491779, 41.753403, 50.675716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413149, 41.362259, 50.647003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790455, 0.114734, 0.601678,
		-0.580118, 0.175021, -0.795506,
		-0.196577, -0.977857, -0.071787,
		28.354176, 41.068901, 50.625465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878418, 41.692101, 50.329205>,  <28.491779, 41.753403, 50.675716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878418, 41.692101, 50.329205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933058, 41.365654, 50.553810>,  <27.965841, 41.169785, 50.688572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933058, 41.365654, 50.553810>,  <27.878418, 41.692101, 50.329205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933058, 41.365654, 50.553810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890767, 0.146820, 0.430092,
		-0.433446, -0.558925, -0.706914,
		0.136600, -0.816117, 0.561510,
		27.974037, 41.120819, 50.722263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155107, 41.448380, 50.395054>,  <27.878418, 41.692101, 50.329205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155107, 41.448380, 50.395054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352346, 41.228004, 50.664371>,  <27.470690, 41.095779, 50.825962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.352346, 41.228004, 50.664371>,  <27.155107, 41.448380, 50.395054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352346, 41.228004, 50.664371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759530, 0.104769, 0.641979,
		-0.424229, -0.827946, -0.366791,
		0.493096, -0.550934, 0.673296,
		27.500275, 41.062725, 50.866360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669415, 41.011318, 50.780731>,  <27.155107, 41.448380, 50.395054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669415, 41.011318, 50.780731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981777, 40.992661, 51.029892>,  <27.169195, 40.981464, 51.179390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981777, 40.992661, 51.029892>,  <26.669415, 41.011318, 50.780731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981777, 40.992661, 51.029892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624246, -0.022445, 0.780905,
		-0.022445, -0.998659, -0.046645,
		-0.780905, 0.046645, -0.622906,
		27.216049, 40.978668, 51.216763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501621, 40.438549, 51.200180>,  <26.669415, 41.011318, 50.780731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501621, 40.438549, 51.200180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766432, 40.669777, 51.390991>,  <26.925318, 40.808514, 51.505478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766432, 40.669777, 51.390991>,  <26.501621, 40.438549, 51.200180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766432, 40.669777, 51.390991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594064, 0.016676, 0.804245,
		0.456954, -0.815818, 0.354450,
		0.662028, 0.578069, 0.477028,
		26.965040, 40.843197, 51.534100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410362, 40.310070, 51.852226>,  <26.501621, 40.438549, 51.200180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410362, 40.310070, 51.852226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589867, 40.666321, 51.881630>,  <26.697569, 40.880070, 51.899273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589867, 40.666321, 51.881630>,  <26.410362, 40.310070, 51.852226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589867, 40.666321, 51.881630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575144, 0.224883, 0.786535,
		0.683976, -0.395244, 0.613155,
		0.448762, 0.890623, 0.073507,
		26.724495, 40.933506, 51.903683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.634312, 44.582939, 43.151077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406906, 44.872643, 43.307148>,  <39.270462, 45.046467, 43.400791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406906, 44.872643, 43.307148>,  <39.634312, 44.582939, 43.151077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406906, 44.872643, 43.307148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759942, -0.643990, 0.088121,
		0.315094, -0.246416, 0.916512,
		-0.568510, 0.724263, 0.390179,
		39.236355, 45.089920, 43.424202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280663, 44.265839, 43.703617>,  <39.634312, 44.582939, 43.151077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280663, 44.265839, 43.703617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046352, 44.584412, 43.643536>,  <38.905766, 44.775555, 43.607487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046352, 44.584412, 43.643536>,  <39.280663, 44.265839, 43.703617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046352, 44.584412, 43.643536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809664, -0.583327, 0.064602,
		-0.036165, 0.159455, 0.986543,
		-0.585778, 0.796431, -0.150201,
		38.870621, 44.823341, 43.598476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758099, 44.311306, 44.299320>,  <39.280663, 44.265839, 43.703617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758099, 44.311306, 44.299320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614552, 44.516380, 43.987328>,  <38.528423, 44.639423, 43.800133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614552, 44.516380, 43.987328>,  <38.758099, 44.311306, 44.299320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614552, 44.516380, 43.987328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897206, -0.419885, 0.136816,
		-0.257358, 0.748901, 0.610667,
		-0.358871, 0.512683, -0.779979,
		38.506889, 44.670185, 43.753334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177223, 44.556877, 44.554859>,  <38.758099, 44.311306, 44.299320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177223, 44.556877, 44.554859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128792, 44.616043, 44.162235>,  <38.099731, 44.651543, 43.926662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128792, 44.616043, 44.162235>,  <38.177223, 44.556877, 44.554859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128792, 44.616043, 44.162235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976987, -0.192687, 0.091480,
		-0.175602, 0.970048, 0.167841,
		-0.121080, 0.147915, -0.981560,
		38.092468, 44.660416, 43.867767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596828, 44.931000, 44.487846>,  <38.177223, 44.556877, 44.554859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596828, 44.931000, 44.487846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633224, 44.753708, 44.131134>,  <37.655060, 44.647331, 43.917107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633224, 44.753708, 44.131134>,  <37.596828, 44.931000, 44.487846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633224, 44.753708, 44.131134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926137, -0.366820, 0.087825,
		-0.366048, 0.817912, -0.443879,
		0.090991, -0.443241, -0.891772,
		37.660519, 44.620739, 43.863602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003517, 44.984089, 44.111313>,  <37.596828, 44.931000, 44.487846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003517, 44.984089, 44.111313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150528, 44.679497, 43.897743>,  <37.238735, 44.496742, 43.769600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150528, 44.679497, 43.897743>,  <37.003517, 44.984089, 44.111313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150528, 44.679497, 43.897743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913144, -0.404316, -0.051928,
		-0.176332, 0.506633, -0.843937,
		0.367526, -0.761480, -0.533923,
		37.260784, 44.451054, 43.737568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521812, 44.795593, 43.572556>,  <37.003517, 44.984089, 44.111313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521812, 44.795593, 43.572556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734760, 44.462852, 43.635300>,  <36.862530, 44.263206, 43.672947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734760, 44.462852, 43.635300>,  <36.521812, 44.795593, 43.572556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734760, 44.462852, 43.635300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839146, -0.542989, -0.031585,
		0.111450, -0.114817, -0.987115,
		0.532366, -0.831854, 0.156864,
		36.894470, 44.213295, 43.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243900, 44.251419, 43.180019>,  <36.521812, 44.795593, 43.572556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243900, 44.251419, 43.180019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461372, 44.051529, 43.449741>,  <36.591854, 43.931595, 43.611576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461372, 44.051529, 43.449741>,  <36.243900, 44.251419, 43.180019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461372, 44.051529, 43.449741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776072, -0.605239, 0.177195,
		0.319566, -0.619647, -0.716879,
		0.543681, -0.499724, 0.674304,
		36.624477, 43.901611, 43.652031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205418, 43.587376, 42.902596>,  <36.243900, 44.251419, 43.180019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205418, 43.587376, 42.902596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289131, 43.544395, 43.291370>,  <36.339359, 43.518608, 43.524635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289131, 43.544395, 43.291370>,  <36.205418, 43.587376, 42.902596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289131, 43.544395, 43.291370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702456, -0.707975, 0.072989,
		0.680262, -0.698016, -0.223647,
		0.209284, -0.107450, 0.971934,
		36.351917, 43.512161, 43.582951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089863, 42.945610, 43.050858>,  <36.205418, 43.587376, 42.902596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089863, 42.945610, 43.050858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084003, 43.104126, 43.418060>,  <36.080486, 43.199238, 43.638382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.084003, 43.104126, 43.418060>,  <36.089863, 42.945610, 43.050858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084003, 43.104126, 43.418060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797091, -0.558932, 0.228561,
		0.603681, -0.728386, 0.324072,
		-0.014653, 0.396293, 0.918007,
		36.079609, 43.223015, 43.693462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041454, 42.381752, 43.477367>,  <36.089863, 42.945610, 43.050858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041454, 42.381752, 43.477367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907349, 42.690994, 43.692738>,  <35.826885, 42.876541, 43.821960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907349, 42.690994, 43.692738>,  <36.041454, 42.381752, 43.477367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907349, 42.690994, 43.692738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856343, -0.488331, 0.167957,
		0.392780, -0.404769, 0.825764,
		-0.335262, 0.773108, 0.538427,
		35.806770, 42.922928, 43.854267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652554, 42.007381, 44.002747>,  <36.041454, 42.381752, 43.477367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652554, 42.007381, 44.002747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529495, 42.387772, 44.015362>,  <35.455658, 42.616005, 44.022930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529495, 42.387772, 44.015362>,  <35.652554, 42.007381, 44.002747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529495, 42.387772, 44.015362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892642, -0.299937, 0.336495,
		0.329458, 0.075372, 0.941157,
		-0.307651, 0.950977, 0.031536,
		35.437199, 42.673065, 44.024822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045547, 41.472885, 44.463879>,  <35.652554, 42.007381, 44.002747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045547, 41.472885, 44.463879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934044, 41.129150, 44.292377>,  <35.867142, 40.922909, 44.189476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934044, 41.129150, 44.292377>,  <36.045547, 41.472885, 44.463879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934044, 41.129150, 44.292377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810960, 0.028510, -0.584406,
		0.514427, -0.510609, 0.688944,
		-0.278761, -0.859340, -0.428750,
		35.850414, 40.871349, 44.163754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671806, 41.113216, 44.445312>,  <36.045547, 41.472885, 44.463879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671806, 41.113216, 44.445312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453957, 40.947586, 44.153580>,  <36.323246, 40.848209, 43.978539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453957, 40.947586, 44.153580>,  <36.671806, 41.113216, 44.445312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453957, 40.947586, 44.153580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768901, 0.100757, -0.631379,
		0.334924, -0.904648, 0.263509,
		-0.544626, -0.414076, -0.729331,
		36.290569, 40.823364, 43.934780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021648, 40.549664, 44.050434>,  <36.671806, 41.113216, 44.445312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021648, 40.549664, 44.050434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.730961, 40.643143, 43.792053>,  <36.556549, 40.699230, 43.637024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.730961, 40.643143, 43.792053>,  <37.021648, 40.549664, 44.050434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730961, 40.643143, 43.792053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668333, 0.023215, -0.743500,
		-0.158761, -0.972031, -0.173061,
		-0.726723, 0.233701, -0.645955,
		36.512943, 40.713253, 43.598267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212616, 40.260204, 43.407574>,  <37.021648, 40.549664, 44.050434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212616, 40.260204, 43.407574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939026, 40.530624, 43.297928>,  <36.774872, 40.692875, 43.232140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939026, 40.530624, 43.297928>,  <37.212616, 40.260204, 43.407574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939026, 40.530624, 43.297928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496675, 0.156344, -0.853739,
		-0.534312, -0.720082, -0.442710,
		-0.683978, 0.676046, -0.274110,
		36.733833, 40.733437, 43.215694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261192, 40.167534, 42.689350>,  <37.212616, 40.260204, 43.407574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261192, 40.167534, 42.689350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047707, 40.505669, 42.698818>,  <36.919617, 40.708549, 42.704498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047707, 40.505669, 42.698818>,  <37.261192, 40.167534, 42.689350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047707, 40.505669, 42.698818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517746, 0.348762, -0.781220,
		-0.668648, -0.404691, -0.623808,
		-0.533712, 0.845335, 0.023671,
		36.887592, 40.759270, 42.705921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919403, 40.313828, 42.082008>,  <37.261192, 40.167534, 42.689350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919403, 40.313828, 42.082008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.973141, 40.670288, 42.255348>,  <37.005383, 40.884167, 42.359352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.973141, 40.670288, 42.255348>,  <36.919403, 40.313828, 42.082008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973141, 40.670288, 42.255348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311017, 0.377296, -0.872305,
		-0.940861, 0.251969, -0.226477,
		0.134345, 0.891156, 0.433350,
		37.013443, 40.937634, 42.385353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756237, 40.767380, 41.500359>,  <36.919403, 40.313828, 42.082008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756237, 40.767380, 41.500359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966591, 40.987083, 41.760132>,  <37.092804, 41.118904, 41.915997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966591, 40.987083, 41.760132>,  <36.756237, 40.767380, 41.500359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966591, 40.987083, 41.760132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525795, 0.390237, -0.755814,
		-0.668568, 0.738940, -0.083577,
		0.525886, 0.549258, 0.649430,
		37.124355, 41.151859, 41.954960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792824, 41.399628, 41.133606>,  <36.756237, 40.767380, 41.500359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792824, 41.399628, 41.133606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.074104, 41.427521, 41.416630>,  <37.242874, 41.444256, 41.586445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.074104, 41.427521, 41.416630>,  <36.792824, 41.399628, 41.133606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074104, 41.427521, 41.416630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537742, 0.598876, -0.593448,
		-0.465124, 0.797800, 0.383634,
		0.703202, 0.069731, 0.707563,
		37.285065, 41.448441, 41.628899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928711, 42.117825, 41.082287>,  <36.792824, 41.399628, 41.133606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928711, 42.117825, 41.082287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235519, 41.968529, 41.291046>,  <37.419605, 41.878952, 41.416302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235519, 41.968529, 41.291046>,  <36.928711, 42.117825, 41.082287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235519, 41.968529, 41.291046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628777, 0.599193, -0.495588,
		-0.127745, 0.708282, 0.694275,
		0.767021, -0.373235, 0.521896,
		37.465626, 41.856560, 41.447617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342342, 42.659615, 41.356583>,  <36.928711, 42.117825, 41.082287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342342, 42.659615, 41.356583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583817, 42.341797, 41.330437>,  <37.728699, 42.151108, 41.314751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583817, 42.341797, 41.330437>,  <37.342342, 42.659615, 41.356583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583817, 42.341797, 41.330437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707568, 0.571763, -0.415252,
		0.367308, 0.204430, 0.907355,
		0.603682, -0.794541, -0.065366,
		37.764923, 42.103436, 41.310825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019390, 42.908592, 41.470898>,  <37.342342, 42.659615, 41.356583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019390, 42.908592, 41.470898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095383, 42.556557, 41.296837>,  <38.140980, 42.345337, 41.192402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095383, 42.556557, 41.296837>,  <38.019390, 42.908592, 41.470898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095383, 42.556557, 41.296837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729497, 0.423169, -0.537366,
		0.657070, -0.215350, 0.722414,
		0.189982, -0.880086, -0.435149,
		38.152378, 42.292530, 41.166290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730339, 42.779423, 41.602741>,  <38.019390, 42.908592, 41.470898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730339, 42.779423, 41.602741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.612053, 42.583511, 41.274677>,  <38.541080, 42.465965, 41.077839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.612053, 42.583511, 41.274677>,  <38.730339, 42.779423, 41.602741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612053, 42.583511, 41.274677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783900, 0.366248, -0.501361,
		0.545940, -0.791186, 0.275633,
		-0.295720, -0.489782, -0.820161,
		38.523338, 42.436577, 41.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345108, 42.427292, 41.418518>,  <38.730339, 42.779423, 41.602741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345108, 42.427292, 41.418518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.124065, 42.401924, 41.086109>,  <38.991440, 42.386703, 40.886662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.124065, 42.401924, 41.086109>,  <39.345108, 42.427292, 41.418518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124065, 42.401924, 41.086109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807222, 0.207415, -0.552605,
		0.207415, -0.976195, -0.063422,
		0.552605, 0.063422, 0.831027,
		38.958282, 42.382896, 40.836800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717430, 41.922710, 41.030033>,  <39.345108, 42.427292, 41.418518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717430, 41.922710, 41.030033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481541, 42.121475, 40.775383>,  <39.340008, 42.240734, 40.622593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481541, 42.121475, 40.775383>,  <39.717430, 41.922710, 41.030033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481541, 42.121475, 40.775383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781539, 0.152493, -0.604932,
		-0.203519, -0.854295, -0.478289,
		-0.589726, 0.496917, -0.636629,
		39.304623, 42.270550, 40.584393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427761, 41.389824, 41.497684>,  <39.717430, 41.922710, 41.030033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427761, 41.389824, 41.497684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775257, 41.482391, 41.672832>,  <39.983757, 41.537933, 41.777920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775257, 41.482391, 41.672832>,  <39.427761, 41.389824, 41.497684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775257, 41.482391, 41.672832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020387, -0.900078, 0.435251,
		0.494843, -0.369195, -0.786654,
		0.868743, 0.231419, 0.437871,
		40.035881, 41.551819, 41.804195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586861, 40.782562, 41.891544>,  <39.427761, 41.389824, 41.497684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586861, 40.782562, 41.891544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.949852, 40.894035, 42.017284>,  <40.167648, 40.960918, 42.092728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.949852, 40.894035, 42.017284>,  <39.586861, 40.782562, 41.891544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949852, 40.894035, 42.017284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267964, -0.192295, 0.944043,
		0.323539, -0.940934, -0.099826,
		0.907479, 0.278685, 0.314351,
		40.222095, 40.977642, 42.111591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927460, 40.195019, 42.248711>,  <39.586861, 40.782562, 41.891544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927460, 40.195019, 42.248711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050137, 40.553093, 42.378063>,  <40.123745, 40.767937, 42.455673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050137, 40.553093, 42.378063>,  <39.927460, 40.195019, 42.248711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050137, 40.553093, 42.378063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243508, -0.254646, 0.935873,
		0.920131, -0.365774, 0.139886,
		0.306696, 0.895190, 0.323377,
		40.142147, 40.821651, 42.475075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351330, 40.037205, 42.858250>,  <39.927460, 40.195019, 42.248711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351330, 40.037205, 42.858250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182930, 40.399857, 42.869400>,  <40.081890, 40.617447, 42.876091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182930, 40.399857, 42.869400>,  <40.351330, 40.037205, 42.858250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182930, 40.399857, 42.869400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437850, -0.230038, 0.869120,
		0.794383, 0.353697, 0.493815,
		-0.421001, 0.906632, 0.027871,
		40.056629, 40.671844, 42.877762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559818, 40.278156, 43.454250>,  <40.351330, 40.037205, 42.858250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559818, 40.278156, 43.454250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.215405, 40.455719, 43.354996>,  <40.008759, 40.562256, 43.295444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.215405, 40.455719, 43.354996>,  <40.559818, 40.278156, 43.454250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215405, 40.455719, 43.354996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381974, -0.242389, 0.891820,
		0.335738, 0.862668, 0.378265,
		-0.861032, 0.443905, -0.248137,
		39.957096, 40.588890, 43.280556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372383, 40.620461, 44.080612>,  <40.559818, 40.278156, 43.454250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372383, 40.620461, 44.080612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.044235, 40.596176, 43.853172>,  <39.847347, 40.581608, 43.716709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.044235, 40.596176, 43.853172>,  <40.372383, 40.620461, 44.080612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044235, 40.596176, 43.853172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546891, -0.207156, 0.811170,
		-0.167033, 0.976423, 0.136744,
		-0.820372, -0.060708, -0.568599,
		39.798122, 40.577965, 43.682594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913570, 41.172134, 44.369377>,  <40.372383, 40.620461, 44.080612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913570, 41.172134, 44.369377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666977, 40.921417, 44.178768>,  <39.519020, 40.770985, 44.064404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666977, 40.921417, 44.178768>,  <39.913570, 41.172134, 44.369377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666977, 40.921417, 44.178768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643293, 0.051994, 0.763852,
		-0.454002, 0.777448, -0.435266,
		-0.616486, -0.626795, -0.476522,
		39.482033, 40.733379, 44.035812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299534, 41.406990, 44.606060>,  <39.913570, 41.172134, 44.369377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299534, 41.406990, 44.606060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163017, 41.063576, 44.452991>,  <39.081108, 40.857525, 44.361153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163017, 41.063576, 44.452991>,  <39.299534, 41.406990, 44.606060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163017, 41.063576, 44.452991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811701, 0.063897, 0.580567,
		-0.473988, 0.508753, -0.718683,
		-0.341287, -0.858538, -0.382669,
		39.060631, 40.806015, 44.338192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661541, 41.541527, 44.552906>,  <39.299534, 41.406990, 44.606060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661541, 41.541527, 44.552906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.710636, 41.144783, 44.566490>,  <38.740093, 40.906738, 44.574638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.710636, 41.144783, 44.566490>,  <38.661541, 41.541527, 44.552906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710636, 41.144783, 44.566490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689938, -0.060679, 0.721321,
		-0.713387, -0.111960, -0.691768,
		0.122735, -0.991858, 0.033958,
		38.747456, 40.847225, 44.576679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002907, 41.228413, 44.550201>,  <38.661541, 41.541527, 44.552906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002907, 41.228413, 44.550201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.231194, 40.938850, 44.705242>,  <38.368168, 40.765114, 44.798267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.231194, 40.938850, 44.705242>,  <38.002907, 41.228413, 44.550201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231194, 40.938850, 44.705242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681078, -0.153632, 0.715912,
		-0.458706, -0.672573, -0.580718,
		0.570720, -0.723908, 0.387603,
		38.402409, 40.721680, 44.821522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528503, 40.707695, 44.612583>,  <38.002907, 41.228413, 44.550201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528503, 40.707695, 44.612583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844475, 40.625542, 44.843697>,  <38.034058, 40.576252, 44.982365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844475, 40.625542, 44.843697>,  <37.528503, 40.707695, 44.612583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844475, 40.625542, 44.843697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598195, -0.050959, 0.799729,
		-0.134807, -0.977354, -0.163113,
		0.789931, -0.205383, 0.577779,
		38.081455, 40.563927, 45.017029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406616, 40.146690, 44.935856>,  <37.528503, 40.707695, 44.612583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406616, 40.146690, 44.935856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679348, 40.303146, 45.183117>,  <37.842987, 40.397018, 45.331474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679348, 40.303146, 45.183117>,  <37.406616, 40.146690, 44.935856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679348, 40.303146, 45.183117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604251, -0.175136, 0.777308,
		0.412299, -0.903513, 0.116934,
		0.681829, 0.391141, 0.618157,
		37.883896, 40.420490, 45.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387173, 39.716415, 45.552177>,  <37.406616, 40.146690, 44.935856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387173, 39.716415, 45.552177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544094, 40.065292, 45.669056>,  <37.638248, 40.274620, 45.739182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544094, 40.065292, 45.669056>,  <37.387173, 39.716415, 45.552177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544094, 40.065292, 45.669056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491131, -0.069974, 0.868271,
		0.777744, -0.484135, 0.400909,
		0.392307, 0.872191, 0.292195,
		37.661785, 40.326950, 45.756714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638138, 39.655384, 46.294491>,  <37.387173, 39.716415, 45.552177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638138, 39.655384, 46.294491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.586227, 40.048103, 46.239029>,  <37.555080, 40.283737, 46.205750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.586227, 40.048103, 46.239029>,  <37.638138, 39.655384, 46.294491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586227, 40.048103, 46.239029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282728, 0.097395, 0.954243,
		0.950380, 0.163043, 0.264942,
		-0.129779, 0.981800, -0.138659,
		37.547295, 40.342644, 46.197430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011005, 40.007839, 46.925060>,  <37.638138, 39.655384, 46.294491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011005, 40.007839, 46.925060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766792, 40.271461, 46.749382>,  <37.620266, 40.429634, 46.643974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766792, 40.271461, 46.749382>,  <38.011005, 40.007839, 46.925060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766792, 40.271461, 46.749382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377145, 0.245699, 0.892969,
		0.696427, 0.710828, 0.098552,
		-0.610534, 0.659056, -0.439197,
		37.583633, 40.469177, 46.617622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986935, 40.574104, 47.446976>,  <38.011005, 40.007839, 46.925060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986935, 40.574104, 47.446976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653809, 40.626358, 47.231808>,  <37.453934, 40.657711, 47.102707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653809, 40.626358, 47.231808>,  <37.986935, 40.574104, 47.446976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653809, 40.626358, 47.231808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494238, 0.262166, 0.828853,
		0.249300, 0.956140, -0.153771,
		-0.832814, 0.130634, -0.537919,
		37.403965, 40.665546, 47.070431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637924, 41.060505, 47.878197>,  <37.986935, 40.574104, 47.446976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637924, 41.060505, 47.878197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367149, 40.947441, 47.606354>,  <37.204685, 40.879601, 47.443249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367149, 40.947441, 47.606354>,  <37.637924, 41.060505, 47.878197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367149, 40.947441, 47.606354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731903, 0.356310, 0.580828,
		0.077971, 0.890587, -0.448080,
		-0.676933, -0.282663, -0.679605,
		37.164070, 40.862640, 47.402473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120987, 41.560249, 47.860443>,  <37.637924, 41.060505, 47.878197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120987, 41.560249, 47.860443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956585, 41.220047, 47.729164>,  <36.857944, 41.015926, 47.650398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956585, 41.220047, 47.729164>,  <37.120987, 41.560249, 47.860443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956585, 41.220047, 47.729164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788034, 0.150456, 0.596964,
		-0.458342, 0.503986, -0.732066,
		-0.411005, -0.850506, -0.328198,
		36.833282, 40.964893, 47.630703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505478, 41.732216, 47.720764>,  <37.120987, 41.560249, 47.860443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505478, 41.732216, 47.720764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460701, 41.337227, 47.765251>,  <36.433834, 41.100235, 47.791943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460701, 41.337227, 47.765251>,  <36.505478, 41.732216, 47.720764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460701, 41.337227, 47.765251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838505, 0.153925, 0.522701,
		-0.533272, -0.034746, -0.845230,
		-0.111941, -0.987471, 0.111218,
		36.427120, 41.040985, 47.798618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746212, 41.468086, 47.577847>,  <36.505478, 41.732216, 47.720764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746212, 41.468086, 47.577847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917301, 41.187851, 47.806316>,  <36.019955, 41.019711, 47.943398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917301, 41.187851, 47.806316>,  <35.746212, 41.468086, 47.577847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917301, 41.187851, 47.806316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826705, -0.047662, 0.560613,
		-0.365534, -0.711976, -0.599562,
		0.427720, -0.700584, 0.571172,
		36.045616, 40.977676, 47.977669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206081, 40.998058, 47.701370>,  <35.746212, 41.468086, 47.577847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206081, 40.998058, 47.701370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475098, 40.903275, 47.981812>,  <35.636509, 40.846405, 48.150074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475098, 40.903275, 47.981812>,  <35.206081, 40.998058, 47.701370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475098, 40.903275, 47.981812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686456, 0.154245, 0.710624,
		-0.276527, -0.959198, -0.058924,
		0.672540, -0.236955, 0.701100,
		35.676861, 40.832188, 48.192142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860008, 40.506237, 48.120251>,  <35.206081, 40.998058, 47.701370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860008, 40.506237, 48.120251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153862, 40.609604, 48.371178>,  <35.330173, 40.671623, 48.521736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153862, 40.609604, 48.371178>,  <34.860008, 40.506237, 48.120251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153862, 40.609604, 48.371178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637203, -0.054727, 0.768750,
		0.232990, -0.964482, 0.124460,
		0.734634, 0.258418, 0.627322,
		35.374252, 40.687130, 48.559376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811512, 40.071819, 48.736324>,  <34.860008, 40.506237, 48.120251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811512, 40.071819, 48.736324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035690, 40.380997, 48.855289>,  <35.170197, 40.566505, 48.926670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035690, 40.380997, 48.855289>,  <34.811512, 40.071819, 48.736324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035690, 40.380997, 48.855289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391950, -0.068807, 0.917410,
		0.729574, -0.630728, 0.264394,
		0.560444, 0.772947, 0.297414,
		35.203823, 40.612881, 48.944515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222610, 39.902882, 49.287716>,  <34.811512, 40.071819, 48.736324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222610, 39.902882, 49.287716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173569, 40.299599, 49.302254>,  <35.144142, 40.537628, 49.310974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173569, 40.299599, 49.302254>,  <35.222610, 39.902882, 49.287716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173569, 40.299599, 49.302254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469210, -0.090194, 0.878469,
		0.874534, 0.090654, 0.476416,
		-0.122607, 0.991790, 0.036342,
		35.136787, 40.597137, 49.313156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492897, 40.208389, 49.945522>,  <35.222610, 39.902882, 49.287716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492897, 40.208389, 49.945522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227043, 40.476479, 49.813423>,  <35.067532, 40.637333, 49.734161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227043, 40.476479, 49.813423>,  <35.492897, 40.208389, 49.945522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227043, 40.476479, 49.813423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496046, -0.065270, 0.865840,
		0.558750, 0.739284, 0.375842,
		-0.664632, 0.670223, -0.330250,
		35.027653, 40.677544, 49.714348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465481, 40.736679, 50.492138>,  <35.492897, 40.208389, 49.945522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465481, 40.736679, 50.492138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129692, 40.755371, 50.275581>,  <34.928219, 40.766586, 50.145649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129692, 40.755371, 50.275581>,  <35.465481, 40.736679, 50.492138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129692, 40.755371, 50.275581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541909, 0.001914, 0.840435,
		0.040310, 0.998906, 0.023716,
		-0.839470, 0.046730, -0.541393,
		34.877850, 40.769390, 50.113163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023918, 41.066998, 50.940857>,  <35.465481, 40.736679, 50.492138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023918, 41.066998, 50.940857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765564, 40.965446, 50.652863>,  <34.610550, 40.904518, 50.480064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765564, 40.965446, 50.652863>,  <35.023918, 41.066998, 50.940857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765564, 40.965446, 50.652863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748064, 0.022177, 0.663256,
		-0.152415, 0.966983, -0.204238,
		-0.645887, -0.253873, -0.719985,
		34.571796, 40.889286, 50.436867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503922, 41.501057, 51.054203>,  <35.023918, 41.066998, 50.940857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503922, 41.501057, 51.054203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369362, 41.180138, 50.856956>,  <34.288628, 40.987587, 50.738609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369362, 41.180138, 50.856956>,  <34.503922, 41.501057, 51.054203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369362, 41.180138, 50.856956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744957, -0.093613, 0.660511,
		-0.576086, 0.589544, -0.566183,
		-0.336399, -0.802293, -0.493114,
		34.268444, 40.939449, 50.709023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419937, 42.150928, 50.760914>,  <34.503922, 41.501057, 51.054203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419937, 42.150928, 50.760914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521446, 42.453949, 51.001484>,  <34.582352, 42.635761, 51.145824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521446, 42.453949, 51.001484>,  <34.419937, 42.150928, 50.760914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521446, 42.453949, 51.001484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872881, 0.088539, -0.479833,
		-0.416749, 0.646740, -0.638786,
		0.253770, 0.757554, 0.601426,
		34.597576, 42.681213, 51.181911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841034, 42.705265, 50.326851>,  <34.419937, 42.150928, 50.760914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841034, 42.705265, 50.326851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946243, 42.811287, 50.697918>,  <35.009369, 42.874901, 50.920559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946243, 42.811287, 50.697918>,  <34.841034, 42.705265, 50.326851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946243, 42.811287, 50.697918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917130, 0.229778, -0.325690,
		-0.299483, 0.936455, -0.182651,
		0.263025, 0.265053, 0.927666,
		35.025150, 42.890804, 50.976219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300613, 43.218639, 50.158154>,  <34.841034, 42.705265, 50.326851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300613, 43.218639, 50.158154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392326, 43.130470, 50.537384>,  <35.447353, 43.077568, 50.764923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392326, 43.130470, 50.537384>,  <35.300613, 43.218639, 50.158154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392326, 43.130470, 50.537384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972861, 0.083080, -0.215960,
		-0.031162, 0.971859, 0.233493,
		0.229281, -0.220427, 0.948073,
		35.461109, 43.064342, 50.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703758, 43.727093, 50.287819>,  <35.300613, 43.218639, 50.158154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703758, 43.727093, 50.287819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782017, 43.444061, 50.559425>,  <35.828972, 43.274242, 50.722389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782017, 43.444061, 50.559425>,  <35.703758, 43.727093, 50.287819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782017, 43.444061, 50.559425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969542, 0.243590, -0.025527,
		-0.147338, 0.663325, 0.733683,
		0.195651, -0.707576, 0.679012,
		35.840714, 43.231789, 50.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202553, 44.004761, 50.806538>,  <35.703758, 43.727093, 50.287819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202553, 44.004761, 50.806538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235138, 43.606522, 50.825054>,  <36.254688, 43.367577, 50.836163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235138, 43.606522, 50.825054>,  <36.202553, 44.004761, 50.806538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235138, 43.606522, 50.825054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995850, 0.083199, 0.036900,
		-0.040589, 0.043094, 0.998246,
		0.081463, -0.995601, 0.046292,
		36.259579, 43.307842, 50.838943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
