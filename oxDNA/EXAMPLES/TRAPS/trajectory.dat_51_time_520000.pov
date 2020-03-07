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
	<36.493767, 53.334202, 50.274078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848255, 53.327423, 50.088898>,  <37.060947, 53.323357, 49.977791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848255, 53.327423, 50.088898>,  <36.493767, 53.334202, 50.274078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848255, 53.327423, 50.088898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385343, 0.581648, 0.716378,
		0.257135, -0.813265, 0.521999,
		0.886223, -0.016943, -0.462948,
		37.114120, 53.322342, 49.950012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903591, 53.175171, 50.797455>,  <36.493767, 53.334202, 50.274078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903591, 53.175171, 50.797455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102219, 53.358421, 50.502552>,  <37.221394, 53.468372, 50.325611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102219, 53.358421, 50.502552>,  <36.903591, 53.175171, 50.797455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102219, 53.358421, 50.502552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460745, 0.580715, 0.671181,
		0.735618, -0.672973, 0.077287,
		0.496568, 0.458124, -0.737253,
		37.251190, 53.495857, 50.281376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588268, 53.377850, 50.955204>,  <36.903591, 53.175171, 50.797455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588268, 53.377850, 50.955204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508068, 53.608627, 50.638489>,  <37.459949, 53.747093, 50.448460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508068, 53.608627, 50.638489>,  <37.588268, 53.377850, 50.955204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508068, 53.608627, 50.638489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467060, 0.766735, 0.440422,
		0.861193, -0.281508, -0.423201,
		-0.200501, 0.576949, -0.791789,
		37.447918, 53.781712, 50.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332283, 53.512310, 50.649925>,  <37.588268, 53.377850, 50.955204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332283, 53.512310, 50.649925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029667, 53.773781, 50.657516>,  <37.848099, 53.930664, 50.662071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029667, 53.773781, 50.657516>,  <38.332283, 53.512310, 50.649925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029667, 53.773781, 50.657516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512802, 0.574989, 0.637512,
		0.405813, 0.492033, -0.770207,
		-0.756538, 0.653675, 0.018977,
		37.802704, 53.969883, 50.663208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774113, 54.063488, 50.780994>,  <38.332283, 53.512310, 50.649925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774113, 54.063488, 50.780994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403706, 54.085739, 50.930336>,  <38.181461, 54.099091, 51.019939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403706, 54.085739, 50.930336>,  <38.774113, 54.063488, 50.780994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403706, 54.085739, 50.930336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337355, 0.565704, 0.752444,
		-0.169349, 0.822730, -0.542619,
		-0.926020, 0.055629, 0.373353,
		38.125900, 54.102428, 51.042343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750896, 54.525932, 51.301483>,  <38.774113, 54.063488, 50.780994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750896, 54.525932, 51.301483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966125, 54.774555, 51.529221>,  <39.095264, 54.923729, 51.665863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966125, 54.774555, 51.529221>,  <38.750896, 54.525932, 51.301483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966125, 54.774555, 51.529221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832150, -0.499239, -0.241427,
		0.134177, 0.603682, -0.785853,
		0.538073, 0.621553, 0.569341,
		39.127548, 54.961021, 51.700024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295120, 54.838028, 50.869530>,  <38.750896, 54.525932, 51.301483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295120, 54.838028, 50.869530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402771, 54.777782, 51.250031>,  <39.467361, 54.741634, 51.478333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402771, 54.777782, 51.250031>,  <39.295120, 54.838028, 50.869530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402771, 54.777782, 51.250031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818408, -0.484919, -0.308320,
		0.507718, 0.861493, -0.007242,
		0.269127, -0.150613, 0.951255,
		39.483509, 54.732597, 51.535408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992229, 55.031727, 51.026138>,  <39.295120, 54.838028, 50.869530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992229, 55.031727, 51.026138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922119, 54.753738, 51.305080>,  <39.880054, 54.586945, 51.472446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922119, 54.753738, 51.305080>,  <39.992229, 55.031727, 51.026138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922119, 54.753738, 51.305080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687628, -0.593336, -0.418474,
		0.704590, 0.406170, 0.581876,
		-0.175276, -0.694967, 0.697352,
		39.869537, 54.545250, 51.514286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668915, 54.767696, 51.297272>,  <39.992229, 55.031727, 51.026138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668915, 54.767696, 51.297272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369556, 54.502705, 51.284412>,  <40.189941, 54.343712, 51.276695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369556, 54.502705, 51.284412>,  <40.668915, 54.767696, 51.297272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369556, 54.502705, 51.284412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525026, -0.562104, -0.639052,
		0.405284, -0.495143, 0.768491,
		-0.748394, -0.662475, -0.032151,
		40.145039, 54.303963, 51.274769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924957, 54.204437, 51.513832>,  <40.668915, 54.767696, 51.297272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924957, 54.204437, 51.513832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622711, 54.129398, 51.262798>,  <40.441364, 54.084373, 51.112179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622711, 54.129398, 51.262798>,  <40.924957, 54.204437, 51.513832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622711, 54.129398, 51.262798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621655, -0.507275, -0.596840,
		-0.206390, -0.841118, 0.499924,
		-0.755611, -0.187599, -0.627581,
		40.396027, 54.073120, 51.074524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104366, 53.678814, 52.006660>,  <40.924957, 54.204437, 51.513832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104366, 53.678814, 52.006660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295639, 53.384827, 52.198982>,  <41.410400, 53.208435, 52.314373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295639, 53.384827, 52.198982>,  <41.104366, 53.678814, 52.006660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295639, 53.384827, 52.198982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745148, 0.629273, 0.220839,
		-0.464865, 0.252669, 0.848563,
		0.478178, -0.734965, 0.480803,
		41.439091, 53.164337, 52.343224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475910, 54.033562, 52.466385>,  <41.104366, 53.678814, 52.006660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475910, 54.033562, 52.466385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640594, 53.669044, 52.463566>,  <41.739403, 53.450336, 52.461872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640594, 53.669044, 52.463566>,  <41.475910, 54.033562, 52.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640594, 53.669044, 52.463566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907489, 0.409259, 0.094720,
		-0.083433, -0.045394, 0.995479,
		0.411708, -0.911288, -0.007049,
		41.764107, 53.395657, 52.461452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129704, 54.156338, 52.164768>,  <41.475910, 54.033562, 52.466385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129704, 54.156338, 52.164768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486607, 54.303890, 52.268929>,  <42.700748, 54.392422, 52.331425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486607, 54.303890, 52.268929>,  <42.129704, 54.156338, 52.164768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486607, 54.303890, 52.268929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242196, -0.877711, 0.413480,
		0.381081, -0.305861, -0.872483,
		0.892255, 0.368881, 0.260401,
		42.754284, 54.414555, 52.347050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670631, 53.995338, 51.616055>,  <42.129704, 54.156338, 52.164768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670631, 53.995338, 51.616055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783039, 53.982838, 51.999733>,  <42.850483, 53.975338, 52.229939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783039, 53.982838, 51.999733>,  <42.670631, 53.995338, 51.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783039, 53.982838, 51.999733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135620, -0.988146, -0.071932,
		0.950071, 0.150300, -0.273448,
		0.281018, -0.031255, 0.959193,
		42.867344, 53.973461, 52.287491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419273, 54.321884, 51.510616>,  <42.670631, 53.995338, 51.616055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419273, 54.321884, 51.510616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721760, 54.562740, 51.613037>,  <43.903252, 54.707256, 51.674488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721760, 54.562740, 51.613037>,  <43.419273, 54.321884, 51.510616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721760, 54.562740, 51.613037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354241, -0.705766, 0.613521,
		0.550138, -0.373251, -0.747016,
		0.756215, 0.602144, 0.256048,
		43.948624, 54.743385, 51.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133625, 53.978062, 51.516735>,  <43.419273, 54.321884, 51.510616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133625, 53.978062, 51.516735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114719, 54.266350, 51.793381>,  <44.103378, 54.439323, 51.959370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114719, 54.266350, 51.793381>,  <44.133625, 53.978062, 51.516735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114719, 54.266350, 51.793381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387539, -0.624924, 0.677705,
		0.920641, 0.300056, -0.249773,
		-0.047260, 0.720720, 0.691614,
		44.100540, 54.482567, 52.000866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489937, 53.588600, 51.917263>,  <44.133625, 53.978062, 51.516735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489937, 53.588600, 51.917263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380714, 53.896412, 52.148182>,  <44.315182, 54.081097, 52.286732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380714, 53.896412, 52.148182>,  <44.489937, 53.588600, 51.917263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380714, 53.896412, 52.148182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582305, -0.345462, 0.735920,
		0.765743, 0.537108, -0.353769,
		-0.273054, 0.769527, 0.577295,
		44.298798, 54.127270, 52.321369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086437, 53.948418, 52.219936>,  <44.489937, 53.588600, 51.917263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086437, 53.948418, 52.219936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775970, 53.999699, 52.466877>,  <44.589691, 54.030468, 52.615044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775970, 53.999699, 52.466877>,  <45.086437, 53.948418, 52.219936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775970, 53.999699, 52.466877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574841, -0.258421, 0.776387,
		0.259075, 0.957487, 0.126880,
		-0.776169, 0.128206, 0.617353,
		44.543121, 54.038162, 52.652084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318375, 54.427006, 52.797623>,  <45.086437, 53.948418, 52.219936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318375, 54.427006, 52.797623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046749, 54.150379, 52.896095>,  <44.883774, 53.984402, 52.955177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046749, 54.150379, 52.896095>,  <45.318375, 54.427006, 52.797623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046749, 54.150379, 52.896095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591854, -0.317407, 0.740920,
		-0.434256, 0.648837, 0.624846,
		-0.679066, -0.691567, 0.246181,
		44.843029, 53.942909, 52.969948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088844, 54.392597, 53.560238>,  <45.318375, 54.427006, 52.797623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088844, 54.392597, 53.560238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085789, 54.028244, 53.395203>,  <45.083958, 53.809631, 53.296181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085789, 54.028244, 53.395203>,  <45.088844, 54.392597, 53.560238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085789, 54.028244, 53.395203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721672, -0.290629, 0.628271,
		-0.692193, -0.292958, 0.659579,
		-0.007635, -0.910884, -0.412591,
		45.083500, 53.754978, 53.271427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562813, 54.274689, 54.200665>,  <45.088844, 54.392597, 53.560238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562813, 54.274689, 54.200665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765366, 54.460701, 54.491135>,  <45.886898, 54.572308, 54.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765366, 54.460701, 54.491135>,  <45.562813, 54.274689, 54.200665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765366, 54.460701, 54.491135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145995, -0.876204, 0.459296,
		0.849862, -0.126560, -0.511582,
		0.506379, 0.465027, 0.726176,
		45.917278, 54.600208, 54.708988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208214, 53.869129, 54.222176>,  <45.562813, 54.274689, 54.200665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208214, 53.869129, 54.222176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087551, 54.053383, 54.556080>,  <46.015152, 54.163937, 54.756420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087551, 54.053383, 54.556080>,  <46.208214, 53.869129, 54.222176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087551, 54.053383, 54.556080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015666, -0.877820, 0.478735,
		0.953287, 0.131338, 0.272020,
		-0.301661, 0.460633, 0.834756,
		45.997051, 54.191574, 54.806507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587528, 53.710812, 54.864834>,  <46.208214, 53.869129, 54.222176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587528, 53.710812, 54.864834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215431, 53.813553, 54.969658>,  <45.992172, 53.875198, 55.032551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215431, 53.813553, 54.969658>,  <46.587528, 53.710812, 54.864834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215431, 53.813553, 54.969658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121576, -0.889567, 0.440329,
		0.346220, 0.377752, 0.858740,
		-0.930243, 0.256853, 0.262060,
		45.936359, 53.890610, 55.048275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419762, 53.698772, 55.641293>,  <46.587528, 53.710812, 54.864834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419762, 53.698772, 55.641293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094292, 53.621201, 55.422089>,  <45.899010, 53.574657, 55.290565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094292, 53.621201, 55.422089>,  <46.419762, 53.698772, 55.641293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094292, 53.621201, 55.422089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208712, -0.782398, 0.586765,
		-0.542557, 0.591815, 0.596144,
		-0.813678, -0.193931, -0.548014,
		45.850189, 53.563023, 55.257683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606628, 53.853077, 56.383255>,  <46.419762, 53.698772, 55.641293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606628, 53.853077, 56.383255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926064, 53.776966, 56.611656>,  <47.117725, 53.731300, 56.748699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926064, 53.776966, 56.611656>,  <46.606628, 53.853077, 56.383255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926064, 53.776966, 56.611656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551034, 0.150474, 0.820804,
		-0.242104, -0.970129, 0.015316,
		0.798591, -0.190281, 0.571005,
		47.165642, 53.719883, 56.782959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394539, 53.423454, 56.899487>,  <46.606628, 53.853077, 56.383255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394539, 53.423454, 56.899487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729485, 53.591496, 57.039398>,  <46.930450, 53.692318, 57.123344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729485, 53.591496, 57.039398>,  <46.394539, 53.423454, 56.899487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729485, 53.591496, 57.039398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445909, 0.154791, 0.881593,
		0.316217, -0.894178, 0.316943,
		0.837361, 0.420102, 0.349774,
		46.980694, 53.717525, 57.144329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800682, 53.050518, 57.481850>,  <46.394539, 53.423454, 56.899487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800682, 53.050518, 57.481850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781925, 53.449661, 57.500084>,  <46.770672, 53.689148, 57.511024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781925, 53.449661, 57.500084>,  <46.800682, 53.050518, 57.481850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781925, 53.449661, 57.500084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547407, -0.063844, 0.834428,
		0.835552, 0.014176, 0.549229,
		-0.046894, 0.997859, 0.045585,
		46.767857, 53.749020, 57.513760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269936, 53.450047, 58.061852>,  <46.800682, 53.050518, 57.481850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269936, 53.450047, 58.061852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911263, 53.596329, 57.962074>,  <46.696060, 53.684097, 57.902206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911263, 53.596329, 57.962074>,  <47.269936, 53.450047, 58.061852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911263, 53.596329, 57.962074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353385, -0.251984, 0.900901,
		0.266607, 0.895972, 0.355183,
		-0.896683, 0.365703, -0.249443,
		46.642258, 53.706039, 57.887241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902676, 53.481049, 57.617767>,  <47.269936, 53.450047, 58.061852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902676, 53.481049, 57.617767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.016411, 53.297115, 57.281265>,  <48.084652, 53.186756, 57.079365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.016411, 53.297115, 57.281265>,  <47.902676, 53.481049, 57.617767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.016411, 53.297115, 57.281265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567038, 0.788201, -0.239178,
		0.773058, -0.409014, 0.484860,
		0.284340, -0.459833, -0.841252,
		48.101711, 53.159164, 57.028889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.630527, 53.366985, 57.562107>,  <47.902676, 53.481049, 57.617767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.630527, 53.366985, 57.562107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.457230, 53.415367, 57.204857>,  <48.353249, 53.444397, 56.990509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.457230, 53.415367, 57.204857>,  <48.630527, 53.366985, 57.562107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.457230, 53.415367, 57.204857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721172, 0.640874, -0.263041,
		0.540562, -0.758056, -0.364888,
		-0.433247, 0.120957, -0.893121,
		48.327255, 53.451653, 56.936920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.162258, 53.169647, 57.070484>,  <48.630527, 53.366985, 57.562107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.162258, 53.169647, 57.070484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.906021, 53.434826, 56.915489>,  <48.752277, 53.593933, 56.822495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.906021, 53.434826, 56.915489>,  <49.162258, 53.169647, 57.070484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.906021, 53.434826, 56.915489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745348, 0.658170, -0.106154,
		0.184655, -0.356811, -0.915745,
		-0.640592, 0.662947, -0.387483,
		48.713844, 53.633709, 56.799244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.483555, 53.237846, 56.436920>,  <49.162258, 53.169647, 57.070484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.483555, 53.237846, 56.436920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.279850, 53.556244, 56.567787>,  <49.157627, 53.747284, 56.646309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.279850, 53.556244, 56.567787>,  <49.483555, 53.237846, 56.436920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.279850, 53.556244, 56.567787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771575, 0.590690, -0.236132,
		-0.381216, 0.132184, -0.914987,
		-0.509261, 0.795998, 0.327170,
		49.127071, 53.795044, 56.665939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.300995, 53.802574, 55.877411>,  <49.483555, 53.237846, 56.436920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.300995, 53.802574, 55.877411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.384800, 53.947922, 56.240524>,  <49.435081, 54.035130, 56.458393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.384800, 53.947922, 56.240524>,  <49.300995, 53.802574, 55.877411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.384800, 53.947922, 56.240524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847090, 0.396275, -0.354125,
		-0.488410, 0.843165, -0.224787,
		0.209508, 0.363373, 0.907781,
		49.447651, 54.056934, 56.512859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.243702, 54.508118, 55.815926>,  <49.300995, 53.802574, 55.877411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.243702, 54.508118, 55.815926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.503651, 54.391212, 56.096565>,  <49.659622, 54.321068, 56.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.503651, 54.391212, 56.096565>,  <49.243702, 54.508118, 55.815926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.503651, 54.391212, 56.096565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735026, 0.476555, -0.482319,
		-0.193388, 0.829144, 0.524521,
		0.649875, -0.292262, 0.701602,
		49.698612, 54.303535, 56.307045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.507824, 55.101036, 56.047836>,  <49.243702, 54.508118, 55.815926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.507824, 55.101036, 56.047836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.749573, 54.783203, 56.071083>,  <49.894623, 54.592503, 56.085033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.749573, 54.783203, 56.071083>,  <49.507824, 55.101036, 56.047836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.749573, 54.783203, 56.071083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546362, 0.360270, -0.756105,
		0.579846, 0.488724, 0.651865,
		0.604374, -0.794578, 0.058119,
		49.930885, 54.544830, 56.088520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.207844, 55.286819, 56.116528>,  <49.507824, 55.101036, 56.047836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.207844, 55.286819, 56.116528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173096, 54.919590, 55.961815>,  <50.152248, 54.699253, 55.868988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173096, 54.919590, 55.961815>,  <50.207844, 55.286819, 56.116528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.173096, 54.919590, 55.961815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505713, 0.293868, -0.811108,
		0.858317, -0.266058, 0.438754,
		-0.086866, -0.918071, -0.386781,
		50.147038, 54.644169, 55.845779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.896824, 54.996078, 55.875378>,  <50.207844, 55.286819, 56.116528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.896824, 54.996078, 55.875378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.591019, 54.856262, 55.658737>,  <50.407536, 54.772373, 55.528751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.591019, 54.856262, 55.658737>,  <50.896824, 54.996078, 55.875378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.591019, 54.856262, 55.658737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499792, 0.209193, -0.840504,
		0.407092, -0.913268, 0.014768,
		-0.764515, -0.349544, -0.541605,
		50.361664, 54.751400, 55.496254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.026909, 54.359806, 55.371395>,  <50.896824, 54.996078, 55.875378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.026909, 54.359806, 55.371395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.763882, 54.636692, 55.252441>,  <50.606064, 54.802822, 55.181068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.763882, 54.636692, 55.252441>,  <51.026909, 54.359806, 55.371395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.763882, 54.636692, 55.252441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690177, 0.395210, -0.606188,
		-0.302084, -0.603860, -0.737630,
		-0.657572, 0.692215, -0.297384,
		50.566608, 54.844357, 55.163227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.395885, 54.502502, 56.068062>,  <51.026909, 54.359806, 55.371395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.395885, 54.502502, 56.068062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.525635, 54.534081, 55.691010>,  <51.603485, 54.553028, 55.464779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.525635, 54.534081, 55.691010>,  <51.395885, 54.502502, 56.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.525635, 54.534081, 55.691010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018309, 0.996849, 0.077183,
		0.945753, -0.007777, 0.324794,
		0.324371, 0.078943, -0.942630,
		51.622948, 54.557762, 55.408222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.867416, 54.969353, 56.045681>,  <51.395885, 54.502502, 56.068062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.867416, 54.969353, 56.045681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685959, 54.960590, 55.689316>,  <51.577084, 54.955334, 55.475494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.685959, 54.960590, 55.689316>,  <51.867416, 54.969353, 56.045681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.685959, 54.960590, 55.689316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021468, 0.999676, -0.013654,
		0.890926, 0.012932, -0.453965,
		-0.453641, -0.021911, -0.890915,
		51.549866, 54.954018, 55.422043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.096699, 55.477203, 55.798084>,  <51.867416, 54.969353, 56.045681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.096699, 55.477203, 55.798084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.794720, 55.420109, 55.542061>,  <51.613533, 55.385853, 55.388447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.794720, 55.420109, 55.542061>,  <52.096699, 55.477203, 55.798084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.794720, 55.420109, 55.542061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119328, 0.989631, -0.079941,
		0.644833, 0.016025, -0.764156,
		-0.754952, -0.142733, -0.640059,
		51.568233, 55.377289, 55.350044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.327137, 55.834648, 55.240993>,  <52.096699, 55.477203, 55.798084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.327137, 55.834648, 55.240993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.931122, 55.778511, 55.236603>,  <51.693512, 55.744827, 55.233967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.931122, 55.778511, 55.236603>,  <52.327137, 55.834648, 55.240993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.931122, 55.778511, 55.236603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137420, 0.980448, -0.140848,
		0.030532, -0.137937, -0.989971,
		-0.990042, -0.140342, -0.010979,
		51.634109, 55.736408, 55.233311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.547718, 56.179607, 54.640888>,  <52.327137, 55.834648, 55.240993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.547718, 56.179607, 54.640888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.737213, 56.087379, 54.300907>,  <52.850910, 56.032043, 54.096920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.737213, 56.087379, 54.300907>,  <52.547718, 56.179607, 54.640888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.737213, 56.087379, 54.300907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879493, 0.074043, 0.470117,
		-0.045462, -0.970235, 0.237861,
		0.473735, -0.230570, -0.849949,
		52.879333, 56.018208, 54.045921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.004395, 55.600323, 54.701176>,  <52.547718, 56.179607, 54.640888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.004395, 55.600323, 54.701176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.145123, 55.863102, 54.434448>,  <53.229557, 56.020771, 54.274414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.145123, 55.863102, 54.434448>,  <53.004395, 55.600323, 54.701176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.145123, 55.863102, 54.434448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846050, 0.081642, 0.526815,
		0.400531, -0.749500, -0.527090,
		0.351815, 0.656951, -0.666815,
		53.250668, 56.060188, 54.234406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.668427, 55.331505, 54.387039>,  <53.004395, 55.600323, 54.701176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.668427, 55.331505, 54.387039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.662834, 55.729660, 54.424988>,  <53.659477, 55.968555, 54.447758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.662834, 55.729660, 54.424988>,  <53.668427, 55.331505, 54.387039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.662834, 55.729660, 54.424988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722002, -0.055586, 0.689654,
		0.691750, 0.078140, -0.717897,
		-0.013985, 0.995392, 0.094869,
		53.658638, 56.028278, 54.453449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.119553, 55.243736, 54.936489>,  <53.668427, 55.331505, 54.387039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.119553, 55.243736, 54.936489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.963860, 55.609703, 54.893749>,  <53.870445, 55.829285, 54.868103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.963860, 55.609703, 54.893749>,  <54.119553, 55.243736, 54.936489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.963860, 55.609703, 54.893749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709975, 0.371887, 0.598026,
		0.586883, 0.156908, -0.794322,
		-0.389234, 0.914921, -0.106854,
		53.847088, 55.884178, 54.861694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.626427, 55.797596, 54.705990>,  <54.119553, 55.243736, 54.936489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.626427, 55.797596, 54.705990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.343018, 55.922958, 54.958900>,  <54.172974, 55.998177, 55.110649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.343018, 55.922958, 54.958900>,  <54.626427, 55.797596, 54.705990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.343018, 55.922958, 54.958900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703768, 0.379926, 0.600305,
		-0.052077, 0.870305, -0.489753,
		-0.708518, 0.313410, 0.632278,
		54.130463, 56.016983, 55.148582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.729801, 56.541779, 54.847008>,  <54.626427, 55.797596, 54.705990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.729801, 56.541779, 54.847008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.548019, 56.367062, 55.157539>,  <54.438950, 56.262234, 55.343857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.548019, 56.367062, 55.157539>,  <54.729801, 56.541779, 54.847008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.548019, 56.367062, 55.157539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516698, 0.580659, 0.629173,
		-0.725597, 0.687059, -0.038198,
		-0.454458, -0.436789, 0.776327,
		54.411682, 56.236027, 55.390438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.350327, 57.030163, 55.220856>,  <54.729801, 56.541779, 54.847008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.350327, 57.030163, 55.220856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.512863, 56.748230, 55.453438>,  <54.610386, 56.579071, 55.592987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.512863, 56.748230, 55.453438>,  <54.350327, 57.030163, 55.220856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.512863, 56.748230, 55.453438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619990, 0.680137, 0.391186,
		-0.671193, 0.201543, 0.713359,
		0.406341, -0.704836, 0.581457,
		54.634766, 56.536777, 55.627876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.324841, 57.261112, 55.905151>,  <54.350327, 57.030163, 55.220856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.324841, 57.261112, 55.905151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.623024, 57.006840, 55.824951>,  <54.801933, 56.854279, 55.776833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.623024, 57.006840, 55.824951>,  <54.324841, 57.261112, 55.905151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.623024, 57.006840, 55.824951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663384, 0.678282, 0.315998,
		-0.064878, -0.368572, 0.927333,
		0.745461, -0.635679, -0.200499,
		54.846661, 56.816135, 55.764801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.959869, 57.417782, 56.409283>,  <54.324841, 57.261112, 55.905151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.959869, 57.417782, 56.409283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.091019, 57.214180, 56.090935>,  <55.169708, 57.092018, 55.899925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.091019, 57.214180, 56.090935>,  <54.959869, 57.417782, 56.409283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.091019, 57.214180, 56.090935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893787, 0.440014, 0.086792,
		0.306018, -0.739797, 0.599211,
		0.327870, -0.509007, -0.795873,
		55.189381, 57.061478, 55.852173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.576202, 57.057930, 56.516449>,  <54.959869, 57.417782, 56.409283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.576202, 57.057930, 56.516449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.538994, 57.163120, 56.132324>,  <55.516670, 57.226234, 55.901852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.538994, 57.163120, 56.132324>,  <55.576202, 57.057930, 56.516449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.538994, 57.163120, 56.132324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908905, 0.416195, 0.025936,
		0.406496, -0.870416, -0.277736,
		-0.093017, 0.262979, -0.960307,
		55.511089, 57.242016, 55.844231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.132366, 56.758537, 56.044350>,  <55.576202, 57.057930, 56.516449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.132366, 56.758537, 56.044350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.018600, 57.120033, 55.916367>,  <55.950340, 57.336929, 55.839577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.018600, 57.120033, 55.916367>,  <56.132366, 56.758537, 56.044350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.018600, 57.120033, 55.916367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932564, 0.338194, 0.126287,
		0.222338, -0.262462, -0.938978,
		-0.284411, 0.903736, -0.319956,
		55.933277, 57.391155, 55.820381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.719711, 57.068462, 55.558594>,  <56.132366, 56.758537, 56.044350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.719711, 57.068462, 55.558594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.495811, 57.317139, 55.777748>,  <56.361473, 57.466347, 55.909241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.495811, 57.317139, 55.777748>,  <56.719711, 57.068462, 55.558594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.495811, 57.317139, 55.777748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816395, 0.527074, 0.235993,
		-0.142061, 0.579387, -0.802576,
		-0.559748, 0.621694, 0.547885,
		56.327888, 57.503647, 55.942112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.963272, 57.788746, 55.422104>,  <56.719711, 57.068462, 55.558594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.963272, 57.788746, 55.422104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.801575, 57.723656, 55.782127>,  <56.704556, 57.684601, 55.998142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.801575, 57.723656, 55.782127>,  <56.963272, 57.788746, 55.422104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.801575, 57.723656, 55.782127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682001, 0.602092, 0.415163,
		-0.609476, 0.781669, -0.132415,
		-0.404246, -0.162725, 0.900059,
		56.680302, 57.674839, 56.052147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.777729, 58.429108, 55.859104>,  <56.963272, 57.788746, 55.422104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.777729, 58.429108, 55.859104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.898285, 58.129547, 56.095177>,  <56.970619, 57.949810, 56.236820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.898285, 58.129547, 56.095177>,  <56.777729, 58.429108, 55.859104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.898285, 58.129547, 56.095177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876582, 0.461175, 0.137556,
		-0.375194, 0.475888, 0.795462,
		0.301386, -0.748898, 0.590185,
		56.988701, 57.904877, 56.272232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.768291, 58.615513, 56.592091>,  <56.777729, 58.429108, 55.859104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.768291, 58.615513, 56.592091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.052238, 58.346375, 56.508789>,  <57.222607, 58.184891, 56.458809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.052238, 58.346375, 56.508789>,  <56.768291, 58.615513, 56.592091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.052238, 58.346375, 56.508789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690641, 0.606935, 0.393250,
		-0.138200, -0.422983, 0.895536,
		0.709870, -0.672841, -0.208251,
		57.265198, 58.144524, 56.446312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.130463, 58.154079, 57.225372>,  <56.768291, 58.615513, 56.592091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.130463, 58.154079, 57.225372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.348022, 58.274277, 56.911972>,  <57.478558, 58.346397, 56.723930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.348022, 58.274277, 56.911972>,  <57.130463, 58.154079, 57.225372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.348022, 58.274277, 56.911972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612363, 0.496250, 0.615425,
		0.573746, -0.814517, 0.085898,
		0.543901, 0.300497, -0.783501,
		57.511192, 58.364426, 56.676922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.861366, 57.837540, 57.316383>,  <57.130463, 58.154079, 57.225372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.861366, 57.837540, 57.316383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.859039, 58.186501, 57.120880>,  <57.857643, 58.395878, 57.003578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.859039, 58.186501, 57.120880>,  <57.861366, 57.837540, 57.316383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.859039, 58.186501, 57.120880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685654, 0.359257, 0.633097,
		0.727904, -0.331436, -0.600255,
		-0.005815, 0.872402, -0.488755,
		57.857296, 58.448219, 56.974255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.514874, 58.007111, 56.964550>,  <57.861366, 57.837540, 57.316383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.514874, 58.007111, 56.964550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291336, 58.301468, 57.117470>,  <58.157211, 58.478081, 57.209221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291336, 58.301468, 57.117470>,  <58.514874, 58.007111, 56.964550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.291336, 58.301468, 57.117470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625097, 0.070884, 0.777322,
		0.544927, 0.673378, -0.499617,
		-0.558846, 0.735892, 0.382300,
		58.123684, 58.522236, 57.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.946442, 58.601768, 57.309799>,  <58.514874, 58.007111, 56.964550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.946442, 58.601768, 57.309799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.577995, 58.606018, 57.465462>,  <58.356930, 58.608570, 57.558857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.577995, 58.606018, 57.465462>,  <58.946442, 58.601768, 57.309799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.577995, 58.606018, 57.465462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388961, 0.066622, 0.918842,
		-0.016160, 0.997722, -0.065500,
		-0.921112, 0.010628, 0.389152,
		58.301662, 58.609207, 57.582207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.840248, 59.236160, 57.654003>,  <58.946442, 58.601768, 57.309799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.840248, 59.236160, 57.654003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.642311, 58.919106, 57.796471>,  <58.523548, 58.728874, 57.881950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.642311, 58.919106, 57.796471>,  <58.840248, 59.236160, 57.654003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.642311, 58.919106, 57.796471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584986, -0.000767, 0.811043,
		-0.642589, 0.609694, 0.464061,
		-0.494844, -0.792637, 0.356169,
		58.493858, 58.681316, 57.903320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.556850, 59.305553, 58.336357>,  <58.840248, 59.236160, 57.654003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.556850, 59.305553, 58.336357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.635086, 58.919418, 58.267227>,  <58.682030, 58.687737, 58.225750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.635086, 58.919418, 58.267227>,  <58.556850, 59.305553, 58.336357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.635086, 58.919418, 58.267227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611318, -0.017785, 0.791185,
		-0.766833, -0.260401, 0.586650,
		0.195592, -0.965337, -0.172826,
		58.693764, 58.629818, 58.215378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.905907, 59.223221, 58.936344>,  <58.556850, 59.305553, 58.336357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.905907, 59.223221, 58.936344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.928604, 58.873253, 58.743973>,  <58.942223, 58.663273, 58.628548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.928604, 58.873253, 58.743973>,  <58.905907, 59.223221, 58.936344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.928604, 58.873253, 58.743973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656246, -0.330340, 0.678392,
		-0.752410, -0.354105, 0.555418,
		0.056745, -0.874920, -0.480931,
		58.945629, 58.610775, 58.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.719597, 58.673454, 59.321869>,  <58.905907, 59.223221, 58.936344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.719597, 58.673454, 59.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.985382, 58.552715, 59.048409>,  <59.144852, 58.480270, 58.884335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.985382, 58.552715, 59.048409>,  <58.719597, 58.673454, 59.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.985382, 58.552715, 59.048409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615222, -0.298386, 0.729704,
		-0.424252, -0.905457, -0.012562,
		0.664464, -0.301850, -0.683648,
		59.184723, 58.462162, 58.843315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.888103, 57.982506, 59.640308>,  <58.719597, 58.673454, 59.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.888103, 57.982506, 59.640308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.181763, 58.102112, 59.396469>,  <59.357960, 58.173874, 59.250164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.181763, 58.102112, 59.396469>,  <58.888103, 57.982506, 59.640308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.181763, 58.102112, 59.396469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665248, -0.137061, 0.733935,
		0.135905, -0.944354, -0.299542,
		0.734149, 0.299015, -0.609602,
		59.402008, 58.191814, 59.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.499920, 57.485325, 59.718437>,  <58.888103, 57.982506, 59.640308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.499920, 57.485325, 59.718437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.603874, 57.851082, 59.594284>,  <59.666248, 58.070538, 59.519791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.603874, 57.851082, 59.594284>,  <59.499920, 57.485325, 59.718437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.603874, 57.851082, 59.594284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674589, 0.058069, 0.735906,
		0.690934, -0.400633, -0.601750,
		0.259885, 0.914397, -0.310384,
		59.681839, 58.125401, 59.501167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.209148, 57.525455, 59.417870>,  <59.499920, 57.485325, 59.718437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.209148, 57.525455, 59.417870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.093132, 57.874599, 59.574837>,  <60.023521, 58.084084, 59.669018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.093132, 57.874599, 59.574837>,  <60.209148, 57.525455, 59.417870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.093132, 57.874599, 59.574837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697981, -0.087604, 0.710738,
		0.654751, 0.480046, -0.583829,
		-0.290041, 0.872858, 0.392422,
		60.006119, 58.136456, 59.692562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.883137, 57.816341, 59.642319>,  <60.209148, 57.525455, 59.417870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.883137, 57.816341, 59.642319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.589584, 58.001991, 59.840714>,  <60.413452, 58.113380, 59.959751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.589584, 58.001991, 59.840714>,  <60.883137, 57.816341, 59.642319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.589584, 58.001991, 59.840714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542579, -0.038777, 0.839109,
		0.408688, 0.884919, -0.223369,
		-0.733882, 0.464129, 0.495986,
		60.369419, 58.141232, 59.989510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.813732, 57.203766, 60.213070>,  <60.883137, 57.816341, 59.642319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.813732, 57.203766, 60.213070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.875412, 56.915161, 60.483078>,  <60.912418, 56.742001, 60.645081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.875412, 56.915161, 60.483078>,  <60.813732, 57.203766, 60.213070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.875412, 56.915161, 60.483078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411696, 0.667972, 0.619935,
		-0.898181, 0.182310, 0.400041,
		0.154196, -0.721510, 0.675017,
		60.921669, 56.698708, 60.685581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.564606, 57.335686, 60.928505>,  <60.813732, 57.203766, 60.213070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.564606, 57.335686, 60.928505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.884109, 57.095043, 60.925301>,  <61.075809, 56.950657, 60.923378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.884109, 57.095043, 60.925301>,  <60.564606, 57.335686, 60.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.884109, 57.095043, 60.925301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488417, 0.640582, 0.592540,
		-0.351340, -0.477209, 0.805501,
		0.798755, -0.601603, -0.008015,
		61.123737, 56.914562, 60.922897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.783459, 57.184540, 61.633331>,  <60.564606, 57.335686, 60.928505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.783459, 57.184540, 61.633331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.056351, 57.196606, 61.341125>,  <61.220085, 57.203846, 61.165802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.056351, 57.196606, 61.341125>,  <60.783459, 57.184540, 61.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.056351, 57.196606, 61.341125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498095, 0.712243, 0.494581,
		0.535220, -0.701284, 0.470893,
		0.682232, 0.030161, -0.730513,
		61.261021, 57.205654, 61.121971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.292572, 56.976719, 61.958385>,  <60.783459, 57.184540, 61.633331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.292572, 56.976719, 61.958385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.353165, 57.230900, 61.655533>,  <61.389523, 57.383408, 61.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.353165, 57.230900, 61.655533>,  <61.292572, 56.976719, 61.958385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.353165, 57.230900, 61.655533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471493, 0.626765, 0.620371,
		0.868761, -0.450961, -0.204666,
		0.151485, 0.635453, -0.757134,
		61.398609, 57.421535, 61.428394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.993896, 57.180840, 61.929882>,  <61.292572, 56.976719, 61.958385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.993896, 57.180840, 61.929882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.762672, 57.462643, 61.765198>,  <61.623936, 57.631725, 61.666386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.762672, 57.462643, 61.765198>,  <61.993896, 57.180840, 61.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.762672, 57.462643, 61.765198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545100, 0.708863, 0.447637,
		0.607213, 0.034338, -0.793797,
		-0.578064, 0.704510, -0.411713,
		61.589252, 57.673996, 61.641685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.456062, 57.550480, 61.624321>,  <61.993896, 57.180840, 61.929882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.456062, 57.550480, 61.624321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.130135, 57.765358, 61.711487>,  <61.934578, 57.894283, 61.763786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.130135, 57.765358, 61.711487>,  <62.456062, 57.550480, 61.624321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.130135, 57.765358, 61.711487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572280, 0.685392, 0.450258,
		0.092521, 0.491588, -0.865899,
		-0.814822, 0.537195, 0.217913,
		61.885689, 57.926517, 61.776859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.809017, 58.065830, 61.917374>,  <62.456062, 57.550480, 61.624321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.809017, 58.065830, 61.917374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.428238, 58.169731, 61.982277>,  <62.199772, 58.232071, 62.021217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.428238, 58.169731, 61.982277>,  <62.809017, 58.065830, 61.917374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.428238, 58.169731, 61.982277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306265, 0.804451, 0.508979,
		0.001682, 0.534214, -0.845348,
		-0.951945, 0.259757, 0.162258,
		62.142654, 58.247658, 62.030952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.171818, 58.427067, 61.328686>,  <62.809017, 58.065830, 61.917374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.171818, 58.427067, 61.328686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.166252, 58.807461, 61.452255>,  <63.162914, 59.035698, 61.526398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.166252, 58.807461, 61.452255>,  <63.171818, 58.427067, 61.328686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.166252, 58.807461, 61.452255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865464, 0.166185, -0.472604,
		-0.500778, 0.260784, -0.825356,
		-0.013914, 0.950986, 0.308921,
		63.162079, 59.092758, 61.544933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.348454, 58.911140, 60.863270>,  <63.171818, 58.427067, 61.328686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.348454, 58.911140, 60.863270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.457054, 59.084953, 61.206772>,  <63.522213, 59.189243, 61.412872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.457054, 59.084953, 61.206772>,  <63.348454, 58.911140, 60.863270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.457054, 59.084953, 61.206772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881208, 0.246541, -0.403349,
		-0.386989, 0.866254, -0.315981,
		0.271500, 0.434536, 0.858758,
		63.538506, 59.215313, 61.464401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.652699, 59.708508, 60.953415>,  <63.348454, 58.911140, 60.863270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.652699, 59.708508, 60.953415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.805962, 59.382843, 61.127922>,  <63.897919, 59.187443, 61.232628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.805962, 59.382843, 61.127922>,  <63.652699, 59.708508, 60.953415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.805962, 59.382843, 61.127922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906804, 0.241665, -0.345405,
		0.175786, 0.527953, 0.830882,
		0.383153, -0.814164, 0.436268,
		63.920906, 59.138596, 61.258804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.367851, 59.821606, 60.998959>,  <63.652699, 59.708508, 60.953415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.367851, 59.821606, 60.998959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.353027, 59.425064, 61.049294>,  <64.344131, 59.187138, 61.079494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.353027, 59.425064, 61.049294>,  <64.367851, 59.821606, 60.998959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.353027, 59.425064, 61.049294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938396, -0.077818, -0.336686,
		0.343569, 0.105612, 0.933170,
		-0.037059, -0.991358, 0.125842,
		64.341911, 59.127655, 61.087048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.848663, 59.702660, 61.516880>,  <64.367851, 59.821606, 60.998959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.848663, 59.702660, 61.516880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.803322, 59.376534, 61.289757>,  <64.776115, 59.180859, 61.153484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.803322, 59.376534, 61.289757>,  <64.848663, 59.702660, 61.516880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.803322, 59.376534, 61.289757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965894, 0.043479, -0.255261,
		0.232807, -0.577377, 0.782583,
		-0.113356, -0.815319, -0.567807,
		64.769318, 59.131939, 61.119415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.306946, 59.089802, 61.716965>,  <64.848663, 59.702660, 61.516880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.306946, 59.089802, 61.716965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.232109, 59.110405, 61.324570>,  <65.187202, 59.122765, 61.089130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.232109, 59.110405, 61.324570>,  <65.306946, 59.089802, 61.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.232109, 59.110405, 61.324570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980338, 0.073546, -0.183111,
		0.062717, -0.995961, -0.064254,
		-0.187096, 0.051506, -0.980990,
		65.175980, 59.125858, 61.030273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.793083, 58.680149, 61.405762>,  <65.306946, 59.089802, 61.716965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.793083, 58.680149, 61.405762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.705704, 58.935513, 61.110542>,  <65.653275, 59.088730, 60.933411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.705704, 58.935513, 61.110542>,  <65.793083, 58.680149, 61.405762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.705704, 58.935513, 61.110542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974147, 0.097998, -0.203555,
		-0.057623, -0.763435, -0.643309,
		-0.218444, 0.638407, -0.738050,
		65.640167, 59.127033, 60.889126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.963287, 58.411137, 60.729355>,  <65.793083, 58.680149, 61.405762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.963287, 58.411137, 60.729355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.037323, 58.801662, 60.774178>,  <66.081741, 59.035976, 60.801071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.037323, 58.801662, 60.774178>,  <65.963287, 58.411137, 60.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.037323, 58.801662, 60.774178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955534, -0.152162, -0.252589,
		-0.229555, 0.153824, -0.961063,
		0.185091, 0.976312, 0.112054,
		66.092850, 59.094555, 60.807793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.310928, 58.706375, 60.130814>,  <65.963287, 58.411137, 60.729355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.310928, 58.706375, 60.130814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.411880, 58.892471, 60.470192>,  <66.472450, 59.004128, 60.673817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.411880, 58.892471, 60.470192>,  <66.310928, 58.706375, 60.130814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.411880, 58.892471, 60.470192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967144, -0.093544, -0.236394,
		-0.030613, 0.880228, -0.473563,
		0.252380, 0.465241, 0.848443,
		66.487595, 59.032043, 60.724724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.672043, 59.258682, 59.900845>,  <66.310928, 58.706375, 60.130814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.672043, 59.258682, 59.900845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.796234, 59.101471, 60.247055>,  <66.870750, 59.007145, 60.454781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.796234, 59.101471, 60.247055>,  <66.672043, 59.258682, 59.900845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.796234, 59.101471, 60.247055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949743, 0.090012, -0.299811,
		0.039925, 0.915112, 0.401218,
		0.310475, -0.393024, 0.865527,
		66.889374, 58.983562, 60.506714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.360718, 59.471363, 59.906654>,  <66.672043, 59.258682, 59.900845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.360718, 59.471363, 59.906654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.368507, 59.207016, 60.206757>,  <67.373184, 59.048409, 60.386818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.368507, 59.207016, 60.206757>,  <67.360718, 59.471363, 59.906654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.368507, 59.207016, 60.206757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985117, -0.115487, -0.127309,
		0.170779, 0.741566, 0.648780,
		0.019482, -0.660865, 0.750251,
		67.374352, 59.008755, 60.431831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.046921, 59.467361, 59.907742>,  <67.360718, 59.471363, 59.906654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.046921, 59.467361, 59.907742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.963547, 59.178314, 60.171371>,  <67.913521, 59.004887, 60.329548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.963547, 59.178314, 60.171371>,  <68.046921, 59.467361, 59.907742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.963547, 59.178314, 60.171371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937850, -0.338854, -0.074933,
		0.277477, 0.602491, 0.748339,
		-0.208431, -0.722622, 0.659070,
		67.901016, 58.961529, 60.369091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.390793, 59.497486, 60.654888>,  <68.046921, 59.467361, 59.907742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.390793, 59.497486, 60.654888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.324478, 59.135773, 60.497513>,  <68.284691, 58.918743, 60.403088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.324478, 59.135773, 60.497513>,  <68.390793, 59.497486, 60.654888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.324478, 59.135773, 60.497513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985597, -0.138414, -0.097162,
		0.033405, -0.403875, 0.914204,
		-0.165780, -0.904282, -0.393434,
		68.274742, 58.864487, 60.379482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.873764, 58.983738, 60.921768>,  <68.390793, 59.497486, 60.654888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.873764, 58.983738, 60.921768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.800987, 58.784798, 60.582466>,  <68.757324, 58.665432, 60.378883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.800987, 58.784798, 60.582466>,  <68.873764, 58.983738, 60.921768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.800987, 58.784798, 60.582466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982851, -0.118326, -0.141432,
		-0.030029, -0.859441, 0.510352,
		-0.181941, -0.497352, -0.848256,
		68.746407, 58.635593, 60.327988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.146820, 58.375835, 60.925716>,  <68.873764, 58.983738, 60.921768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.146820, 58.375835, 60.925716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.128258, 58.481255, 60.540306>,  <69.117119, 58.544506, 60.309059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.128258, 58.481255, 60.540306>,  <69.146820, 58.375835, 60.925716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.128258, 58.481255, 60.540306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950364, -0.285427, -0.123851,
		-0.307658, -0.921451, -0.237221,
		-0.046413, 0.263550, -0.963529,
		69.114334, 58.560318, 60.251247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.325623, 57.781143, 60.547691>,  <69.146820, 58.375835, 60.925716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.325623, 57.781143, 60.547691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.394295, 58.102364, 60.319435>,  <69.435501, 58.295097, 60.182484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.394295, 58.102364, 60.319435>,  <69.325623, 57.781143, 60.547691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.394295, 58.102364, 60.319435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984286, -0.164116, 0.065170,
		-0.041316, -0.572859, -0.818612,
		0.171681, 0.803056, -0.570638,
		69.445801, 58.343281, 60.148243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.008118, 57.699745, 60.270454>,  <69.325623, 57.781143, 60.547691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.008118, 57.699745, 60.270454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.986008, 58.099133, 60.271927>,  <69.972740, 58.338764, 60.272812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.986008, 58.099133, 60.271927>,  <70.008118, 57.699745, 60.270454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.986008, 58.099133, 60.271927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981365, 0.053651, 0.184511,
		0.184031, 0.013811, -0.982823,
		-0.055278, 0.998464, 0.003680,
		69.969421, 58.398670, 60.273029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.323723, 57.974396, 59.716404>,  <70.008118, 57.699745, 60.270454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.323723, 57.974396, 59.716404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.342758, 58.181854, 60.057869>,  <70.354179, 58.306328, 60.262749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.342758, 58.181854, 60.057869>,  <70.323723, 57.974396, 59.716404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.342758, 58.181854, 60.057869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996329, 0.036228, -0.077558,
		-0.071151, 0.854224, -0.515014,
		0.047594, 0.518641, 0.853666,
		70.357033, 58.337448, 60.313969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.776443, 58.537952, 59.599232>,  <70.323723, 57.974396, 59.716404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.776443, 58.537952, 59.599232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.771996, 58.425125, 59.982964>,  <70.769325, 58.357430, 60.213203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.771996, 58.425125, 59.982964>,  <70.776443, 58.537952, 59.599232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.771996, 58.425125, 59.982964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987082, 0.150250, 0.055617,
		-0.159828, 0.947555, 0.276759,
		-0.011117, -0.282073, 0.959329,
		70.768661, 58.340504, 60.270763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.421875, 58.837227, 59.793217>,  <70.776443, 58.537952, 59.599232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.421875, 58.837227, 59.793217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.406784, 58.567379, 60.088097>,  <71.397728, 58.405468, 60.265022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.406784, 58.567379, 60.088097>,  <71.421875, 58.837227, 59.793217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.406784, 58.567379, 60.088097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991880, -0.114946, -0.054418,
		0.121450, 0.729157, 0.673484,
		-0.037736, -0.674624, 0.737196,
		71.395462, 58.364990, 60.309254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.080292, 58.893887, 60.103233>,  <71.421875, 58.837227, 59.793217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.080292, 58.893887, 60.103233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.972565, 58.544296, 60.265045>,  <71.907928, 58.334541, 60.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.972565, 58.544296, 60.265045>,  <72.080292, 58.893887, 60.103233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.972565, 58.544296, 60.265045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962379, -0.228501, 0.147016,
		-0.036052, 0.428905, 0.902630,
		-0.269308, -0.873972, 0.404531,
		71.891769, 58.282104, 60.386406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.321442, 58.739311, 60.868286>,  <72.080292, 58.893887, 60.103233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.321442, 58.739311, 60.868286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.308868, 58.396431, 60.662682>,  <72.301323, 58.190701, 60.539318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.308868, 58.396431, 60.662682>,  <72.321442, 58.739311, 60.868286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.308868, 58.396431, 60.662682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995367, -0.073602, 0.061868,
		-0.090866, -0.509688, 0.855547,
		-0.031436, -0.857205, -0.514015,
		72.299438, 58.139271, 60.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.832779, 58.120857, 61.065620>,  <72.321442, 58.739311, 60.868286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.832779, 58.120857, 61.065620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.749062, 58.106659, 60.674736>,  <72.698830, 58.098141, 60.440205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.749062, 58.106659, 60.674736>,  <72.832779, 58.120857, 61.065620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.749062, 58.106659, 60.674736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971805, -0.118528, -0.203829,
		-0.108592, -0.992316, 0.059298,
		-0.209291, -0.035492, -0.977209,
		72.686272, 58.096012, 60.381573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.866173, 57.448238, 60.728001>,  <72.832779, 58.120857, 61.065620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.866173, 57.448238, 60.728001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.951767, 57.731583, 60.458946>,  <73.003120, 57.901588, 60.297512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.951767, 57.731583, 60.458946>,  <72.866173, 57.448238, 60.728001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.951767, 57.731583, 60.458946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950433, -0.309994, -0.024107,
		-0.225590, -0.634139, -0.739579,
		0.213978, 0.708358, -0.672638,
		73.015961, 57.944092, 60.257156>
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
