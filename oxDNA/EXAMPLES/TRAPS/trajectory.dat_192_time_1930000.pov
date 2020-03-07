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
	<36.207626, 53.159073, 50.666233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458710, 53.245960, 50.367222>,  <36.609360, 53.298092, 50.187817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458710, 53.245960, 50.367222>,  <36.207626, 53.159073, 50.666233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458710, 53.245960, 50.367222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399667, 0.734123, 0.548935,
		0.668014, -0.643335, 0.374004,
		0.627714, 0.217219, -0.747524,
		36.647022, 53.311127, 50.142963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847359, 53.229050, 50.862053>,  <36.207626, 53.159073, 50.666233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847359, 53.229050, 50.862053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875973, 53.450207, 50.529984>,  <36.893139, 53.582901, 50.330742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875973, 53.450207, 50.529984>,  <36.847359, 53.229050, 50.862053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875973, 53.450207, 50.529984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499207, 0.700722, 0.509687,
		0.863525, -0.450889, -0.225883,
		0.071531, 0.552890, -0.830178,
		36.897430, 53.616074, 50.280930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586334, 53.418358, 50.560642>,  <36.847359, 53.229050, 50.862053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586334, 53.418358, 50.560642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342327, 53.730801, 50.507351>,  <37.195923, 53.918266, 50.475376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342327, 53.730801, 50.507351>,  <37.586334, 53.418358, 50.560642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342327, 53.730801, 50.507351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544725, 0.535489, 0.645389,
		0.575459, 0.321127, -0.752146,
		-0.610017, 0.781108, -0.133226,
		37.159321, 53.965134, 50.467384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213928, 53.687790, 50.995598>,  <37.586334, 53.418358, 50.560642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213928, 53.687790, 50.995598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421528, 53.357002, 51.082092>,  <38.546089, 53.158531, 51.133987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421528, 53.357002, 51.082092>,  <38.213928, 53.687790, 50.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421528, 53.357002, 51.082092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323067, 0.423991, 0.846085,
		-0.791369, -0.369260, 0.487219,
		0.519002, -0.826970, 0.216237,
		38.577229, 53.108910, 51.146965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835979, 54.373619, 51.060539>,  <38.213928, 53.687790, 50.995598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835979, 54.373619, 51.060539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832745, 54.398186, 51.459770>,  <37.830803, 54.412926, 51.699310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832745, 54.398186, 51.459770>,  <37.835979, 54.373619, 51.060539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832745, 54.398186, 51.459770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574541, 0.816632, -0.054904,
		-0.818436, -0.573882, 0.028681,
		-0.008087, 0.061414, 0.998079,
		37.830318, 54.416611, 51.759193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149246, 54.468456, 51.309883>,  <37.835979, 54.373619, 51.060539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149246, 54.468456, 51.309883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420876, 54.619762, 51.561523>,  <37.583855, 54.710545, 51.712509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420876, 54.619762, 51.561523>,  <37.149246, 54.468456, 51.309883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420876, 54.619762, 51.561523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334665, 0.922298, -0.193304,
		-0.653340, -0.079270, 0.752903,
		0.679077, 0.378264, 0.629103,
		37.624599, 54.733242, 51.750256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861931, 55.039410, 51.610119>,  <37.149246, 54.468456, 51.309883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861931, 55.039410, 51.610119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251190, 55.087307, 51.688755>,  <37.484745, 55.116047, 51.735935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251190, 55.087307, 51.688755>,  <36.861931, 55.039410, 51.610119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251190, 55.087307, 51.688755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124078, 0.992224, 0.009821,
		-0.193885, -0.033950, 0.980437,
		0.973146, 0.119746, 0.196589,
		37.543133, 55.123230, 51.747730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928398, 55.301075, 52.255203>,  <36.861931, 55.039410, 51.610119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928398, 55.301075, 52.255203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246323, 55.412346, 52.039467>,  <37.437077, 55.479107, 51.910027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246323, 55.412346, 52.039467>,  <36.928398, 55.301075, 52.255203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246323, 55.412346, 52.039467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234028, 0.960507, 0.150525,
		0.559910, 0.006580, 0.828527,
		0.794816, 0.278179, -0.539337,
		37.484768, 55.495800, 51.877666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528877, 55.746857, 52.621407>,  <36.928398, 55.301075, 52.255203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528877, 55.746857, 52.621407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493080, 55.855675, 52.238159>,  <37.471600, 55.920967, 52.008213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493080, 55.855675, 52.238159>,  <37.528877, 55.746857, 52.621407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493080, 55.855675, 52.238159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144670, 0.948222, 0.282749,
		0.985424, 0.163915, -0.045507,
		-0.089498, 0.272044, -0.958114,
		37.466232, 55.937286, 51.950726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995819, 56.377529, 52.317951>,  <37.528877, 55.746857, 52.621407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995819, 56.377529, 52.317951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643417, 56.338318, 52.132812>,  <37.431976, 56.314793, 52.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643417, 56.338318, 52.132812>,  <37.995819, 56.377529, 52.317951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643417, 56.338318, 52.132812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242720, 0.933393, 0.264319,
		0.406106, 0.345208, -0.846114,
		-0.881002, -0.098027, -0.462846,
		37.379116, 56.308910, 51.993958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307331, 56.862778, 52.782196>,  <37.995819, 56.377529, 52.317951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307331, 56.862778, 52.782196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496853, 56.857044, 52.429993>,  <38.610565, 56.853603, 52.218670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496853, 56.857044, 52.429993>,  <38.307331, 56.862778, 52.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496853, 56.857044, 52.429993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876299, -0.091356, 0.473027,
		-0.087224, -0.995715, -0.030718,
		0.473807, -0.014341, -0.880512,
		38.638996, 56.852741, 52.165840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745617, 56.381790, 52.740383>,  <38.307331, 56.862778, 52.782196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745617, 56.381790, 52.740383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881439, 56.657955, 52.484871>,  <38.962933, 56.823654, 52.331566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881439, 56.657955, 52.484871>,  <38.745617, 56.381790, 52.740383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881439, 56.657955, 52.484871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895709, -0.030086, 0.443621,
		0.287061, -0.722794, -0.628621,
		0.339559, 0.690408, -0.638777,
		38.983307, 56.865078, 52.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042099, 55.817532, 53.295170>,  <38.745617, 56.381790, 52.740383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042099, 55.817532, 53.295170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108208, 55.461441, 53.125378>,  <39.147873, 55.247787, 53.023502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108208, 55.461441, 53.125378>,  <39.042099, 55.817532, 53.295170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108208, 55.461441, 53.125378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857723, 0.342190, -0.383689,
		0.486822, -0.300670, 0.820123,
		0.165274, -0.890227, -0.424478,
		39.157791, 55.194374, 52.998035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184139, 56.401009, 53.817181>,  <39.042099, 55.817532, 53.295170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184139, 56.401009, 53.817181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302155, 56.509483, 53.450703>,  <39.372963, 56.574566, 53.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302155, 56.509483, 53.450703>,  <39.184139, 56.401009, 53.817181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302155, 56.509483, 53.450703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568211, 0.721103, 0.396416,
		0.768173, -0.637549, 0.058661,
		0.295035, 0.271184, -0.916195,
		39.390667, 56.590839, 53.175842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965317, 56.343517, 53.742569>,  <39.184139, 56.401009, 53.817181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965317, 56.343517, 53.742569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826439, 56.656918, 53.536430>,  <39.743114, 56.844959, 53.412746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826439, 56.656918, 53.536430>,  <39.965317, 56.343517, 53.742569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826439, 56.656918, 53.536430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639345, 0.599782, 0.481143,
		0.686073, -0.162436, -0.709168,
		-0.347191, 0.783502, -0.515347,
		39.722282, 56.891968, 53.381824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451958, 56.777149, 53.265316>,  <39.965317, 56.343517, 53.742569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451958, 56.777149, 53.265316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146786, 56.977398, 53.428932>,  <39.963680, 57.097546, 53.527103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146786, 56.977398, 53.428932>,  <40.451958, 56.777149, 53.265316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146786, 56.977398, 53.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643995, 0.643937, 0.413055,
		-0.056616, 0.578555, -0.813676,
		-0.762932, 0.500618, 0.409044,
		39.917908, 57.127583, 53.551647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392841, 57.507507, 53.182735>,  <40.451958, 56.777149, 53.265316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392841, 57.507507, 53.182735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163044, 57.459923, 53.506660>,  <40.025166, 57.431374, 53.701015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163044, 57.459923, 53.506660>,  <40.392841, 57.507507, 53.182735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163044, 57.459923, 53.506660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501575, 0.730689, 0.463159,
		-0.646821, 0.672267, -0.360111,
		-0.574495, -0.118959, 0.809817,
		39.990696, 57.424236, 53.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277485, 58.166309, 53.343334>,  <40.392841, 57.507507, 53.182735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277485, 58.166309, 53.343334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238701, 57.945290, 53.674461>,  <40.215431, 57.812675, 53.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238701, 57.945290, 53.674461>,  <40.277485, 58.166309, 53.343334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238701, 57.945290, 53.674461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610941, 0.623560, 0.487775,
		-0.785716, 0.553045, 0.277114,
		-0.096964, -0.552553, 0.827818,
		40.209610, 57.779522, 53.922806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118706, 58.533875, 53.964657>,  <40.277485, 58.166309, 53.343334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118706, 58.533875, 53.964657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301105, 58.225647, 54.142776>,  <40.410545, 58.040710, 54.249649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301105, 58.225647, 54.142776>,  <40.118706, 58.533875, 53.964657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301105, 58.225647, 54.142776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734594, 0.608349, 0.300471,
		-0.502428, 0.190096, 0.843463,
		0.456002, -0.770568, 0.445295,
		40.437904, 57.994476, 54.276363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271782, 58.615803, 54.756123>,  <40.118706, 58.533875, 53.964657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271782, 58.615803, 54.756123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551373, 58.416897, 54.550537>,  <40.719128, 58.297554, 54.427185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551373, 58.416897, 54.550537>,  <40.271782, 58.615803, 54.756123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551373, 58.416897, 54.550537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704994, 0.599780, 0.378481,
		0.120056, -0.626889, 0.769804,
		0.698978, -0.497268, -0.513960,
		40.761066, 58.267715, 54.396351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834286, 58.727921, 55.049603>,  <40.271782, 58.615803, 54.756123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834286, 58.727921, 55.049603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932915, 58.627991, 54.675053>,  <40.992092, 58.568031, 54.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932915, 58.627991, 54.675053>,  <40.834286, 58.727921, 55.049603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932915, 58.627991, 54.675053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642433, 0.765538, -0.035079,
		0.725592, -0.592907, 0.349254,
		0.246569, -0.249826, -0.936371,
		41.006886, 58.553043, 54.394142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613735, 58.827133, 55.040443>,  <40.834286, 58.727921, 55.049603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613735, 58.827133, 55.040443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452225, 58.856377, 54.675671>,  <41.355320, 58.873924, 54.456806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452225, 58.856377, 54.675671>,  <41.613735, 58.827133, 55.040443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452225, 58.856377, 54.675671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728130, 0.629181, -0.271952,
		0.553888, -0.773813, -0.307282,
		-0.403776, 0.073110, -0.911932,
		41.331093, 58.878311, 54.402092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986256, 58.588310, 54.455517>,  <41.613735, 58.827133, 55.040443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986256, 58.588310, 54.455517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754768, 58.907722, 54.389267>,  <41.615875, 59.099369, 54.349518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754768, 58.907722, 54.389267>,  <41.986256, 58.588310, 54.455517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754768, 58.907722, 54.389267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814843, 0.557840, -0.157626,
		-0.033478, -0.226178, -0.973511,
		-0.578715, 0.798535, -0.165624,
		41.581154, 59.147282, 54.339581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937588, 59.038216, 53.742348>,  <41.986256, 58.588310, 54.455517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937588, 59.038216, 53.742348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892406, 59.216885, 54.097363>,  <41.865299, 59.324085, 54.310371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892406, 59.216885, 54.097363>,  <41.937588, 59.038216, 53.742348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892406, 59.216885, 54.097363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926147, 0.370840, -0.068772,
		-0.359854, 0.814223, -0.455572,
		-0.112949, 0.446674, 0.887539,
		41.858521, 59.350887, 54.363625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338844, 59.522854, 53.541412>,  <41.937588, 59.038216, 53.742348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338844, 59.522854, 53.541412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321507, 59.535172, 53.940845>,  <42.311104, 59.542561, 54.180508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321507, 59.535172, 53.940845>,  <42.338844, 59.522854, 53.541412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321507, 59.535172, 53.940845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866765, 0.498220, 0.022260,
		-0.496830, 0.866504, -0.048286,
		-0.043346, 0.030793, 0.998586,
		42.308502, 59.544411, 54.240421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426891, 60.161758, 53.679596>,  <42.338844, 59.522854, 53.541412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426891, 60.161758, 53.679596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512356, 59.982445, 54.026787>,  <42.563637, 59.874859, 54.235104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512356, 59.982445, 54.026787>,  <42.426891, 60.161758, 53.679596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512356, 59.982445, 54.026787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779105, 0.614216, 0.125433,
		-0.589358, 0.649448, 0.480494,
		0.213665, -0.448280, 0.867982,
		42.576454, 59.847961, 54.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366798, 60.650845, 54.280655>,  <42.426891, 60.161758, 53.679596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366798, 60.650845, 54.280655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642235, 60.364777, 54.328625>,  <42.807495, 60.193138, 54.357407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642235, 60.364777, 54.328625>,  <42.366798, 60.650845, 54.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642235, 60.364777, 54.328625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649176, 0.681647, 0.337533,
		-0.323136, -0.154572, 0.933644,
		0.688588, -0.715168, 0.119921,
		42.848812, 60.150227, 54.364601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796951, 60.678013, 54.962185>,  <42.366798, 60.650845, 54.280655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796951, 60.678013, 54.962185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050926, 60.503395, 54.707222>,  <43.203312, 60.398624, 54.554245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050926, 60.503395, 54.707222>,  <42.796951, 60.678013, 54.962185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050926, 60.503395, 54.707222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695857, 0.681574, 0.226365,
		0.335624, -0.587272, 0.736525,
		0.634934, -0.436542, -0.637409,
		43.241405, 60.372433, 54.515999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433491, 60.438099, 55.317829>,  <42.796951, 60.678013, 54.962185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433491, 60.438099, 55.317829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452274, 60.556252, 54.936138>,  <43.463547, 60.627144, 54.707123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452274, 60.556252, 54.936138>,  <43.433491, 60.438099, 55.317829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452274, 60.556252, 54.936138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644856, 0.720584, 0.254792,
		0.762860, -0.627303, -0.156638,
		0.046961, 0.295380, -0.954225,
		43.466362, 60.644867, 54.649872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052231, 60.526402, 55.265999>,  <43.433491, 60.438099, 55.317829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052231, 60.526402, 55.265999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851685, 60.754860, 55.006020>,  <43.731358, 60.891933, 54.850033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851685, 60.754860, 55.006020>,  <44.052231, 60.526402, 55.265999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851685, 60.754860, 55.006020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499588, 0.804397, 0.321493,
		0.706433, -0.163520, -0.688632,
		-0.501364, 0.571145, -0.649944,
		43.701275, 60.926205, 54.811035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589157, 60.075539, 54.925842>,  <44.052231, 60.526402, 55.265999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589157, 60.075539, 54.925842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489784, 60.335526, 54.638561>,  <44.430161, 60.491520, 54.466194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489784, 60.335526, 54.638561>,  <44.589157, 60.075539, 54.925842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489784, 60.335526, 54.638561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966047, 0.111954, -0.232850,
		-0.070941, -0.751667, -0.655717,
		-0.248435, 0.649972, -0.718203,
		44.415253, 60.530518, 54.423100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241943, 59.968277, 55.153191>,  <44.589157, 60.075539, 54.925842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241943, 59.968277, 55.153191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487282, 60.066681, 55.453400>,  <45.634483, 60.125721, 55.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487282, 60.066681, 55.453400>,  <45.241943, 59.968277, 55.153191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487282, 60.066681, 55.453400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525410, -0.582411, 0.620276,
		0.589707, -0.774777, -0.227964,
		0.613344, 0.246006, 0.750527,
		45.671284, 60.140484, 55.678558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308254, 59.351788, 55.606171>,  <45.241943, 59.968277, 55.153191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308254, 59.351788, 55.606171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361404, 59.686287, 55.818977>,  <45.393295, 59.886986, 55.946659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361404, 59.686287, 55.818977>,  <45.308254, 59.351788, 55.606171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361404, 59.686287, 55.818977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421298, -0.438213, 0.794026,
		0.897136, -0.329642, 0.294082,
		0.132873, 0.836245, 0.532014,
		45.401268, 59.937160, 55.978580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602905, 59.093414, 56.310879>,  <45.308254, 59.351788, 55.606171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602905, 59.093414, 56.310879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436565, 59.455986, 56.340416>,  <45.336761, 59.673531, 56.358139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436565, 59.455986, 56.340416>,  <45.602905, 59.093414, 56.310879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436565, 59.455986, 56.340416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535161, -0.309550, 0.785991,
		0.735306, 0.287333, 0.613812,
		-0.415846, 0.906432, 0.073844,
		45.311813, 59.727917, 56.362568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151592, 59.242226, 56.871101>,  <45.602905, 59.093414, 56.310879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151592, 59.242226, 56.871101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368298, 58.910343, 56.924881>,  <46.498322, 58.711212, 56.957150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368298, 58.910343, 56.924881>,  <46.151592, 59.242226, 56.871101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368298, 58.910343, 56.924881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189755, 0.276560, 0.942076,
		-0.818830, -0.484872, 0.307271,
		0.541766, -0.829707, 0.134449,
		46.530827, 58.661430, 56.965214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797379, 59.608421, 56.589130>,  <46.151592, 59.242226, 56.871101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797379, 59.608421, 56.589130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980949, 59.962303, 56.556419>,  <47.091091, 60.174633, 56.536793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980949, 59.962303, 56.556419>,  <46.797379, 59.608421, 56.589130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980949, 59.962303, 56.556419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573967, -0.365467, -0.732799,
		-0.678197, 0.289363, -0.675513,
		0.458923, 0.884705, -0.081774,
		47.118626, 60.227715, 56.531887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742584, 59.966690, 55.854969>,  <46.797379, 59.608421, 56.589130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742584, 59.966690, 55.854969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070381, 60.013596, 56.079353>,  <47.267059, 60.041740, 56.213985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070381, 60.013596, 56.079353>,  <46.742584, 59.966690, 55.854969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.070381, 60.013596, 56.079353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561231, -0.362300, -0.744150,
		0.115973, 0.924655, -0.362716,
		0.819494, 0.117266, 0.560962,
		47.316231, 60.048775, 56.247643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100170, 60.468292, 55.582226>,  <46.742584, 59.966690, 55.854969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100170, 60.468292, 55.582226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350479, 60.198944, 55.739700>,  <47.500664, 60.037334, 55.834183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350479, 60.198944, 55.739700>,  <47.100170, 60.468292, 55.582226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350479, 60.198944, 55.739700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263014, -0.293002, -0.919225,
		0.734326, 0.678768, -0.006247,
		0.625771, -0.673368, 0.393684,
		47.538212, 59.996933, 55.857807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.760742, 60.727318, 55.469715>,  <47.100170, 60.468292, 55.582226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.760742, 60.727318, 55.469715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710358, 60.330688, 55.481850>,  <47.680126, 60.092712, 55.489128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710358, 60.330688, 55.481850>,  <47.760742, 60.727318, 55.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710358, 60.330688, 55.481850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224426, -0.058266, -0.972748,
		0.966317, -0.115718, 0.229873,
		-0.125958, -0.991572, 0.030333,
		47.672569, 60.033218, 55.490948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.383282, 60.506084, 55.132256>,  <47.760742, 60.727318, 55.469715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.383282, 60.506084, 55.132256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.042515, 60.297905, 55.109032>,  <47.838055, 60.172997, 55.095097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.042515, 60.297905, 55.109032>,  <48.383282, 60.506084, 55.132256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.042515, 60.297905, 55.109032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071219, -0.005303, -0.997446,
		0.518810, -0.853878, 0.041583,
		-0.851918, -0.520446, -0.058062,
		47.786938, 60.141769, 55.091614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.385834, 59.900394, 54.690338>,  <48.383282, 60.506084, 55.132256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.385834, 59.900394, 54.690338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.026962, 60.072491, 54.650417>,  <47.811638, 60.175747, 54.626465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.026962, 60.072491, 54.650417>,  <48.385834, 59.900394, 54.690338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.026962, 60.072491, 54.650417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032354, -0.289377, -0.956668,
		-0.440478, -0.855075, 0.273543,
		-0.897180, 0.430242, -0.099799,
		47.757809, 60.201561, 54.620480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.820251, 59.254734, 54.935799>,  <48.385834, 59.900394, 54.690338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.820251, 59.254734, 54.935799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.029305, 59.586456, 55.014908>,  <49.154736, 59.785488, 55.062374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.029305, 59.586456, 55.014908>,  <48.820251, 59.254734, 54.935799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.029305, 59.586456, 55.014908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718806, -0.553361, 0.420844,
		0.458449, -0.077782, -0.885310,
		0.522631, 0.829302, 0.197778,
		49.186092, 59.835247, 55.074242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.508755, 59.146141, 54.666740>,  <48.820251, 59.254734, 54.935799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.508755, 59.146141, 54.666740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.538204, 59.409119, 54.966702>,  <49.555874, 59.566906, 55.146679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.538204, 59.409119, 54.966702>,  <49.508755, 59.146141, 54.666740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.538204, 59.409119, 54.966702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768252, -0.516846, 0.377701,
		0.635900, 0.548304, -0.543134,
		0.073622, 0.657444, 0.749898,
		49.560291, 59.606350, 55.191669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.197628, 59.580620, 54.754959>,  <49.508755, 59.146141, 54.666740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.197628, 59.580620, 54.754959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.052681, 59.572880, 55.127693>,  <49.965714, 59.568233, 55.351334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.052681, 59.572880, 55.127693>,  <50.197628, 59.580620, 54.754959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.052681, 59.572880, 55.127693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808510, -0.503914, 0.303945,
		0.463682, 0.863537, 0.198249,
		-0.362369, -0.019352, 0.931834,
		49.943970, 59.567074, 55.407242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.722889, 59.872482, 55.058445>,  <50.197628, 59.580620, 54.754959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.722889, 59.872482, 55.058445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.515533, 59.637352, 55.306877>,  <50.391121, 59.496273, 55.455936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.515533, 59.637352, 55.306877>,  <50.722889, 59.872482, 55.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.515533, 59.637352, 55.306877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851093, -0.425272, 0.307870,
		0.083156, 0.688193, 0.720747,
		-0.518388, -0.587821, 0.621080,
		50.360016, 59.461006, 55.493202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.789120, 60.006371, 55.786499>,  <50.722889, 59.872482, 55.058445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.789120, 60.006371, 55.786499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750156, 59.614532, 55.716179>,  <50.726780, 59.379429, 55.673985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750156, 59.614532, 55.716179>,  <50.789120, 60.006371, 55.786499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.750156, 59.614532, 55.716179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901100, -0.161799, 0.402294,
		-0.422530, -0.119230, 0.898472,
		-0.097406, -0.979594, -0.175803,
		50.720936, 59.320656, 55.663437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.978531, 59.759220, 56.361248>,  <50.789120, 60.006371, 55.786499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.978531, 59.759220, 56.361248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.052330, 59.513817, 56.054115>,  <51.096611, 59.366577, 55.869835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.052330, 59.513817, 56.054115>,  <50.978531, 59.759220, 56.361248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.052330, 59.513817, 56.054115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964581, -0.036833, 0.261201,
		-0.188530, -0.788831, 0.584981,
		0.184497, -0.613506, -0.767836,
		51.107677, 59.329765, 55.823765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.601608, 59.910557, 56.482079>,  <50.978531, 59.759220, 56.361248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.601608, 59.910557, 56.482079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.588001, 59.643154, 56.184906>,  <51.579838, 59.482712, 56.006603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.588001, 59.643154, 56.184906>,  <51.601608, 59.910557, 56.482079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.588001, 59.643154, 56.184906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984502, -0.150380, 0.090235,
		-0.172044, -0.728343, 0.663262,
		-0.034020, -0.668507, -0.742927,
		51.577797, 59.442600, 55.962029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.780006, 59.236080, 56.714314>,  <51.601608, 59.910557, 56.482079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.780006, 59.236080, 56.714314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.873596, 59.308952, 56.332306>,  <51.929752, 59.352676, 56.103100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.873596, 59.308952, 56.332306>,  <51.780006, 59.236080, 56.714314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.873596, 59.308952, 56.332306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966183, 0.065924, 0.249288,
		0.108374, -0.981053, -0.160596,
		0.233977, 0.182181, -0.955021,
		51.943790, 59.363605, 56.045799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.506718, 58.861629, 56.613029>,  <51.780006, 59.236080, 56.714314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.506718, 58.861629, 56.613029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.451706, 59.128029, 56.319763>,  <52.418697, 59.287868, 56.143803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.451706, 59.128029, 56.319763>,  <52.506718, 58.861629, 56.613029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.451706, 59.128029, 56.319763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959745, 0.272616, 0.067604,
		0.244897, -0.694356, -0.676680,
		-0.137533, 0.665996, -0.733168,
		52.410446, 59.327827, 56.099812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.871815, 58.870617, 55.959312>,  <52.506718, 58.861629, 56.613029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.871815, 58.870617, 55.959312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.819984, 59.259842, 56.035583>,  <52.788887, 59.493378, 56.081345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.819984, 59.259842, 56.035583>,  <52.871815, 58.870617, 55.959312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.819984, 59.259842, 56.035583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989702, 0.138715, -0.035318,
		-0.060817, 0.184139, -0.981017,
		-0.129578, 0.973063, 0.190679,
		52.781113, 59.551762, 56.092789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.173866, 59.379219, 55.355686>,  <52.871815, 58.870617, 55.959312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.173866, 59.379219, 55.355686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.207199, 59.536057, 55.722145>,  <53.227200, 59.630157, 55.942020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.207199, 59.536057, 55.722145>,  <53.173866, 59.379219, 55.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.207199, 59.536057, 55.722145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991915, 0.055670, -0.114046,
		-0.095718, 0.918241, -0.384280,
		0.083329, 0.392090, 0.916145,
		53.232197, 59.653683, 55.996990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.564762, 60.018826, 55.355717>,  <53.173866, 59.379219, 55.355686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.564762, 60.018826, 55.355717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.629208, 59.837837, 55.706558>,  <53.667873, 59.729244, 55.917065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.629208, 59.837837, 55.706558>,  <53.564762, 60.018826, 55.355717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.629208, 59.837837, 55.706558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985145, 0.020213, -0.170529,
		0.059430, 0.891551, 0.449005,
		0.161111, -0.452470, 0.877106,
		53.677540, 59.702095, 55.969688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.150410, 60.287601, 55.582054>,  <53.564762, 60.018826, 55.355717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.150410, 60.287601, 55.582054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.118309, 59.930336, 55.759056>,  <54.099049, 59.715977, 55.865257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.118309, 59.930336, 55.759056>,  <54.150410, 60.287601, 55.582054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.118309, 59.930336, 55.759056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996771, -0.073099, 0.033229,
		0.002667, 0.443743, 0.896150,
		-0.080253, -0.893168, 0.442505,
		54.094234, 59.662384, 55.891808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.471901, 60.231884, 56.268990>,  <54.150410, 60.287601, 55.582054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.471901, 60.231884, 56.268990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.484840, 59.889114, 56.063217>,  <54.492603, 59.683453, 55.939754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.484840, 59.889114, 56.063217>,  <54.471901, 60.231884, 56.268990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.484840, 59.889114, 56.063217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995468, -0.018428, 0.093294,
		-0.089425, -0.515117, 0.852442,
		0.032348, -0.856921, -0.514431,
		54.494545, 59.632038, 55.908890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.670620, 59.429836, 56.581055>,  <54.471901, 60.231884, 56.268990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.670620, 59.429836, 56.581055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.778084, 59.520096, 56.206482>,  <54.842564, 59.574249, 55.981739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.778084, 59.520096, 56.206482>,  <54.670620, 59.429836, 56.581055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.778084, 59.520096, 56.206482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961819, -0.010154, 0.273498,
		0.052206, -0.974156, -0.219758,
		0.268662, 0.225645, -0.936432,
		54.858681, 59.587788, 55.925552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.260967, 58.929699, 56.473152>,  <54.670620, 59.429836, 56.581055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.260967, 58.929699, 56.473152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.286484, 59.255066, 56.241882>,  <55.301792, 59.450287, 56.103123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.286484, 59.255066, 56.241882>,  <55.260967, 58.929699, 56.473152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.286484, 59.255066, 56.241882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989767, 0.022534, 0.140901,
		0.127640, -0.581242, -0.803658,
		0.063788, 0.813419, -0.578170,
		55.305622, 59.499092, 56.068432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.997669, 58.991226, 56.468590>,  <55.260967, 58.929699, 56.473152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.997669, 58.991226, 56.468590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.903870, 59.291603, 56.221657>,  <55.847588, 59.471828, 56.073498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.903870, 59.291603, 56.221657>,  <55.997669, 58.991226, 56.468590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.903870, 59.291603, 56.221657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971926, 0.168579, -0.164133,
		-0.019186, -0.638489, -0.769392,
		-0.234501, 0.750941, -0.617330,
		55.833519, 59.516884, 56.036457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.280548, 58.993900, 57.185612>,  <55.997669, 58.991226, 56.468590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.280548, 58.993900, 57.185612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.680115, 58.999424, 57.167839>,  <56.919853, 59.002739, 57.157177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.680115, 58.999424, 57.167839>,  <56.280548, 58.993900, 57.185612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.680115, 58.999424, 57.167839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030926, -0.910531, 0.412281,
		-0.034764, -0.413209, -0.909972,
		0.998917, 0.013809, -0.044433,
		56.979790, 59.003567, 57.154510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.507099, 58.256393, 57.167908>,  <56.280548, 58.993900, 57.185612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.507099, 58.256393, 57.167908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.791367, 58.475273, 57.344780>,  <56.961929, 58.606602, 57.450901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.791367, 58.475273, 57.344780>,  <56.507099, 58.256393, 57.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.791367, 58.475273, 57.344780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203337, -0.761456, 0.615499,
		0.673499, -0.347506, -0.652410,
		0.710671, 0.547197, 0.442179,
		57.004566, 58.639431, 57.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.246498, 57.944389, 57.174641>,  <56.507099, 58.256393, 57.167908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.246498, 57.944389, 57.174641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159828, 58.170204, 57.493225>,  <57.107826, 58.305695, 57.684376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159828, 58.170204, 57.493225>,  <57.246498, 57.944389, 57.174641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.159828, 58.170204, 57.493225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191423, -0.775434, 0.601714,
		0.957292, 0.282837, 0.059952,
		-0.216676, 0.564540, 0.796459,
		57.094826, 58.339565, 57.732162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.831692, 57.825340, 57.666458>,  <57.246498, 57.944389, 57.174641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.831692, 57.825340, 57.666458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.515228, 57.950279, 57.876793>,  <57.325352, 58.025242, 58.002995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.515228, 57.950279, 57.876793>,  <57.831692, 57.825340, 57.666458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.515228, 57.950279, 57.876793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306537, -0.541473, 0.782843,
		0.529249, 0.780541, 0.332643,
		-0.791158, 0.312351, 0.525838,
		57.277882, 58.043983, 58.034546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.488453, 58.256317, 57.441307>,  <57.831692, 57.825340, 57.666458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.488453, 58.256317, 57.441307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872665, 58.270832, 57.330986>,  <59.103191, 58.279541, 57.264793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872665, 58.270832, 57.330986>,  <58.488453, 58.256317, 57.441307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.872665, 58.270832, 57.330986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176796, 0.685834, 0.705957,
		0.214777, -0.726853, 0.652347,
		0.960528, 0.036291, -0.275806,
		59.160824, 58.281719, 57.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.209305, 58.000347, 57.947014>,  <58.488453, 58.256317, 57.441307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.209305, 58.000347, 57.947014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.268959, 58.312660, 57.704315>,  <59.304752, 58.500046, 57.558697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.268959, 58.312660, 57.704315>,  <59.209305, 58.000347, 57.947014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.268959, 58.312660, 57.704315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167243, 0.584854, 0.793710,
		0.974571, -0.219843, -0.043359,
		0.149132, 0.780778, -0.606749,
		59.313698, 58.546894, 57.522289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.802555, 57.574829, 57.739136>,  <59.209305, 58.000347, 57.947014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.802555, 57.574829, 57.739136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.140854, 57.389408, 57.844833>,  <60.343834, 57.278156, 57.908253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.140854, 57.389408, 57.844833>,  <59.802555, 57.574829, 57.739136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.140854, 57.389408, 57.844833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533295, 0.718170, -0.447022,
		0.017449, 0.518987, 0.854604,
		0.845749, -0.463556, 0.264242,
		60.394577, 57.250340, 57.924107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.314613, 58.048889, 57.967773>,  <59.802555, 57.574829, 57.739136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.314613, 58.048889, 57.967773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.494064, 57.726013, 57.814316>,  <60.601734, 57.532288, 57.722240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.494064, 57.726013, 57.814316>,  <60.314613, 58.048889, 57.967773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.494064, 57.726013, 57.814316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618040, 0.590278, -0.519228,
		0.645570, -0.004165, 0.763690,
		0.448627, -0.807189, -0.383640,
		60.628651, 57.483856, 57.699223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.051193, 58.043716, 58.030388>,  <60.314613, 58.048889, 57.967773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.051193, 58.043716, 58.030388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.932419, 57.852631, 57.699661>,  <60.861153, 57.737980, 57.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.932419, 57.852631, 57.699661>,  <61.051193, 58.043716, 58.030388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.932419, 57.852631, 57.699661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469288, 0.681079, -0.562050,
		0.831622, -0.554908, 0.021945,
		-0.296940, -0.477712, -0.826812,
		60.843338, 57.709316, 57.451618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.665867, 57.755699, 57.651184>,  <61.051193, 58.043716, 58.030388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.665867, 57.755699, 57.651184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.371017, 57.883644, 57.413078>,  <61.194107, 57.960411, 57.270214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.371017, 57.883644, 57.413078>,  <61.665867, 57.755699, 57.651184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.371017, 57.883644, 57.413078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582723, 0.746914, -0.320239,
		0.342178, -0.582929, -0.736959,
		-0.737121, 0.319864, -0.595264,
		61.149879, 57.979603, 57.234497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.932560, 57.964333, 57.044289>,  <61.665867, 57.755699, 57.651184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.932560, 57.964333, 57.044289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.599098, 58.182587, 57.078499>,  <61.399021, 58.313538, 57.099026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.599098, 58.182587, 57.078499>,  <61.932560, 57.964333, 57.044289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.599098, 58.182587, 57.078499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488360, 0.800579, -0.347243,
		-0.257939, -0.247710, -0.933867,
		-0.833650, 0.545631, 0.085528,
		61.349003, 58.346275, 57.104156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.847961, 58.251915, 56.378769>,  <61.932560, 57.964333, 57.044289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.847961, 58.251915, 56.378769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.694099, 58.471848, 56.675346>,  <61.601784, 58.603806, 56.853291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.694099, 58.471848, 56.675346>,  <61.847961, 58.251915, 56.378769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.694099, 58.471848, 56.675346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584865, 0.766599, -0.265065,
		-0.714127, 0.331684, -0.616448,
		-0.384651, 0.549829, 0.741439,
		61.578705, 58.636795, 56.897778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.350174, 58.827827, 56.243034>,  <61.847961, 58.251915, 56.378769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.350174, 58.827827, 56.243034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.559677, 58.921432, 56.570671>,  <61.685379, 58.977596, 56.767254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.559677, 58.921432, 56.570671>,  <61.350174, 58.827827, 56.243034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.559677, 58.921432, 56.570671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491779, 0.702063, -0.515035,
		-0.695579, 0.672568, 0.252631,
		0.523759, 0.234009, 0.819095,
		61.716805, 58.991634, 56.816399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.471214, 59.519527, 56.422398>,  <61.350174, 58.827827, 56.243034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.471214, 59.519527, 56.422398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.789040, 59.344566, 56.590851>,  <61.979736, 59.239590, 56.691921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.789040, 59.344566, 56.590851>,  <61.471214, 59.519527, 56.422398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.789040, 59.344566, 56.590851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554266, 0.805688, -0.208940,
		-0.247910, 0.399435, 0.882606,
		0.794563, -0.437400, 0.421131,
		62.027409, 59.213345, 56.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.713997, 59.898647, 56.927799>,  <61.471214, 59.519527, 56.422398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.713997, 59.898647, 56.927799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.033470, 59.664742, 56.871010>,  <62.225155, 59.524399, 56.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.033470, 59.664742, 56.871010>,  <61.713997, 59.898647, 56.927799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.033470, 59.664742, 56.871010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593020, 0.804920, 0.020783,
		0.102123, -0.100791, 0.989653,
		0.798686, -0.584761, -0.141972,
		62.273075, 59.489315, 56.828419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.192181, 60.191925, 57.432541>,  <61.713997, 59.898647, 56.927799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.192181, 60.191925, 57.432541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.331947, 59.984825, 57.120171>,  <62.415806, 59.860565, 56.932747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.331947, 59.984825, 57.120171>,  <62.192181, 60.191925, 57.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.331947, 59.984825, 57.120171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424238, 0.830555, -0.360832,
		0.835422, -0.205217, 0.509859,
		0.349417, -0.517749, -0.780925,
		62.436771, 59.829502, 56.885895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.362228, 59.558746, 57.790798>,  <62.192181, 60.191925, 57.432541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.362228, 59.558746, 57.790798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.667877, 59.622627, 57.540802>,  <62.851265, 59.660957, 57.390804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.667877, 59.622627, 57.540802>,  <62.362228, 59.558746, 57.790798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.667877, 59.622627, 57.540802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625256, -0.421663, 0.656700,
		-0.158659, -0.892578, -0.422057,
		0.764122, 0.159703, -0.624991,
		62.897114, 59.670536, 57.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.865612, 58.951218, 57.756580>,  <62.362228, 59.558746, 57.790798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.865612, 58.951218, 57.756580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.042641, 59.306259, 57.705521>,  <63.148857, 59.519283, 57.674885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.042641, 59.306259, 57.705521>,  <62.865612, 58.951218, 57.756580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.042641, 59.306259, 57.705521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547489, -0.154719, 0.822385,
		0.710199, -0.433853, -0.554426,
		0.442575, 0.887600, -0.127648,
		63.175415, 59.572540, 57.667225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.605446, 58.801212, 57.728287>,  <62.865612, 58.951218, 57.756580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.605446, 58.801212, 57.728287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.508369, 59.158806, 57.878967>,  <63.450123, 59.373360, 57.969376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.508369, 59.158806, 57.878967>,  <63.605446, 58.801212, 57.728287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.508369, 59.158806, 57.878967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546036, -0.195072, 0.814734,
		0.801840, 0.403417, -0.440804,
		-0.242689, 0.893981, 0.376697,
		63.435562, 59.427002, 57.991978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.509380, 59.122913, 58.403599>,  <63.605446, 58.801212, 57.728287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.509380, 59.122913, 58.403599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.223457, 59.113766, 58.683174>,  <63.051903, 59.108276, 58.850922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.223457, 59.113766, 58.683174>,  <63.509380, 59.122913, 58.403599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.223457, 59.113766, 58.683174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122997, -0.979773, -0.157852,
		0.688415, -0.198803, 0.697540,
		-0.714812, -0.022872, 0.698942,
		63.009014, 59.106903, 58.892857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.783230, 58.681461, 58.897892>,  <63.509380, 59.122913, 58.403599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.783230, 58.681461, 58.897892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.386230, 58.707298, 58.939407>,  <63.148029, 58.722801, 58.964317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.386230, 58.707298, 58.939407>,  <63.783230, 58.681461, 58.897892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.386230, 58.707298, 58.939407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071598, -0.995295, -0.065277,
		0.099088, -0.072219, 0.992455,
		-0.992500, 0.064590, 0.103792,
		63.088482, 58.726677, 58.970547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.351227, 58.191730, 58.814140>,  <63.783230, 58.681461, 58.897892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.351227, 58.191730, 58.814140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.375526, 58.136284, 59.209534>,  <64.390106, 58.103016, 59.446770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.375526, 58.136284, 59.209534>,  <64.351227, 58.191730, 58.814140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.375526, 58.136284, 59.209534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616313, -0.773776, -0.146386,
		0.785154, 0.618108, 0.038417,
		0.060756, -0.138613, 0.988481,
		64.393753, 58.094700, 59.506077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.093468, 58.196049, 58.979992>,  <64.351227, 58.191730, 58.814140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.093468, 58.196049, 58.979992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.902885, 57.980759, 59.258072>,  <64.788536, 57.851585, 59.424919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.902885, 57.980759, 59.258072>,  <65.093468, 58.196049, 58.979992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.902885, 57.980759, 59.258072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592717, -0.780650, -0.198169,
		0.649371, 0.317641, 0.690957,
		-0.476450, -0.538227, 0.695203,
		64.759949, 57.819290, 59.466633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.687836, 57.706448, 59.101368>,  <65.093468, 58.196049, 58.979992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.687836, 57.706448, 59.101368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.626511, 57.640171, 59.491043>,  <65.589714, 57.600407, 59.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.626511, 57.640171, 59.491043>,  <65.687836, 57.706448, 59.101368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.626511, 57.640171, 59.491043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954050, -0.281671, 0.102228,
		0.257463, 0.945097, 0.201258,
		-0.153304, -0.165691, 0.974189,
		65.580521, 57.590466, 59.783298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.040466, 58.146534, 59.618732>,  <65.687836, 57.706448, 59.101368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.040466, 58.146534, 59.618732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.994446, 57.782829, 59.778740>,  <65.966835, 57.564606, 59.874744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.994446, 57.782829, 59.778740>,  <66.040466, 58.146534, 59.618732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.994446, 57.782829, 59.778740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992366, -0.123213, 0.005333,
		0.044438, 0.397575, 0.916493,
		-0.115044, -0.909259, 0.400016,
		65.959930, 57.510052, 59.898743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.365646, 57.961369, 60.308113>,  <66.040466, 58.146534, 59.618732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.365646, 57.961369, 60.308113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.362015, 57.648628, 60.058754>,  <66.359833, 57.460983, 59.909138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.362015, 57.648628, 60.058754>,  <66.365646, 57.961369, 60.308113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.362015, 57.648628, 60.058754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979716, -0.131762, 0.150980,
		-0.200184, -0.609379, 0.767192,
		-0.009083, -0.781854, -0.623395,
		66.359291, 57.414070, 59.871735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.726128, 57.418549, 60.618469>,  <66.365646, 57.961369, 60.308113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.726128, 57.418549, 60.618469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.729401, 57.339684, 60.226334>,  <66.731369, 57.292362, 59.991055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.729401, 57.339684, 60.226334>,  <66.726128, 57.418549, 60.618469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.729401, 57.339684, 60.226334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971834, -0.229339, 0.054242,
		-0.235523, -0.953168, 0.189736,
		0.008187, -0.197167, -0.980336,
		66.731857, 57.280533, 59.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.351791, 57.808762, 60.634605>,  <66.726128, 57.418549, 60.618469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.351791, 57.808762, 60.634605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.640274, 57.547783, 60.541504>,  <67.813362, 57.391197, 60.485641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.640274, 57.547783, 60.541504>,  <67.351791, 57.808762, 60.634605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.640274, 57.547783, 60.541504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347039, 0.049504, 0.936544,
		-0.599522, -0.756217, 0.262127,
		0.721206, -0.652446, -0.232758,
		67.856636, 57.352051, 60.471676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.577293, 57.296024, 61.209469>,  <67.351791, 57.808762, 60.634605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.577293, 57.296024, 61.209469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.887268, 57.335762, 60.959793>,  <68.073250, 57.359604, 60.809990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.887268, 57.335762, 60.959793>,  <67.577293, 57.296024, 61.209469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.887268, 57.335762, 60.959793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532834, 0.428482, 0.729720,
		0.339948, -0.898072, 0.279109,
		0.774934, 0.099348, -0.624185,
		68.119751, 57.365566, 60.772537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.250862, 57.077194, 61.446949>,  <67.577293, 57.296024, 61.209469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.250862, 57.077194, 61.446949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.353607, 57.349754, 61.172806>,  <68.415253, 57.513290, 61.008320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.353607, 57.349754, 61.172806>,  <68.250862, 57.077194, 61.446949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.353607, 57.349754, 61.172806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420250, 0.559843, 0.714120,
		0.870293, -0.471454, -0.142553,
		0.256867, 0.681401, -0.685355,
		68.430664, 57.554176, 60.967197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.987175, 57.073479, 61.518471>,  <68.250862, 57.077194, 61.446949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.987175, 57.073479, 61.518471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.835426, 57.403580, 61.351120>,  <68.744377, 57.601639, 61.250710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.835426, 57.403580, 61.351120>,  <68.987175, 57.073479, 61.518471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.835426, 57.403580, 61.351120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627656, 0.561771, 0.538945,
		0.679796, -0.058135, -0.731093,
		-0.379375, 0.825248, -0.418378,
		68.721611, 57.651154, 61.225605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.373741, 56.451229, 61.559921>,  <68.987175, 57.073479, 61.518471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.373741, 56.451229, 61.559921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.008896, 56.487251, 61.399948>,  <68.789993, 56.508865, 61.303963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.008896, 56.487251, 61.399948>,  <69.373741, 56.451229, 61.559921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.008896, 56.487251, 61.399948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355870, -0.310351, -0.881498,
		-0.203498, -0.946348, 0.251028,
		-0.912110, 0.090050, -0.399932,
		68.735260, 56.514267, 61.279968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.266411, 57.004253, 62.255001>,  <69.373741, 56.451229, 61.559921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.266411, 57.004253, 62.255001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.529358, 57.180756, 62.499352>,  <69.687126, 57.286655, 62.645962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.529358, 57.180756, 62.499352>,  <69.266411, 57.004253, 62.255001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.529358, 57.180756, 62.499352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408540, 0.472500, -0.780922,
		-0.633225, 0.762915, 0.130333,
		0.657359, 0.441253, 0.610880,
		69.726562, 57.313133, 62.682617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.453308, 57.634880, 62.020676>,  <69.266411, 57.004253, 62.255001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.453308, 57.634880, 62.020676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.774300, 57.579788, 62.252899>,  <69.966896, 57.546734, 62.392235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.774300, 57.579788, 62.252899>,  <69.453308, 57.634880, 62.020676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.774300, 57.579788, 62.252899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579984, 0.408554, -0.704771,
		-0.140122, 0.902283, 0.407740,
		0.802486, -0.137729, 0.580557,
		70.015045, 57.538471, 62.427067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.813408, 58.138649, 62.044971>,  <69.453308, 57.634880, 62.020676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.813408, 58.138649, 62.044971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.070786, 57.838783, 62.106903>,  <70.225212, 57.658863, 62.144062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.070786, 57.838783, 62.106903>,  <69.813408, 58.138649, 62.044971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.070786, 57.838783, 62.106903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623559, 0.396000, -0.674062,
		0.444007, 0.530272, 0.722267,
		0.643454, -0.749664, 0.154829,
		70.263824, 57.613884, 62.153351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.522423, 58.313190, 62.240330>,  <69.813408, 58.138649, 62.044971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.522423, 58.313190, 62.240330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.536537, 57.993332, 62.000557>,  <70.545006, 57.801418, 61.856693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.536537, 57.993332, 62.000557>,  <70.522423, 58.313190, 62.240330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.536537, 57.993332, 62.000557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736686, 0.426118, -0.525088,
		0.675314, -0.423069, 0.604122,
		0.035279, -0.799648, -0.599432,
		70.547119, 57.753437, 61.820728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.224030, 57.963928, 62.269753>,  <70.522423, 58.313190, 62.240330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.224030, 57.963928, 62.269753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.039124, 57.919514, 61.917847>,  <70.928177, 57.892864, 61.706703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.039124, 57.919514, 61.917847>,  <71.224030, 57.963928, 62.269753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.039124, 57.919514, 61.917847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809995, 0.350877, -0.469887,
		0.360865, -0.929815, -0.072255,
		-0.462261, -0.111040, -0.879764,
		70.900444, 57.886204, 61.653919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.746765, 58.057106, 61.682777>,  <71.224030, 57.963928, 62.269753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.746765, 58.057106, 61.682777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.944733, 57.738480, 61.821648>,  <72.063515, 57.547302, 61.904972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.944733, 57.738480, 61.821648>,  <71.746765, 58.057106, 61.682777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.944733, 57.738480, 61.821648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692903, 0.120687, -0.710859,
		0.524348, 0.592379, 0.611675,
		0.494919, -0.796569, 0.347178,
		72.093208, 57.499508, 61.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.478981, 58.156094, 62.009632>,  <71.746765, 58.057106, 61.682777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.478981, 58.156094, 62.009632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.378799, 57.832428, 61.797020>,  <72.318695, 57.638229, 61.669453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.378799, 57.832428, 61.797020>,  <72.478981, 58.156094, 62.009632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.378799, 57.832428, 61.797020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624089, 0.284786, -0.727606,
		0.740127, -0.513949, 0.433668,
		-0.250449, -0.809168, -0.531527,
		72.303665, 57.589676, 61.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.989807, 57.571785, 61.816223>,  <72.478981, 58.156094, 62.009632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.989807, 57.571785, 61.816223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.740425, 57.589794, 61.503998>,  <72.590797, 57.600601, 61.316662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.740425, 57.589794, 61.503998>,  <72.989807, 57.571785, 61.816223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.740425, 57.589794, 61.503998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690814, 0.499272, -0.522976,
		0.366165, -0.865275, -0.342378,
		-0.623458, 0.045024, -0.780559,
		72.553391, 57.603302, 61.269829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.548943, 57.596111, 61.304035>,  <72.989807, 57.571785, 61.816223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.548943, 57.596111, 61.304035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.212135, 57.625053, 61.090210>,  <73.010048, 57.642418, 60.961914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.212135, 57.625053, 61.090210>,  <73.548943, 57.596111, 61.304035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.212135, 57.625053, 61.090210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515498, 0.399869, -0.757870,
		0.158921, -0.913712, -0.373998,
		-0.842025, 0.072354, -0.534564,
		72.959526, 57.646759, 60.929840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.655075, 57.292305, 60.682220>,  <73.548943, 57.596111, 61.304035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.655075, 57.292305, 60.682220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.380524, 57.581875, 60.654465>,  <73.215790, 57.755615, 60.637814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.380524, 57.581875, 60.654465>,  <73.655075, 57.292305, 60.682220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.380524, 57.581875, 60.654465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440264, 0.337693, -0.831944,
		-0.578831, -0.601581, -0.550503,
		-0.686383, 0.723922, -0.069387,
		73.174606, 57.799053, 60.633648>
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
