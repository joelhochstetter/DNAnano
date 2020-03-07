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
	<35.748528, 52.475712, 50.539764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859711, 52.511551, 50.157204>,  <35.926422, 52.533054, 49.927666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859711, 52.511551, 50.157204>,  <35.748528, 52.475712, 50.539764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859711, 52.511551, 50.157204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953412, -0.095783, -0.286061,
		-0.117238, 0.991362, 0.058800,
		0.277958, 0.089598, -0.956406,
		35.943096, 52.538429, 49.870281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272736, 53.055252, 50.428623>,  <35.748528, 52.475712, 50.539764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272736, 53.055252, 50.428623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587128, 52.893723, 50.615883>,  <36.775761, 52.796806, 50.728241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587128, 52.893723, 50.615883>,  <36.272736, 53.055252, 50.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587128, 52.893723, 50.615883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533137, 0.059276, -0.843950,
		0.313055, 0.912915, 0.261882,
		0.785978, -0.403822, 0.468152,
		36.822922, 52.772575, 50.756329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957539, 53.608784, 50.432240>,  <36.272736, 53.055252, 50.428623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957539, 53.608784, 50.432240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947418, 53.211208, 50.389462>,  <36.941345, 52.972664, 50.363796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947418, 53.211208, 50.389462>,  <36.957539, 53.608784, 50.432240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947418, 53.211208, 50.389462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284849, 0.095375, -0.953816,
		0.958239, -0.054595, 0.280710,
		-0.025301, -0.993943, -0.106944,
		36.939827, 52.913025, 50.357380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705730, 53.357349, 50.240021>,  <36.957539, 53.608784, 50.432240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705730, 53.357349, 50.240021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400158, 53.142044, 50.097656>,  <37.216812, 53.012859, 50.012238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400158, 53.142044, 50.097656>,  <37.705730, 53.357349, 50.240021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400158, 53.142044, 50.097656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332053, 0.145021, -0.932046,
		0.553302, -0.830205, 0.067945,
		-0.763936, -0.538264, -0.355913,
		37.170979, 52.980564, 49.990883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065304, 52.928528, 49.807163>,  <37.705730, 53.357349, 50.240021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065304, 52.928528, 49.807163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673851, 52.951347, 49.728149>,  <37.438980, 52.965038, 49.680740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673851, 52.951347, 49.728149>,  <38.065304, 52.928528, 49.807163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673851, 52.951347, 49.728149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204815, 0.186038, -0.960958,
		-0.018069, -0.980885, -0.193747,
		-0.978634, 0.057046, -0.197539,
		37.380260, 52.968460, 49.668888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464287, 53.072502, 50.459412>,  <38.065304, 52.928528, 49.807163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464287, 53.072502, 50.459412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729694, 53.357822, 50.369133>,  <38.888939, 53.529015, 50.314964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729694, 53.357822, 50.369133>,  <38.464287, 53.072502, 50.459412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729694, 53.357822, 50.369133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451624, -0.141365, 0.880938,
		0.596470, -0.686451, -0.415943,
		0.663521, 0.713303, -0.225698,
		38.928749, 53.571812, 50.301422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187626, 52.820229, 50.435986>,  <38.464287, 53.072502, 50.459412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187626, 52.820229, 50.435986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126671, 53.198814, 50.549820>,  <39.090096, 53.425964, 50.618118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126671, 53.198814, 50.549820>,  <39.187626, 52.820229, 50.435986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126671, 53.198814, 50.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458203, -0.187473, 0.868852,
		0.875687, 0.262803, -0.405102,
		-0.152391, 0.946461, 0.284584,
		39.080952, 53.482754, 50.635197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711346, 53.255043, 50.438667>,  <39.187626, 52.820229, 50.435986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711346, 53.255043, 50.438667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494816, 53.464828, 50.701546>,  <39.364899, 53.590698, 50.859272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494816, 53.464828, 50.701546>,  <39.711346, 53.255043, 50.438667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494816, 53.464828, 50.701546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768061, -0.009608, 0.640305,
		0.342129, 0.851380, -0.397617,
		-0.541323, 0.524461, 0.657199,
		39.332420, 53.622166, 50.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183064, 53.757786, 50.627350>,  <39.711346, 53.255043, 50.438667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183064, 53.757786, 50.627350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922382, 53.702412, 50.925644>,  <39.765972, 53.669189, 51.104618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922382, 53.702412, 50.925644>,  <40.183064, 53.757786, 50.627350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922382, 53.702412, 50.925644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754346, -0.015864, 0.656286,
		-0.079021, 0.990245, 0.114765,
		-0.651704, -0.138433, 0.745733,
		39.726871, 53.660881, 51.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542049, 53.928493, 51.221237>,  <40.183064, 53.757786, 50.627350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542049, 53.928493, 51.221237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228497, 53.746918, 51.390694>,  <40.040363, 53.637974, 51.492367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228497, 53.746918, 51.390694>,  <40.542049, 53.928493, 51.221237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228497, 53.746918, 51.390694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597280, -0.364845, 0.714244,
		-0.169658, 0.812915, 0.557123,
		-0.783883, -0.453936, 0.423639,
		39.993332, 53.610737, 51.517784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076206, 53.603230, 51.176655>,  <40.542049, 53.928493, 51.221237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076206, 53.603230, 51.176655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338943, 53.874935, 51.307594>,  <41.496586, 54.037960, 51.386158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338943, 53.874935, 51.307594>,  <41.076206, 53.603230, 51.176655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338943, 53.874935, 51.307594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273460, -0.619169, 0.736104,
		0.702694, -0.393988, -0.592448,
		0.656842, 0.679267, 0.327346,
		41.535995, 54.078716, 51.405800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607502, 53.290588, 51.266182>,  <41.076206, 53.603230, 51.176655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607502, 53.290588, 51.266182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621014, 53.599739, 51.519646>,  <41.629120, 53.785229, 51.671722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621014, 53.599739, 51.519646>,  <41.607502, 53.290588, 51.266182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621014, 53.599739, 51.519646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448784, -0.578237, 0.681348,
		0.893002, 0.261359, -0.366387,
		0.033782, 0.772873, 0.633661,
		41.631149, 53.831600, 51.709743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295547, 53.286816, 51.535526>,  <41.607502, 53.290588, 51.266182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295547, 53.286816, 51.535526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059807, 53.480156, 51.794456>,  <41.918362, 53.596161, 51.949814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059807, 53.480156, 51.794456>,  <42.295547, 53.286816, 51.535526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059807, 53.480156, 51.794456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353181, -0.566497, 0.744543,
		0.726586, 0.667423, 0.163156,
		-0.589352, 0.483351, 0.647330,
		41.882999, 53.625160, 51.988655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686649, 53.326347, 52.211540>,  <42.295547, 53.286816, 51.535526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686649, 53.326347, 52.211540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292210, 53.325264, 52.277992>,  <42.055546, 53.324615, 52.317863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292210, 53.325264, 52.277992>,  <42.686649, 53.326347, 52.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292210, 53.325264, 52.277992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123062, -0.683686, 0.719325,
		0.111636, 0.729771, 0.674516,
		-0.986100, -0.002704, 0.166131,
		41.996380, 53.324451, 52.327831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028667, 53.398457, 51.540554>,  <42.686649, 53.326347, 52.211540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028667, 53.398457, 51.540554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400677, 53.478058, 51.416969>,  <43.623882, 53.525818, 51.342819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400677, 53.478058, 51.416969>,  <43.028667, 53.398457, 51.540554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400677, 53.478058, 51.416969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068676, 0.731787, 0.678064,
		0.361030, -0.651833, 0.666911,
		0.930022, 0.199001, -0.308962,
		43.679684, 53.537758, 51.324280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603500, 53.301193, 52.066067>,  <43.028667, 53.398457, 51.540554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603500, 53.301193, 52.066067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645874, 53.596134, 51.799206>,  <43.671299, 53.773098, 51.639088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645874, 53.596134, 51.799206>,  <43.603500, 53.301193, 52.066067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645874, 53.596134, 51.799206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102110, 0.659315, 0.744901,
		0.989117, -0.147033, -0.005447,
		0.105934, 0.737350, -0.667153,
		43.677654, 53.817341, 51.599060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197334, 53.657024, 52.243790>,  <43.603500, 53.301193, 52.066067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197334, 53.657024, 52.243790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995213, 53.928761, 52.030937>,  <43.873940, 54.091801, 51.903225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995213, 53.928761, 52.030937>,  <44.197334, 53.657024, 52.243790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995213, 53.928761, 52.030937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056485, 0.589288, 0.805946,
		0.861090, 0.437306, -0.259398,
		-0.505305, 0.679340, -0.532131,
		43.843620, 54.132561, 51.871296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908619, 53.521492, 52.486591>,  <44.197334, 53.657024, 52.243790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908619, 53.521492, 52.486591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158134, 53.832611, 52.517345>,  <45.307842, 54.019283, 52.535797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158134, 53.832611, 52.517345>,  <44.908619, 53.521492, 52.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158134, 53.832611, 52.517345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413193, -0.411668, 0.812281,
		0.663444, -0.474925, -0.578176,
		0.623790, 0.777802, 0.076883,
		45.345272, 54.065952, 52.540409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187672, 53.331551, 51.778427>,  <44.908619, 53.521492, 52.486591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187672, 53.331551, 51.778427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195362, 52.988831, 51.572311>,  <45.199978, 52.783199, 51.448643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195362, 52.988831, 51.572311>,  <45.187672, 53.331551, 51.778427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195362, 52.988831, 51.572311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904883, -0.204282, 0.373438,
		-0.425226, -0.473455, 0.771378,
		0.019228, -0.856802, -0.515287,
		45.201130, 52.731789, 51.417725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602127, 52.833836, 52.111088>,  <45.187672, 53.331551, 51.778427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602127, 52.833836, 52.111088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598644, 52.669891, 51.746246>,  <45.596554, 52.571526, 51.527340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598644, 52.669891, 51.746246>,  <45.602127, 52.833836, 52.111088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598644, 52.669891, 51.746246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880734, -0.435087, 0.187101,
		-0.473531, -0.801696, 0.364763,
		-0.008706, -0.409858, -0.912108,
		45.596031, 52.546936, 51.472614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788822, 52.115292, 52.200443>,  <45.602127, 52.833836, 52.111088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788822, 52.115292, 52.200443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857162, 52.256557, 51.832512>,  <45.898167, 52.341316, 51.611752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857162, 52.256557, 51.832512>,  <45.788822, 52.115292, 52.200443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857162, 52.256557, 51.832512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854454, -0.517972, -0.040172,
		-0.490632, -0.779087, -0.390260,
		0.170846, 0.353169, -0.919828,
		45.908417, 52.362507, 51.556564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434299, 52.497227, 52.217197>,  <45.788822, 52.115292, 52.200443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434299, 52.497227, 52.217197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736771, 52.358616, 51.995163>,  <46.918251, 52.275448, 51.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736771, 52.358616, 51.995163>,  <46.434299, 52.497227, 52.217197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736771, 52.358616, 51.995163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642451, 0.231985, 0.730370,
		-0.124325, -0.908900, 0.398050,
		0.756175, -0.346531, -0.555082,
		46.963623, 52.254658, 51.828640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806568, 52.559566, 52.950718>,  <46.434299, 52.497227, 52.217197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806568, 52.559566, 52.950718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905964, 52.261196, 52.703545>,  <46.965599, 52.082172, 52.555241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905964, 52.261196, 52.703545>,  <46.806568, 52.559566, 52.950718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905964, 52.261196, 52.703545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968547, 0.199963, 0.148095,
		0.013097, -0.635300, 0.772154,
		0.248487, -0.745928, -0.617937,
		46.980511, 52.037418, 52.518162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235577, 52.098763, 53.385143>,  <46.806568, 52.559566, 52.950718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235577, 52.098763, 53.385143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298111, 52.112347, 52.990295>,  <47.335632, 52.120499, 52.753387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298111, 52.112347, 52.990295>,  <47.235577, 52.098763, 53.385143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298111, 52.112347, 52.990295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962422, 0.219435, 0.159975,
		0.222041, -0.975036, 0.001622,
		0.156337, 0.033960, -0.987120,
		47.345013, 52.122536, 52.694160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.923836, 51.704109, 53.411499>,  <47.235577, 52.098763, 53.385143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.923836, 51.704109, 53.411499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844234, 51.945694, 53.102791>,  <47.796474, 52.090645, 52.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844234, 51.945694, 53.102791>,  <47.923836, 51.704109, 53.411499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.844234, 51.945694, 53.102791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957880, 0.286248, -0.022987,
		0.207034, -0.743836, -0.635488,
		-0.199005, 0.603962, -0.771769,
		47.784534, 52.126884, 52.871262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.224918, 51.461578, 52.853382>,  <47.923836, 51.704109, 53.411499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.224918, 51.461578, 52.853382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.184357, 51.856400, 52.903099>,  <48.160019, 52.093292, 52.932930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.184357, 51.856400, 52.903099>,  <48.224918, 51.461578, 52.853382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.184357, 51.856400, 52.903099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993493, 0.093955, 0.064380,
		0.051869, 0.130007, -0.990155,
		-0.101400, 0.987051, 0.124288,
		48.153938, 52.152515, 52.940384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.422962, 51.877831, 52.288845>,  <48.224918, 51.461578, 52.853382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.422962, 51.877831, 52.288845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.495747, 51.998665, 52.663147>,  <48.539417, 52.071163, 52.887730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.495747, 51.998665, 52.663147>,  <48.422962, 51.877831, 52.288845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.495747, 51.998665, 52.663147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981922, -0.005328, -0.189213,
		-0.052172, 0.953267, -0.297590,
		0.181957, 0.302081, 0.935756,
		48.550335, 52.089291, 52.943874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.730797, 52.598988, 52.328060>,  <48.422962, 51.877831, 52.288845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.730797, 52.598988, 52.328060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.816189, 52.304409, 52.584831>,  <48.867424, 52.127663, 52.738895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.816189, 52.304409, 52.584831>,  <48.730797, 52.598988, 52.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.816189, 52.304409, 52.584831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897535, -0.111652, -0.426574,
		0.385821, 0.667219, 0.637151,
		0.213479, -0.736446, 0.641930,
		48.880234, 52.083477, 52.777409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.472778, 52.662796, 52.436802>,  <48.730797, 52.598988, 52.328060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.472778, 52.662796, 52.436802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.380665, 52.283951, 52.526192>,  <49.325397, 52.056644, 52.579826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.380665, 52.283951, 52.526192>,  <49.472778, 52.662796, 52.436802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.380665, 52.283951, 52.526192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897412, -0.295499, -0.327615,
		0.376326, 0.125107, 0.918002,
		-0.230281, -0.947116, 0.223476,
		49.311581, 51.999817, 52.593235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.111420, 52.342068, 52.537148>,  <49.472778, 52.662796, 52.436802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.111420, 52.342068, 52.537148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.857105, 52.038723, 52.479645>,  <49.704517, 51.856716, 52.445145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.857105, 52.038723, 52.479645>,  <50.111420, 52.342068, 52.537148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.857105, 52.038723, 52.479645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736505, -0.540326, -0.406950,
		0.230941, -0.364608, 0.902068,
		-0.635788, -0.758359, -0.143752,
		49.666370, 51.811214, 52.436520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.514122, 52.230476, 51.900288>,  <50.111420, 52.342068, 52.537148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.514122, 52.230476, 51.900288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.801334, 52.499641, 51.829163>,  <50.973663, 52.661140, 51.786488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.801334, 52.499641, 51.829163>,  <50.514122, 52.230476, 51.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.801334, 52.499641, 51.829163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145252, 0.104977, 0.983810,
		0.680684, -0.732236, -0.022365,
		0.718033, 0.672912, -0.177815,
		51.016743, 52.701515, 51.775818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.091736, 52.075497, 52.243359>,  <50.514122, 52.230476, 51.900288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.091736, 52.075497, 52.243359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.144684, 52.470310, 52.207043>,  <51.176453, 52.707199, 52.185253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.144684, 52.470310, 52.207043>,  <51.091736, 52.075497, 52.243359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.144684, 52.470310, 52.207043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081539, 0.080440, 0.993419,
		0.987841, -0.138905, -0.069833,
		0.132374, 0.987034, -0.090788,
		51.184395, 52.766418, 52.179806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.779175, 52.265156, 52.518021>,  <51.091736, 52.075497, 52.243359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.779175, 52.265156, 52.518021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.492188, 52.541389, 52.554520>,  <51.319996, 52.707130, 52.576420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.492188, 52.541389, 52.554520>,  <51.779175, 52.265156, 52.518021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.492188, 52.541389, 52.554520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070632, -0.058199, 0.995803,
		0.693001, 0.720903, -0.007021,
		-0.717469, 0.690588, 0.091251,
		51.276947, 52.748566, 52.581894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.678719, 52.766273, 53.065273>,  <51.779175, 52.265156, 52.518021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.678719, 52.766273, 53.065273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.900188, 52.900070, 53.370316>,  <52.033070, 52.980347, 53.553341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.900188, 52.900070, 53.370316>,  <51.678719, 52.766273, 53.065273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.900188, 52.900070, 53.370316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720583, -0.651451, -0.237429,
		0.417381, 0.680977, -0.601717,
		0.553672, 0.334489, 0.762603,
		52.066292, 53.000416, 53.599098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.378078, 52.778793, 52.772003>,  <51.678719, 52.766273, 53.065273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.378078, 52.778793, 52.772003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.484837, 52.768578, 53.157356>,  <52.548893, 52.762447, 53.388569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.484837, 52.768578, 53.157356>,  <52.378078, 52.778793, 52.772003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.484837, 52.768578, 53.157356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810782, -0.534429, -0.238785,
		0.520960, 0.844827, -0.121929,
		0.266895, -0.025539, 0.963387,
		52.564903, 52.760918, 53.446373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.117023, 53.005821, 52.841396>,  <52.378078, 52.778793, 52.772003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.117023, 53.005821, 52.841396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.993763, 52.775723, 53.144485>,  <52.919807, 52.637665, 53.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.993763, 52.775723, 53.144485>,  <53.117023, 53.005821, 52.841396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.993763, 52.775723, 53.144485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814454, -0.571128, -0.102362,
		0.491637, 0.585583, 0.644504,
		-0.308152, -0.575244, 0.757718,
		52.901318, 52.603149, 53.371799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.318703, 52.737766, 52.172737>,  <53.117023, 53.005821, 52.841396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.318703, 52.737766, 52.172737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.626030, 52.790047, 51.922104>,  <53.810425, 52.821415, 51.771725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.626030, 52.790047, 51.922104>,  <53.318703, 52.737766, 52.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.626030, 52.790047, 51.922104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635606, -0.271229, 0.722800,
		-0.075478, -0.953600, -0.291463,
		0.768315, 0.130700, -0.626586,
		53.856525, 52.829258, 51.734127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.728031, 52.068256, 52.135067>,  <53.318703, 52.737766, 52.172737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.728031, 52.068256, 52.135067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.963661, 52.386753, 52.079948>,  <54.105038, 52.577850, 52.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.963661, 52.386753, 52.079948>,  <53.728031, 52.068256, 52.135067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.963661, 52.386753, 52.079948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688975, -0.405784, 0.600543,
		0.422263, -0.448703, -0.787629,
		0.589073, 0.796244, -0.137798,
		54.140385, 52.625626, 52.038609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.373230, 51.920967, 51.709297>,  <53.728031, 52.068256, 52.135067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.373230, 51.920967, 51.709297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.375687, 52.207005, 51.988899>,  <54.377163, 52.378628, 52.156658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.375687, 52.207005, 51.988899>,  <54.373230, 51.920967, 51.709297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.375687, 52.207005, 51.988899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615789, -0.553461, 0.560789,
		0.787887, 0.426990, -0.443749,
		0.006146, 0.715094, 0.699001,
		54.377529, 52.421532, 52.198601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.008392, 52.196751, 51.754387>,  <54.373230, 51.920967, 51.709297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.008392, 52.196751, 51.754387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.841034, 52.237419, 52.115410>,  <54.740620, 52.261818, 52.332024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.841034, 52.237419, 52.115410>,  <55.008392, 52.196751, 51.754387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.841034, 52.237419, 52.115410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819624, -0.385917, 0.423420,
		0.391361, 0.916914, 0.078135,
		-0.418393, 0.101669, 0.902558,
		54.715515, 52.267921, 52.386177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.618553, 52.022121, 52.080177>,  <55.008392, 52.196751, 51.754387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.618553, 52.022121, 52.080177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.341370, 52.021629, 52.368568>,  <55.175060, 52.021336, 52.541603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.341370, 52.021629, 52.368568>,  <55.618553, 52.022121, 52.080177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.341370, 52.021629, 52.368568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578471, -0.597805, 0.554977,
		0.430321, 0.801640, 0.414966,
		-0.692961, -0.001228, 0.720974,
		55.133480, 52.021259, 52.584862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.062325, 51.825554, 52.699871>,  <55.618553, 52.022121, 52.080177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.062325, 51.825554, 52.699871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.292641, 51.839386, 53.026619>,  <56.430828, 51.847687, 53.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.292641, 51.839386, 53.026619>,  <56.062325, 51.825554, 52.699871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.292641, 51.839386, 53.026619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797997, 0.193695, -0.570686,
		-0.177958, 0.980452, 0.083933,
		0.575788, 0.034580, 0.816867,
		56.465378, 51.849758, 53.271679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.285320, 52.546509, 52.820839>,  <56.062325, 51.825554, 52.699871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.285320, 52.546509, 52.820839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.528923, 52.248878, 52.930717>,  <56.675087, 52.070301, 52.996647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.528923, 52.248878, 52.930717>,  <56.285320, 52.546509, 52.820839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.528923, 52.248878, 52.930717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584182, 0.186524, -0.789899,
		0.536505, 0.641531, 0.548270,
		0.609010, -0.744075, 0.274700,
		56.711624, 52.025658, 53.013126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.026970, 52.821770, 52.790493>,  <56.285320, 52.546509, 52.820839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.026970, 52.821770, 52.790493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.022614, 52.422310, 52.770195>,  <57.020000, 52.182632, 52.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.022614, 52.422310, 52.770195>,  <57.026970, 52.821770, 52.790493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.022614, 52.422310, 52.770195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650778, 0.031451, -0.758617,
		0.759190, -0.041291, 0.649558,
		-0.010895, -0.998652, -0.050748,
		57.019344, 52.122715, 52.754971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.750256, 52.718483, 52.679718>,  <57.026970, 52.821770, 52.790493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.750256, 52.718483, 52.679718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.532890, 52.388577, 52.617149>,  <57.402470, 52.190632, 52.579609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.532890, 52.388577, 52.617149>,  <57.750256, 52.718483, 52.679718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.532890, 52.388577, 52.617149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649993, -0.295475, -0.700145,
		0.531236, -0.482141, 0.696655,
		-0.543413, -0.824764, -0.156421,
		57.369865, 52.141148, 52.570225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.097027, 53.089279, 53.177914>,  <57.750256, 52.718483, 52.679718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.097027, 53.089279, 53.177914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.191208, 52.897438, 52.839790>,  <58.247715, 52.782333, 52.636917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.191208, 52.897438, 52.839790>,  <58.097027, 53.089279, 53.177914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.191208, 52.897438, 52.839790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773595, -0.434013, 0.461718,
		-0.588314, -0.762639, 0.268827,
		0.235450, -0.479599, -0.845310,
		58.261845, 52.753559, 52.586197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.339981, 52.496792, 53.461998>,  <58.097027, 53.089279, 53.177914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.339981, 52.496792, 53.461998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.482323, 52.459312, 53.090065>,  <58.567726, 52.436825, 52.866905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.482323, 52.459312, 53.090065>,  <58.339981, 52.496792, 53.461998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.482323, 52.459312, 53.090065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804720, -0.475181, 0.355850,
		-0.475181, -0.874885, -0.093695,
		-0.355850, 0.093695, 0.929834,
		58.589077, 52.431206, 52.811115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.472477, 51.791721, 53.325806>,  <58.339981, 52.496792, 53.461998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.472477, 51.791721, 53.325806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.715599, 52.052734, 53.144794>,  <58.861473, 52.209343, 53.036186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.715599, 52.052734, 53.144794>,  <58.472477, 51.791721, 53.325806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.715599, 52.052734, 53.144794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793977, -0.489806, 0.360125,
		0.013340, -0.578183, -0.815798,
		0.607801, 0.652529, -0.452530,
		58.897938, 52.248493, 53.009037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.675388, 51.479416, 52.719448>,  <58.472477, 51.791721, 53.325806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.675388, 51.479416, 52.719448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.930992, 51.727272, 52.901749>,  <59.084354, 51.875988, 53.011127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.930992, 51.727272, 52.901749>,  <58.675388, 51.479416, 52.719448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.930992, 51.727272, 52.901749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586100, -0.775949, 0.233216,
		0.498149, 0.118087, -0.859013,
		0.639010, 0.619644, 0.455749,
		59.122696, 51.913166, 53.038475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.163078, 51.074829, 52.772846>,  <58.675388, 51.479416, 52.719448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.163078, 51.074829, 52.772846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.282120, 51.355957, 53.031296>,  <59.353546, 51.524635, 53.186363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.282120, 51.355957, 53.031296>,  <59.163078, 51.074829, 52.772846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.282120, 51.355957, 53.031296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520691, -0.686756, 0.507196,
		0.800196, 0.185485, -0.570335,
		0.297604, 0.702824, 0.646120,
		59.371403, 51.566803, 53.225132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.854065, 50.950577, 52.768940>,  <59.163078, 51.074829, 52.772846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.854065, 50.950577, 52.768940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.760391, 51.123169, 53.117420>,  <59.704185, 51.226723, 53.326508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.760391, 51.123169, 53.117420>,  <59.854065, 50.950577, 52.768940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.760391, 51.123169, 53.117420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613351, -0.629697, 0.476742,
		0.754294, 0.645994, -0.117183,
		-0.234183, 0.431478, 0.871198,
		59.690136, 51.252613, 53.378780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.447750, 51.194832, 53.083851>,  <59.854065, 50.950577, 52.768940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.447750, 51.194832, 53.083851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.179306, 51.081657, 53.357948>,  <60.018242, 51.013752, 53.522408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.179306, 51.081657, 53.357948>,  <60.447750, 51.194832, 53.083851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.179306, 51.081657, 53.357948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617926, -0.724174, 0.306169,
		0.409612, 0.628905, 0.660830,
		-0.671108, -0.282934, 0.685247,
		59.977974, 50.996777, 53.563522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.772480, 51.213310, 53.695145>,  <60.447750, 51.194832, 53.083851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.772480, 51.213310, 53.695145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.478622, 50.943363, 53.667267>,  <60.302307, 50.781395, 53.650539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.478622, 50.943363, 53.667267>,  <60.772480, 51.213310, 53.695145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.478622, 50.943363, 53.667267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652139, -0.730744, 0.201810,
		-0.187120, 0.102811, 0.976942,
		-0.734643, -0.674865, -0.069690,
		60.258228, 50.740902, 53.646358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.242146, 51.658039, 53.648952>,  <60.772480, 51.213310, 53.695145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.242146, 51.658039, 53.648952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.876038, 51.575241, 53.787186>,  <59.656372, 51.525562, 53.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.876038, 51.575241, 53.787186>,  <60.242146, 51.658039, 53.648952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.876038, 51.575241, 53.787186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371108, 0.766974, -0.523479,
		-0.156698, -0.607376, -0.778807,
		-0.915273, -0.206993, 0.345585,
		59.601456, 51.513142, 53.890862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.909431, 51.668209, 54.359657>,  <60.242146, 51.658039, 53.648952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.909431, 51.668209, 54.359657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.711678, 51.323975, 54.408607>,  <59.593025, 51.117435, 54.437977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.711678, 51.323975, 54.408607>,  <59.909431, 51.668209, 54.359657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.711678, 51.323975, 54.408607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713119, -0.482046, -0.509012,
		0.497039, -0.164379, 0.852016,
		-0.494382, -0.860587, 0.122374,
		59.563362, 51.065800, 54.445320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.418221, 51.955395, 54.881500>,  <59.909431, 51.668209, 54.359657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.418221, 51.955395, 54.881500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.308235, 51.917229, 55.264183>,  <59.242245, 51.894329, 55.493793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.308235, 51.917229, 55.264183>,  <59.418221, 51.955395, 54.881500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.308235, 51.917229, 55.264183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935523, 0.202993, 0.289119,
		-0.221790, 0.974521, 0.033444,
		-0.274964, -0.095411, 0.956709,
		59.225746, 51.888607, 55.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.692242, 52.466240, 55.244709>,  <59.418221, 51.955395, 54.881500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.692242, 52.466240, 55.244709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.675232, 52.175896, 55.519318>,  <59.665024, 52.001690, 55.684082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.675232, 52.175896, 55.519318>,  <59.692242, 52.466240, 55.244709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.675232, 52.175896, 55.519318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957238, 0.167209, 0.236086,
		-0.286159, 0.667209, 0.687710,
		-0.042528, -0.725860, 0.686526,
		59.662472, 51.958138, 55.725277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.880219, 52.801041, 55.959171>,  <59.692242, 52.466240, 55.244709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.880219, 52.801041, 55.959171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.946976, 52.407120, 55.939949>,  <59.987030, 52.170769, 55.928413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.946976, 52.407120, 55.939949>,  <59.880219, 52.801041, 55.959171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.946976, 52.407120, 55.939949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956113, 0.149738, 0.251845,
		-0.240822, -0.087979, 0.966574,
		0.166890, -0.984804, -0.048057,
		59.997044, 52.111679, 55.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.252377, 52.460449, 56.604630>,  <59.880219, 52.801041, 55.959171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.252377, 52.460449, 56.604630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.333641, 52.286922, 56.253510>,  <60.382401, 52.182808, 56.042839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.333641, 52.286922, 56.253510>,  <60.252377, 52.460449, 56.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.333641, 52.286922, 56.253510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979063, 0.101671, 0.176347,
		0.012745, -0.895247, 0.445387,
		0.203158, -0.433814, -0.877800,
		60.394588, 52.156776, 55.990170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.827526, 52.666344, 57.048916>,  <60.252377, 52.460449, 56.604630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.827526, 52.666344, 57.048916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.796364, 52.267567, 57.051529>,  <60.777668, 52.028301, 57.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.796364, 52.267567, 57.051529>,  <60.827526, 52.666344, 57.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.796364, 52.267567, 57.051529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797171, -0.066224, -0.600111,
		0.598707, -0.041543, 0.799890,
		-0.077903, -0.996940, 0.006532,
		60.772991, 51.968483, 57.053490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.474613, 52.400681, 57.146774>,  <60.827526, 52.666344, 57.048916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.474613, 52.400681, 57.146774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.283279, 52.103855, 56.958931>,  <61.168480, 51.925758, 56.846226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.283279, 52.103855, 56.958931>,  <61.474613, 52.400681, 57.146774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.283279, 52.103855, 56.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607023, 0.107041, -0.787442,
		0.634601, -0.661726, 0.399250,
		-0.478334, -0.742066, -0.469611,
		61.139778, 51.881237, 56.818047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.999256, 52.214893, 56.682953>,  <61.474613, 52.400681, 57.146774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.999256, 52.214893, 56.682953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.632256, 52.088219, 56.586708>,  <61.412056, 52.012215, 56.528961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.632256, 52.088219, 56.586708>,  <61.999256, 52.214893, 56.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.632256, 52.088219, 56.586708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276983, -0.074616, -0.957973,
		0.285428, -0.945589, 0.156178,
		-0.917503, -0.316691, -0.240614,
		61.357006, 51.993210, 56.514523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.014500, 51.488869, 56.337330>,  <61.999256, 52.214893, 56.682953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.014500, 51.488869, 56.337330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.731285, 51.745182, 56.218613>,  <61.561356, 51.898968, 56.147385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.731285, 51.745182, 56.218613>,  <62.014500, 51.488869, 56.337330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.731285, 51.745182, 56.218613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328098, -0.073660, -0.941767,
		-0.625327, -0.764183, -0.158084,
		-0.708038, 0.640780, -0.296789,
		61.518875, 51.937416, 56.129578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.936993, 51.163910, 56.969845>,  <62.014500, 51.488869, 56.337330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.936993, 51.163910, 56.969845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.726318, 50.862831, 57.127853>,  <61.599915, 50.682182, 57.222660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.726318, 50.862831, 57.127853>,  <61.936993, 51.163910, 56.969845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.726318, 50.862831, 57.127853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679779, -0.093929, 0.727377,
		-0.510389, 0.651633, 0.561139,
		-0.526690, -0.752696, 0.395026,
		61.568310, 50.637024, 57.246361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.750381, 50.967728, 57.037041>,  <61.936993, 51.163910, 56.969845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.750381, 50.967728, 57.037041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.064613, 50.963058, 57.284500>,  <63.253151, 50.960255, 57.432976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.064613, 50.963058, 57.284500>,  <62.750381, 50.967728, 57.037041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.064613, 50.963058, 57.284500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365931, 0.815006, -0.449287,
		-0.498958, 0.579334, 0.644525,
		0.785579, -0.011676, 0.618650,
		63.300285, 50.959557, 57.470097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.778599, 51.627602, 57.360874>,  <62.750381, 50.967728, 57.037041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.778599, 51.627602, 57.360874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.128532, 51.440586, 57.310165>,  <63.338493, 51.328377, 57.279739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.128532, 51.440586, 57.310165>,  <62.778599, 51.627602, 57.360874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.128532, 51.440586, 57.310165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390373, 0.835380, -0.386975,
		0.286831, 0.289050, 0.913334,
		0.874835, -0.467538, -0.126776,
		63.390984, 51.300323, 57.272133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.250256, 52.141747, 57.297901>,  <62.778599, 51.627602, 57.360874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.250256, 52.141747, 57.297901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.459274, 51.831211, 57.156906>,  <63.584686, 51.644890, 57.072308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.459274, 51.831211, 57.156906>,  <63.250256, 52.141747, 57.297901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.459274, 51.831211, 57.156906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518641, 0.617562, -0.591294,
		0.676726, 0.126164, 0.725344,
		0.522545, -0.776337, -0.352487,
		63.616039, 51.598309, 57.051159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.941547, 52.295898, 57.389862>,  <63.250256, 52.141747, 57.297901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.941547, 52.295898, 57.389862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.912224, 52.032288, 57.090446>,  <63.894630, 51.874123, 56.910797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.912224, 52.032288, 57.090446>,  <63.941547, 52.295898, 57.389862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.912224, 52.032288, 57.090446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832202, 0.373199, -0.410077,
		0.549605, -0.652997, 0.521085,
		-0.073311, -0.659028, -0.748537,
		63.890232, 51.834579, 56.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.522301, 51.745876, 57.415310>,  <63.941547, 52.295898, 57.389862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.522301, 51.745876, 57.415310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.388885, 51.821312, 57.045837>,  <64.308838, 51.866573, 56.824154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.388885, 51.821312, 57.045837>,  <64.522301, 51.745876, 57.415310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.388885, 51.821312, 57.045837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830167, 0.523052, -0.192975,
		0.446743, -0.831175, -0.331012,
		-0.333532, 0.188585, -0.923684,
		64.288826, 51.877888, 56.768734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.833183, 51.414917, 56.711147>,  <64.522301, 51.745876, 57.415310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.833183, 51.414917, 56.711147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.720924, 51.798256, 56.732361>,  <64.653572, 52.028259, 56.745090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.720924, 51.798256, 56.732361>,  <64.833183, 51.414917, 56.711147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.720924, 51.798256, 56.732361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939113, 0.285591, -0.191060,
		-0.198247, -0.003815, -0.980145,
		-0.280649, 0.958344, 0.053035,
		64.636726, 52.085758, 56.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.107368, 51.777866, 56.173893>,  <64.833183, 51.414917, 56.711147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.107368, 51.777866, 56.173893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.051308, 52.006351, 56.497391>,  <65.017670, 52.143444, 56.691490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.051308, 52.006351, 56.497391>,  <65.107368, 51.777866, 56.173893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.051308, 52.006351, 56.497391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973734, 0.227547, 0.008036,
		-0.179438, 0.788630, -0.588102,
		-0.140158, 0.571213, 0.808747,
		65.009262, 52.177715, 56.740013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.306015, 52.466774, 55.937149>,  <65.107368, 51.777866, 56.173893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.306015, 52.466774, 55.937149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.373047, 52.392014, 56.324341>,  <65.413261, 52.347157, 56.556656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.373047, 52.392014, 56.324341>,  <65.306015, 52.466774, 55.937149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.373047, 52.392014, 56.324341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930544, 0.354255, -0.092690,
		-0.325589, 0.916282, 0.233280,
		0.167571, -0.186898, 0.967982,
		65.423317, 52.335945, 56.614735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.629906, 53.022442, 56.299805>,  <65.306015, 52.466774, 55.937149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.629906, 53.022442, 56.299805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.724319, 52.677341, 56.478668>,  <65.780968, 52.470280, 56.585987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.724319, 52.677341, 56.478668>,  <65.629906, 53.022442, 56.299805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.724319, 52.677341, 56.478668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958166, 0.129968, -0.255004,
		0.161889, 0.488641, 0.857334,
		0.236031, -0.862750, 0.447159,
		65.795128, 52.418518, 56.612816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.240746, 53.061478, 56.841557>,  <65.629906, 53.022442, 56.299805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.240746, 53.061478, 56.841557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.195312, 52.727242, 56.626564>,  <66.168053, 52.526699, 56.497570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.195312, 52.727242, 56.626564>,  <66.240746, 53.061478, 56.841557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.195312, 52.727242, 56.626564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834109, 0.213715, -0.508515,
		0.539779, -0.506076, 0.672700,
		-0.113581, -0.835591, -0.537482,
		66.161240, 52.476562, 56.465321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.843460, 52.793793, 56.942795>,  <66.240746, 53.061478, 56.841557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.843460, 52.793793, 56.942795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.651672, 52.732853, 56.597099>,  <66.536598, 52.696289, 56.389683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.651672, 52.732853, 56.597099>,  <66.843460, 52.793793, 56.942795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.651672, 52.732853, 56.597099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715177, 0.502881, -0.485420,
		0.508567, -0.850822, -0.132146,
		-0.479459, -0.152361, -0.864237,
		66.507835, 52.687149, 56.337830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.413483, 53.087402, 57.228519>,  <66.843460, 52.793793, 56.942795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.413483, 53.087402, 57.228519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.703163, 53.346664, 57.134354>,  <67.876976, 53.502220, 57.077854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.703163, 53.346664, 57.134354>,  <67.413483, 53.087402, 57.228519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.703163, 53.346664, 57.134354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647621, 0.756547, 0.090683,
		0.236881, 0.086788, 0.967655,
		0.724206, 0.648155, -0.235417,
		67.920425, 53.541111, 57.063728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.317245, 53.707760, 57.550728>,  <67.413483, 53.087402, 57.228519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.317245, 53.707760, 57.550728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.517593, 53.790672, 57.214592>,  <67.637802, 53.840420, 57.012913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.517593, 53.790672, 57.214592>,  <67.317245, 53.707760, 57.550728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.517593, 53.790672, 57.214592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695922, 0.673712, -0.248605,
		0.514613, 0.709327, 0.481693,
		0.500865, 0.207285, -0.840337,
		67.667854, 53.852859, 56.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.352722, 54.429222, 57.531063>,  <67.317245, 53.707760, 57.550728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.352722, 54.429222, 57.531063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.382896, 54.297508, 57.154579>,  <67.401001, 54.218479, 56.928688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.382896, 54.297508, 57.154579>,  <67.352722, 54.429222, 57.531063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.382896, 54.297508, 57.154579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527963, 0.787549, -0.317841,
		0.845911, 0.520901, -0.114441,
		0.075436, -0.329286, -0.941212,
		67.405525, 54.198723, 56.872215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.583725, 54.977135, 57.113102>,  <67.352722, 54.429222, 57.531063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.583725, 54.977135, 57.113102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.429398, 54.730606, 56.838501>,  <67.336800, 54.582687, 56.673740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.429398, 54.730606, 56.838501>,  <67.583725, 54.977135, 57.113102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.429398, 54.730606, 56.838501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394401, 0.782880, -0.481194,
		0.834022, 0.085105, -0.545128,
		-0.385817, -0.616325, -0.686504,
		67.313652, 54.545708, 56.632549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.390999, 55.394871, 56.629726>,  <67.583725, 54.977135, 57.113102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.390999, 55.394871, 56.629726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.296669, 55.081146, 56.400208>,  <67.240074, 54.892914, 56.262497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.296669, 55.081146, 56.400208>,  <67.390999, 55.394871, 56.629726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.296669, 55.081146, 56.400208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430732, 0.613645, -0.661748,
		0.871124, 0.091097, -0.482540,
		-0.235825, -0.784309, -0.573799,
		67.225922, 54.845852, 56.228069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.846588, 56.040512, 56.668102>,  <67.390999, 55.394871, 56.629726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.846588, 56.040512, 56.668102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.821281, 56.399704, 56.842285>,  <67.806099, 56.615219, 56.946796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.821281, 56.399704, 56.842285>,  <67.846588, 56.040512, 56.668102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.821281, 56.399704, 56.842285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624622, 0.375941, -0.684482,
		-0.778360, 0.228687, -0.584687,
		-0.063275, 0.897982, 0.435460,
		67.802299, 56.669098, 56.972923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.842285, 56.468109, 56.019306>,  <67.846588, 56.040512, 56.668102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.842285, 56.468109, 56.019306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.924797, 56.688084, 56.343040>,  <67.974304, 56.820068, 56.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.924797, 56.688084, 56.343040>,  <67.842285, 56.468109, 56.019306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.924797, 56.688084, 56.343040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562978, 0.609805, -0.557848,
		-0.800316, 0.570706, -0.183816,
		0.206275, 0.549939, 0.809332,
		67.986679, 56.853065, 56.585838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.140831, 56.911308, 55.997707>,  <67.842285, 56.468109, 56.019306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.140831, 56.911308, 55.997707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883476, 57.217167, 56.012474>,  <66.729065, 57.400681, 56.021332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883476, 57.217167, 56.012474>,  <67.140831, 56.911308, 55.997707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.883476, 57.217167, 56.012474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345397, 0.246920, 0.905390,
		0.683185, 0.595275, -0.422973,
		-0.643396, 0.764643, 0.036914,
		66.690460, 57.446560, 56.023548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.367958, 57.455593, 56.308300>,  <67.140831, 56.911308, 55.997707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.367958, 57.455593, 56.308300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.001091, 57.588852, 56.395767>,  <66.780968, 57.668808, 56.448246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.001091, 57.588852, 56.395767>,  <67.367958, 57.455593, 56.308300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.001091, 57.588852, 56.395767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316577, 0.275846, 0.907573,
		0.242041, 0.901620, -0.358465,
		-0.917167, 0.333151, 0.218667,
		66.725945, 57.688797, 56.461369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.939865, 57.778740, 56.324001>,  <67.367958, 57.455593, 56.308300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.939865, 57.778740, 56.324001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.271729, 57.939362, 56.168869>,  <68.470848, 58.035736, 56.075790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.271729, 57.939362, 56.168869>,  <67.939865, 57.778740, 56.324001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.271729, 57.939362, 56.168869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419397, 0.010187, 0.907746,
		0.368461, -0.915778, -0.159960,
		0.829664, 0.401555, -0.387828,
		68.520630, 58.059830, 56.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.460754, 57.532928, 56.772083>,  <67.939865, 57.778740, 56.324001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.460754, 57.532928, 56.772083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.633369, 57.830456, 56.567924>,  <68.736938, 58.008972, 56.445427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.633369, 57.830456, 56.567924>,  <68.460754, 57.532928, 56.772083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.633369, 57.830456, 56.567924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581015, 0.203635, 0.788007,
		0.690069, -0.636606, -0.344293,
		0.431540, 0.743818, -0.510400,
		68.762833, 58.053600, 56.414803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.126900, 57.536327, 57.067219>,  <68.460754, 57.532928, 56.772083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.126900, 57.536327, 57.067219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.077888, 57.904045, 56.917610>,  <69.048485, 58.124676, 56.827847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.077888, 57.904045, 56.917610>,  <69.126900, 57.536327, 57.067219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.077888, 57.904045, 56.917610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317031, 0.393368, 0.862991,
		0.940467, -0.012834, -0.339642,
		-0.122529, 0.919291, -0.374018,
		69.041130, 58.179832, 56.805405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.257484, 57.758686, 57.798035>,  <69.126900, 57.536327, 57.067219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.257484, 57.758686, 57.798035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.306000, 57.633606, 58.174866>,  <69.335106, 57.558559, 58.400963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.306000, 57.633606, 58.174866>,  <69.257484, 57.758686, 57.798035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.306000, 57.633606, 58.174866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962786, -0.193873, -0.188296,
		0.241524, 0.929856, 0.277549,
		0.121279, -0.312698, 0.942078,
		69.342384, 57.539795, 58.457489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.736038, 58.119793, 58.335873>,  <69.257484, 57.758686, 57.798035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.736038, 58.119793, 58.335873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.697624, 57.721825, 58.323822>,  <69.674576, 57.483044, 58.316593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.697624, 57.721825, 58.323822>,  <69.736038, 58.119793, 58.335873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.697624, 57.721825, 58.323822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968038, -0.086316, -0.235481,
		0.231685, -0.051781, 0.971412,
		-0.096042, -0.994921, -0.030127,
		69.668808, 57.423347, 58.314785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.229836, 58.420879, 58.748558>,  <69.736038, 58.119793, 58.335873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.229836, 58.420879, 58.748558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.102783, 58.423096, 59.127838>,  <70.026550, 58.424427, 59.355408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.102783, 58.423096, 59.127838>,  <70.229836, 58.420879, 58.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.102783, 58.423096, 59.127838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532629, -0.826273, 0.183247,
		0.784489, 0.563242, 0.259490,
		-0.317622, 0.005544, 0.948201,
		70.007500, 58.424759, 59.412300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.748169, 58.339321, 59.224171>,  <70.229836, 58.420879, 58.748558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.748169, 58.339321, 59.224171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.434677, 58.223503, 59.443962>,  <70.246582, 58.154011, 59.575836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.434677, 58.223503, 59.443962>,  <70.748169, 58.339321, 59.224171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.434677, 58.223503, 59.443962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519867, -0.789900, 0.325263,
		0.339853, 0.540574, 0.769597,
		-0.783733, -0.289546, 0.549477,
		70.199554, 58.136639, 59.608807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.988121, 58.375298, 59.904385>,  <70.748169, 58.339321, 59.224171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.988121, 58.375298, 59.904385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.689743, 58.109940, 59.880791>,  <70.510719, 57.950726, 59.866634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.689743, 58.109940, 59.880791>,  <70.988121, 58.375298, 59.904385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.689743, 58.109940, 59.880791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618523, -0.722878, 0.308020,
		-0.246979, 0.193281, 0.949549,
		-0.745943, -0.663393, -0.058987,
		70.465958, 57.910923, 59.863094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.926468, 58.074501, 60.636024>,  <70.988121, 58.375298, 59.904385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.926468, 58.074501, 60.636024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.805061, 57.862602, 60.319229>,  <70.732216, 57.735462, 60.129154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.805061, 57.862602, 60.319229>,  <70.926468, 58.074501, 60.636024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.805061, 57.862602, 60.319229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820117, -0.568389, 0.065888,
		-0.485060, -0.629523, 0.606974,
		-0.303520, -0.529750, -0.791986,
		70.714005, 57.703678, 60.081635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.002068, 57.254887, 60.649021>,  <70.926468, 58.074501, 60.636024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.002068, 57.254887, 60.649021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.040451, 57.380341, 60.271149>,  <71.063484, 57.455612, 60.044426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.040451, 57.380341, 60.271149>,  <71.002068, 57.254887, 60.649021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.040451, 57.380341, 60.271149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839646, -0.535216, -0.092404,
		-0.534590, -0.784332, -0.314700,
		0.095957, 0.313635, -0.944683,
		71.069237, 57.474430, 59.987743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.215500, 56.692108, 60.257362>,  <71.002068, 57.254887, 60.649021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.215500, 56.692108, 60.257362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.322479, 57.031593, 60.074867>,  <71.386665, 57.235283, 59.965370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.322479, 57.031593, 60.074867>,  <71.215500, 56.692108, 60.257362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.322479, 57.031593, 60.074867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945518, -0.322384, -0.045435,
		-0.185646, -0.419232, -0.888696,
		0.267454, 0.848713, -0.456241,
		71.402718, 57.286205, 59.937996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.618744, 56.566570, 59.569939>,  <71.215500, 56.692108, 60.257362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.618744, 56.566570, 59.569939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.707153, 56.896286, 59.778435>,  <71.760201, 57.094116, 59.903534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.707153, 56.896286, 59.778435>,  <71.618744, 56.566570, 59.569939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.707153, 56.896286, 59.778435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972106, -0.229205, -0.049747,
		0.078465, 0.517697, -0.851958,
		0.221027, 0.824290, 0.521241,
		71.773460, 57.143574, 59.934807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.182541, 56.889771, 59.305790>,  <71.618744, 56.566570, 59.569939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.182541, 56.889771, 59.305790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192856, 57.033897, 59.678780>,  <72.199043, 57.120373, 59.902573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192856, 57.033897, 59.678780>,  <72.182541, 56.889771, 59.305790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.192856, 57.033897, 59.678780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999645, -0.015513, -0.021646,
		0.006666, 0.932699, -0.360594,
		0.025783, 0.360322, 0.932472,
		72.200592, 57.141994, 59.958523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.615616, 57.300716, 59.325199>,  <72.182541, 56.889771, 59.305790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.615616, 57.300716, 59.325199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.607735, 57.158081, 59.698822>,  <72.603004, 57.072498, 59.922997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.607735, 57.158081, 59.698822>,  <72.615616, 57.300716, 59.325199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.607735, 57.158081, 59.698822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999664, -0.022768, 0.012404,
		0.016843, 0.933983, 0.356919,
		-0.019712, -0.356591, 0.934053,
		72.601822, 57.051105, 59.979038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.100189, 57.623310, 59.646202>,  <72.615616, 57.300716, 59.325199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.100189, 57.623310, 59.646202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.035545, 57.349705, 59.930740>,  <72.996758, 57.185539, 60.101463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.035545, 57.349705, 59.930740>,  <73.100189, 57.623310, 59.646202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.035545, 57.349705, 59.930740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984187, -0.164683, 0.065233,
		0.072526, 0.710635, 0.699812,
		-0.161604, -0.684015, 0.711342,
		72.987061, 57.144501, 60.144142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.447922, 57.831863, 60.227146>,  <73.100189, 57.623310, 59.646202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.447922, 57.831863, 60.227146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.392525, 57.436504, 60.202217>,  <73.359283, 57.199287, 60.187260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.392525, 57.436504, 60.202217>,  <73.447922, 57.831863, 60.227146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.392525, 57.436504, 60.202217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989036, -0.141293, 0.042951,
		-0.051258, -0.055689, 0.997132,
		-0.138496, -0.988400, -0.062321,
		73.350975, 57.139984, 60.183521>
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
